package com.transsion.widgetslib.view.damping.adapter;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.transsion.widgetslib.view.damping.a;
import defpackage.mu4;

public abstract class OSDampingAdapter<VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> implements mu4 {
    public a o;

    public static final class HeaderHolder extends RecyclerView.ViewHolder {
    }

    @Override
    public int getHeaderCount() {
        return 1;
    }

    @Override
    public a getRefreshLayout() {
        return this.o;
    }

    @Override
    public void setRefreshLayout(a aVar) {
        this.o = aVar;
    }
}
