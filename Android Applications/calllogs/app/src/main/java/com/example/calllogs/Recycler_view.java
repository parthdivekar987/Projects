package com.example.calllogs;

import android.os.Bundle;
import android.view.View;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

import com.example.calllogs.ModelClass.shooter;

import java.util.ArrayList;
import java.util.List;

public class Recycler_view extends AppCompatActivity {

    View recyclerView;

    List<shooter> shooterList;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);        setContentView(R.layout.activity_recycler_view);

        recyclerView=findViewById(R.id.logslistview);
        shooterList=new ArrayList<>();

        shooterList.add(new shooter(R.drawable.img_3,"Shooter 1","1234567890"));
        shooterList.add(new shooter(R.drawable.img_2,"Shooter 2","1234567890"));
        shooterList.add(new shooter(R.drawable.img_3,"Shooter 3","1234567890"));
        shooterList.add(new shooter(R.drawable.img_4,"Shooter 4","1234567890"));
        shooterList.add(new shooter(R.drawable.img_2,"Shooter 5","1234567890"));
        shooterList.add(new shooter(R.drawable.img_4,"Shooter 6","1234567890"));
        shooterList.add(new shooter(R.drawable.img_3,"Shooter 7","1234567890"));
        shooterList.add(new shooter(R.drawable.img_1,"Shooter 8","1234567890"));




    }

}