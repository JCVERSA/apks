package com.transsion.onlinevideo.adapter;

import android.graphics.Color;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.onlinevideo.R;
import defpackage.se;
import defpackage.ub9;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

public class SelectionAdapter extends RecyclerView.Adapter<b> {
    public final List o;
    public a p;
    public final int q;
    public final int r = Color.parseColor("#DEDEDE");
    public boolean s;

    public interface a {
        void a(int i, ub9 ub9Var);
    }

    public class b extends RecyclerView.ViewHolder {
        public final TextView p;
        public final ImageView q;
        public final ImageView r;
        public final View s;

        public b(View view) {
            super(view);
            this.p = (TextView) view.findViewById(R.id.tv_text);
            this.q = (ImageView) view.findViewById(R.id.iv_check);
            this.s = view.findViewById(R.id.item_root);
            this.r = (ImageView) view.findViewById(R.id.iv_vip);
        }

        public void b(final ub9 ub9Var, final int i) {
            LogUtils.v("SelectionAdapter", "SelectionItem: " + ub9Var.a() + " " + ub9Var.c());
            this.p.setText(ub9Var.a());
            int i2 = 4;
            this.q.setVisibility(ub9Var.c() ? 0 : 4);
            this.p.setTextColor(ub9Var.c() ? SelectionAdapter.this.q : SelectionAdapter.this.r);
            this.p.setTextAppearance(ub9Var.c() ? R.style.os_semibold_font : -1);
            ImageView imageView = this.r;
            if (ub9Var.b()) {
                i2 = 0;
            } else if (!SelectionAdapter.this.s) {
                i2 = 8;
            }
            imageView.setVisibility(i2);
            this.s.setClickable(true);
            this.s.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.c(i, ub9Var, view);
                }
            });
        }

        public final void c(int i, ub9 ub9Var, View view) {
            if (SelectionAdapter.this.p != null) {
                SelectionAdapter.this.p.a(i, ub9Var);
            }
        }
    }

    public SelectionAdapter(List list) {
        list = list == null ? new ArrayList() : list;
        this.o = list;
        TypedValue typedValue = new TypedValue();
        se.a().getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.q = typedValue.data;
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                this.b.i((ub9) obj);
            }
        });
    }

    @Override
    public int getItemCount() {
        return this.o.size();
    }

    public final void i(ub9 ub9Var) {
        if (ub9Var.b()) {
            this.s = true;
        }
    }

    @Override
    public void onBindViewHolder(b bVar, int i) {
        bVar.b((ub9) this.o.get(i), i);
    }

    @Override
    public b onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_selection, viewGroup, false));
    }

    public void r(int i) {
        int i2 = 0;
        while (i2 < this.o.size()) {
            ((ub9) this.o.get(i2)).e(i2 == i);
            i2++;
        }
        notifyDataSetChanged();
    }

    public void setOnItemClickListener(a aVar) {
        this.p = aVar;
    }
}
