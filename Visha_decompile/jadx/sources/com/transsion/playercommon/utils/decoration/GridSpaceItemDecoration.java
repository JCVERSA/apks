package com.transsion.playercommon.utils.decoration;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.av3;

public class GridSpaceItemDecoration extends RecyclerView.ItemDecoration {
    public int b;
    public int c;
    public boolean d;
    public int e;

    public GridSpaceItemDecoration(int i, int i2) {
        this.b = i;
        this.c = i2;
        this.d = av3.z();
        this.e = 4;
    }

    public void a(Rect rect, int i) {
        int i2 = this.b;
        int i3 = i % i2;
        if (this.d) {
            int i4 = this.c;
            if (i3 != 0) {
                i4 /= this.e;
            }
            rect.right = i4;
            rect.left = i3 == i2 + (-1) ? this.c : this.c / this.e;
            return;
        }
        int i5 = this.c;
        if (i3 != 0) {
            i5 /= this.e;
        }
        rect.left = i5;
        rect.right = i3 == i2 + (-1) ? this.c : this.c / this.e;
    }

    @Override
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        a(rect, recyclerView.getChildAdapterPosition(view));
    }

    public GridSpaceItemDecoration(int i, int i2, int i3) {
        this.b = i;
        this.c = i2;
        this.d = av3.z();
        this.e = i3;
    }
}
