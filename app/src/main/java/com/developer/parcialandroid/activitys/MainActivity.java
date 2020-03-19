package com.developer.parcialandroid.activitys;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.developer.parcialandroid.R;
import com.developer.parcialandroid.adapters.PersonAdapter;
import com.developer.parcialandroid.model.Person;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    public static final String TAG = MainActivity.class.getSimpleName();

    private ListView listView;
    private PersonAdapter adapter;
    private List<Person> list;

    private static final int REQUEST_ADD = 110;

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
        listView = findViewById(R.id.list);
        registerForContextMenu(listView);
        adapter = new PersonAdapter(this, list);
        listView.setAdapter(adapter);

    }

    private void initListener(){
        findViewById(R.id.add).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(MainActivity.this, AddPersonActivity.class);
                startActivityForResult(intent, REQUEST_ADD);
            }
        });
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == REQUEST_ADD) {
            if (resultCode == RESULT_OK) {
                findViewById(R.id.txtInfo).setVisibility(View.GONE);
                list.add((Person) data.getParcelableExtra("newPerson"));
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
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_person_list, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        switch (item.getItemId()) {
            case R.id.orderName:
                Collections.sort(list, new Comparator<Person>() {
                    public int compare(Person obj1, Person obj2) {
                        return obj1.getName().compareTo(obj2.getName());
                    }
                });
                adapter.notifyDataSetChanged();
                return true;
            case R.id.orderGroup:
                Collections.sort(list, new Comparator<Person>() {
                    public int compare(Person obj1, Person obj2) {
                        return obj1.getGroup().compareTo(obj2.getGroup());
                    }
                });
                adapter.notifyDataSetChanged();
                return true;
            case R.id.delete:
                list.clear();
                adapter.notifyDataSetChanged();
                return true;
            case R.id.change:
                Collections.reverse(list);
                adapter.notifyDataSetChanged();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    @Override
    public boolean onContextItemSelected(@NonNull MenuItem item) {
        AdapterView.AdapterContextMenuInfo info = (AdapterView.AdapterContextMenuInfo) item.getMenuInfo();
        int index = info.position;

        switch (item.getItemId()){
            case R.id.phoneRandom:
                list.get(index).setPhone(getNumberRandom());
                adapter.notifyDataSetChanged();
                return true;
            case R.id.capital_name:
                list.get(index).setName(list.get(index).getName().toUpperCase());
                adapter.notifyDataSetChanged();
                return true;
            default:
                return super.onContextItemSelected(item);
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
