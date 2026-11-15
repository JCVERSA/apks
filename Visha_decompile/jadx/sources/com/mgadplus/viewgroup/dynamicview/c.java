package com.mgadplus.viewgroup.dynamicview;

import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

public class c extends RecyclerView.ViewHolder {
    public final SparseArray p;

    public c(View view) {
        super(view);
        this.p = new SparseArray();
    }

    public View b() {
        return this.itemView;
    }

    public View getView(int i) {
        View view = (View) this.p.get(i);
        if (view != null) {
            return view;
        }
        View viewFindViewById = this.itemView.findViewById(i);
        this.p.put(i, viewFindViewById);
        return viewFindViewById;
    }
}
