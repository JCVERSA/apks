package com.transsion.video_edit;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.olb;

public class ThumbItemDecoration extends RecyclerView.ItemDecoration {
    public int b;
    public int c;
    public boolean d;

    public ThumbItemDecoration(int i, int i2) {
        this.d = false;
        this.b = i;
        this.c = i2;
        this.d = olb.l0();
    }

    @Override
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        int childLayoutPosition = recyclerView.getChildLayoutPosition(view);
        if (childLayoutPosition == 0) {
            int i = this.b;
            rect.left = i;
            rect.right = 0;
            if (this.d) {
                rect.right = i;
                rect.left = 0;
                return;
            }
            return;
        }
        if (childLayoutPosition == recyclerView.getAdapter().getItemCount() - 1) {
            int i2 = this.c;
            rect.right = i2;
            rect.left = 0;
            if (this.d) {
                rect.right = 0;
                rect.left = i2;
            }
        }
    }
}
