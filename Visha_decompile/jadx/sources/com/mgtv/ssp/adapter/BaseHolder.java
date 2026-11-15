package com.mgtv.ssp.adapter;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

public class BaseHolder extends RecyclerView.ViewHolder {
    public int e;
    public View f;

    public BaseHolder(@NonNull View view) {
        super(view);
        this.f = view;
    }
}
