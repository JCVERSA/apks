package com.transsion.tools.decoration;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.av3;

public class GridSpaceThemeColorItemDecoration extends RecyclerView.ItemDecoration {
    public final int b;
    public final int c;
    public final boolean d = av3.z();
    public final int e;

    public GridSpaceThemeColorItemDecoration(int i, int i2, int i3) {
        this.b = i;
        this.c = i2;
        this.e = i3;
    }

    public void a(Rect rect, int i) {
        int i2 = this.c / 2;
        rect.left = i2;
        rect.right = i2;
        rect.top = this.e;
    }

    @Override
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        a(rect, recyclerView.getChildAdapterPosition(view));
    }
}
