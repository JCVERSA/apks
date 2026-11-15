package com.zhpan.bannerview;

import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

public class BaseViewHolder<T> extends RecyclerView.ViewHolder {
    public final SparseArray p;

    public BaseViewHolder(View view) {
        super(view);
        this.p = new SparseArray();
    }
}
