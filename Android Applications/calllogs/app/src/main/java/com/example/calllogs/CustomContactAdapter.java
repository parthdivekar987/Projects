package com.example.calllogs;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;

import com.example.calllogs.ModelClass.Contact;

import java.util.ArrayList;

public class CustomContactAdapter extends ArrayAdapter<Contact> {
    private ArrayList<Contact>contactArrayList;
    Context context;

    public CustomContactAdapter(@NonNull Context context, ArrayList<Contact>contactArrayList) {
        super(context,R.layout.call_list,contactArrayList);
        this.contactArrayList=contactArrayList;
        this.context=context;
    }

    private static class MyViewHolder {
        ImageView userbg;
        TextView username, userno;
    }

    @NonNull
    @Override
    public View getView(int position, @NonNull View convertView, @NonNull ViewGroup parent)
    {
        Contact contact=getItem(position);
        MyViewHolder myViewHolder;
        final View result;

        if(convertView==null){
            myViewHolder=new MyViewHolder();
            LayoutInflater inflater= LayoutInflater.from(context);
            convertView=inflater.inflate(R.layout.call_list,parent,false);

            myViewHolder.userbg=convertView.findViewById(R.id.photo);
            myViewHolder.username=convertView.findViewById(R.id.shooter);
            myViewHolder.userno=convertView.findViewById(R.id.Number);

            result=convertView;
            convertView.setTag(myViewHolder);
        }
        else{
            myViewHolder=(MyViewHolder)convertView.getTag();
            return convertView;
        }
        myViewHolder.userbg.setImageResource(contact.getUsers());
        myViewHolder.username.setText(contact.getUsername());
        myViewHolder.userno.setText(contact. getUsernumber());
        return result;
    }

}
