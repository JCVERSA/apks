package com.transsion.moviedetail.staff;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

public final class u extends RecyclerView.l {

    private int f45605a;

    private int f45606b;

    private int f45607c;

    private int f45608d;

    private final int f45609e;

    public u(int i10, int i11, int i12, int i13, int i14) {
        this.f45605a = i10;
        this.f45606b = i11;
        this.f45607c = i12;
        this.f45608d = i13;
        this.f45609e = i14;
    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        RecyclerView.m layoutManager = parent.getLayoutManager();
        boolean z10 = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        if (layoutManager instanceof GridLayoutManager) {
            int i10 = this.f45609e;
            if (i10 <= 0) {
                i10 = 1;
            }
            int i11 = childAdapterPosition % i10;
            RecyclerView.Adapter adapter = parent.getAdapter();
            Intrinsics.f(adapter, "null cannot be cast to non-null type com.transsion.moviedetail.staff.MovieStaffAdapter");
            int itemViewType = ((s) adapter).getItemViewType(childAdapterPosition);
            if (itemViewType != 1) {
                if (itemViewType != 2) {
                    outRect.left = 0;
                    outRect.right = 0;
                } else {
                    int i12 = this.f45605a;
                    outRect.left = i12;
                    outRect.right = i12;
                }
            } else if (z10) {
                if (i11 == 0) {
                    outRect.right = this.f45605a;
                    outRect.left = this.f45606b;
                } else if (i11 == this.f45609e - 1) {
                    outRect.right = this.f45606b;
                    outRect.left = this.f45605a;
                } else {
                    int i13 = this.f45606b;
                    outRect.left = i13;
                    outRect.right = i13;
                }
            } else if (i11 == 0) {
                outRect.left = this.f45605a;
                outRect.right = this.f45606b;
            } else if (i11 == this.f45609e - 1) {
                outRect.left = this.f45606b;
                outRect.right = this.f45605a;
            } else {
                int i14 = this.f45606b;
                outRect.left = i14;
                outRect.right = i14;
            }
            outRect.bottom = this.f45608d;
        }
    }
}
