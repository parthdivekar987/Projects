package com.example.calllogs;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.recyclerview.widget.RecyclerView;

import com.example.calllogs.ModelClass.shooter;

import org.w3c.dom.Text;

import java.util.List;

public class shooteradapter  extends RecyclerView.Adapter<shooteradapter.MyViewHolder> {
    List<shooter>shooterList;

    @NonNull
    @Override
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View itemview= LayoutInflater.from(parent.getContext()).inflate(R.layout.fruit_list_template,parent,false);
        return new MyViewHolder(itemview);
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewHolder holder, int position) {



        shooter shooter = shooterList.get(position);
        holder.imageView.setImageResource(shooter.getShooter());
        holder.title.setText(shooter.getShootername());
        holder.description.setText(shooter.getShooternumber());

    }

    @Override
    public int getItemCount() {
        return shooterList.size();
    }

    public static class MyViewHolder extends RecyclerView.ViewHolder
    {
        List<shooter> shooterlist;

        ImageView imageView;
        TextView title,description;



        public MyViewHolder(View  itemView)
        {
            super(itemView);
            imageView=itemView.findViewById(R.id.shooter);
            title=itemView.findViewById(R.id.shootername);
            description=itemView.findViewById(R.id.shooternumber);
        }
    }
}
