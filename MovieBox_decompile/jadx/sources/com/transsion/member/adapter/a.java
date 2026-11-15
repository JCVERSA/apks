package com.transsion.member.adapter;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;

public final class a extends RecyclerView.l {

    private final int f45003a;

    private final int f45004b;

    public a(int i10, int i11) {
        this.f45003a = i10;
        this.f45004b = i11;
    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        int i10 = this.f45003a;
        int i11 = childAdapterPosition % i10;
        int i12 = this.f45004b;
        outRect.left = ((i10 - i11) * i12) / i10;
        outRect.right = (i12 * (i11 + 1)) / i10;
    }
}
