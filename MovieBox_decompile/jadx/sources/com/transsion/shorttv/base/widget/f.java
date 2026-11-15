package com.transsion.shorttv.base.widget;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

public final class f extends RecyclerView.l {

    private final int f50904a;

    public f(int i10) {
        this.f50904a = i10;
    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        if (TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) != 1) {
            if (childAdapterPosition == 0) {
                outRect.left = 0;
                return;
            } else {
                outRect.left = this.f50904a;
                return;
            }
        }
        RecyclerView.Adapter adapter = parent.getAdapter();
        if (childAdapterPosition == (adapter != null ? adapter.getItemCount() : 0) - 1) {
            outRect.left = 0;
        } else {
            outRect.left = this.f50904a;
        }
    }
}
