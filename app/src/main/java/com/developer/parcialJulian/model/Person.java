package com.developer.parcialandroid.model;

import android.os.Parcel;
import android.os.Parcelable;

public class Person implements Parcelable {
    private String name, phone, group;

    public Person(String name, String phone, String group) {
        this.name = name;
        this.phone = phone;
        this.group = group;
    }

    protected Person(Parcel in) {
        name = in.readString();
        phone = in.readString();
        group = in.readString();
    }

    public static final Creator<Person> CREATOR = new Creator<Person>() {
        @Override
        public Person createFromParcel(Parcel in) {
            return new Person(in);
        }

        @Override
        public Person[] newArray(int size) {
            return new Person[size];
        }
    };

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(name);
        dest.writeString(phone);
        dest.writeString(group);
    }
}
