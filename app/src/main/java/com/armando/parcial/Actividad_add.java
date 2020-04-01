package com.armando.parcial;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.NumberPicker;
import android.widget.RadioGroup;
import android.widget.Spinner;


public class Actividad_add extends AppCompatActivity {

    private NumberPicker pickerAño;
    private EditText edtPlaca, edtMarca;
    private RadioGroup opciones;
    private String[] pickerVals;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_add_person);

        initViews();
        initListeners();
    }

    private void initViews(){
        edtPlaca = findViewById(R.id.edtPlaca);
        edtMarca = findViewById(R.id.edtMarca);

        pickerAño = findViewById(R.id.pickerAño);
        pickerAño.setMaxValue(4);
        pickerAño.setMinValue(0);
        pickerAño.setWrapSelectorWheel(true);
        pickerVals  = new String[] {"2016", "2017", "2018", "2019", "2020"};
        pickerAño.setDisplayedValues(pickerVals);

        opciones = findViewById(R.id.opciones);

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
                    Car car = new Car(
                            edtPlaca.getText().toString(),
                            edtMarca.getText().toString(),
                            pickerVals[pickerAño.getValue()],
                            opciones.getCheckedRadioButtonId() == R.id.automatico ? "Automatico": "Mecanico");

                    Intent intent = getIntent();
                    intent.putExtra("newPerson", car);
                    setResult(RESULT_OK, intent);
                    finish();
                }
            }
        });

    }

    private boolean checkForm(){
        if (edtPlaca.getText().toString().isEmpty()) {
            edtPlaca.setError("Ingrese una placa");
            return false;
        }
        if (edtMarca.getText().toString().isEmpty()) {
            edtMarca.setError("Ingrese una marca");
            return false;
        }
        return true;
    }

}

