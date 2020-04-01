package com.armando.parcial;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;


import java.util.List;

public class Adapter extends ArrayAdapter<Car> {

    public Adapter(Context context, List<Car> objects) {
        super(context, 0, objects);
    }



    @Override
    public View getView(int position, View convertView, ViewGroup parent) {

        LayoutInflater inflater = (LayoutInflater) getContext()
                .getSystemService(Context.LAYOUT_INFLATER_SERVICE);

        if (null == convertView) {
            convertView = inflater.inflate(R.layout.card_item_person, parent, false);
        }

        TextView txtPlaca = convertView.findViewById(R.id.txtPlaca);
        TextView txtMarcaModelo = convertView.findViewById(R.id.txtMarcaModelo);
        TextView txTipo = convertView.findViewById(R.id.txtTipo);

        Car car = getItem(position);

        assert car != null;
        txtPlaca.setText(car.getPlaca());
        txtMarcaModelo.setText(car.getMarca()+", "+car.getModelo());
        txTipo.setText(car.getTipo());

        return convertView;
    }


}