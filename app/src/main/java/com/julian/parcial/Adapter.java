package com.julian.parcial;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;


import java.util.List;

public class Adapter extends ArrayAdapter<Equipo> {

    public Adapter(Context context, List<Equipo> objects) {
        super(context, 0, objects);
    }



    @Override
    public View getView(int position, View convertView, ViewGroup parent) {

        LayoutInflater inflater = (LayoutInflater) getContext()
                .getSystemService(Context.LAYOUT_INFLATER_SERVICE);

        if (null == convertView) {
            convertView = inflater.inflate(R.layout.card_item_person, parent, false);
        }

        TextView txtNombre = convertView.findViewById(R.id.txtNombre);
        TextView txtCiudad = convertView.findViewById(R.id.txtCiudad);
        TextView txtDirector = convertView.findViewById(R.id.txtDirector);

        Equipo equipo = getItem(position);

        assert equipo != null;
        txtNombre.setText(equipo.getNombre() + " ("+equipo.getCampeonatosWin()+")");
        txtCiudad.setText(equipo.getCiudad());
        txtDirector.setText(equipo.getDirector());

        return convertView;
    }


}