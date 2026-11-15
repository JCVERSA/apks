package com.transsion.playercommon.adapter;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

public class CustomViewAdapter2 extends RecyclerView.Adapter<ViewHolder> {
    public List o;
    public a p;
    public int q;
    public final SparseArray r;

    public static class ViewHolder extends RecyclerView.ViewHolder {
        public ViewHolder(View view) {
            super(view);
        }
    }

    public interface a {
        View a(int i);
    }

    public CustomViewAdapter2(List list) {
        this.o = new ArrayList();
        this.r = new SparseArray();
        this.o = list;
    }

    @Override
    public void onBindViewHolder(ViewHolder viewHolder, int i) {
    }

    @Override
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View viewA;
        if (this.p != null) {
            viewA = (View) this.r.get(i);
            if (viewA == null) {
                viewA = this.p.a(i);
                this.r.put(i, viewA);
            }
        } else {
            viewA = (View) this.o.get(i);
        }
        viewA.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        if (viewA.getParent() != null) {
            ((ViewGroup) viewA.getParent()).removeView(viewA);
        }
        return new ViewHolder(viewA);
    }

    @Override
    public int getItemCount() {
        return this.p != null ? this.q : this.o.size();
    }

    @Override
    public int getItemViewType(int i) {
        return i;
    }

    public CustomViewAdapter2(int i, a aVar) {
        this.o = new ArrayList();
        this.r = new SparseArray();
        this.q = i;
        this.p = aVar;
    }
}
