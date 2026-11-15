package com.yanzhenjie.recyclerview.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

public class BorderItemDecoration extends RecyclerView.ItemDecoration {
    public final int b;
    public final int c;

    @Override
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int i = this.b;
        int i2 = this.c;
        rect.set(i, i2, i, i2);
    }

    @Override
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        canvas.save();
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager.getChildCount() <= 0) {
            canvas.restore();
        } else {
            layoutManager.getChildAt(0);
            throw null;
        }
    }
}
