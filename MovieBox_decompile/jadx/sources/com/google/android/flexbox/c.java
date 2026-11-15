package com.google.android.flexbox;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.core.view.MarginLayoutParamsCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

class c {

    private final com.google.android.flexbox.a f27328a;

    private boolean[] f27329b;

    int[] f27330c;

    long[] f27331d;

    private long[] f27332e;

    static class b {

        List f27333a;

        int f27334b;

        b() {
        }

        void a() {
            this.f27333a = null;
            this.f27334b = 0;
        }
    }

    private static class C0359c implements Comparable {

        int f27335a;

        int f27336b;

        private C0359c() {
        }

        @Override
        public int compareTo(C0359c c0359c) {
            int i10 = this.f27336b;
            int i11 = c0359c.f27336b;
            return i10 != i11 ? i10 - i11 : this.f27335a - c0359c.f27335a;
        }

        public String toString() {
            return "Order{order=" + this.f27336b + ", index=" + this.f27335a + '}';
        }
    }

    c(com.google.android.flexbox.a aVar) {
        this.f27328a = aVar;
    }

    private int A(int i10, FlexItem flexItem, int i11) {
        com.google.android.flexbox.a aVar = this.f27328a;
        int childWidthMeasureSpec = aVar.getChildWidthMeasureSpec(i10, aVar.getPaddingLeft() + this.f27328a.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + i11, flexItem.getWidth());
        int size = View.MeasureSpec.getSize(childWidthMeasureSpec);
        if (size > flexItem.getMaxWidth()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.getMaxWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec));
        }
        return size < flexItem.getMinWidth() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec)) : childWidthMeasureSpec;
    }

    private int B(FlexItem flexItem, boolean z10) {
        return z10 ? flexItem.getMarginBottom() : flexItem.getMarginRight();
    }

    private int C(FlexItem flexItem, boolean z10) {
        return z10 ? flexItem.getMarginRight() : flexItem.getMarginBottom();
    }

    private int D(FlexItem flexItem, boolean z10) {
        return z10 ? flexItem.getMarginTop() : flexItem.getMarginLeft();
    }

    private int E(FlexItem flexItem, boolean z10) {
        return z10 ? flexItem.getMarginLeft() : flexItem.getMarginTop();
    }

    private int F(FlexItem flexItem, boolean z10) {
        return z10 ? flexItem.getHeight() : flexItem.getWidth();
    }

    private int G(FlexItem flexItem, boolean z10) {
        return z10 ? flexItem.getWidth() : flexItem.getHeight();
    }

    private int H(boolean z10) {
        return z10 ? this.f27328a.getPaddingBottom() : this.f27328a.getPaddingEnd();
    }

    private int I(boolean z10) {
        return z10 ? this.f27328a.getPaddingEnd() : this.f27328a.getPaddingBottom();
    }

    private int J(boolean z10) {
        return z10 ? this.f27328a.getPaddingTop() : this.f27328a.getPaddingStart();
    }

    private int K(boolean z10) {
        return z10 ? this.f27328a.getPaddingStart() : this.f27328a.getPaddingTop();
    }

    private int L(View view, boolean z10) {
        return z10 ? view.getMeasuredHeight() : view.getMeasuredWidth();
    }

    private int M(View view, boolean z10) {
        return z10 ? view.getMeasuredWidth() : view.getMeasuredHeight();
    }

    private boolean N(int i10, int i11, com.google.android.flexbox.b bVar) {
        return i10 == i11 - 1 && bVar.c() != 0;
    }

    private boolean P(View view, int i10, int i11, int i12, int i13, FlexItem flexItem, int i14, int i15, int i16) {
        if (this.f27328a.getFlexWrap() == 0) {
            return false;
        }
        if (flexItem.isWrapBefore()) {
            return true;
        }
        if (i10 == 0) {
            return false;
        }
        int maxLine = this.f27328a.getMaxLine();
        if (maxLine != -1 && maxLine <= i16 + 1) {
            return false;
        }
        int decorationLengthMainAxis = this.f27328a.getDecorationLengthMainAxis(view, i14, i15);
        if (decorationLengthMainAxis > 0) {
            i13 += decorationLengthMainAxis;
        }
        return i11 < i12 + i13;
    }

    private void T(int i10, int i11, com.google.android.flexbox.b bVar, int i12, int i13, boolean z10) {
        int i14;
        int i15;
        int iMax;
        int i16 = bVar.f27314e;
        float f10 = bVar.f27320k;
        float f11 = 0.0f;
        if (f10 <= 0.0f || i12 > i16) {
            return;
        }
        float f12 = (i16 - i12) / f10;
        bVar.f27314e = i13 + bVar.f27315f;
        if (!z10) {
            bVar.f27316g = Integer.MIN_VALUE;
        }
        int i17 = 0;
        boolean z11 = false;
        int i18 = 0;
        float f13 = 0.0f;
        while (i17 < bVar.f27317h) {
            int i19 = bVar.f27324o + i17;
            View reorderedFlexItemAt = this.f27328a.getReorderedFlexItemAt(i19);
            if (reorderedFlexItemAt == null || reorderedFlexItemAt.getVisibility() == 8) {
                i14 = i16;
                i15 = i17;
            } else {
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int flexDirection = this.f27328a.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    i14 = i16;
                    int i20 = i17;
                    int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr = this.f27332e;
                    if (jArr != null) {
                        measuredWidth = y(jArr[i19]);
                    }
                    int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr2 = this.f27332e;
                    if (jArr2 != null) {
                        measuredHeight = x(jArr2[i19]);
                    }
                    if (this.f27329b[i19] || flexItem.getFlexShrink() <= 0.0f) {
                        i15 = i20;
                    } else {
                        float flexShrink = measuredWidth - (flexItem.getFlexShrink() * f12);
                        if (i15 == bVar.f27317h - 1) {
                            i15 = i20;
                            flexShrink += f13;
                            f13 = 0.0f;
                        }
                        i15 = i20;
                        int iRound = Math.round(flexShrink);
                        if (iRound < flexItem.getMinWidth()) {
                            iRound = flexItem.getMinWidth();
                            this.f27329b[i19] = true;
                            bVar.f27320k -= flexItem.getFlexShrink();
                            z11 = true;
                        } else {
                            f13 += flexShrink - iRound;
                            double d10 = f13;
                            if (d10 > 1.0d) {
                                iRound++;
                                f13 -= 1.0f;
                            } else if (d10 < -1.0d) {
                                iRound--;
                                f13 += 1.0f;
                            }
                        }
                        int iZ = z(i11, flexItem, bVar.f27322m);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        reorderedFlexItemAt.measure(iMakeMeasureSpec, iZ);
                        int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                        Z(i19, iMakeMeasureSpec, iZ, reorderedFlexItemAt);
                        this.f27328a.updateViewCache(i19, reorderedFlexItemAt);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i18, measuredHeight + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.f27328a.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    bVar.f27314e += measuredWidth + flexItem.getMarginLeft() + flexItem.getMarginRight();
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr3 = this.f27332e;
                    if (jArr3 != null) {
                        measuredHeight3 = x(jArr3[i19]);
                    }
                    int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr4 = this.f27332e;
                    if (jArr4 != null) {
                        measuredWidth3 = y(jArr4[i19]);
                    }
                    if (this.f27329b[i19] || flexItem.getFlexShrink() <= f11) {
                        i14 = i16;
                        i15 = i17;
                    } else {
                        float flexShrink2 = measuredHeight3 - (flexItem.getFlexShrink() * f12);
                        if (i17 == bVar.f27317h - 1) {
                            flexShrink2 += f13;
                            f13 = f11;
                        }
                        int iRound2 = Math.round(flexShrink2);
                        if (iRound2 < flexItem.getMinHeight()) {
                            iRound2 = flexItem.getMinHeight();
                            this.f27329b[i19] = true;
                            bVar.f27320k -= flexItem.getFlexShrink();
                            i14 = i16;
                            i15 = i17;
                            z11 = true;
                        } else {
                            f13 += flexShrink2 - iRound2;
                            i14 = i16;
                            i15 = i17;
                            double d11 = f13;
                            if (d11 > 1.0d) {
                                iRound2++;
                                f13 -= 1.0f;
                            } else if (d11 < -1.0d) {
                                iRound2--;
                                f13 += 1.0f;
                            }
                        }
                        int iA = A(i10, flexItem, bVar.f27322m);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
                        reorderedFlexItemAt.measure(iA, iMakeMeasureSpec2);
                        measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight4 = reorderedFlexItemAt.getMeasuredHeight();
                        Z(i19, iA, iMakeMeasureSpec2, reorderedFlexItemAt);
                        this.f27328a.updateViewCache(i19, reorderedFlexItemAt);
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i18, measuredWidth3 + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.f27328a.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    bVar.f27314e += measuredHeight3 + flexItem.getMarginTop() + flexItem.getMarginBottom();
                }
                bVar.f27316g = Math.max(bVar.f27316g, iMax);
                i18 = iMax;
            }
            i17 = i15 + 1;
            i16 = i14;
            f11 = 0.0f;
        }
        int i21 = i16;
        if (!z11 || i21 == bVar.f27314e) {
            return;
        }
        T(i10, i11, bVar, i12, i13, true);
    }

    private int[] U(int i10, List list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i10];
        Iterator it = list.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            C0359c c0359c = (C0359c) it.next();
            int i12 = c0359c.f27335a;
            iArr[i11] = i12;
            sparseIntArray.append(i12, c0359c.f27336b);
            i11++;
        }
        return iArr;
    }

    private void V(View view, int i10, int i11) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int iMin = Math.min(Math.max(((i10 - flexItem.getMarginLeft()) - flexItem.getMarginRight()) - this.f27328a.getDecorationLengthCrossAxis(view), flexItem.getMinWidth()), flexItem.getMaxWidth());
        long[] jArr = this.f27332e;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? x(jArr[i11]) : view.getMeasuredHeight(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
        Z(i11, iMakeMeasureSpec2, iMakeMeasureSpec, view);
        this.f27328a.updateViewCache(i11, view);
    }

    private void W(View view, int i10, int i11) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int iMin = Math.min(Math.max(((i10 - flexItem.getMarginTop()) - flexItem.getMarginBottom()) - this.f27328a.getDecorationLengthCrossAxis(view), flexItem.getMinHeight()), flexItem.getMaxHeight());
        long[] jArr = this.f27332e;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? y(jArr[i11]) : view.getMeasuredWidth(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        Z(i11, iMakeMeasureSpec, iMakeMeasureSpec2, view);
        this.f27328a.updateViewCache(i11, view);
    }

    private void Z(int i10, int i11, int i12, View view) {
        long[] jArr = this.f27331d;
        if (jArr != null) {
            jArr[i10] = S(i11, i12);
        }
        long[] jArr2 = this.f27332e;
        if (jArr2 != null) {
            jArr2[i10] = S(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    private void a(List list, com.google.android.flexbox.b bVar, int i10, int i11) {
        bVar.f27322m = i11;
        this.f27328a.onNewFlexLineAdded(bVar);
        bVar.f27325p = i10;
        list.add(bVar);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002d  */
    /* JADX WARN: Code duplicated, block: B:13:0x0032  */
    /* JADX WARN: Code duplicated, block: B:15:0x0038  */
    /* JADX WARN: Code duplicated, block: B:16:0x003d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    /* JADX WARN: Code duplicated, block: B:20:? A[RETURN, SYNTHETIC] */
    private void i(View view, int i10) {
        boolean z10;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        boolean z11 = true;
        if (measuredWidth >= flexItem.getMinWidth()) {
            if (measuredWidth > flexItem.getMaxWidth()) {
                measuredWidth = flexItem.getMaxWidth();
            } else {
                z10 = false;
            }
            if (measuredHeight < flexItem.getMinHeight()) {
                measuredHeight = flexItem.getMinHeight();
            } else if (measuredHeight > flexItem.getMaxHeight()) {
                measuredHeight = flexItem.getMaxHeight();
            } else {
                z11 = z10;
            }
            if (z11) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                Z(i10, iMakeMeasureSpec, iMakeMeasureSpec2, view);
                this.f27328a.updateViewCache(i10, view);
            }
        }
        measuredWidth = flexItem.getMinWidth();
        z10 = true;
        if (measuredHeight < flexItem.getMinHeight()) {
            measuredHeight = flexItem.getMinHeight();
        } else if (measuredHeight > flexItem.getMaxHeight()) {
            measuredHeight = flexItem.getMaxHeight();
        } else {
            z11 = z10;
        }
        if (z11) {
            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
            int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
            view.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
            Z(i10, iMakeMeasureSpec3, iMakeMeasureSpec4, view);
            this.f27328a.updateViewCache(i10, view);
        }
    }

    private List k(List list, int i10, int i11) {
        int i12 = (i10 - i11) / 2;
        ArrayList arrayList = new ArrayList();
        com.google.android.flexbox.b bVar = new com.google.android.flexbox.b();
        bVar.f27316g = i12;
        int size = list.size();
        for (int i13 = 0; i13 < size; i13++) {
            if (i13 == 0) {
                arrayList.add(bVar);
            }
            arrayList.add((com.google.android.flexbox.b) list.get(i13));
            if (i13 == list.size() - 1) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    private List l(int i10) {
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            FlexItem flexItem = (FlexItem) this.f27328a.getFlexItemAt(i11).getLayoutParams();
            C0359c c0359c = new C0359c();
            c0359c.f27336b = flexItem.getOrder();
            c0359c.f27335a = i11;
            arrayList.add(c0359c);
        }
        return arrayList;
    }

    private void r(int i10) {
        boolean[] zArr = this.f27329b;
        if (zArr == null) {
            this.f27329b = new boolean[Math.max(i10, 10)];
        } else if (zArr.length < i10) {
            this.f27329b = new boolean[Math.max(zArr.length * 2, i10)];
        } else {
            Arrays.fill(zArr, false);
        }
    }

    private void v(CompoundButton compoundButton) {
        FlexItem flexItem = (FlexItem) compoundButton.getLayoutParams();
        int minWidth = flexItem.getMinWidth();
        int minHeight = flexItem.getMinHeight();
        Drawable drawableA = androidx.core.widget.b.a(compoundButton);
        int minimumWidth = drawableA == null ? 0 : drawableA.getMinimumWidth();
        int minimumHeight = drawableA != null ? drawableA.getMinimumHeight() : 0;
        if (minWidth == -1) {
            minWidth = minimumWidth;
        }
        flexItem.setMinWidth(minWidth);
        if (minHeight == -1) {
            minHeight = minimumHeight;
        }
        flexItem.setMinHeight(minHeight);
    }

    private void w(int i10, int i11, com.google.android.flexbox.b bVar, int i12, int i13, boolean z10) {
        int i14;
        int i15;
        int iMax;
        double d10;
        int i16;
        double d11;
        float f10 = bVar.f27319j;
        float f11 = 0.0f;
        if (f10 <= 0.0f || i12 < (i14 = bVar.f27314e)) {
            return;
        }
        float f12 = (i12 - i14) / f10;
        bVar.f27314e = i13 + bVar.f27315f;
        if (!z10) {
            bVar.f27316g = Integer.MIN_VALUE;
        }
        int i17 = 0;
        boolean z11 = false;
        int i18 = 0;
        float f13 = 0.0f;
        while (i17 < bVar.f27317h) {
            int i19 = bVar.f27324o + i17;
            View reorderedFlexItemAt = this.f27328a.getReorderedFlexItemAt(i19);
            if (reorderedFlexItemAt == null || reorderedFlexItemAt.getVisibility() == 8) {
                i15 = i14;
            } else {
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int flexDirection = this.f27328a.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    int i20 = i14;
                    int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr = this.f27332e;
                    if (jArr != null) {
                        measuredWidth = y(jArr[i19]);
                    }
                    int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr2 = this.f27332e;
                    i15 = i20;
                    if (jArr2 != null) {
                        measuredHeight = x(jArr2[i19]);
                    }
                    if (!this.f27329b[i19] && flexItem.getFlexGrow() > 0.0f) {
                        float flexGrow = measuredWidth + (flexItem.getFlexGrow() * f12);
                        if (i17 == bVar.f27317h - 1) {
                            flexGrow += f13;
                            f13 = 0.0f;
                        }
                        int iRound = Math.round(flexGrow);
                        if (iRound > flexItem.getMaxWidth()) {
                            iRound = flexItem.getMaxWidth();
                            this.f27329b[i19] = true;
                            bVar.f27319j -= flexItem.getFlexGrow();
                            z11 = true;
                        } else {
                            f13 += flexGrow - iRound;
                            double d12 = f13;
                            if (d12 > 1.0d) {
                                iRound++;
                                d10 = d12 - 1.0d;
                            } else if (d12 < -1.0d) {
                                iRound--;
                                d10 = d12 + 1.0d;
                            }
                            f13 = (float) d10;
                        }
                        int iZ = z(i11, flexItem, bVar.f27322m);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        reorderedFlexItemAt.measure(iMakeMeasureSpec, iZ);
                        int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                        Z(i19, iMakeMeasureSpec, iZ, reorderedFlexItemAt);
                        this.f27328a.updateViewCache(i19, reorderedFlexItemAt);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i18, measuredHeight + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.f27328a.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    bVar.f27314e += measuredWidth + flexItem.getMarginLeft() + flexItem.getMarginRight();
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr3 = this.f27332e;
                    if (jArr3 != null) {
                        measuredHeight3 = x(jArr3[i19]);
                    }
                    int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr4 = this.f27332e;
                    if (jArr4 != null) {
                        measuredWidth3 = y(jArr4[i19]);
                    }
                    if (this.f27329b[i19] || flexItem.getFlexGrow() <= f11) {
                        i16 = i14;
                    } else {
                        float flexGrow2 = measuredHeight3 + (flexItem.getFlexGrow() * f12);
                        if (i17 == bVar.f27317h - 1) {
                            flexGrow2 += f13;
                            f13 = f11;
                        }
                        int iRound2 = Math.round(flexGrow2);
                        if (iRound2 > flexItem.getMaxHeight()) {
                            iRound2 = flexItem.getMaxHeight();
                            this.f27329b[i19] = true;
                            bVar.f27319j -= flexItem.getFlexGrow();
                            i16 = i14;
                            z11 = true;
                        } else {
                            f13 += flexGrow2 - iRound2;
                            i16 = i14;
                            double d13 = f13;
                            if (d13 > 1.0d) {
                                iRound2++;
                                d11 = d13 - 1.0d;
                            } else if (d13 < -1.0d) {
                                iRound2--;
                                d11 = d13 + 1.0d;
                            }
                            f13 = (float) d11;
                        }
                        int iA = A(i10, flexItem, bVar.f27322m);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
                        reorderedFlexItemAt.measure(iA, iMakeMeasureSpec2);
                        measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight4 = reorderedFlexItemAt.getMeasuredHeight();
                        Z(i19, iA, iMakeMeasureSpec2, reorderedFlexItemAt);
                        this.f27328a.updateViewCache(i19, reorderedFlexItemAt);
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i18, measuredWidth3 + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.f27328a.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    bVar.f27314e += measuredHeight3 + flexItem.getMarginTop() + flexItem.getMarginBottom();
                    i15 = i16;
                }
                bVar.f27316g = Math.max(bVar.f27316g, iMax);
                i18 = iMax;
            }
            i17++;
            i14 = i15;
            f11 = 0.0f;
        }
        int i21 = i14;
        if (!z11 || i21 == bVar.f27314e) {
            return;
        }
        w(i10, i11, bVar, i12, i13, true);
    }

    private int z(int i10, FlexItem flexItem, int i11) {
        com.google.android.flexbox.a aVar = this.f27328a;
        int childHeightMeasureSpec = aVar.getChildHeightMeasureSpec(i10, aVar.getPaddingTop() + this.f27328a.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + i11, flexItem.getHeight());
        int size = View.MeasureSpec.getSize(childHeightMeasureSpec);
        if (size > flexItem.getMaxHeight()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.getMaxHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec));
        }
        return size < flexItem.getMinHeight() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec)) : childHeightMeasureSpec;
    }

    boolean O(SparseIntArray sparseIntArray) {
        int flexItemCount = this.f27328a.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            return true;
        }
        for (int i10 = 0; i10 < flexItemCount; i10++) {
            View flexItemAt = this.f27328a.getFlexItemAt(i10);
            if (flexItemAt != null && ((FlexItem) flexItemAt.getLayoutParams()).getOrder() != sparseIntArray.get(i10)) {
                return true;
            }
        }
        return false;
    }

    void Q(View view, com.google.android.flexbox.b bVar, int i10, int i11, int i12, int i13) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.f27328a.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i14 = bVar.f27316g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (this.f27328a.getFlexWrap() == 2) {
                    view.layout(i10, (i11 - i14) + view.getMeasuredHeight() + flexItem.getMarginTop(), i12, (i13 - i14) + view.getMeasuredHeight() + flexItem.getMarginTop());
                    return;
                } else {
                    int i15 = i11 + i14;
                    view.layout(i10, (i15 - view.getMeasuredHeight()) - flexItem.getMarginBottom(), i12, i15 - flexItem.getMarginBottom());
                    return;
                }
            }
            if (alignItems == 2) {
                int measuredHeight = (((i14 - view.getMeasuredHeight()) + flexItem.getMarginTop()) - flexItem.getMarginBottom()) / 2;
                if (this.f27328a.getFlexWrap() != 2) {
                    int i16 = i11 + measuredHeight;
                    view.layout(i10, i16, i12, view.getMeasuredHeight() + i16);
                    return;
                } else {
                    int i17 = i11 - measuredHeight;
                    view.layout(i10, i17, i12, view.getMeasuredHeight() + i17);
                    return;
                }
            }
            if (alignItems == 3) {
                if (this.f27328a.getFlexWrap() != 2) {
                    int iMax = Math.max(bVar.f27321l - view.getBaseline(), flexItem.getMarginTop());
                    view.layout(i10, i11 + iMax, i12, i13 + iMax);
                    return;
                } else {
                    int iMax2 = Math.max((bVar.f27321l - view.getMeasuredHeight()) + view.getBaseline(), flexItem.getMarginBottom());
                    view.layout(i10, i11 - iMax2, i12, i13 - iMax2);
                    return;
                }
            }
            if (alignItems != 4) {
                return;
            }
        }
        if (this.f27328a.getFlexWrap() != 2) {
            view.layout(i10, i11 + flexItem.getMarginTop(), i12, i13 + flexItem.getMarginTop());
        } else {
            view.layout(i10, i11 - flexItem.getMarginBottom(), i12, i13 - flexItem.getMarginBottom());
        }
    }

    void R(View view, com.google.android.flexbox.b bVar, boolean z10, int i10, int i11, int i12, int i13) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.f27328a.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i14 = bVar.f27316g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (z10) {
                    view.layout((i10 - i14) + view.getMeasuredWidth() + flexItem.getMarginLeft(), i11, (i12 - i14) + view.getMeasuredWidth() + flexItem.getMarginLeft(), i13);
                    return;
                } else {
                    view.layout(((i10 + i14) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i11, ((i12 + i14) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i13);
                    return;
                }
            }
            if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth = (((i14 - view.getMeasuredWidth()) + MarginLayoutParamsCompat.getMarginStart(marginLayoutParams)) - MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) / 2;
                if (z10) {
                    view.layout(i10 - measuredWidth, i11, i12 - measuredWidth, i13);
                    return;
                } else {
                    view.layout(i10 + measuredWidth, i11, i12 + measuredWidth, i13);
                    return;
                }
            }
            if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (z10) {
            view.layout(i10 - flexItem.getMarginRight(), i11, i12 - flexItem.getMarginRight(), i13);
        } else {
            view.layout(i10 + flexItem.getMarginLeft(), i11, i12 + flexItem.getMarginLeft(), i13);
        }
    }

    long S(int i10, int i11) {
        return (((long) i10) & 4294967295L) | (((long) i11) << 32);
    }

    void X() {
        Y(0);
    }

    void Y(int i10) {
        View reorderedFlexItemAt;
        if (i10 >= this.f27328a.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f27328a.getFlexDirection();
        if (this.f27328a.getAlignItems() != 4) {
            for (com.google.android.flexbox.b bVar : this.f27328a.getFlexLinesInternal()) {
                for (Integer num : bVar.f27323n) {
                    View reorderedFlexItemAt2 = this.f27328a.getReorderedFlexItemAt(num.intValue());
                    if (flexDirection == 0 || flexDirection == 1) {
                        W(reorderedFlexItemAt2, bVar.f27316g, num.intValue());
                    } else {
                        if (flexDirection != 2 && flexDirection != 3) {
                            throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                        }
                        V(reorderedFlexItemAt2, bVar.f27316g, num.intValue());
                    }
                }
            }
            return;
        }
        int[] iArr = this.f27330c;
        List flexLinesInternal = this.f27328a.getFlexLinesInternal();
        int size = flexLinesInternal.size();
        for (int i11 = iArr != null ? iArr[i10] : 0; i11 < size; i11++) {
            com.google.android.flexbox.b bVar2 = (com.google.android.flexbox.b) flexLinesInternal.get(i11);
            int i12 = bVar2.f27317h;
            for (int i13 = 0; i13 < i12; i13++) {
                int i14 = bVar2.f27324o + i13;
                if (i13 < this.f27328a.getFlexItemCount() && (reorderedFlexItemAt = this.f27328a.getReorderedFlexItemAt(i14)) != null && reorderedFlexItemAt.getVisibility() != 8) {
                    FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                    if (flexItem.getAlignSelf() == -1 || flexItem.getAlignSelf() == 4) {
                        if (flexDirection == 0 || flexDirection == 1) {
                            W(reorderedFlexItemAt, bVar2.f27316g, i14);
                        } else {
                            if (flexDirection != 2 && flexDirection != 3) {
                                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                            }
                            V(reorderedFlexItemAt, bVar2.f27316g, i14);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    void b(b bVar, int i10, int i11, int i12, int i13, int i14, List list) {
        int i15;
        int i16;
        List list2;
        int i17;
        int i18;
        View view;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26 = i11;
        int i27 = i14;
        boolean zIsMainAxisDirectionHorizontal = this.f27328a.isMainAxisDirectionHorizontal();
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        List arrayList = list == null ? new ArrayList() : list;
        bVar.f27333a = arrayList;
        int i28 = i27 == -1 ? 1 : 0;
        int iK = K(zIsMainAxisDirectionHorizontal);
        int I = I(zIsMainAxisDirectionHorizontal);
        int iJ = J(zIsMainAxisDirectionHorizontal);
        int iH = H(zIsMainAxisDirectionHorizontal);
        com.google.android.flexbox.b bVar2 = new com.google.android.flexbox.b();
        int i29 = i13;
        bVar2.f27324o = i29;
        int i30 = I + iK;
        bVar2.f27314e = i30;
        int flexItemCount = this.f27328a.getFlexItemCount();
        int i31 = i28;
        int i32 = Integer.MIN_VALUE;
        int i33 = 0;
        int iCombineMeasuredStates = 0;
        int i34 = 0;
        while (i29 < flexItemCount) {
            View reorderedFlexItemAt = this.f27328a.getReorderedFlexItemAt(i29);
            if (reorderedFlexItemAt != null) {
                if (reorderedFlexItemAt.getVisibility() == 8) {
                    bVar2.f27318i++;
                    bVar2.f27317h++;
                    if (N(i29, flexItemCount, bVar2)) {
                        a(arrayList, bVar2, i29, i33);
                    }
                } else {
                    if (reorderedFlexItemAt instanceof CompoundButton) {
                        v((CompoundButton) reorderedFlexItemAt);
                    }
                    FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                    int i35 = flexItemCount;
                    if (flexItem.getAlignSelf() == 4) {
                        bVar2.f27323n.add(Integer.valueOf(i29));
                    }
                    int iG = G(flexItem, zIsMainAxisDirectionHorizontal);
                    if (flexItem.getFlexBasisPercent() != -1.0f && mode == 1073741824) {
                        iG = Math.round(size * flexItem.getFlexBasisPercent());
                    }
                    if (zIsMainAxisDirectionHorizontal) {
                        int childWidthMeasureSpec = this.f27328a.getChildWidthMeasureSpec(i10, i30 + E(flexItem, true) + C(flexItem, true), iG);
                        int childHeightMeasureSpec = this.f27328a.getChildHeightMeasureSpec(i26, iJ + iH + D(flexItem, true) + B(flexItem, true) + i33, F(flexItem, true));
                        reorderedFlexItemAt.measure(childWidthMeasureSpec, childHeightMeasureSpec);
                        Z(i29, childWidthMeasureSpec, childHeightMeasureSpec, reorderedFlexItemAt);
                        i16 = childWidthMeasureSpec;
                    } else {
                        int childWidthMeasureSpec2 = this.f27328a.getChildWidthMeasureSpec(i26, iJ + iH + D(flexItem, false) + B(flexItem, false) + i33, F(flexItem, false));
                        int childHeightMeasureSpec2 = this.f27328a.getChildHeightMeasureSpec(i10, E(flexItem, false) + i30 + C(flexItem, false), iG);
                        reorderedFlexItemAt.measure(childWidthMeasureSpec2, childHeightMeasureSpec2);
                        Z(i29, childWidthMeasureSpec2, childHeightMeasureSpec2, reorderedFlexItemAt);
                        i16 = childHeightMeasureSpec2;
                    }
                    this.f27328a.updateViewCache(i29, reorderedFlexItemAt);
                    i(reorderedFlexItemAt, i29);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, reorderedFlexItemAt.getMeasuredState());
                    int i36 = i33;
                    int i37 = i30;
                    com.google.android.flexbox.b bVar3 = bVar2;
                    int i38 = i29;
                    list2 = arrayList;
                    int i39 = i16;
                    if (P(reorderedFlexItemAt, mode, size, bVar2.f27314e, C(flexItem, zIsMainAxisDirectionHorizontal) + M(reorderedFlexItemAt, zIsMainAxisDirectionHorizontal) + E(flexItem, zIsMainAxisDirectionHorizontal), flexItem, i38, i34, arrayList.size())) {
                        if (bVar3.c() > 0) {
                            a(list2, bVar3, i38 > 0 ? i38 - 1 : 0, i36);
                            i33 = bVar3.f27316g + i36;
                        } else {
                            i33 = i36;
                        }
                        if (!zIsMainAxisDirectionHorizontal) {
                            i17 = i11;
                            i18 = i38;
                            view = reorderedFlexItemAt;
                            i19 = -1;
                            if (flexItem.getWidth() == -1) {
                                com.google.android.flexbox.a aVar = this.f27328a;
                                view.measure(aVar.getChildWidthMeasureSpec(i17, aVar.getPaddingLeft() + this.f27328a.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + i33, flexItem.getWidth()), i39);
                                i(view, i18);
                            }
                        } else if (flexItem.getHeight() == -1) {
                            com.google.android.flexbox.a aVar2 = this.f27328a;
                            i17 = i11;
                            i19 = -1;
                            view = reorderedFlexItemAt;
                            view.measure(i39, aVar2.getChildHeightMeasureSpec(i17, aVar2.getPaddingTop() + this.f27328a.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + i33, flexItem.getHeight()));
                            i18 = i38;
                            i(view, i18);
                        } else {
                            i17 = i11;
                            i18 = i38;
                            view = reorderedFlexItemAt;
                            i19 = -1;
                        }
                        bVar2 = new com.google.android.flexbox.b();
                        i21 = 1;
                        bVar2.f27317h = 1;
                        i20 = i37;
                        bVar2.f27314e = i20;
                        bVar2.f27324o = i18;
                        i23 = Integer.MIN_VALUE;
                        i22 = 0;
                    } else {
                        i17 = i11;
                        i18 = i38;
                        view = reorderedFlexItemAt;
                        i19 = -1;
                        bVar2 = bVar3;
                        i20 = i37;
                        i21 = 1;
                        bVar2.f27317h++;
                        i22 = i34 + 1;
                        i33 = i36;
                        i23 = i32;
                    }
                    bVar2.f27326q = (bVar2.f27326q ? 1 : 0) | (flexItem.getFlexGrow() != 0.0f ? i21 : 0);
                    bVar2.f27327r = (bVar2.f27327r ? 1 : 0) | (flexItem.getFlexShrink() != 0.0f ? i21 : 0);
                    int[] iArr = this.f27330c;
                    if (iArr != null) {
                        iArr[i18] = list2.size();
                    }
                    bVar2.f27314e += M(view, zIsMainAxisDirectionHorizontal) + E(flexItem, zIsMainAxisDirectionHorizontal) + C(flexItem, zIsMainAxisDirectionHorizontal);
                    bVar2.f27319j += flexItem.getFlexGrow();
                    bVar2.f27320k += flexItem.getFlexShrink();
                    this.f27328a.onNewFlexItemAdded(view, i18, i22, bVar2);
                    int iMax = Math.max(i23, L(view, zIsMainAxisDirectionHorizontal) + D(flexItem, zIsMainAxisDirectionHorizontal) + B(flexItem, zIsMainAxisDirectionHorizontal) + this.f27328a.getDecorationLengthCrossAxis(view));
                    bVar2.f27316g = Math.max(bVar2.f27316g, iMax);
                    if (zIsMainAxisDirectionHorizontal) {
                        if (this.f27328a.getFlexWrap() != 2) {
                            bVar2.f27321l = Math.max(bVar2.f27321l, view.getBaseline() + flexItem.getMarginTop());
                        } else {
                            bVar2.f27321l = Math.max(bVar2.f27321l, (view.getMeasuredHeight() - view.getBaseline()) + flexItem.getMarginBottom());
                        }
                    }
                    i24 = i35;
                    if (N(i18, i24, bVar2)) {
                        a(list2, bVar2, i18, i33);
                        i33 += bVar2.f27316g;
                    }
                    i25 = i14;
                    if (i25 != i19 && list2.size() > 0 && ((com.google.android.flexbox.b) list2.get(list2.size() - i21)).f27325p >= i25 && i18 >= i25 && i31 == 0) {
                        i33 = -bVar2.a();
                        i31 = i21;
                    }
                    if (i33 > i12 && i31 != 0) {
                        i15 = iCombineMeasuredStates;
                        bVar.f27334b = i15;
                    } else {
                        i34 = i22;
                        i32 = iMax;
                    }
                }
                i29 = i18 + 1;
                flexItemCount = i24;
                i26 = i17;
                i30 = i20;
                arrayList = list2;
                size = size;
                mode = mode;
                i27 = i25;
            } else if (N(i29, flexItemCount, bVar2)) {
                a(arrayList, bVar2, i29, i33);
            }
            size = size;
            mode = mode;
            i17 = i26;
            i25 = i27;
            i20 = i30;
            list2 = arrayList;
            i24 = flexItemCount;
            i18 = i29;
            i29 = i18 + 1;
            flexItemCount = i24;
            i26 = i17;
            i30 = i20;
            arrayList = list2;
            size = size;
            mode = mode;
            i27 = i25;
        }
        i15 = iCombineMeasuredStates;
        bVar.f27334b = i15;
    }

    void c(b bVar, int i10, int i11) {
        b(bVar, i10, i11, Integer.MAX_VALUE, 0, -1, null);
    }

    void d(b bVar, int i10, int i11, int i12, int i13, List list) {
        b(bVar, i10, i11, i12, i13, -1, list);
    }

    void e(b bVar, int i10, int i11, int i12, int i13, List list) {
        b(bVar, i10, i11, i12, 0, i13, list);
    }

    void f(b bVar, int i10, int i11) {
        b(bVar, i11, i10, Integer.MAX_VALUE, 0, -1, null);
    }

    void g(b bVar, int i10, int i11, int i12, int i13, List list) {
        b(bVar, i11, i10, i12, i13, -1, list);
    }

    void h(b bVar, int i10, int i11, int i12, int i13, List list) {
        b(bVar, i11, i10, i12, 0, i13, list);
    }

    void j(List list, int i10) {
        int i11 = this.f27330c[i10];
        if (i11 == -1) {
            i11 = 0;
        }
        if (list.size() > i11) {
            list.subList(i11, list.size()).clear();
        }
        int[] iArr = this.f27330c;
        int length = iArr.length - 1;
        if (i10 > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, i10, length, -1);
        }
        long[] jArr = this.f27331d;
        int length2 = jArr.length - 1;
        if (i10 > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, i10, length2, 0L);
        }
    }

    int[] m(SparseIntArray sparseIntArray) {
        int flexItemCount = this.f27328a.getFlexItemCount();
        return U(flexItemCount, l(flexItemCount), sparseIntArray);
    }

    /* JADX WARN: Multi-variable type inference failed */
    int[] n(View view, int i10, ViewGroup.LayoutParams layoutParams, SparseIntArray sparseIntArray) {
        int flexItemCount = this.f27328a.getFlexItemCount();
        List listL = l(flexItemCount);
        C0359c c0359c = new C0359c();
        if (view == null || !(layoutParams instanceof FlexItem)) {
            c0359c.f27336b = 1;
        } else {
            c0359c.f27336b = ((FlexItem) layoutParams).getOrder();
        }
        if (i10 == -1 || i10 == flexItemCount || i10 >= this.f27328a.getFlexItemCount()) {
            c0359c.f27335a = flexItemCount;
        } else {
            c0359c.f27335a = i10;
            while (i10 < flexItemCount) {
                ((C0359c) listL.get(i10)).f27335a++;
                i10++;
            }
        }
        listL.add(c0359c);
        return U(flexItemCount + 1, listL, sparseIntArray);
    }

    void o(int i10, int i11, int i12) {
        int mode;
        int size;
        int flexDirection = this.f27328a.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            int mode2 = View.MeasureSpec.getMode(i11);
            int size2 = View.MeasureSpec.getSize(i11);
            mode = mode2;
            size = size2;
        } else {
            if (flexDirection != 2 && flexDirection != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            mode = View.MeasureSpec.getMode(i10);
            size = View.MeasureSpec.getSize(i10);
        }
        List<com.google.android.flexbox.b> flexLinesInternal = this.f27328a.getFlexLinesInternal();
        if (mode == 1073741824) {
            int sumOfCrossSize = this.f27328a.getSumOfCrossSize() + i12;
            int i13 = 0;
            if (flexLinesInternal.size() == 1) {
                ((com.google.android.flexbox.b) flexLinesInternal.get(0)).f27316g = size - i12;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                int alignContent = this.f27328a.getAlignContent();
                if (alignContent == 1) {
                    int i14 = size - sumOfCrossSize;
                    com.google.android.flexbox.b bVar = new com.google.android.flexbox.b();
                    bVar.f27316g = i14;
                    flexLinesInternal.add(0, bVar);
                    return;
                }
                if (alignContent == 2) {
                    this.f27328a.setFlexLines(k(flexLinesInternal, size, sumOfCrossSize));
                    return;
                }
                if (alignContent == 3) {
                    if (sumOfCrossSize >= size) {
                        return;
                    }
                    float size3 = (size - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                    ArrayList arrayList = new ArrayList();
                    int size4 = flexLinesInternal.size();
                    float f10 = 0.0f;
                    while (i13 < size4) {
                        arrayList.add((com.google.android.flexbox.b) flexLinesInternal.get(i13));
                        if (i13 != flexLinesInternal.size() - 1) {
                            com.google.android.flexbox.b bVar2 = new com.google.android.flexbox.b();
                            if (i13 == flexLinesInternal.size() - 2) {
                                bVar2.f27316g = Math.round(f10 + size3);
                                f10 = 0.0f;
                            } else {
                                bVar2.f27316g = Math.round(size3);
                            }
                            int i15 = bVar2.f27316g;
                            f10 += size3 - i15;
                            if (f10 > 1.0f) {
                                bVar2.f27316g = i15 + 1;
                                f10 -= 1.0f;
                            } else if (f10 < -1.0f) {
                                bVar2.f27316g = i15 - 1;
                                f10 += 1.0f;
                            }
                            arrayList.add(bVar2);
                        }
                        i13++;
                    }
                    this.f27328a.setFlexLines(arrayList);
                    return;
                }
                if (alignContent == 4) {
                    if (sumOfCrossSize >= size) {
                        this.f27328a.setFlexLines(k(flexLinesInternal, size, sumOfCrossSize));
                        return;
                    }
                    int size5 = (size - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    com.google.android.flexbox.b bVar3 = new com.google.android.flexbox.b();
                    bVar3.f27316g = size5;
                    for (com.google.android.flexbox.b bVar4 : flexLinesInternal) {
                        arrayList2.add(bVar3);
                        arrayList2.add(bVar4);
                        arrayList2.add(bVar3);
                    }
                    this.f27328a.setFlexLines(arrayList2);
                    return;
                }
                if (alignContent == 5 && sumOfCrossSize < size) {
                    float size6 = (size - sumOfCrossSize) / flexLinesInternal.size();
                    int size7 = flexLinesInternal.size();
                    float f11 = 0.0f;
                    while (i13 < size7) {
                        com.google.android.flexbox.b bVar5 = (com.google.android.flexbox.b) flexLinesInternal.get(i13);
                        float f12 = bVar5.f27316g + size6;
                        if (i13 == flexLinesInternal.size() - 1) {
                            f12 += f11;
                            f11 = 0.0f;
                        }
                        int iRound = Math.round(f12);
                        f11 += f12 - iRound;
                        if (f11 > 1.0f) {
                            iRound++;
                            f11 -= 1.0f;
                        } else if (f11 < -1.0f) {
                            iRound--;
                            f11 += 1.0f;
                        }
                        bVar5.f27316g = iRound;
                        i13++;
                    }
                }
            }
        }
    }

    void p(int i10, int i11) {
        q(i10, i11, 0);
    }

    void q(int i10, int i11, int i12) {
        int size;
        int paddingLeft;
        int paddingRight;
        r(this.f27328a.getFlexItemCount());
        if (i12 >= this.f27328a.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f27328a.getFlexDirection();
        int flexDirection2 = this.f27328a.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(i10);
            size = View.MeasureSpec.getSize(i10);
            int largestMainSize = this.f27328a.getLargestMainSize();
            if (mode != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = this.f27328a.getPaddingLeft();
            paddingRight = this.f27328a.getPaddingRight();
        } else {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            int mode2 = View.MeasureSpec.getMode(i11);
            size = View.MeasureSpec.getSize(i11);
            if (mode2 != 1073741824) {
                size = this.f27328a.getLargestMainSize();
            }
            paddingLeft = this.f27328a.getPaddingTop();
            paddingRight = this.f27328a.getPaddingBottom();
        }
        int i13 = paddingLeft + paddingRight;
        int[] iArr = this.f27330c;
        List flexLinesInternal = this.f27328a.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i14 = iArr != null ? iArr[i12] : 0; i14 < size2; i14++) {
            com.google.android.flexbox.b bVar = (com.google.android.flexbox.b) flexLinesInternal.get(i14);
            int i15 = bVar.f27314e;
            if (i15 < size && bVar.f27326q) {
                w(i10, i11, bVar, size, i13, false);
            } else if (i15 > size && bVar.f27327r) {
                T(i10, i11, bVar, size, i13, false);
            }
        }
    }

    void s(int i10) {
        int[] iArr = this.f27330c;
        if (iArr == null) {
            this.f27330c = new int[Math.max(i10, 10)];
        } else if (iArr.length < i10) {
            this.f27330c = Arrays.copyOf(this.f27330c, Math.max(iArr.length * 2, i10));
        }
    }

    void t(int i10) {
        long[] jArr = this.f27331d;
        if (jArr == null) {
            this.f27331d = new long[Math.max(i10, 10)];
        } else if (jArr.length < i10) {
            this.f27331d = Arrays.copyOf(this.f27331d, Math.max(jArr.length * 2, i10));
        }
    }

    void u(int i10) {
        long[] jArr = this.f27332e;
        if (jArr == null) {
            this.f27332e = new long[Math.max(i10, 10)];
        } else if (jArr.length < i10) {
            this.f27332e = Arrays.copyOf(this.f27332e, Math.max(jArr.length * 2, i10));
        }
    }

    int x(long j10) {
        return (int) (j10 >> 32);
    }

    int y(long j10) {
        return (int) j10;
    }
}
