package com.example.calllogs;

import android.os.Bundle;
import android.widget.ListView;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;

import com.example.calllogs.ModelClass.Contact;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    ListView listView;
    ArrayList<Contact> contactArrayList;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);

        listView=findViewById(R.id.listview);

        contactArrayList=new ArrayList<>();

        contactArrayList.add(new Contact(R.drawable.img_3,"Shooter 1","1234567890"));
        contactArrayList.add(new Contact(R.drawable.img_4,"Shooter 2","1234567890"));
        contactArrayList.add(new Contact(R.drawable.img,"Shooter 3","1234567890"));
        contactArrayList.add(new Contact(R.drawable.img,"Shooter 4","1234567890"));
        contactArrayList.add(new Contact(R.drawable.img,"Shooter 5","1234567890"));
        contactArrayList.add(new Contact(R.drawable.img,"Shooter 6","1234567890"));

        CustomContactAdapter adapter=new CustomContactAdapter(this,contactArrayList);
        listView.setAdapter(adapter);
    }
}