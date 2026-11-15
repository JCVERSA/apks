package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.y45;
import java.util.List;

public final class p31 extends RecyclerView.Adapter<l31> {
    private final List<xj0> a;
    private final m31 b;

    public p31(sj0 sj0Var, List<xj0> list, o8<?> o8Var) {
        y45.j(sj0Var, "imageProvider");
        y45.j(list, "imageValues");
        y45.j(o8Var, "adResponse");
        this.a = list;
        this.b = new m31(sj0Var, o8Var);
    }

    @Override
    public final int getItemCount() {
        return this.a.size();
    }

    @Override
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        l31 l31Var = (l31) viewHolder;
        y45.j(l31Var, "holderImage");
        l31Var.a(this.a.get(i));
    }

    @Override
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        y45.j(viewGroup, "parent");
        return this.b.a(viewGroup);
    }
}
