package com.developer.parcialandroid.adapters;

import android.content.Context;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import com.developer.parcialandroid.R;
import com.developer.parcialandroid.model.Person;

import java.util.List;

public class PersonAdapter extends ArrayAdapter<Person> {

    public PersonAdapter(Context context, List<Person> objects) {
        super(context, 0, objects);
    }


    @Override
    public View getView(int position, View convertView, ViewGroup parent) {

        LayoutInflater inflater = (LayoutInflater) getContext()
                .getSystemService(Context.LAYOUT_INFLATER_SERVICE);

        if (null == convertView) {
            convertView = inflater.inflate(R.layout.card_item_person, parent, false);
        }

        TextView txtName = convertView.findViewById(R.id.txtName);
        TextView txtPhone = convertView.findViewById(R.id.txtPhone);
        TextView txtGroup = convertView.findViewById(R.id.txtGroup);

        Person person = getItem(position);

        assert person != null;
        txtName.setText(person.getName());
        txtPhone.setText(person.getPhone());
        txtGroup.setText(person.getGroup());

        return convertView;
    }

}