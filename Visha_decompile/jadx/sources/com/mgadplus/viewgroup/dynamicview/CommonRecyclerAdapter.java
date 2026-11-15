package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

public abstract class CommonRecyclerAdapter<T> extends RecyclerView.Adapter<c> {
    public LayoutInflater o;
    public List p;

    public CommonRecyclerAdapter(List list, Context context) {
        this.p = list;
        this.o = LayoutInflater.from(context);
    }

    public int A(int i) {
        return 0;
    }

    public int B() {
        return 0;
    }

    public int C(int i) {
        return 0;
    }

    public int D() {
        return 0;
    }

    public int b(int i) {
        return 0;
    }

    @Override
    public int getItemCount() {
        return z() + B() + D();
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public int getItemViewType(int i) {
        if (i < B()) {
            return A(i);
        }
        return i > (getItemCount() + (-1)) - D() ? C(i) : b(i - B());
    }

    public abstract int r(int i);

    @Override
    public c onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new c(this.o.inflate(r(i), viewGroup, false));
    }

    public void t() {
    }

    @Override
    public void onBindViewHolder(c cVar, int i) {
        onBindViewHolder(cVar, i, new ArrayList());
    }

    public void v(c cVar, int i, Object obj) {
    }

    public void w(c cVar, int i, Object obj, List list) {
    }

    public void x(c cVar, int i, List list) {
    }

    @Override
    public void onBindViewHolder(c cVar, int i, List list) {
        if (i < B()) {
            x(cVar, i, list);
        } else if (i < B() + z()) {
            int iB = i - B();
            v(cVar, iB, this.p.get(iB));
            w(cVar, iB, this.p.get(iB), list);
        }
        if (i == 0) {
            b();
        }
        if (i == (getItemCount() - 1) - D()) {
            t();
        }
    }

    public int z() {
        List list = this.p;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public void b() {
    }
}
