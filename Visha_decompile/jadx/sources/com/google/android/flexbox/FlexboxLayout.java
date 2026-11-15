package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import defpackage.dy3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class FlexboxLayout extends ViewGroup implements dy3 {
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public Drawable h;
    public Drawable i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int[] n;
    public SparseIntArray o;
    public b p;
    public List q;
    public b.C0088b r;

    public FlexboxLayout(Context context) {
        this(context, null);
    }

    public final boolean a(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (((a) this.q.get(i2)).c() > 0) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.o == null) {
            this.o = new SparseIntArray(getChildCount());
        }
        this.n = this.p.n(view, i, layoutParams, this.o);
        super.addView(view, i, layoutParams);
    }

    public final boolean b(int i, int i2) {
        for (int i3 = 1; i3 <= i2; i3++) {
            View reorderedChildAt = getReorderedChildAt(i - i3);
            if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    public final void c(Canvas canvas, boolean z, boolean z2) {
        int paddingLeft = getPaddingLeft();
        int iMax = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.q.size();
        for (int i = 0; i < size; i++) {
            a aVar = (a) this.q.get(i);
            for (int i2 = 0; i2 < aVar.h; i2++) {
                int i3 = aVar.o + i2;
                View reorderedChildAt = getReorderedChildAt(i3);
                if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    if (g(i3, i2)) {
                        f(canvas, z ? reorderedChildAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : (reorderedChildAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.m, aVar.b, aVar.g);
                    }
                    if (i2 == aVar.h - 1 && (this.k & 4) > 0) {
                        f(canvas, z ? (reorderedChildAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.m : reorderedChildAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, aVar.b, aVar.g);
                    }
                }
            }
            if (h(i)) {
                e(canvas, paddingLeft, z2 ? aVar.d : aVar.b - this.l, iMax);
            }
            if (i(i) && (this.j & 4) > 0) {
                e(canvas, paddingLeft, z2 ? aVar.b - this.l : aVar.d, iMax);
            }
        }
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final void d(Canvas canvas, boolean z, boolean z2) {
        int paddingTop = getPaddingTop();
        int iMax = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.q.size();
        for (int i = 0; i < size; i++) {
            a aVar = (a) this.q.get(i);
            for (int i2 = 0; i2 < aVar.h; i2++) {
                int i3 = aVar.o + i2;
                View reorderedChildAt = getReorderedChildAt(i3);
                if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    if (g(i3, i2)) {
                        e(canvas, aVar.a, z2 ? reorderedChildAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : (reorderedChildAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.l, aVar.g);
                    }
                    if (i2 == aVar.h - 1 && (this.j & 4) > 0) {
                        e(canvas, aVar.a, z2 ? (reorderedChildAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.l : reorderedChildAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, aVar.g);
                    }
                }
            }
            if (h(i)) {
                f(canvas, z ? aVar.c : aVar.a - this.m, paddingTop, iMax);
            }
            if (i(i) && (this.k & 4) > 0) {
                f(canvas, z ? aVar.a - this.m : aVar.c, paddingTop, iMax);
            }
        }
    }

    public final void e(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.h;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, i2, i3 + i, this.l + i2);
        this.h.draw(canvas);
    }

    public final void f(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.i;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, i2, this.m + i, i3 + i2);
        this.i.draw(canvas);
    }

    public final boolean g(int i, int i2) {
        if (b(i, i2)) {
            if (isMainAxisDirectionHorizontal()) {
                return (this.k & 1) != 0;
            }
            return (this.j & 1) != 0;
        }
        if (isMainAxisDirectionHorizontal()) {
            return (this.k & 2) != 0;
        }
        return (this.j & 2) != 0;
    }

    @Override
    public int getAlignContent() {
        return this.f;
    }

    @Override
    public int getAlignItems() {
        return this.e;
    }

    @Override
    public int getChildHeightMeasureSpec(int i, int i2, int i3) {
        return ViewGroup.getChildMeasureSpec(i, i2, i3);
    }

    @Override
    public int getChildWidthMeasureSpec(int i, int i2, int i3) {
        return ViewGroup.getChildMeasureSpec(i, i2, i3);
    }

    @Override
    public int getDecorationLengthCrossAxis(View view) {
        return 0;
    }

    @Override
    public int getDecorationLengthMainAxis(View view, int i, int i2) {
        int i3;
        int i4;
        if (isMainAxisDirectionHorizontal()) {
            i3 = g(i, i2) ? this.m : 0;
            if ((this.k & 4) <= 0) {
                return i3;
            }
            i4 = this.m;
        } else {
            i3 = g(i, i2) ? this.l : 0;
            if ((this.j & 4) <= 0) {
                return i3;
            }
            i4 = this.l;
        }
        return i3 + i4;
    }

    @Nullable
    public Drawable getDividerDrawableHorizontal() {
        return this.h;
    }

    @Nullable
    public Drawable getDividerDrawableVertical() {
        return this.i;
    }

    @Override
    public int getFlexDirection() {
        return this.b;
    }

    @Override
    public View getFlexItemAt(int i) {
        return getChildAt(i);
    }

    @Override
    public int getFlexItemCount() {
        return getChildCount();
    }

    public List<a> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.q.size());
        for (a aVar : this.q) {
            if (aVar.c() != 0) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    @Override
    public List<a> getFlexLinesInternal() {
        return this.q;
    }

    @Override
    public int getFlexWrap() {
        return this.c;
    }

    public int getJustifyContent() {
        return this.d;
    }

    @Override
    public int getLargestMainSize() {
        Iterator it = this.q.iterator();
        int iMax = Integer.MIN_VALUE;
        while (it.hasNext()) {
            iMax = Math.max(iMax, ((a) it.next()).e);
        }
        return iMax;
    }

    @Override
    public int getMaxLine() {
        return this.g;
    }

    public View getReorderedChildAt(int i) {
        if (i < 0) {
            return null;
        }
        int[] iArr = this.n;
        if (i >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[i]);
    }

    @Override
    public View getReorderedFlexItemAt(int i) {
        return getReorderedChildAt(i);
    }

    public int getShowDividerHorizontal() {
        return this.j;
    }

    public int getShowDividerVertical() {
        return this.k;
    }

    @Override
    public int getSumOfCrossSize() {
        int size = this.q.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            a aVar = (a) this.q.get(i2);
            if (h(i2)) {
                i += isMainAxisDirectionHorizontal() ? this.l : this.m;
            }
            if (i(i2)) {
                i += isMainAxisDirectionHorizontal() ? this.l : this.m;
            }
            i += aVar.g;
        }
        return i;
    }

    public final boolean h(int i) {
        if (i < 0 || i >= this.q.size()) {
            return false;
        }
        if (a(i)) {
            if (isMainAxisDirectionHorizontal()) {
                return (this.j & 1) != 0;
            }
            return (this.k & 1) != 0;
        }
        if (isMainAxisDirectionHorizontal()) {
            return (this.j & 2) != 0;
        }
        return (this.k & 2) != 0;
    }

    public final boolean i(int i) {
        if (i < 0 || i >= this.q.size()) {
            return false;
        }
        for (int i2 = i + 1; i2 < this.q.size(); i2++) {
            if (((a) this.q.get(i2)).c() > 0) {
                return false;
            }
        }
        if (isMainAxisDirectionHorizontal()) {
            return (this.j & 4) != 0;
        }
        return (this.k & 4) != 0;
    }

    @Override
    public boolean isMainAxisDirectionHorizontal() {
        int i = this.b;
        return i == 0 || i == 1;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00df  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:48:0x0108  */
    /* JADX WARN: Code duplicated, block: B:49:0x0112  */
    /* JADX WARN: Code duplicated, block: B:52:0x011b  */
    /* JADX WARN: Code duplicated, block: B:54:0x0123  */
    /* JADX WARN: Code duplicated, block: B:55:0x0128  */
    /* JADX WARN: Code duplicated, block: B:59:0x0131 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x0133  */
    /* JADX WARN: Code duplicated, block: B:61:0x0166  */
    /* JADX WARN: Code duplicated, block: B:62:0x0190  */
    /* JADX WARN: Code duplicated, block: B:64:0x019d  */
    /* JADX WARN: Code duplicated, block: B:65:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:68:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:69:0x0200  */
    /* JADX WARN: Code duplicated, block: B:71:0x020f  */
    public final void j(boolean z, int i, int i2, int i3, int i4) {
        float measuredWidth;
        float f;
        float f2;
        float fMax;
        int i5;
        int i6;
        View reorderedChildAt;
        int i7;
        int i8;
        int i9;
        char c;
        LayoutParams layoutParams;
        float f3;
        float f4;
        float f5;
        int i10;
        char c2;
        int i11;
        LayoutParams layoutParams2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i12 = i3 - i;
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        int paddingTop = getPaddingTop();
        int size = this.q.size();
        int i13 = 0;
        while (i13 < size) {
            a aVar = (a) this.q.get(i13);
            if (h(i13)) {
                int i14 = this.l;
                paddingBottom -= i14;
                paddingTop += i14;
            }
            int i15 = this.d;
            char c3 = 4;
            int i16 = 1;
            if (i15 == 0) {
                measuredWidth = paddingLeft;
                f = i12 - paddingRight;
            } else if (i15 != 1) {
                if (i15 == 2) {
                    int i17 = aVar.e;
                    measuredWidth = paddingLeft + ((i12 - i17) / 2.0f);
                    f = (i12 - paddingRight) - ((i12 - i17) / 2.0f);
                } else if (i15 == 3) {
                    measuredWidth = paddingLeft;
                    int iC = aVar.c();
                    f2 = (i12 - aVar.e) / (iC != 1 ? iC - 1 : 1.0f);
                    f = i12 - paddingRight;
                } else if (i15 == 4) {
                    int iC2 = aVar.c();
                    f2 = iC2 != 0 ? (i12 - aVar.e) / iC2 : 0.0f;
                    float f6 = f2 / 2.0f;
                    measuredWidth = paddingLeft + f6;
                    f = (i12 - paddingRight) - f6;
                } else {
                    if (i15 != 5) {
                        throw new IllegalStateException("Invalid justifyContent is set: " + this.d);
                    }
                    int iC3 = aVar.c();
                    f2 = iC3 != 0 ? (i12 - aVar.e) / (iC3 + 1) : 0.0f;
                    measuredWidth = paddingLeft + f2;
                    f = (i12 - paddingRight) - f2;
                }
                fMax = Math.max(f2, 0.0f);
                i5 = 0;
                while (i5 < aVar.h) {
                    i6 = aVar.o + i5;
                    reorderedChildAt = getReorderedChildAt(i6);
                    if (reorderedChildAt != null) {
                        i7 = paddingLeft;
                        i8 = i16;
                        i9 = i5;
                        c = c3;
                    } else if (reorderedChildAt.getVisibility() == 8) {
                        i7 = paddingLeft;
                        i8 = i16;
                        i9 = i5;
                        c = 4;
                    } else {
                        layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                        f3 = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                        f4 = f - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        if (g(i6, i5)) {
                            int i18 = this.m;
                            float f7 = i18;
                            f3 += f7;
                            i10 = i18;
                            f5 = f4 - f7;
                        } else {
                            f5 = f4;
                            i10 = 0;
                        }
                        if (i5 == aVar.h - i16) {
                            c2 = 4;
                            i11 = (this.k & 4) > 0 ? this.m : 0;
                            if (this.c == 2) {
                                i7 = paddingLeft;
                                i8 = i16;
                                i9 = i5;
                                layoutParams2 = layoutParams;
                                c = c2;
                                if (z) {
                                    this.p.Q(reorderedChildAt, aVar, Math.round(f5) - reorderedChildAt.getMeasuredWidth(), paddingTop, Math.round(f5), paddingTop + reorderedChildAt.getMeasuredHeight());
                                } else {
                                    this.p.Q(reorderedChildAt, aVar, Math.round(f3), paddingTop, Math.round(f3) + reorderedChildAt.getMeasuredWidth(), paddingTop + reorderedChildAt.getMeasuredHeight());
                                }
                            } else if (z) {
                                i8 = i16;
                                i9 = i5;
                                i7 = paddingLeft;
                                layoutParams2 = layoutParams;
                                c = c2;
                                this.p.Q(reorderedChildAt, aVar, Math.round(f5) - reorderedChildAt.getMeasuredWidth(), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f5), paddingBottom);
                            } else {
                                i7 = paddingLeft;
                                i8 = i16;
                                i9 = i5;
                                layoutParams2 = layoutParams;
                                c = c2;
                                this.p.Q(reorderedChildAt, aVar, Math.round(f3), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f3) + reorderedChildAt.getMeasuredWidth(), paddingBottom);
                            }
                            measuredWidth = f3 + reorderedChildAt.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                            float measuredWidth2 = f5 - ((reorderedChildAt.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin);
                            if (z) {
                                aVar.d(reorderedChildAt, i11, 0, i10, 0);
                            } else {
                                aVar.d(reorderedChildAt, i10, 0, i11, 0);
                            }
                            f = measuredWidth2;
                        } else {
                            c2 = 4;
                        }
                        if (this.c == 2) {
                            i7 = paddingLeft;
                            i8 = i16;
                            i9 = i5;
                            layoutParams2 = layoutParams;
                            c = c2;
                            if (z) {
                                this.p.Q(reorderedChildAt, aVar, Math.round(f5) - reorderedChildAt.getMeasuredWidth(), paddingTop, Math.round(f5), paddingTop + reorderedChildAt.getMeasuredHeight());
                            } else {
                                this.p.Q(reorderedChildAt, aVar, Math.round(f3), paddingTop, Math.round(f3) + reorderedChildAt.getMeasuredWidth(), paddingTop + reorderedChildAt.getMeasuredHeight());
                            }
                        } else if (z) {
                            i8 = i16;
                            i9 = i5;
                            i7 = paddingLeft;
                            layoutParams2 = layoutParams;
                            c = c2;
                            this.p.Q(reorderedChildAt, aVar, Math.round(f5) - reorderedChildAt.getMeasuredWidth(), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f5), paddingBottom);
                        } else {
                            i7 = paddingLeft;
                            i8 = i16;
                            i9 = i5;
                            layoutParams2 = layoutParams;
                            c = c2;
                            this.p.Q(reorderedChildAt, aVar, Math.round(f3), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f3) + reorderedChildAt.getMeasuredWidth(), paddingBottom);
                        }
                        measuredWidth = f3 + reorderedChildAt.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                        float measuredWidth3 = f5 - ((reorderedChildAt.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin);
                        if (z) {
                            aVar.d(reorderedChildAt, i11, 0, i10, 0);
                        } else {
                            aVar.d(reorderedChildAt, i10, 0, i11, 0);
                        }
                        f = measuredWidth3;
                    }
                    i5 = i9 + 1;
                    c3 = c;
                    i16 = i8;
                    paddingLeft = i7;
                }
                int i19 = paddingLeft;
                int i20 = aVar.g;
                paddingTop += i20;
                paddingBottom -= i20;
                i13++;
                paddingLeft = i19;
            } else {
                int i21 = aVar.e;
                f = i21 - paddingLeft;
                measuredWidth = (i12 - i21) + paddingRight;
            }
            f2 = 0.0f;
            fMax = Math.max(f2, 0.0f);
            i5 = 0;
            while (i5 < aVar.h) {
                i6 = aVar.o + i5;
                reorderedChildAt = getReorderedChildAt(i6);
                if (reorderedChildAt != null) {
                    i7 = paddingLeft;
                    i8 = i16;
                    i9 = i5;
                    c = c3;
                } else if (reorderedChildAt.getVisibility() == 8) {
                    i7 = paddingLeft;
                    i8 = i16;
                    i9 = i5;
                    c = 4;
                } else {
                    layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    f3 = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    f4 = f - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    if (g(i6, i5)) {
                        int i110 = this.m;
                        float f8 = i110;
                        f3 += f8;
                        i10 = i110;
                        f5 = f4 - f8;
                    } else {
                        f5 = f4;
                        i10 = 0;
                    }
                    if (i5 == aVar.h - i16) {
                        c2 = 4;
                        if ((this.k & 4) > 0) {
                        }
                        if (this.c == 2) {
                            i7 = paddingLeft;
                            i8 = i16;
                            i9 = i5;
                            layoutParams2 = layoutParams;
                            c = c2;
                            if (z) {
                                this.p.Q(reorderedChildAt, aVar, Math.round(f5) - reorderedChildAt.getMeasuredWidth(), paddingTop, Math.round(f5), paddingTop + reorderedChildAt.getMeasuredHeight());
                            } else {
                                this.p.Q(reorderedChildAt, aVar, Math.round(f3), paddingTop, Math.round(f3) + reorderedChildAt.getMeasuredWidth(), paddingTop + reorderedChildAt.getMeasuredHeight());
                            }
                        } else if (z) {
                            i8 = i16;
                            i9 = i5;
                            i7 = paddingLeft;
                            layoutParams2 = layoutParams;
                            c = c2;
                            this.p.Q(reorderedChildAt, aVar, Math.round(f5) - reorderedChildAt.getMeasuredWidth(), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f5), paddingBottom);
                        } else {
                            i7 = paddingLeft;
                            i8 = i16;
                            i9 = i5;
                            layoutParams2 = layoutParams;
                            c = c2;
                            this.p.Q(reorderedChildAt, aVar, Math.round(f3), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f3) + reorderedChildAt.getMeasuredWidth(), paddingBottom);
                        }
                        measuredWidth = f3 + reorderedChildAt.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                        float measuredWidth4 = f5 - ((reorderedChildAt.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin);
                        if (z) {
                            aVar.d(reorderedChildAt, i11, 0, i10, 0);
                        } else {
                            aVar.d(reorderedChildAt, i10, 0, i11, 0);
                        }
                        f = measuredWidth4;
                    } else {
                        c2 = 4;
                    }
                    if (this.c == 2) {
                        i7 = paddingLeft;
                        i8 = i16;
                        i9 = i5;
                        layoutParams2 = layoutParams;
                        c = c2;
                        if (z) {
                            this.p.Q(reorderedChildAt, aVar, Math.round(f5) - reorderedChildAt.getMeasuredWidth(), paddingTop, Math.round(f5), paddingTop + reorderedChildAt.getMeasuredHeight());
                        } else {
                            this.p.Q(reorderedChildAt, aVar, Math.round(f3), paddingTop, Math.round(f3) + reorderedChildAt.getMeasuredWidth(), paddingTop + reorderedChildAt.getMeasuredHeight());
                        }
                    } else if (z) {
                        i8 = i16;
                        i9 = i5;
                        i7 = paddingLeft;
                        layoutParams2 = layoutParams;
                        c = c2;
                        this.p.Q(reorderedChildAt, aVar, Math.round(f5) - reorderedChildAt.getMeasuredWidth(), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f5), paddingBottom);
                    } else {
                        i7 = paddingLeft;
                        i8 = i16;
                        i9 = i5;
                        layoutParams2 = layoutParams;
                        c = c2;
                        this.p.Q(reorderedChildAt, aVar, Math.round(f3), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f3) + reorderedChildAt.getMeasuredWidth(), paddingBottom);
                    }
                    measuredWidth = f3 + reorderedChildAt.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                    float measuredWidth5 = f5 - ((reorderedChildAt.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin);
                    if (z) {
                        aVar.d(reorderedChildAt, i11, 0, i10, 0);
                    } else {
                        aVar.d(reorderedChildAt, i10, 0, i11, 0);
                    }
                    f = measuredWidth5;
                }
                i5 = i9 + 1;
                c3 = c;
                i16 = i8;
                paddingLeft = i7;
            }
            int i111 = paddingLeft;
            int i22 = aVar.g;
            paddingTop += i22;
            paddingBottom -= i22;
            i13++;
            paddingLeft = i111;
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:44:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:49:0x0102  */
    /* JADX WARN: Code duplicated, block: B:50:0x010e  */
    /* JADX WARN: Code duplicated, block: B:53:0x011a  */
    /* JADX WARN: Code duplicated, block: B:55:0x0122  */
    /* JADX WARN: Code duplicated, block: B:56:0x0127  */
    /* JADX WARN: Code duplicated, block: B:59:0x012d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x012f  */
    /* JADX WARN: Code duplicated, block: B:61:0x015e  */
    /* JADX WARN: Code duplicated, block: B:62:0x0186  */
    /* JADX WARN: Code duplicated, block: B:64:0x0190  */
    /* JADX WARN: Code duplicated, block: B:65:0x01af  */
    /* JADX WARN: Code duplicated, block: B:68:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:69:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:71:0x0207  */
    public final void k(boolean z, boolean z2, int i, int i2, int i3, int i4) {
        float f;
        int i5;
        float f2;
        float f3;
        float fMax;
        int i6;
        int i7;
        View reorderedChildAt;
        int i8;
        boolean z3;
        char c;
        LayoutParams layoutParams;
        float f4;
        float f5;
        float f6;
        float f7;
        int i9;
        char c2;
        int i10;
        LayoutParams layoutParams2;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int i11 = i4 - i2;
        int i12 = (i3 - i) - paddingRight;
        int size = this.q.size();
        for (int i13 = 0; i13 < size; i13++) {
            a aVar = (a) this.q.get(i13);
            if (h(i13)) {
                int i14 = this.m;
                paddingLeft += i14;
                i12 -= i14;
            }
            int i15 = this.d;
            char c3 = 4;
            boolean z4 = true;
            if (i15 != 0) {
                if (i15 == 1) {
                    int i16 = aVar.e;
                    f = (i11 - i16) + paddingBottom;
                    i5 = i16 - paddingTop;
                } else if (i15 == 2) {
                    int i17 = aVar.e;
                    f2 = (i11 - paddingBottom) - ((i11 - i17) / 2.0f);
                    f = paddingTop + ((i11 - i17) / 2.0f);
                    f3 = 0.0f;
                } else if (i15 == 3) {
                    f = paddingTop;
                    int iC = aVar.c();
                    f3 = (i11 - aVar.e) / (iC != 1 ? iC - 1 : 1.0f);
                    f2 = i11 - paddingBottom;
                } else if (i15 == 4) {
                    int iC2 = aVar.c();
                    f3 = iC2 != 0 ? (i11 - aVar.e) / iC2 : 0.0f;
                    float f8 = f3 / 2.0f;
                    f = paddingTop + f8;
                    f2 = (i11 - paddingBottom) - f8;
                } else {
                    if (i15 != 5) {
                        throw new IllegalStateException("Invalid justifyContent is set: " + this.d);
                    }
                    int iC3 = aVar.c();
                    f3 = iC3 != 0 ? (i11 - aVar.e) / (iC3 + 1) : 0.0f;
                    f = paddingTop + f3;
                    f2 = (i11 - paddingBottom) - f3;
                }
                fMax = Math.max(f3, 0.0f);
                i6 = 0;
                while (i6 < aVar.h) {
                    i7 = aVar.o + i6;
                    reorderedChildAt = getReorderedChildAt(i7);
                    if (reorderedChildAt != null) {
                        i8 = i6;
                        z3 = z4;
                        c = c3;
                    } else if (reorderedChildAt.getVisibility() == 8) {
                        i8 = i6;
                        z3 = true;
                        c = 4;
                    } else {
                        layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                        f4 = f + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        f5 = f2 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        if (g(i7, i6)) {
                            int i18 = this.l;
                            float f9 = i18;
                            f6 = f4 + f9;
                            i9 = i18;
                            f7 = f5 - f9;
                        } else {
                            f6 = f4;
                            f7 = f5;
                            i9 = 0;
                        }
                        if (i6 == aVar.h - 1) {
                            c2 = 4;
                            i10 = (this.j & 4) > 0 ? this.l : 0;
                            if (z) {
                                i8 = i6;
                                z3 = true;
                                layoutParams2 = layoutParams;
                                c = c2;
                                if (z2) {
                                    this.p.R(reorderedChildAt, aVar, false, paddingLeft, Math.round(f7) - reorderedChildAt.getMeasuredHeight(), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f7));
                                } else {
                                    this.p.R(reorderedChildAt, aVar, false, paddingLeft, Math.round(f6), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f6) + reorderedChildAt.getMeasuredHeight());
                                }
                            } else if (z2) {
                                i8 = i6;
                                z3 = true;
                                layoutParams2 = layoutParams;
                                c = c2;
                                this.p.R(reorderedChildAt, aVar, true, i12 - reorderedChildAt.getMeasuredWidth(), Math.round(f7) - reorderedChildAt.getMeasuredHeight(), i12, Math.round(f7));
                            } else {
                                i8 = i6;
                                z3 = true;
                                layoutParams2 = layoutParams;
                                c = c2;
                                this.p.R(reorderedChildAt, aVar, true, i12 - reorderedChildAt.getMeasuredWidth(), Math.round(f6), i12, Math.round(f6) + reorderedChildAt.getMeasuredHeight());
                            }
                            LayoutParams layoutParams3 = layoutParams2;
                            float measuredHeight = f6 + reorderedChildAt.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin;
                            float measuredHeight2 = f7 - ((reorderedChildAt.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin);
                            if (z2) {
                                aVar.d(reorderedChildAt, 0, i10, 0, i9);
                            } else {
                                aVar.d(reorderedChildAt, 0, i9, 0, i10);
                            }
                            f = measuredHeight;
                            f2 = measuredHeight2;
                        } else {
                            c2 = 4;
                        }
                        if (z) {
                            i8 = i6;
                            z3 = true;
                            layoutParams2 = layoutParams;
                            c = c2;
                            if (z2) {
                                this.p.R(reorderedChildAt, aVar, false, paddingLeft, Math.round(f7) - reorderedChildAt.getMeasuredHeight(), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f7));
                            } else {
                                this.p.R(reorderedChildAt, aVar, false, paddingLeft, Math.round(f6), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f6) + reorderedChildAt.getMeasuredHeight());
                            }
                        } else if (z2) {
                            i8 = i6;
                            z3 = true;
                            layoutParams2 = layoutParams;
                            c = c2;
                            this.p.R(reorderedChildAt, aVar, true, i12 - reorderedChildAt.getMeasuredWidth(), Math.round(f7) - reorderedChildAt.getMeasuredHeight(), i12, Math.round(f7));
                        } else {
                            i8 = i6;
                            z3 = true;
                            layoutParams2 = layoutParams;
                            c = c2;
                            this.p.R(reorderedChildAt, aVar, true, i12 - reorderedChildAt.getMeasuredWidth(), Math.round(f6), i12, Math.round(f6) + reorderedChildAt.getMeasuredHeight());
                        }
                        LayoutParams layoutParams4 = layoutParams2;
                        float measuredHeight3 = f6 + reorderedChildAt.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin;
                        float measuredHeight4 = f7 - ((reorderedChildAt.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams4).topMargin);
                        if (z2) {
                            aVar.d(reorderedChildAt, 0, i10, 0, i9);
                        } else {
                            aVar.d(reorderedChildAt, 0, i9, 0, i10);
                        }
                        f = measuredHeight3;
                        f2 = measuredHeight4;
                    }
                    i6 = i8 + 1;
                    z4 = z3;
                    c3 = c;
                }
                int i19 = aVar.g;
                paddingLeft += i19;
                i12 -= i19;
            } else {
                f = paddingTop;
                i5 = i11 - paddingBottom;
            }
            f2 = i5;
            f3 = 0.0f;
            fMax = Math.max(f3, 0.0f);
            i6 = 0;
            while (i6 < aVar.h) {
                i7 = aVar.o + i6;
                reorderedChildAt = getReorderedChildAt(i7);
                if (reorderedChildAt != null) {
                    i8 = i6;
                    z3 = z4;
                    c = c3;
                } else if (reorderedChildAt.getVisibility() == 8) {
                    i8 = i6;
                    z3 = true;
                    c = 4;
                } else {
                    layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    f4 = f + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    f5 = f2 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    if (g(i7, i6)) {
                        int i110 = this.l;
                        float f10 = i110;
                        f6 = f4 + f10;
                        i9 = i110;
                        f7 = f5 - f10;
                    } else {
                        f6 = f4;
                        f7 = f5;
                        i9 = 0;
                    }
                    if (i6 == aVar.h - 1) {
                        c2 = 4;
                        if ((this.j & 4) > 0) {
                        }
                        if (z) {
                            i8 = i6;
                            z3 = true;
                            layoutParams2 = layoutParams;
                            c = c2;
                            if (z2) {
                                this.p.R(reorderedChildAt, aVar, false, paddingLeft, Math.round(f7) - reorderedChildAt.getMeasuredHeight(), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f7));
                            } else {
                                this.p.R(reorderedChildAt, aVar, false, paddingLeft, Math.round(f6), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f6) + reorderedChildAt.getMeasuredHeight());
                            }
                        } else if (z2) {
                            i8 = i6;
                            z3 = true;
                            layoutParams2 = layoutParams;
                            c = c2;
                            this.p.R(reorderedChildAt, aVar, true, i12 - reorderedChildAt.getMeasuredWidth(), Math.round(f7) - reorderedChildAt.getMeasuredHeight(), i12, Math.round(f7));
                        } else {
                            i8 = i6;
                            z3 = true;
                            layoutParams2 = layoutParams;
                            c = c2;
                            this.p.R(reorderedChildAt, aVar, true, i12 - reorderedChildAt.getMeasuredWidth(), Math.round(f6), i12, Math.round(f6) + reorderedChildAt.getMeasuredHeight());
                        }
                        LayoutParams layoutParams5 = layoutParams2;
                        float measuredHeight5 = f6 + reorderedChildAt.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams5).bottomMargin;
                        float measuredHeight6 = f7 - ((reorderedChildAt.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams5).topMargin);
                        if (z2) {
                            aVar.d(reorderedChildAt, 0, i10, 0, i9);
                        } else {
                            aVar.d(reorderedChildAt, 0, i9, 0, i10);
                        }
                        f = measuredHeight5;
                        f2 = measuredHeight6;
                    } else {
                        c2 = 4;
                    }
                    if (z) {
                        i8 = i6;
                        z3 = true;
                        layoutParams2 = layoutParams;
                        c = c2;
                        if (z2) {
                            this.p.R(reorderedChildAt, aVar, false, paddingLeft, Math.round(f7) - reorderedChildAt.getMeasuredHeight(), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f7));
                        } else {
                            this.p.R(reorderedChildAt, aVar, false, paddingLeft, Math.round(f6), paddingLeft + reorderedChildAt.getMeasuredWidth(), Math.round(f6) + reorderedChildAt.getMeasuredHeight());
                        }
                    } else if (z2) {
                        i8 = i6;
                        z3 = true;
                        layoutParams2 = layoutParams;
                        c = c2;
                        this.p.R(reorderedChildAt, aVar, true, i12 - reorderedChildAt.getMeasuredWidth(), Math.round(f7) - reorderedChildAt.getMeasuredHeight(), i12, Math.round(f7));
                    } else {
                        i8 = i6;
                        z3 = true;
                        layoutParams2 = layoutParams;
                        c = c2;
                        this.p.R(reorderedChildAt, aVar, true, i12 - reorderedChildAt.getMeasuredWidth(), Math.round(f6), i12, Math.round(f6) + reorderedChildAt.getMeasuredHeight());
                    }
                    LayoutParams layoutParams6 = layoutParams2;
                    float measuredHeight7 = f6 + reorderedChildAt.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) layoutParams6).bottomMargin;
                    float measuredHeight8 = f7 - ((reorderedChildAt.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) layoutParams6).topMargin);
                    if (z2) {
                        aVar.d(reorderedChildAt, 0, i10, 0, i9);
                    } else {
                        aVar.d(reorderedChildAt, 0, i9, 0, i10);
                    }
                    f = measuredHeight7;
                    f2 = measuredHeight8;
                }
                i6 = i8 + 1;
                z4 = z3;
                c3 = c;
            }
            int i111 = aVar.g;
            paddingLeft += i111;
            i12 -= i111;
        }
    }

    public final void l(int i, int i2) {
        this.q.clear();
        this.r.a();
        this.p.c(this.r, i, i2);
        this.q = this.r.a;
        this.p.p(i, i2);
        if (this.e == 3) {
            for (a aVar : this.q) {
                int iMax = Integer.MIN_VALUE;
                for (int i3 = 0; i3 < aVar.h; i3++) {
                    View reorderedChildAt = getReorderedChildAt(aVar.o + i3);
                    if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                        LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                        iMax = this.c != 2 ? Math.max(iMax, reorderedChildAt.getMeasuredHeight() + Math.max(aVar.l - reorderedChildAt.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) : Math.max(iMax, reorderedChildAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + Math.max((aVar.l - reorderedChildAt.getMeasuredHeight()) + reorderedChildAt.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
                    }
                }
                aVar.g = iMax;
            }
        }
        this.p.o(i, i2, getPaddingTop() + getPaddingBottom());
        this.p.X();
        n(this.b, i, i2, this.r.b);
    }

    public final void m(int i, int i2) {
        this.q.clear();
        this.r.a();
        this.p.f(this.r, i, i2);
        this.q = this.r.a;
        this.p.p(i, i2);
        this.p.o(i, i2, getPaddingLeft() + getPaddingRight());
        this.p.X();
        n(this.b, i, i2, this.r.b);
    }

    public final void n(int i, int i2, int i3, int i4) {
        int sumOfCrossSize;
        int largestMainSize;
        int iResolveSizeAndState;
        int iResolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (i == 0 || i == 1) {
            sumOfCrossSize = getSumOfCrossSize() + getPaddingTop() + getPaddingBottom();
            largestMainSize = getLargestMainSize();
        } else {
            if (i != 2 && i != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + i);
            }
            sumOfCrossSize = getLargestMainSize();
            largestMainSize = getSumOfCrossSize() + getPaddingLeft() + getPaddingRight();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                i4 = View.combineMeasuredStates(i4, 16777216);
            } else {
                size = largestMainSize;
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i2, i4);
        } else if (mode == 0) {
            iResolveSizeAndState = View.resolveSizeAndState(largestMainSize, i2, i4);
        } else {
            if (mode != 1073741824) {
                throw new IllegalStateException("Unknown width mode is set: " + mode);
            }
            if (size < largestMainSize) {
                i4 = View.combineMeasuredStates(i4, 16777216);
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i2, i4);
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < sumOfCrossSize) {
                i4 = View.combineMeasuredStates(i4, 256);
            } else {
                size2 = sumOfCrossSize;
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i3, i4);
        } else if (mode2 == 0) {
            iResolveSizeAndState2 = View.resolveSizeAndState(sumOfCrossSize, i3, i4);
        } else {
            if (mode2 != 1073741824) {
                throw new IllegalStateException("Unknown height mode is set: " + mode2);
            }
            if (size2 < sumOfCrossSize) {
                i4 = View.combineMeasuredStates(i4, 256);
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i3, i4);
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    public final void o() {
        if (this.h == null && this.i == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        if (this.i == null && this.h == null) {
            return;
        }
        if (this.j == 0 && this.k == 0) {
            return;
        }
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i = this.b;
        if (i == 0) {
            c(canvas, layoutDirection == 1, this.c == 2);
            return;
        }
        if (i == 1) {
            c(canvas, layoutDirection != 1, this.c == 2);
            return;
        }
        if (i == 2) {
            boolean z = layoutDirection == 1;
            if (this.c == 2) {
                z = !z;
            }
            d(canvas, z, false);
            return;
        }
        if (i != 3) {
            return;
        }
        boolean z2 = layoutDirection == 1;
        if (this.c == 2) {
            z2 = !z2;
        }
        d(canvas, z2, true);
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i5 = this.b;
        if (i5 == 0) {
            j(layoutDirection == 1, i, i2, i3, i4);
            return;
        }
        if (i5 == 1) {
            j(layoutDirection != 1, i, i2, i3, i4);
            return;
        }
        if (i5 == 2) {
            z2 = layoutDirection == 1;
            k(this.c == 2 ? !z2 : z2, false, i, i2, i3, i4);
        } else if (i5 == 3) {
            z2 = layoutDirection == 1;
            k(this.c == 2 ? !z2 : z2, true, i, i2, i3, i4);
        } else {
            throw new IllegalStateException("Invalid flex direction is set: " + this.b);
        }
    }

    @Override
    public void onMeasure(int i, int i2) {
        if (this.o == null) {
            this.o = new SparseIntArray(getChildCount());
        }
        if (this.p.O(this.o)) {
            this.n = this.p.m(this.o);
        }
        int i3 = this.b;
        if (i3 == 0 || i3 == 1) {
            l(i, i2);
            return;
        }
        if (i3 == 2 || i3 == 3) {
            m(i, i2);
            return;
        }
        throw new IllegalStateException("Invalid value for the flex direction is set: " + this.b);
    }

    @Override
    public void onNewFlexItemAdded(View view, int i, int i2, a aVar) {
        if (g(i, i2)) {
            if (isMainAxisDirectionHorizontal()) {
                int i3 = aVar.e;
                int i4 = this.m;
                aVar.e = i3 + i4;
                aVar.f += i4;
                return;
            }
            int i5 = aVar.e;
            int i6 = this.l;
            aVar.e = i5 + i6;
            aVar.f += i6;
        }
    }

    @Override
    public void onNewFlexLineAdded(a aVar) {
        if (isMainAxisDirectionHorizontal()) {
            if ((this.k & 4) > 0) {
                int i = aVar.e;
                int i2 = this.m;
                aVar.e = i + i2;
                aVar.f += i2;
                return;
            }
            return;
        }
        if ((this.j & 4) > 0) {
            int i3 = aVar.e;
            int i4 = this.l;
            aVar.e = i3 + i4;
            aVar.f += i4;
        }
    }

    public void setAlignContent(int i) {
        if (this.f != i) {
            this.f = i;
            requestLayout();
        }
    }

    public void setAlignItems(int i) {
        if (this.e != i) {
            this.e = i;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(@Nullable Drawable drawable) {
        if (drawable == this.h) {
            return;
        }
        this.h = drawable;
        if (drawable != null) {
            this.l = drawable.getIntrinsicHeight();
        } else {
            this.l = 0;
        }
        o();
        requestLayout();
    }

    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        if (drawable == this.i) {
            return;
        }
        this.i = drawable;
        if (drawable != null) {
            this.m = drawable.getIntrinsicWidth();
        } else {
            this.m = 0;
        }
        o();
        requestLayout();
    }

    public void setFlexDirection(int i) {
        if (this.b != i) {
            this.b = i;
            requestLayout();
        }
    }

    @Override
    public void setFlexLines(List<a> list) {
        this.q = list;
    }

    public void setFlexWrap(int i) {
        if (this.c != i) {
            this.c = i;
            requestLayout();
        }
    }

    public void setJustifyContent(int i) {
        if (this.d != i) {
            this.d = i;
            requestLayout();
        }
    }

    public void setMaxLine(int i) {
        if (this.g != i) {
            this.g = i;
            requestLayout();
        }
    }

    public void setShowDivider(int i) {
        setShowDividerVertical(i);
        setShowDividerHorizontal(i);
    }

    public void setShowDividerHorizontal(int i) {
        if (i != this.j) {
            this.j = i;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int i) {
        if (i != this.k) {
            this.k = i;
            requestLayout();
        }
    }

    @Override
    public void updateViewCache(int i, View view) {
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = -1;
        this.p = new b(this);
        this.q = new ArrayList();
        this.r = new b.C0088b();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FlexboxLayout, i, 0);
        this.b = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_flexDirection, 0);
        this.c = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_flexWrap, 0);
        this.d = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_justifyContent, 0);
        this.e = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_alignItems, 0);
        this.f = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_alignContent, 0);
        this.g = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_maxLine, -1);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.FlexboxLayout_dividerDrawable);
        if (drawable != null) {
            setDividerDrawableHorizontal(drawable);
            setDividerDrawableVertical(drawable);
        }
        Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.FlexboxLayout_dividerDrawableHorizontal);
        if (drawable2 != null) {
            setDividerDrawableHorizontal(drawable2);
        }
        Drawable drawable3 = typedArrayObtainStyledAttributes.getDrawable(R.styleable.FlexboxLayout_dividerDrawableVertical);
        if (drawable3 != null) {
            setDividerDrawableVertical(drawable3);
        }
        int i2 = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_showDivider, 0);
        if (i2 != 0) {
            this.k = i2;
            this.j = i2;
        }
        int i3 = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_showDividerVertical, 0);
        if (i3 != 0) {
            this.k = i3;
        }
        int i4 = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_showDividerHorizontal, 0);
        if (i4 != 0) {
            this.j = i4;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new a();
        private int mAlignSelf;
        private float mFlexBasisPercent;
        private float mFlexGrow;
        private float mFlexShrink;
        private int mMaxHeight;
        private int mMaxWidth;
        private int mMinHeight;
        private int mMinWidth;
        private int mOrder;
        private boolean mWrapBefore;

        public static class a implements Parcelable.Creator {
            @Override
            public LayoutParams createFromParcel(Parcel parcel) {
                return new LayoutParams(parcel);
            }

            @Override
            public LayoutParams[] newArray(int i) {
                return new LayoutParams[i];
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FlexboxLayout_Layout);
            this.mOrder = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_Layout_layout_order, 1);
            this.mFlexGrow = typedArrayObtainStyledAttributes.getFloat(R.styleable.FlexboxLayout_Layout_layout_flexGrow, 0.0f);
            this.mFlexShrink = typedArrayObtainStyledAttributes.getFloat(R.styleable.FlexboxLayout_Layout_layout_flexShrink, 1.0f);
            this.mAlignSelf = typedArrayObtainStyledAttributes.getInt(R.styleable.FlexboxLayout_Layout_layout_alignSelf, -1);
            this.mFlexBasisPercent = typedArrayObtainStyledAttributes.getFraction(R.styleable.FlexboxLayout_Layout_layout_flexBasisPercent, 1, 1, -1.0f);
            this.mMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_minWidth, -1);
            this.mMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_minHeight, -1);
            this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_maxWidth, 16777215);
            this.mMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_maxHeight, 16777215);
            this.mWrapBefore = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FlexboxLayout_Layout_layout_wrapBefore, false);
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public int getAlignSelf() {
            return this.mAlignSelf;
        }

        @Override
        public float getFlexBasisPercent() {
            return this.mFlexBasisPercent;
        }

        @Override
        public float getFlexGrow() {
            return this.mFlexGrow;
        }

        @Override
        public float getFlexShrink() {
            return this.mFlexShrink;
        }

        @Override
        public int getHeight() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override
        public int getMarginBottom() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override
        public int getMarginLeft() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override
        public int getMarginRight() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override
        public int getMarginTop() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override
        public int getMaxHeight() {
            return this.mMaxHeight;
        }

        @Override
        public int getMaxWidth() {
            return this.mMaxWidth;
        }

        @Override
        public int getMinHeight() {
            return this.mMinHeight;
        }

        @Override
        public int getMinWidth() {
            return this.mMinWidth;
        }

        @Override
        public int getOrder() {
            return this.mOrder;
        }

        @Override
        public int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override
        public boolean isWrapBefore() {
            return this.mWrapBefore;
        }

        @Override
        public void setAlignSelf(int i) {
            this.mAlignSelf = i;
        }

        @Override
        public void setFlexBasisPercent(float f) {
            this.mFlexBasisPercent = f;
        }

        @Override
        public void setFlexGrow(float f) {
            this.mFlexGrow = f;
        }

        @Override
        public void setFlexShrink(float f) {
            this.mFlexShrink = f;
        }

        @Override
        public void setHeight(int i) {
            ((ViewGroup.MarginLayoutParams) this).height = i;
        }

        @Override
        public void setMaxHeight(int i) {
            this.mMaxHeight = i;
        }

        @Override
        public void setMaxWidth(int i) {
            this.mMaxWidth = i;
        }

        @Override
        public void setMinHeight(int i) {
            this.mMinHeight = i;
        }

        @Override
        public void setMinWidth(int i) {
            this.mMinWidth = i;
        }

        @Override
        public void setOrder(int i) {
            this.mOrder = i;
        }

        @Override
        public void setWidth(int i) {
            ((ViewGroup.MarginLayoutParams) this).width = i;
        }

        @Override
        public void setWrapBefore(boolean z) {
            this.mWrapBefore = z;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mOrder);
            parcel.writeFloat(this.mFlexGrow);
            parcel.writeFloat(this.mFlexShrink);
            parcel.writeInt(this.mAlignSelf);
            parcel.writeFloat(this.mFlexBasisPercent);
            parcel.writeInt(this.mMinWidth);
            parcel.writeInt(this.mMinHeight);
            parcel.writeInt(this.mMaxWidth);
            parcel.writeInt(this.mMaxHeight);
            parcel.writeByte(this.mWrapBefore ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            this.mOrder = layoutParams.mOrder;
            this.mFlexGrow = layoutParams.mFlexGrow;
            this.mFlexShrink = layoutParams.mFlexShrink;
            this.mAlignSelf = layoutParams.mAlignSelf;
            this.mFlexBasisPercent = layoutParams.mFlexBasisPercent;
            this.mMinWidth = layoutParams.mMinWidth;
            this.mMinHeight = layoutParams.mMinHeight;
            this.mMaxWidth = layoutParams.mMaxWidth;
            this.mMaxHeight = layoutParams.mMaxHeight;
            this.mWrapBefore = layoutParams.mWrapBefore;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(int i, int i2) {
            super(new ViewGroup.LayoutParams(i, i2));
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(Parcel parcel) {
            super(0, 0);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            this.mOrder = parcel.readInt();
            this.mFlexGrow = parcel.readFloat();
            this.mFlexShrink = parcel.readFloat();
            this.mAlignSelf = parcel.readInt();
            this.mFlexBasisPercent = parcel.readFloat();
            this.mMinWidth = parcel.readInt();
            this.mMinHeight = parcel.readInt();
            this.mMaxWidth = parcel.readInt();
            this.mMaxHeight = parcel.readInt();
            this.mWrapBefore = parcel.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }
    }
}
