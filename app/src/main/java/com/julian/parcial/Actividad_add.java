package com.julian.parcial;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.NumberPicker;
import android.widget.RadioGroup;
import android.widget.Spinner;


public class Actividad_add extends AppCompatActivity {

    private NumberPicker pickerCampeonatos;
    private EditText edtNombre, edtDirector;
    private String[] pickerVals;
    private Spinner spinner;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_add_person);

        initViews();
        initListeners();
    }

    private void initViews(){
        edtNombre = findViewById(R.id.edtNombre);
        edtDirector = findViewById(R.id.edtDirector);
        spinner = findViewById(R.id.ciudad);

        pickerCampeonatos = findViewById(R.id.pickerCampeonato);
        pickerCampeonatos.setMaxValue(7);
        pickerCampeonatos.setMinValue(0);
        pickerCampeonatos.setWrapSelectorWheel(true);
        pickerVals  = new String[] {"0", "1", "2", "3", "4","5","6","7"};
        pickerCampeonatos.setDisplayedValues(pickerVals);

        if (getIntent().getExtras()!=null){
            Equipo equipo = getIntent().getParcelableExtra("object");
            assert equipo != null;
            edtNombre.setText(equipo.getNombre());
            edtDirector.setText(equipo.getDirector());
            pickerCampeonatos.setValue(Integer.parseInt(equipo.getCampeonatosWin()));
            spinner.setSelection(getPosition(equipo.getCiudad()));
        }

    }

    private int getPosition(String text){
        int index = -1;
        String[] ciudades = getResources().getStringArray(R.array.ciudades);
        for (int i=0;i<ciudades.length;i++) {
            if (ciudades[i].equals(text)) {
                index = i;
                break;
            }
        }
        return index;
    }

    private void initListeners(){

        findViewById(R.id.btnCancel).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });

        findViewById(R.id.btnSave).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (checkForm()){
                    Equipo equipo = new Equipo(
                            edtNombre.getText().toString(),
                            edtDirector.getText().toString(),
                            spinner.getSelectedItem().toString(),
                            pickerVals[pickerCampeonatos.getValue()]);

                    Intent intent = getIntent();
                    intent.putExtra("newPerson", equipo);
                    setResult(RESULT_OK, intent);
                    finish();
                }
            }
        });

    }

    private boolean checkForm(){
        if (edtNombre.getText().toString().isEmpty()) {
            edtNombre.setError("Ingrese un nombre");
            return false;
        }
        if (edtDirector.getText().toString().isEmpty()) {
            edtDirector.setError("Ingrese un nombre");
            return false;
        }
        return true;
    }

}

