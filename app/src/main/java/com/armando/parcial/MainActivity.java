package com.armando.parcial;
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
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class MainActivity extends AppCompatActivity {


    private ListView listView;
    private Adapter adapter;
    private List<Car> list;
    private List<Car> listCopy;


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
                list.add((Car) data.getParcelableExtra("newPerson"));
                listCopy.add((Car) data.getParcelableExtra("newPerson"));
                adapter.notifyDataSetChanged();
            }
        }
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_person_list, menu);
        return true;
    }

    public void filter(String text) {
        if(text.isEmpty()){
            list.clear();
            list.addAll(listCopy);
        } else{
            ArrayList<Car> result = new ArrayList<>();
            text = text.toLowerCase();
            for(Car item: listCopy){
                //match by name or phone
                if(item.getTipo().toLowerCase().contains(text)){
                    result.add(item);
                }
            }
            list.clear();
            list.addAll(result);
        }
        adapter.notifyDataSetChanged();
    }

    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        switch (item.getItemId()) {
            case R.id.eliminar:
                if (!list.isEmpty()){
                    int pos = getNumRandom(0,list.size()-1);
                    list.remove(pos);
                    listCopy.remove(pos);
                    adapter.notifyDataSetChanged();
                }else {
                    Toast.makeText(this, "No hay nada en la lista", Toast.LENGTH_SHORT).show();
                }
                return true;
            case R.id.mostrarAutomatico:
                filter("automatico");
                return true;
            case R.id.mostrarMecanico:
                filter("mecanico");
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }


    private String getNumberRandom() {
        String phone = "";
        switch (getNumRandom(0,2)){
            case 0:
                phone = "300";
            for (int i=0; i<7; i++){
                phone +=""+getNumRandom(0,9);
            }
            return phone;
            case 1:
                phone = "310";
                for (int i=0; i<7; i++){
                    phone +=""+getNumRandom(0,9);
                }
                return phone;
            case 2:
                phone = "320";
                for (int i=0; i<7; i++){
                    phone +=""+getNumRandom(0,9);
                }
                return phone;
            default:
                return "No number";
        }
    }

    private int getNumRandom(int min, int max){
        int range = (max - min) + 1;
        return (int)(Math.random() * range) + min;
    }
}
