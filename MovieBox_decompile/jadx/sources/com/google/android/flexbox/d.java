package com.google.android.flexbox;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

public class d extends RecyclerView.l {

    private static final int[] f27337c = {R.attr.listDivider};

    private Drawable f27338a;

    private int f27339b;

    public d(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(f27337c);
        this.f27338a = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
        l(3);
    }

    private void d(Canvas canvas, RecyclerView recyclerView) {
        int top;
        int intrinsicHeight;
        int left;
        int right;
        int i10;
        int iMin;
        int left2;
        if (g()) {
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) recyclerView.getLayoutManager();
            int flexDirection = flexboxLayoutManager.getFlexDirection();
            int left3 = recyclerView.getLeft() - recyclerView.getPaddingLeft();
            int right2 = recyclerView.getRight() + recyclerView.getPaddingRight();
            int childCount = recyclerView.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = recyclerView.getChildAt(i11);
                RecyclerView.n nVar = (RecyclerView.n) childAt.getLayoutParams();
                if (flexDirection == 3) {
                    intrinsicHeight = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
                    top = this.f27338a.getIntrinsicHeight() + intrinsicHeight;
                } else {
                    top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) nVar).topMargin;
                    intrinsicHeight = top - this.f27338a.getIntrinsicHeight();
                }
                if (flexboxLayoutManager.isMainAxisDirectionHorizontal()) {
                    if (flexboxLayoutManager.Q()) {
                        iMin = Math.min(childAt.getRight() + ((ViewGroup.MarginLayoutParams) nVar).rightMargin + this.f27338a.getIntrinsicWidth(), right2);
                        left2 = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) nVar).leftMargin;
                    } else {
                        left = Math.max((childAt.getLeft() - ((ViewGroup.MarginLayoutParams) nVar).leftMargin) - this.f27338a.getIntrinsicWidth(), left3);
                        right = childAt.getRight();
                        i10 = ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
                    }
                    this.f27338a.setBounds(left2, intrinsicHeight, iMin, top);
                    this.f27338a.draw(canvas);
                } else {
                    left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) nVar).leftMargin;
                    right = childAt.getRight();
                    i10 = ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
                }
                int i12 = left;
                iMin = right + i10;
                left2 = i12;
                this.f27338a.setBounds(left2, intrinsicHeight, iMin, top);
                this.f27338a.draw(canvas);
            }
        }
    }

    private void e(Canvas canvas, RecyclerView recyclerView) {
        int left;
        int intrinsicWidth;
        int iMax;
        int bottom;
        int i10;
        int i11;
        if (h()) {
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) recyclerView.getLayoutManager();
            int top = recyclerView.getTop() - recyclerView.getPaddingTop();
            int bottom2 = recyclerView.getBottom() + recyclerView.getPaddingBottom();
            int childCount = recyclerView.getChildCount();
            int flexDirection = flexboxLayoutManager.getFlexDirection();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = recyclerView.getChildAt(i12);
                RecyclerView.n nVar = (RecyclerView.n) childAt.getLayoutParams();
                if (flexboxLayoutManager.Q()) {
                    intrinsicWidth = childAt.getRight() + ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
                    left = this.f27338a.getIntrinsicWidth() + intrinsicWidth;
                } else {
                    left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) nVar).leftMargin;
                    intrinsicWidth = left - this.f27338a.getIntrinsicWidth();
                }
                if (flexboxLayoutManager.isMainAxisDirectionHorizontal()) {
                    iMax = childAt.getTop() - ((ViewGroup.MarginLayoutParams) nVar).topMargin;
                    bottom = childAt.getBottom();
                    i10 = ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
                } else {
                    if (flexDirection == 3) {
                        int iMin = Math.min(childAt.getBottom() + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin + this.f27338a.getIntrinsicHeight(), bottom2);
                        iMax = childAt.getTop() - ((ViewGroup.MarginLayoutParams) nVar).topMargin;
                        i11 = iMin;
                    } else {
                        iMax = Math.max((childAt.getTop() - ((ViewGroup.MarginLayoutParams) nVar).topMargin) - this.f27338a.getIntrinsicHeight(), top);
                        bottom = childAt.getBottom();
                        i10 = ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
                    }
                    this.f27338a.setBounds(intrinsicWidth, iMax, left, i11);
                    this.f27338a.draw(canvas);
                }
                i11 = bottom + i10;
                this.f27338a.setBounds(intrinsicWidth, iMax, left, i11);
                this.f27338a.draw(canvas);
            }
        }
    }

    private boolean f(int i10, List list, FlexboxLayoutManager flexboxLayoutManager) {
        int iN = flexboxLayoutManager.N(i10);
        if ((iN == -1 || iN >= flexboxLayoutManager.getFlexLinesInternal().size() || ((b) flexboxLayoutManager.getFlexLinesInternal().get(iN)).f27324o != i10) && i10 != 0) {
            return list.size() != 0 && ((b) list.get(list.size() - 1)).f27325p == i10 - 1;
        }
        return true;
    }

    private boolean g() {
        return (this.f27339b & 1) > 0;
    }

    private boolean h() {
        return (this.f27339b & 2) > 0;
    }

    private void j(Rect rect, int i10, FlexboxLayoutManager flexboxLayoutManager, List list) {
        if (list.size() == 0 || flexboxLayoutManager.N(i10) == 0) {
            return;
        }
        if (flexboxLayoutManager.isMainAxisDirectionHorizontal()) {
            if (g()) {
                rect.top = this.f27338a.getIntrinsicHeight();
                rect.bottom = 0;
                return;
            } else {
                rect.top = 0;
                rect.bottom = 0;
                return;
            }
        }
        if (h()) {
            if (flexboxLayoutManager.Q()) {
                rect.right = this.f27338a.getIntrinsicWidth();
                rect.left = 0;
            } else {
                rect.left = this.f27338a.getIntrinsicWidth();
                rect.right = 0;
            }
        }
    }

    private void k(Rect rect, int i10, FlexboxLayoutManager flexboxLayoutManager, List list, int i11) {
        if (f(i10, list, flexboxLayoutManager)) {
            return;
        }
        if (flexboxLayoutManager.isMainAxisDirectionHorizontal()) {
            if (!h()) {
                rect.left = 0;
                rect.right = 0;
                return;
            } else if (flexboxLayoutManager.Q()) {
                rect.right = this.f27338a.getIntrinsicWidth();
                rect.left = 0;
                return;
            } else {
                rect.left = this.f27338a.getIntrinsicWidth();
                rect.right = 0;
                return;
            }
        }
        if (!g()) {
            rect.top = 0;
            rect.bottom = 0;
        } else if (i11 == 3) {
            rect.bottom = this.f27338a.getIntrinsicHeight();
            rect.top = 0;
        } else {
            rect.top = this.f27338a.getIntrinsicHeight();
            rect.bottom = 0;
        }
    }

    @Override
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.x xVar) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition == 0) {
            return;
        }
        if (!g() && !h()) {
            rect.set(0, 0, 0, 0);
            return;
        }
        FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) recyclerView.getLayoutManager();
        List listM = flexboxLayoutManager.M();
        k(rect, childAdapterPosition, flexboxLayoutManager, listM, flexboxLayoutManager.getFlexDirection());
        j(rect, childAdapterPosition, flexboxLayoutManager, listM);
    }

    public void i(Drawable drawable) {
        if (drawable == null) {
            throw new IllegalArgumentException("Drawable cannot be null.");
        }
        this.f27338a = drawable;
    }

    public void l(int i10) {
        this.f27339b = i10;
    }

    @Override
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.x xVar) {
        d(canvas, recyclerView);
        e(canvas, recyclerView);
    }
}
