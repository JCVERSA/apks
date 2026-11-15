package com.cloud.tmc.miniapp.widget;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;

public final class OooO0O0 extends RecyclerView.l {
    public int OooO00o = Color.parseColor("#cccccc");
    public int OooO0O0;
    public boolean OooO0OO;
    public boolean OooO0Oo;
    public Paint OooO0o;
    public int OooO0o0;
    public Bitmap OooO0oO;

    public static final class OooO00o {
        public int OooO00o;
        public int OooO0O0 = Color.parseColor("#cccccc");
        public int OooO0OO;
        public boolean OooO0Oo;
        public boolean OooO0o0;
    }

    public final boolean OooO00o(int i10, int i11) {
        return (i10 + 1) % i11 == 0;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005e  */
    /* JADX WARN: Code duplicated, block: B:8:0x0030  */
    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        int i10 = this.OooO0o0;
        if (i10 == 0) {
            if (this.OooO0Oo) {
                outRect.set(0, 0, 0, this.OooO0O0);
            } else {
                int childLayoutPosition = parent.getChildLayoutPosition(view);
                RecyclerView.Adapter adapter = parent.getAdapter();
                Intrinsics.e(adapter);
                if (childLayoutPosition != adapter.getItemCount() - 1) {
                    outRect.set(0, 0, 0, this.OooO0O0);
                }
            }
            if (this.OooO0OO && parent.getChildLayoutPosition(view) == 0) {
                int i11 = this.OooO0O0;
                outRect.set(0, i11, 0, i11);
                return;
            }
            return;
        }
        if (i10 == 1) {
            if (this.OooO0Oo) {
                outRect.set(0, 0, this.OooO0O0, 0);
            } else {
                int childLayoutPosition2 = parent.getChildLayoutPosition(view);
                RecyclerView.Adapter adapter2 = parent.getAdapter();
                Intrinsics.e(adapter2);
                if (childLayoutPosition2 != adapter2.getItemCount() - 1) {
                    outRect.set(0, 0, this.OooO0O0, 0);
                }
            }
            if (this.OooO0OO && parent.getChildLayoutPosition(view) == 0) {
                int i12 = this.OooO0O0;
                outRect.set(i12, 0, i12, 0);
                return;
            }
            return;
        }
        if (i10 == 2) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) parent.getLayoutManager();
            Intrinsics.e(gridLayoutManager);
            int iU = gridLayoutManager.U();
            RecyclerView.Adapter adapter3 = parent.getAdapter();
            Intrinsics.e(adapter3);
            int itemCount = adapter3.getItemCount();
            if (OooO00o(parent.getChildLayoutPosition(view), itemCount, iU) && OooO00o(parent.getChildLayoutPosition(view), iU)) {
                outRect.set(0, 0, 0, 0);
                return;
            }
            if (OooO00o(parent.getChildLayoutPosition(view), itemCount, iU)) {
                outRect.set(0, 0, this.OooO0O0, 0);
            } else if ((parent.getChildLayoutPosition(view) + 1) % iU == 0) {
                outRect.set(0, 0, 0, this.OooO0O0);
            } else {
                int i13 = this.OooO0O0;
                outRect.set(0, 0, i13, i13);
            }
        }
    }

    @Override
    public void onDraw(Canvas c10, RecyclerView parent, RecyclerView.x state) {
        Intrinsics.h(c10, "c");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        Paint paint = this.OooO0o;
        if (paint != null) {
            paint.setColor(this.OooO00o);
        }
        int i10 = this.OooO0o0;
        int i11 = 2;
        int i12 = 0;
        if (i10 == 0) {
            int childCount = parent.getChildCount();
            if (this.OooO0OO) {
                float top = parent.getChildAt(0).getTop() - (this.OooO0O0 / 2);
                float width = parent.getWidth();
                Paint paint2 = this.OooO0o;
                Intrinsics.e(paint2);
                c10.drawLine(0, top, width, top, paint2);
            }
            for (int i13 = 0; i13 < childCount; i13++) {
                if (!this.OooO0Oo && i13 == childCount - 1) {
                    return;
                }
                float bottom = (this.OooO0O0 / 2) + parent.getChildAt(i13).getBottom();
                float width2 = parent.getWidth();
                Paint paint3 = this.OooO0o;
                Intrinsics.e(paint3);
                c10.drawLine(0, bottom, width2, bottom, paint3);
            }
            return;
        }
        if (i10 == 1) {
            int childCount2 = parent.getChildCount();
            if (this.OooO0OO) {
                float left = parent.getChildAt(0).getLeft() - (this.OooO0O0 / 2);
                float height = parent.getHeight();
                Paint paint4 = this.OooO0o;
                Intrinsics.e(paint4);
                c10.drawLine(left, 0, left, height, paint4);
            }
            for (int i14 = 0; i14 < childCount2; i14++) {
                if (!this.OooO0Oo && i14 == childCount2 - 1) {
                    return;
                }
                float right = (this.OooO0O0 / 2) + parent.getChildAt(i14).getRight();
                float height2 = parent.getHeight();
                Paint paint5 = this.OooO0o;
                Intrinsics.e(paint5);
                c10.drawLine(right, 0, right, height2, paint5);
            }
            return;
        }
        if (i10 != 2) {
            return;
        }
        int childCount3 = parent.getChildCount();
        GridLayoutManager gridLayoutManager = (GridLayoutManager) parent.getLayoutManager();
        Intrinsics.e(gridLayoutManager);
        int iU = gridLayoutManager.U();
        RecyclerView.Adapter adapter = parent.getAdapter();
        Intrinsics.e(adapter);
        int itemCount = adapter.getItemCount();
        while (i12 < childCount3) {
            View childAt = parent.getChildAt(i12);
            int right2 = (this.OooO0O0 / i11) + childAt.getRight();
            int bottom2 = (this.OooO0O0 / i11) + childAt.getBottom();
            if (!OooO00o(i12, itemCount, iU)) {
                float left2 = childAt.getLeft();
                float f10 = bottom2;
                float right3 = childAt.getRight() + this.OooO0O0;
                Paint paint6 = this.OooO0o;
                Intrinsics.e(paint6);
                c10.drawLine(left2, f10, right3, f10, paint6);
            }
            if (OooO00o(i12, itemCount, iU) && !OooO00o(i12, iU)) {
                float f11 = right2;
                float top2 = childAt.getTop();
                float bottom3 = childAt.getBottom();
                Paint paint7 = this.OooO0o;
                Intrinsics.e(paint7);
                c10.drawLine(f11, top2, f11, bottom3, paint7);
            } else if (!OooO00o(i12, iU)) {
                float f12 = right2;
                float top3 = childAt.getTop();
                float f13 = bottom2;
                Paint paint8 = this.OooO0o;
                Intrinsics.e(paint8);
                c10.drawLine(f12, top3, f12, f13, paint8);
            }
            i12++;
            i11 = 2;
        }
    }

    public final boolean OooO00o(int i10, int i11, int i12) {
        return i10 / i12 == (i11 - 1) / i12;
    }
}
