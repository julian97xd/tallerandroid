package com.julian.parcial;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.Toast;


import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {


    private ListView listView;
    private Adapter adapter;
    private List<Equipo> list;
    private List<Equipo> listCopy;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        initViews();
        initListener();
    }

    private void initViews(){
        //initToolbar

        //initListView
        list = new ArrayList<>();
        listCopy = new ArrayList<>();
        listView = findViewById(R.id.list);
        registerForContextMenu(listView);
        adapter = new Adapter(this, list);
        listView.setAdapter(adapter);

    }

    private void initListener(){
        findViewById(R.id.add).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, Actividad_add.class);
                startActivityForResult(intent, 450);
            }
        });
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 450) {
            if (resultCode == RESULT_OK) {
                list.add((Equipo) data.getParcelableExtra("newPerson"));
                listCopy.add((Equipo) data.getParcelableExtra("newPerson"));
                adapter.notifyDataSetChanged();
            }
        } else if ((requestCode == 400)) {
            if (resultCode == RESULT_OK){
                assert data != null;
                list.set(data.getIntExtra("pos",0),(Equipo) data.getParcelableExtra("newPerson"));
                adapter.notifyDataSetChanged();
            }
        }
    }

    @Override
    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenu.ContextMenuInfo menuInfo) {
        super.onCreateContextMenu(menu, v, menuInfo);
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.menu_context, menu);
    }

    @Override
    public boolean onContextItemSelected(@NonNull MenuItem item) {
        AdapterView.AdapterContextMenuInfo info = (AdapterView.AdapterContextMenuInfo) item.getMenuInfo();
        int index = info.position;

        switch (item.getItemId()){
            case R.id.editar:
                Intent intent = new Intent(MainActivity.this, Actividad_add.class);
                intent.putExtra("object", list.get(index));
                intent.putExtra("pos", index);
                startActivityForResult(intent, 400);
                return true;
            case R.id.eliminar:
                list.remove(index);
                adapter.notifyDataSetChanged();
                return true;
            default:
                return super.onContextItemSelected(item);
        }
    }
}
