package com.zhpan.bannerview;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.v70;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseBannerAdapter<T> extends RecyclerView.Adapter<BaseViewHolder<T>> {
    public List o = new ArrayList();
    public boolean p;
    public a q;

    public interface a {
        void a(View view, int i, int i2);
    }

    public abstract void c(BaseViewHolder baseViewHolder, Object obj, int i, int i2);

    public BaseViewHolder d(ViewGroup viewGroup, View view, int i) {
        return new BaseViewHolder(view);
    }

    public int g() {
        return this.o.size();
    }

    public List getData() {
        return this.o;
    }

    @Override
    public final int getItemCount() {
        if (!this.p || g() <= 1) {
            return g();
        }
        return 1000;
    }

    @Override
    public final int getItemViewType(int i) {
        return r(v70.c(i, g()));
    }

    public abstract int getLayoutId(int i);

    public int r(int i) {
        return 0;
    }

    public final void s(BaseViewHolder baseViewHolder, View view) {
        int adapterPosition = baseViewHolder.getAdapterPosition();
        if (this.q == null || adapterPosition == -1) {
            return;
        }
        this.q.a(view, v70.c(adapterPosition, g()), adapterPosition);
    }

    @Override
    public final void onBindViewHolder(BaseViewHolder baseViewHolder, int i) {
        int iC = v70.c(i, g());
        c(baseViewHolder, this.o.get(iC), iC, g());
    }

    @Override
    public final BaseViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(getLayoutId(i), viewGroup, false);
        final BaseViewHolder baseViewHolderD = d(viewGroup, viewInflate, i);
        viewInflate.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.s(baseViewHolderD, view);
            }
        });
        return baseViewHolderD;
    }

    public void v(boolean z) {
        this.p = z;
    }

    public void w(List list) {
        if (list != null) {
            this.o.clear();
            this.o.addAll(list);
        }
    }

    public void x(a aVar) {
        this.q = aVar;
    }
}
