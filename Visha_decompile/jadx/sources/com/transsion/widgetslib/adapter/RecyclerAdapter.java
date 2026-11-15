package com.transsion.widgetslib.adapter;

import android.view.View;
import android.widget.AdapterView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.widgetslib.adapter.RecyclerAdapter.Holder;
import java.util.List;

public abstract class RecyclerAdapter<T, VH extends Holder> extends RecyclerView.Adapter<VH> {
    public final List o;
    public AdapterView.OnItemClickListener p;

    public static abstract class Holder extends RecyclerView.ViewHolder {
        public boolean p;
        public boolean q;

        public Holder(View view) {
            super(view);
        }

        public void setSetOnClickListener(boolean z) {
            this.p = z;
        }

        public void setSetOnLongClickListener(boolean z) {
            this.q = z;
        }
    }

    public class a implements View.OnClickListener {
        public final View b;
        public final Object c;
        public final int d;

        public a(View view, Object obj, int i) {
            this.b = view;
            this.c = obj;
            this.d = i;
        }

        @Override
        public void onClick(View view) {
            RecyclerAdapter.this.d(this.b, this.c, this.d);
            RecyclerAdapter recyclerAdapter = RecyclerAdapter.this;
            AdapterView.OnItemClickListener onItemClickListener = recyclerAdapter.p;
            if (onItemClickListener != null) {
                View view2 = this.b;
                int i = this.d;
                onItemClickListener.onItemClick(null, view2, i, recyclerAdapter.getItemId(i));
            }
        }
    }

    public class b implements View.OnLongClickListener {
        public final View b;
        public final Object c;
        public final int d;

        public b(View view, Object obj, int i) {
            this.b = view;
            this.c = obj;
            this.d = i;
        }

        @Override
        public boolean onLongClick(View view) {
            return RecyclerAdapter.this.g(this.b, this.c, this.d);
        }
    }

    public RecyclerAdapter(List list) {
        this.o = list;
    }

    @Override
    public void onBindViewHolder(Holder holder, int i) {
        Object obj = this.o.get(i);
        if (obj == null) {
            return;
        }
        c(holder, i, obj);
        View view = holder.itemView;
        if (holder.p) {
            view.setOnClickListener(new a(view, obj, i));
        }
        if (holder.q) {
            view.setOnLongClickListener(new b(view, obj, i));
        }
    }

    public abstract void c(Holder holder, int i, Object obj);

    public void d(View view, Object obj, int i) {
    }

    public boolean g(View view, Object obj, int i) {
        return false;
    }

    public List<T> getDataList() {
        return this.o;
    }

    @Override
    public int getItemCount() {
        List list = this.o;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.p = onItemClickListener;
    }
}
