package com.google.android.flexbox;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.widget.CompoundButtonCompat;
import androidx.media3.muxer.MuxerUtil;
import defpackage.dy3;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class b {
    public final dy3 a;
    public boolean[] b;
    public int[] c;
    public long[] d;
    public long[] e;

    public static class C0088b {
        public List a;
        public int b;

        public void a() {
            this.a = null;
            this.b = 0;
        }
    }

    public static class c implements Comparable {
        public int b;
        public int c;

        public c() {
        }

        @Override
        public int compareTo(c cVar) {
            int i = this.c;
            int i2 = cVar.c;
            return i != i2 ? i - i2 : this.b - cVar.b;
        }

        public String toString() {
            return "Order{order=" + this.c + ", index=" + this.b + '}';
        }
    }

    public b(dy3 dy3Var) {
        this.a = dy3Var;
    }

    public final int A(int i, FlexItem flexItem, int i2) {
        dy3 dy3Var = this.a;
        int childWidthMeasureSpec = dy3Var.getChildWidthMeasureSpec(i, dy3Var.getPaddingLeft() + this.a.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + i2, flexItem.getWidth());
        int size = View.MeasureSpec.getSize(childWidthMeasureSpec);
        if (size > flexItem.getMaxWidth()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.getMaxWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec));
        }
        return size < flexItem.getMinWidth() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec)) : childWidthMeasureSpec;
    }

    public final int B(FlexItem flexItem, boolean z) {
        return z ? flexItem.getMarginBottom() : flexItem.getMarginRight();
    }

    public final int C(FlexItem flexItem, boolean z) {
        return z ? flexItem.getMarginRight() : flexItem.getMarginBottom();
    }

    public final int D(FlexItem flexItem, boolean z) {
        return z ? flexItem.getMarginTop() : flexItem.getMarginLeft();
    }

    public final int E(FlexItem flexItem, boolean z) {
        return z ? flexItem.getMarginLeft() : flexItem.getMarginTop();
    }

    public final int F(FlexItem flexItem, boolean z) {
        return z ? flexItem.getHeight() : flexItem.getWidth();
    }

    public final int G(FlexItem flexItem, boolean z) {
        return z ? flexItem.getWidth() : flexItem.getHeight();
    }

    public final int H(boolean z) {
        return z ? this.a.getPaddingBottom() : this.a.getPaddingEnd();
    }

    public final int I(boolean z) {
        return z ? this.a.getPaddingEnd() : this.a.getPaddingBottom();
    }

    public final int J(boolean z) {
        return z ? this.a.getPaddingTop() : this.a.getPaddingStart();
    }

    public final int K(boolean z) {
        return z ? this.a.getPaddingStart() : this.a.getPaddingTop();
    }

    public final int L(View view, boolean z) {
        return z ? view.getMeasuredHeight() : view.getMeasuredWidth();
    }

    public final int M(View view, boolean z) {
        return z ? view.getMeasuredWidth() : view.getMeasuredHeight();
    }

    public final boolean N(int i, int i2, com.google.android.flexbox.a aVar) {
        return i == i2 - 1 && aVar.c() != 0;
    }

    public boolean O(SparseIntArray sparseIntArray) {
        int flexItemCount = this.a.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            return true;
        }
        for (int i = 0; i < flexItemCount; i++) {
            View flexItemAt = this.a.getFlexItemAt(i);
            if (flexItemAt != null && ((FlexItem) flexItemAt.getLayoutParams()).getOrder() != sparseIntArray.get(i)) {
                return true;
            }
        }
        return false;
    }

    public final boolean P(View view, int i, int i2, int i3, int i4, FlexItem flexItem, int i5, int i6, int i7) {
        if (this.a.getFlexWrap() == 0) {
            return false;
        }
        if (flexItem.isWrapBefore()) {
            return true;
        }
        if (i == 0) {
            return false;
        }
        int maxLine = this.a.getMaxLine();
        if (maxLine != -1 && maxLine <= i7 + 1) {
            return false;
        }
        int decorationLengthMainAxis = this.a.getDecorationLengthMainAxis(view, i5, i6);
        if (decorationLengthMainAxis > 0) {
            i4 += decorationLengthMainAxis;
        }
        return i2 < i3 + i4;
    }

    public void Q(View view, com.google.android.flexbox.a aVar, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.a.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i5 = aVar.g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (this.a.getFlexWrap() == 2) {
                    view.layout(i, (i2 - i5) + view.getMeasuredHeight() + flexItem.getMarginTop(), i3, (i4 - i5) + view.getMeasuredHeight() + flexItem.getMarginTop());
                    return;
                } else {
                    int i6 = i2 + i5;
                    view.layout(i, (i6 - view.getMeasuredHeight()) - flexItem.getMarginBottom(), i3, i6 - flexItem.getMarginBottom());
                    return;
                }
            }
            if (alignItems == 2) {
                int measuredHeight = (((i5 - view.getMeasuredHeight()) + flexItem.getMarginTop()) - flexItem.getMarginBottom()) / 2;
                if (this.a.getFlexWrap() != 2) {
                    int i7 = i2 + measuredHeight;
                    view.layout(i, i7, i3, view.getMeasuredHeight() + i7);
                    return;
                } else {
                    int i8 = i2 - measuredHeight;
                    view.layout(i, i8, i3, view.getMeasuredHeight() + i8);
                    return;
                }
            }
            if (alignItems == 3) {
                if (this.a.getFlexWrap() != 2) {
                    int iMax = Math.max(aVar.l - view.getBaseline(), flexItem.getMarginTop());
                    view.layout(i, i2 + iMax, i3, i4 + iMax);
                    return;
                } else {
                    int iMax2 = Math.max((aVar.l - view.getMeasuredHeight()) + view.getBaseline(), flexItem.getMarginBottom());
                    view.layout(i, i2 - iMax2, i3, i4 - iMax2);
                    return;
                }
            }
            if (alignItems != 4) {
                return;
            }
        }
        if (this.a.getFlexWrap() != 2) {
            view.layout(i, i2 + flexItem.getMarginTop(), i3, i4 + flexItem.getMarginTop());
        } else {
            view.layout(i, i2 - flexItem.getMarginBottom(), i3, i4 - flexItem.getMarginBottom());
        }
    }

    public void R(View view, com.google.android.flexbox.a aVar, boolean z, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.a.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i5 = aVar.g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (z) {
                    view.layout((i - i5) + view.getMeasuredWidth() + flexItem.getMarginLeft(), i2, (i3 - i5) + view.getMeasuredWidth() + flexItem.getMarginLeft(), i4);
                    return;
                } else {
                    view.layout(((i + i5) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i2, ((i3 + i5) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i4);
                    return;
                }
            }
            if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth = (((i5 - view.getMeasuredWidth()) + MarginLayoutParamsCompat.getMarginStart(marginLayoutParams)) - MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) / 2;
                if (z) {
                    view.layout(i - measuredWidth, i2, i3 - measuredWidth, i4);
                    return;
                } else {
                    view.layout(i + measuredWidth, i2, i3 + measuredWidth, i4);
                    return;
                }
            }
            if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (z) {
            view.layout(i - flexItem.getMarginRight(), i2, i3 - flexItem.getMarginRight(), i4);
        } else {
            view.layout(i + flexItem.getMarginLeft(), i2, i3 + flexItem.getMarginLeft(), i4);
        }
    }

    public long S(int i, int i2) {
        return (((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i2) << 32);
    }

    public final void T(int i, int i2, com.google.android.flexbox.a aVar, int i3, int i4, boolean z) {
        int iMax;
        int i5 = aVar.e;
        float f = aVar.k;
        float f2 = 0.0f;
        if (f <= 0.0f || i3 > i5) {
            return;
        }
        float f3 = (i5 - i3) / f;
        aVar.e = i4 + aVar.f;
        if (!z) {
            aVar.g = Integer.MIN_VALUE;
        }
        int i6 = 0;
        boolean z2 = false;
        int i7 = 0;
        float f4 = 0.0f;
        while (i6 < aVar.h) {
            int i8 = aVar.o + i6;
            View reorderedFlexItemAt = this.a.getReorderedFlexItemAt(i8);
            if (reorderedFlexItemAt != null && reorderedFlexItemAt.getVisibility() != 8) {
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int flexDirection = this.a.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr = this.e;
                    if (jArr != null) {
                        measuredWidth = y(jArr[i8]);
                    }
                    int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr2 = this.e;
                    if (jArr2 != null) {
                        measuredHeight = x(jArr2[i8]);
                    }
                    if (!this.b[i8] && flexItem.getFlexShrink() > 0.0f) {
                        float flexShrink = measuredWidth - (flexItem.getFlexShrink() * f3);
                        if (i6 == aVar.h - 1) {
                            flexShrink += f4;
                            f4 = 0.0f;
                        }
                        int iRound = Math.round(flexShrink);
                        if (iRound < flexItem.getMinWidth()) {
                            iRound = flexItem.getMinWidth();
                            this.b[i8] = true;
                            aVar.k -= flexItem.getFlexShrink();
                            z2 = true;
                        } else {
                            f4 += flexShrink - iRound;
                            double d = f4;
                            if (d > 1.0d) {
                                iRound++;
                                f4 -= 1.0f;
                            } else if (d < -1.0d) {
                                iRound--;
                                f4 += 1.0f;
                            }
                        }
                        int iZ = z(i2, flexItem, aVar.m);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        reorderedFlexItemAt.measure(iMakeMeasureSpec, iZ);
                        int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                        Z(i8, iMakeMeasureSpec, iZ, reorderedFlexItemAt);
                        this.a.updateViewCache(i8, reorderedFlexItemAt);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i7, measuredHeight + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.a.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    aVar.e += measuredWidth + flexItem.getMarginLeft() + flexItem.getMarginRight();
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr3 = this.e;
                    if (jArr3 != null) {
                        measuredHeight3 = x(jArr3[i8]);
                    }
                    int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr4 = this.e;
                    if (jArr4 != null) {
                        measuredWidth3 = y(jArr4[i8]);
                    }
                    if (!this.b[i8] && flexItem.getFlexShrink() > f2) {
                        float flexShrink2 = measuredHeight3 - (flexItem.getFlexShrink() * f3);
                        if (i6 == aVar.h - 1) {
                            flexShrink2 += f4;
                            f4 = f2;
                        }
                        int iRound2 = Math.round(flexShrink2);
                        if (iRound2 < flexItem.getMinHeight()) {
                            iRound2 = flexItem.getMinHeight();
                            this.b[i8] = true;
                            aVar.k -= flexItem.getFlexShrink();
                            z2 = true;
                        } else {
                            f4 += flexShrink2 - iRound2;
                            double d2 = f4;
                            if (d2 > 1.0d) {
                                iRound2++;
                                f4 -= 1.0f;
                            } else if (d2 < -1.0d) {
                                iRound2--;
                                f4 += 1.0f;
                            }
                        }
                        int iA = A(i, flexItem, aVar.m);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
                        reorderedFlexItemAt.measure(iA, iMakeMeasureSpec2);
                        measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight4 = reorderedFlexItemAt.getMeasuredHeight();
                        Z(i8, iA, iMakeMeasureSpec2, reorderedFlexItemAt);
                        this.a.updateViewCache(i8, reorderedFlexItemAt);
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i7, measuredWidth3 + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.a.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    aVar.e += measuredHeight3 + flexItem.getMarginTop() + flexItem.getMarginBottom();
                }
                aVar.g = Math.max(aVar.g, iMax);
                i7 = iMax;
            }
            i6++;
            f2 = 0.0f;
        }
        if (!z2 || i5 == aVar.e) {
            return;
        }
        T(i, i2, aVar, i3, i4, true);
    }

    public final int[] U(int i, List list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i];
        Iterator it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            c cVar = (c) it.next();
            int i3 = cVar.b;
            iArr[i2] = i3;
            sparseIntArray.append(i3, cVar.c);
            i2++;
        }
        return iArr;
    }

    public final void V(View view, int i, int i2) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int iMin = Math.min(Math.max(((i - flexItem.getMarginLeft()) - flexItem.getMarginRight()) - this.a.getDecorationLengthCrossAxis(view), flexItem.getMinWidth()), flexItem.getMaxWidth());
        long[] jArr = this.e;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? x(jArr[i2]) : view.getMeasuredHeight(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
        Z(i2, iMakeMeasureSpec2, iMakeMeasureSpec, view);
        this.a.updateViewCache(i2, view);
    }

    public final void W(View view, int i, int i2) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int iMin = Math.min(Math.max(((i - flexItem.getMarginTop()) - flexItem.getMarginBottom()) - this.a.getDecorationLengthCrossAxis(view), flexItem.getMinHeight()), flexItem.getMaxHeight());
        long[] jArr = this.e;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? y(jArr[i2]) : view.getMeasuredWidth(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        Z(i2, iMakeMeasureSpec, iMakeMeasureSpec2, view);
        this.a.updateViewCache(i2, view);
    }

    public void X() {
        Y(0);
    }

    public void Y(int i) {
        View reorderedFlexItemAt;
        if (i >= this.a.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.a.getFlexDirection();
        if (this.a.getAlignItems() != 4) {
            for (com.google.android.flexbox.a aVar : this.a.getFlexLinesInternal()) {
                for (Integer num : aVar.n) {
                    View reorderedFlexItemAt2 = this.a.getReorderedFlexItemAt(num.intValue());
                    if (flexDirection == 0 || flexDirection == 1) {
                        W(reorderedFlexItemAt2, aVar.g, num.intValue());
                    } else {
                        if (flexDirection != 2 && flexDirection != 3) {
                            throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                        }
                        V(reorderedFlexItemAt2, aVar.g, num.intValue());
                    }
                }
            }
            return;
        }
        int[] iArr = this.c;
        List flexLinesInternal = this.a.getFlexLinesInternal();
        int size = flexLinesInternal.size();
        for (int i2 = iArr != null ? iArr[i] : 0; i2 < size; i2++) {
            com.google.android.flexbox.a aVar2 = (com.google.android.flexbox.a) flexLinesInternal.get(i2);
            int i3 = aVar2.h;
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = aVar2.o + i4;
                if (i4 < this.a.getFlexItemCount() && (reorderedFlexItemAt = this.a.getReorderedFlexItemAt(i5)) != null && reorderedFlexItemAt.getVisibility() != 8) {
                    FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                    if (flexItem.getAlignSelf() == -1 || flexItem.getAlignSelf() == 4) {
                        if (flexDirection == 0 || flexDirection == 1) {
                            W(reorderedFlexItemAt, aVar2.g, i5);
                        } else {
                            if (flexDirection != 2 && flexDirection != 3) {
                                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                            }
                            V(reorderedFlexItemAt, aVar2.g, i5);
                        }
                    }
                }
            }
        }
    }

    public final void Z(int i, int i2, int i3, View view) {
        long[] jArr = this.d;
        if (jArr != null) {
            jArr[i] = S(i2, i3);
        }
        long[] jArr2 = this.e;
        if (jArr2 != null) {
            jArr2[i] = S(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    public final void a(List list, com.google.android.flexbox.a aVar, int i, int i2) {
        aVar.m = i2;
        this.a.onNewFlexLineAdded(aVar);
        aVar.p = i;
        list.add(aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void b(C0088b c0088b, int i, int i2, int i3, int i4, int i5, List list) {
        int i6;
        int i7;
        List list2;
        int i8;
        View view;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16 = i2;
        int i17 = i5;
        boolean zIsMainAxisDirectionHorizontal = this.a.isMainAxisDirectionHorizontal();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        List arrayList = list == null ? new ArrayList() : list;
        c0088b.a = arrayList;
        int i18 = i17 == -1 ? 1 : 0;
        int iK = K(zIsMainAxisDirectionHorizontal);
        int I = I(zIsMainAxisDirectionHorizontal);
        int iJ = J(zIsMainAxisDirectionHorizontal);
        int iH = H(zIsMainAxisDirectionHorizontal);
        com.google.android.flexbox.a aVar = new com.google.android.flexbox.a();
        int i19 = i4;
        aVar.o = i19;
        int i20 = I + iK;
        aVar.e = i20;
        int flexItemCount = this.a.getFlexItemCount();
        int i21 = i18;
        int i22 = Integer.MIN_VALUE;
        int i23 = 0;
        int iCombineMeasuredStates = 0;
        int i24 = 0;
        while (i19 < flexItemCount) {
            View reorderedFlexItemAt = this.a.getReorderedFlexItemAt(i19);
            if (reorderedFlexItemAt != null) {
                if (reorderedFlexItemAt.getVisibility() == 8) {
                    aVar.i++;
                    aVar.h++;
                    if (N(i19, flexItemCount, aVar)) {
                        a(arrayList, aVar, i19, i23);
                    }
                } else {
                    if (reorderedFlexItemAt instanceof CompoundButton) {
                        v((CompoundButton) reorderedFlexItemAt);
                    }
                    FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                    int i25 = flexItemCount;
                    if (flexItem.getAlignSelf() == 4) {
                        aVar.n.add(Integer.valueOf(i19));
                    }
                    int iG = G(flexItem, zIsMainAxisDirectionHorizontal);
                    if (flexItem.getFlexBasisPercent() != -1.0f && mode == 1073741824) {
                        iG = Math.round(size * flexItem.getFlexBasisPercent());
                    }
                    if (zIsMainAxisDirectionHorizontal) {
                        int childWidthMeasureSpec = this.a.getChildWidthMeasureSpec(i, i20 + E(flexItem, true) + C(flexItem, true), iG);
                        int childHeightMeasureSpec = this.a.getChildHeightMeasureSpec(i16, iJ + iH + D(flexItem, true) + B(flexItem, true) + i23, F(flexItem, true));
                        reorderedFlexItemAt.measure(childWidthMeasureSpec, childHeightMeasureSpec);
                        Z(i19, childWidthMeasureSpec, childHeightMeasureSpec, reorderedFlexItemAt);
                        i7 = childWidthMeasureSpec;
                    } else {
                        int childWidthMeasureSpec2 = this.a.getChildWidthMeasureSpec(i16, iJ + iH + D(flexItem, false) + B(flexItem, false) + i23, F(flexItem, false));
                        int childHeightMeasureSpec2 = this.a.getChildHeightMeasureSpec(i, E(flexItem, false) + i20 + C(flexItem, false), iG);
                        reorderedFlexItemAt.measure(childWidthMeasureSpec2, childHeightMeasureSpec2);
                        Z(i19, childWidthMeasureSpec2, childHeightMeasureSpec2, reorderedFlexItemAt);
                        i7 = childHeightMeasureSpec2;
                    }
                    this.a.updateViewCache(i19, reorderedFlexItemAt);
                    i(reorderedFlexItemAt, i19);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, reorderedFlexItemAt.getMeasuredState());
                    int i26 = i23;
                    int i27 = i20;
                    com.google.android.flexbox.a aVar2 = aVar;
                    int i28 = i19;
                    list2 = arrayList;
                    int i29 = i7;
                    if (P(reorderedFlexItemAt, mode, size, aVar.e, C(flexItem, zIsMainAxisDirectionHorizontal) + M(reorderedFlexItemAt, zIsMainAxisDirectionHorizontal) + E(flexItem, zIsMainAxisDirectionHorizontal), flexItem, i28, i24, arrayList.size())) {
                        i19 = i28;
                        if (aVar2.c() > 0) {
                            a(list2, aVar2, i19 > 0 ? i19 - 1 : 0, i26);
                            i23 = aVar2.g + i26;
                        } else {
                            i23 = i26;
                        }
                        if (!zIsMainAxisDirectionHorizontal) {
                            i8 = i2;
                            view = reorderedFlexItemAt;
                            i9 = -1;
                            if (flexItem.getWidth() == -1) {
                                dy3 dy3Var = this.a;
                                view.measure(dy3Var.getChildWidthMeasureSpec(i8, dy3Var.getPaddingLeft() + this.a.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + i23, flexItem.getWidth()), i29);
                                i(view, i19);
                            }
                        } else if (flexItem.getHeight() == -1) {
                            dy3 dy3Var2 = this.a;
                            i8 = i2;
                            i9 = -1;
                            view = reorderedFlexItemAt;
                            view.measure(i29, dy3Var2.getChildHeightMeasureSpec(i8, dy3Var2.getPaddingTop() + this.a.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + i23, flexItem.getHeight()));
                            i(view, i19);
                        } else {
                            i8 = i2;
                            view = reorderedFlexItemAt;
                            i9 = -1;
                        }
                        aVar = new com.google.android.flexbox.a();
                        i11 = 1;
                        aVar.h = 1;
                        i10 = i27;
                        aVar.e = i10;
                        aVar.o = i19;
                        i13 = Integer.MIN_VALUE;
                        i12 = 0;
                    } else {
                        i8 = i2;
                        i19 = i28;
                        view = reorderedFlexItemAt;
                        i9 = -1;
                        aVar = aVar2;
                        i10 = i27;
                        i11 = 1;
                        aVar.h++;
                        i12 = i24 + 1;
                        i23 = i26;
                        i13 = i22;
                    }
                    aVar.q = (aVar.q ? 1 : 0) | (flexItem.getFlexGrow() != 0.0f ? i11 : 0);
                    aVar.r = (aVar.r ? 1 : 0) | (flexItem.getFlexShrink() != 0.0f ? i11 : 0);
                    int[] iArr = this.c;
                    if (iArr != null) {
                        iArr[i19] = list2.size();
                    }
                    aVar.e += M(view, zIsMainAxisDirectionHorizontal) + E(flexItem, zIsMainAxisDirectionHorizontal) + C(flexItem, zIsMainAxisDirectionHorizontal);
                    aVar.j += flexItem.getFlexGrow();
                    aVar.k += flexItem.getFlexShrink();
                    this.a.onNewFlexItemAdded(view, i19, i12, aVar);
                    int iMax = Math.max(i13, L(view, zIsMainAxisDirectionHorizontal) + D(flexItem, zIsMainAxisDirectionHorizontal) + B(flexItem, zIsMainAxisDirectionHorizontal) + this.a.getDecorationLengthCrossAxis(view));
                    aVar.g = Math.max(aVar.g, iMax);
                    if (zIsMainAxisDirectionHorizontal) {
                        if (this.a.getFlexWrap() != 2) {
                            aVar.l = Math.max(aVar.l, view.getBaseline() + flexItem.getMarginTop());
                        } else {
                            aVar.l = Math.max(aVar.l, (view.getMeasuredHeight() - view.getBaseline()) + flexItem.getMarginBottom());
                        }
                    }
                    i14 = i25;
                    if (N(i19, i14, aVar)) {
                        a(list2, aVar, i19, i23);
                        i23 += aVar.g;
                    }
                    i15 = i5;
                    if (i15 != i9 && list2.size() > 0 && ((com.google.android.flexbox.a) list2.get(list2.size() - i11)).p >= i15 && i19 >= i15 && i21 == 0) {
                        i23 = -aVar.a();
                        i21 = i11;
                    }
                    if (i23 > i3 && i21 != 0) {
                        i6 = iCombineMeasuredStates;
                        c0088b.b = i6;
                    } else {
                        i24 = i12;
                        i22 = iMax;
                    }
                }
                i19++;
                flexItemCount = i14;
                i16 = i8;
                i20 = i10;
                arrayList = list2;
                size = size;
                mode = mode;
                i17 = i15;
            } else if (N(i19, flexItemCount, aVar)) {
                a(arrayList, aVar, i19, i23);
            }
            size = size;
            mode = mode;
            i8 = i16;
            i15 = i17;
            i10 = i20;
            list2 = arrayList;
            i14 = flexItemCount;
            i19++;
            flexItemCount = i14;
            i16 = i8;
            i20 = i10;
            arrayList = list2;
            size = size;
            mode = mode;
            i17 = i15;
        }
        i6 = iCombineMeasuredStates;
        c0088b.b = i6;
    }

    public void c(C0088b c0088b, int i, int i2) {
        b(c0088b, i, i2, Integer.MAX_VALUE, 0, -1, null);
    }

    public void d(C0088b c0088b, int i, int i2, int i3, int i4, List list) {
        b(c0088b, i, i2, i3, i4, -1, list);
    }

    public void e(C0088b c0088b, int i, int i2, int i3, int i4, List list) {
        b(c0088b, i, i2, i3, 0, i4, list);
    }

    public void f(C0088b c0088b, int i, int i2) {
        b(c0088b, i2, i, Integer.MAX_VALUE, 0, -1, null);
    }

    public void g(C0088b c0088b, int i, int i2, int i3, int i4, List list) {
        b(c0088b, i2, i, i3, i4, -1, list);
    }

    public void h(C0088b c0088b, int i, int i2, int i3, int i4, List list) {
        b(c0088b, i2, i, i3, 0, i4, list);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002d  */
    /* JADX WARN: Code duplicated, block: B:13:0x0032  */
    /* JADX WARN: Code duplicated, block: B:15:0x0038  */
    /* JADX WARN: Code duplicated, block: B:16:0x003d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    /* JADX WARN: Code duplicated, block: B:20:? A[RETURN, SYNTHETIC] */
    public final void i(View view, int i) {
        boolean z;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        boolean z2 = true;
        if (measuredWidth >= flexItem.getMinWidth()) {
            if (measuredWidth > flexItem.getMaxWidth()) {
                measuredWidth = flexItem.getMaxWidth();
            } else {
                z = false;
            }
            if (measuredHeight < flexItem.getMinHeight()) {
                measuredHeight = flexItem.getMinHeight();
            } else if (measuredHeight > flexItem.getMaxHeight()) {
                measuredHeight = flexItem.getMaxHeight();
            } else {
                z2 = z;
            }
            if (z2) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                Z(i, iMakeMeasureSpec, iMakeMeasureSpec2, view);
                this.a.updateViewCache(i, view);
            }
        }
        measuredWidth = flexItem.getMinWidth();
        z = true;
        if (measuredHeight < flexItem.getMinHeight()) {
            measuredHeight = flexItem.getMinHeight();
        } else if (measuredHeight > flexItem.getMaxHeight()) {
            measuredHeight = flexItem.getMaxHeight();
        } else {
            z2 = z;
        }
        if (z2) {
            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
            int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
            view.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
            Z(i, iMakeMeasureSpec3, iMakeMeasureSpec4, view);
            this.a.updateViewCache(i, view);
        }
    }

    public void j(List list, int i) {
        int i2 = this.c[i];
        if (i2 == -1) {
            i2 = 0;
        }
        for (int size = list.size() - 1; size >= i2; size--) {
            list.remove(size);
        }
        int[] iArr = this.c;
        int length = iArr.length - 1;
        if (i > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, i, length, -1);
        }
        long[] jArr = this.d;
        int length2 = jArr.length - 1;
        if (i > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, i, length2, 0L);
        }
    }

    public final List k(List list, int i, int i2) {
        int i3 = (i - i2) / 2;
        ArrayList arrayList = new ArrayList();
        com.google.android.flexbox.a aVar = new com.google.android.flexbox.a();
        aVar.g = i3;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (i4 == 0) {
                arrayList.add(aVar);
            }
            arrayList.add((com.google.android.flexbox.a) list.get(i4));
            if (i4 == list.size() - 1) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    public final List l(int i) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            FlexItem flexItem = (FlexItem) this.a.getFlexItemAt(i2).getLayoutParams();
            c cVar = new c();
            cVar.c = flexItem.getOrder();
            cVar.b = i2;
            arrayList.add(cVar);
        }
        return arrayList;
    }

    public int[] m(SparseIntArray sparseIntArray) {
        int flexItemCount = this.a.getFlexItemCount();
        return U(flexItemCount, l(flexItemCount), sparseIntArray);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int[] n(View view, int i, ViewGroup.LayoutParams layoutParams, SparseIntArray sparseIntArray) {
        int flexItemCount = this.a.getFlexItemCount();
        List listL = l(flexItemCount);
        c cVar = new c();
        if (view == null || !(layoutParams instanceof FlexItem)) {
            cVar.c = 1;
        } else {
            cVar.c = ((FlexItem) layoutParams).getOrder();
        }
        if (i == -1 || i == flexItemCount || i >= this.a.getFlexItemCount()) {
            cVar.b = flexItemCount;
        } else {
            cVar.b = i;
            while (i < flexItemCount) {
                ((c) listL.get(i)).b++;
                i++;
            }
        }
        listL.add(cVar);
        return U(flexItemCount + 1, listL, sparseIntArray);
    }

    public void o(int i, int i2, int i3) {
        int mode;
        int size;
        int flexDirection = this.a.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            mode = mode2;
            size = size2;
        } else {
            if (flexDirection != 2 && flexDirection != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            mode = View.MeasureSpec.getMode(i);
            size = View.MeasureSpec.getSize(i);
        }
        List<com.google.android.flexbox.a> flexLinesInternal = this.a.getFlexLinesInternal();
        if (mode == 1073741824) {
            int sumOfCrossSize = this.a.getSumOfCrossSize() + i3;
            int i4 = 0;
            if (flexLinesInternal.size() == 1) {
                ((com.google.android.flexbox.a) flexLinesInternal.get(0)).g = size - i3;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                int alignContent = this.a.getAlignContent();
                if (alignContent == 1) {
                    com.google.android.flexbox.a aVar = new com.google.android.flexbox.a();
                    aVar.g = size - sumOfCrossSize;
                    flexLinesInternal.add(0, aVar);
                    return;
                }
                if (alignContent == 2) {
                    this.a.setFlexLines(k(flexLinesInternal, size, sumOfCrossSize));
                    return;
                }
                if (alignContent == 3) {
                    if (sumOfCrossSize >= size) {
                        return;
                    }
                    float size3 = (size - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                    ArrayList arrayList = new ArrayList();
                    int size4 = flexLinesInternal.size();
                    float f = 0.0f;
                    while (i4 < size4) {
                        arrayList.add((com.google.android.flexbox.a) flexLinesInternal.get(i4));
                        if (i4 != flexLinesInternal.size() - 1) {
                            com.google.android.flexbox.a aVar2 = new com.google.android.flexbox.a();
                            if (i4 == flexLinesInternal.size() - 2) {
                                aVar2.g = Math.round(f + size3);
                                f = 0.0f;
                            } else {
                                aVar2.g = Math.round(size3);
                            }
                            int i5 = aVar2.g;
                            f += size3 - i5;
                            if (f > 1.0f) {
                                aVar2.g = i5 + 1;
                                f -= 1.0f;
                            } else if (f < -1.0f) {
                                aVar2.g = i5 - 1;
                                f += 1.0f;
                            }
                            arrayList.add(aVar2);
                        }
                        i4++;
                    }
                    this.a.setFlexLines(arrayList);
                    return;
                }
                if (alignContent == 4) {
                    if (sumOfCrossSize >= size) {
                        this.a.setFlexLines(k(flexLinesInternal, size, sumOfCrossSize));
                        return;
                    }
                    int size5 = (size - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    com.google.android.flexbox.a aVar3 = new com.google.android.flexbox.a();
                    aVar3.g = size5;
                    for (com.google.android.flexbox.a aVar4 : flexLinesInternal) {
                        arrayList2.add(aVar3);
                        arrayList2.add(aVar4);
                        arrayList2.add(aVar3);
                    }
                    this.a.setFlexLines(arrayList2);
                    return;
                }
                if (alignContent == 5 && sumOfCrossSize < size) {
                    float size6 = (size - sumOfCrossSize) / flexLinesInternal.size();
                    int size7 = flexLinesInternal.size();
                    float f2 = 0.0f;
                    while (i4 < size7) {
                        com.google.android.flexbox.a aVar5 = (com.google.android.flexbox.a) flexLinesInternal.get(i4);
                        float f3 = aVar5.g + size6;
                        if (i4 == flexLinesInternal.size() - 1) {
                            f3 += f2;
                            f2 = 0.0f;
                        }
                        int iRound = Math.round(f3);
                        f2 += f3 - iRound;
                        if (f2 > 1.0f) {
                            iRound++;
                            f2 -= 1.0f;
                        } else if (f2 < -1.0f) {
                            iRound--;
                            f2 += 1.0f;
                        }
                        aVar5.g = iRound;
                        i4++;
                    }
                }
            }
        }
    }

    public void p(int i, int i2) {
        q(i, i2, 0);
    }

    public void q(int i, int i2, int i3) {
        int size;
        int paddingLeft;
        int paddingRight;
        r(this.a.getFlexItemCount());
        if (i3 >= this.a.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.a.getFlexDirection();
        int flexDirection2 = this.a.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(i);
            size = View.MeasureSpec.getSize(i);
            int largestMainSize = this.a.getLargestMainSize();
            if (mode != 1073741824 && largestMainSize <= size) {
                size = largestMainSize;
            }
            paddingLeft = this.a.getPaddingLeft();
            paddingRight = this.a.getPaddingRight();
        } else {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            int mode2 = View.MeasureSpec.getMode(i2);
            size = View.MeasureSpec.getSize(i2);
            if (mode2 != 1073741824) {
                size = this.a.getLargestMainSize();
            }
            paddingLeft = this.a.getPaddingTop();
            paddingRight = this.a.getPaddingBottom();
        }
        int i4 = paddingLeft + paddingRight;
        int[] iArr = this.c;
        List flexLinesInternal = this.a.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i5 = iArr != null ? iArr[i3] : 0; i5 < size2; i5++) {
            com.google.android.flexbox.a aVar = (com.google.android.flexbox.a) flexLinesInternal.get(i5);
            int i6 = aVar.e;
            if (i6 < size && aVar.q) {
                w(i, i2, aVar, size, i4, false);
            } else if (i6 > size && aVar.r) {
                T(i, i2, aVar, size, i4, false);
            }
        }
    }

    public final void r(int i) {
        boolean[] zArr = this.b;
        if (zArr == null) {
            if (i < 10) {
                i = 10;
            }
            this.b = new boolean[i];
        } else {
            if (zArr.length >= i) {
                Arrays.fill(zArr, false);
                return;
            }
            int length = zArr.length * 2;
            if (length >= i) {
                i = length;
            }
            this.b = new boolean[i];
        }
    }

    public void s(int i) {
        int[] iArr = this.c;
        if (iArr == null) {
            if (i < 10) {
                i = 10;
            }
            this.c = new int[i];
        } else if (iArr.length < i) {
            int length = iArr.length * 2;
            if (length >= i) {
                i = length;
            }
            this.c = Arrays.copyOf(iArr, i);
        }
    }

    public void t(int i) {
        long[] jArr = this.d;
        if (jArr == null) {
            if (i < 10) {
                i = 10;
            }
            this.d = new long[i];
        } else if (jArr.length < i) {
            int length = jArr.length * 2;
            if (length >= i) {
                i = length;
            }
            this.d = Arrays.copyOf(jArr, i);
        }
    }

    public void u(int i) {
        long[] jArr = this.e;
        if (jArr == null) {
            if (i < 10) {
                i = 10;
            }
            this.e = new long[i];
        } else if (jArr.length < i) {
            int length = jArr.length * 2;
            if (length >= i) {
                i = length;
            }
            this.e = Arrays.copyOf(jArr, i);
        }
    }

    public final void v(CompoundButton compoundButton) {
        FlexItem flexItem = (FlexItem) compoundButton.getLayoutParams();
        int minWidth = flexItem.getMinWidth();
        int minHeight = flexItem.getMinHeight();
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(compoundButton);
        int minimumWidth = buttonDrawable == null ? 0 : buttonDrawable.getMinimumWidth();
        int minimumHeight = buttonDrawable != null ? buttonDrawable.getMinimumHeight() : 0;
        if (minWidth == -1) {
            minWidth = minimumWidth;
        }
        flexItem.setMinWidth(minWidth);
        if (minHeight == -1) {
            minHeight = minimumHeight;
        }
        flexItem.setMinHeight(minHeight);
    }

    public final void w(int i, int i2, com.google.android.flexbox.a aVar, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int iMax;
        double d;
        double d2;
        float f = aVar.j;
        float f2 = 0.0f;
        if (f <= 0.0f || i3 < (i5 = aVar.e)) {
            return;
        }
        float f3 = (i3 - i5) / f;
        aVar.e = i4 + aVar.f;
        if (!z) {
            aVar.g = Integer.MIN_VALUE;
        }
        int i7 = 0;
        boolean z2 = false;
        int i8 = 0;
        float f4 = 0.0f;
        while (i7 < aVar.h) {
            int i9 = aVar.o + i7;
            View reorderedFlexItemAt = this.a.getReorderedFlexItemAt(i9);
            if (reorderedFlexItemAt == null || reorderedFlexItemAt.getVisibility() == 8) {
                i6 = i5;
            } else {
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int flexDirection = this.a.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    i6 = i5;
                    int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr = this.e;
                    if (jArr != null) {
                        measuredWidth = y(jArr[i9]);
                    }
                    int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr2 = this.e;
                    if (jArr2 != null) {
                        measuredHeight = x(jArr2[i9]);
                    }
                    if (!this.b[i9] && flexItem.getFlexGrow() > 0.0f) {
                        float flexGrow = measuredWidth + (flexItem.getFlexGrow() * f3);
                        if (i7 == aVar.h - 1) {
                            flexGrow += f4;
                            f4 = 0.0f;
                        }
                        int iRound = Math.round(flexGrow);
                        if (iRound > flexItem.getMaxWidth()) {
                            iRound = flexItem.getMaxWidth();
                            this.b[i9] = true;
                            aVar.j -= flexItem.getFlexGrow();
                            z2 = true;
                        } else {
                            f4 += flexGrow - iRound;
                            double d3 = f4;
                            if (d3 > 1.0d) {
                                iRound++;
                                d = d3 - 1.0d;
                            } else if (d3 < -1.0d) {
                                iRound--;
                                d = d3 + 1.0d;
                            }
                            f4 = (float) d;
                        }
                        int iZ = z(i2, flexItem, aVar.m);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        reorderedFlexItemAt.measure(iMakeMeasureSpec, iZ);
                        int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                        Z(i9, iMakeMeasureSpec, iZ, reorderedFlexItemAt);
                        this.a.updateViewCache(i9, reorderedFlexItemAt);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i8, measuredHeight + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.a.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    aVar.e += measuredWidth + flexItem.getMarginLeft() + flexItem.getMarginRight();
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr3 = this.e;
                    if (jArr3 != null) {
                        measuredHeight3 = x(jArr3[i9]);
                    }
                    int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr4 = this.e;
                    if (jArr4 != null) {
                        measuredWidth3 = y(jArr4[i9]);
                    }
                    if (this.b[i9] || flexItem.getFlexGrow() <= f2) {
                        i6 = i5;
                    } else {
                        float flexGrow2 = measuredHeight3 + (flexItem.getFlexGrow() * f3);
                        if (i7 == aVar.h - 1) {
                            flexGrow2 += f4;
                            f4 = f2;
                        }
                        int iRound2 = Math.round(flexGrow2);
                        if (iRound2 > flexItem.getMaxHeight()) {
                            iRound2 = flexItem.getMaxHeight();
                            this.b[i9] = true;
                            aVar.j -= flexItem.getFlexGrow();
                            i6 = i5;
                            z2 = true;
                        } else {
                            f4 += flexGrow2 - iRound2;
                            i6 = i5;
                            double d4 = f4;
                            if (d4 > 1.0d) {
                                iRound2++;
                                d2 = d4 - 1.0d;
                            } else if (d4 < -1.0d) {
                                iRound2--;
                                d2 = d4 + 1.0d;
                            }
                            f4 = (float) d2;
                        }
                        int iA = A(i, flexItem, aVar.m);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
                        reorderedFlexItemAt.measure(iA, iMakeMeasureSpec2);
                        measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight4 = reorderedFlexItemAt.getMeasuredHeight();
                        Z(i9, iA, iMakeMeasureSpec2, reorderedFlexItemAt);
                        this.a.updateViewCache(i9, reorderedFlexItemAt);
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i8, measuredWidth3 + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.a.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    aVar.e += measuredHeight3 + flexItem.getMarginTop() + flexItem.getMarginBottom();
                }
                aVar.g = Math.max(aVar.g, iMax);
                i8 = iMax;
            }
            i7++;
            i5 = i6;
            f2 = 0.0f;
        }
        int i10 = i5;
        if (!z2 || i10 == aVar.e) {
            return;
        }
        w(i, i2, aVar, i3, i4, true);
    }

    public int x(long j) {
        return (int) (j >> 32);
    }

    public int y(long j) {
        return (int) j;
    }

    public final int z(int i, FlexItem flexItem, int i2) {
        dy3 dy3Var = this.a;
        int childHeightMeasureSpec = dy3Var.getChildHeightMeasureSpec(i, dy3Var.getPaddingTop() + this.a.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + i2, flexItem.getHeight());
        int size = View.MeasureSpec.getSize(childHeightMeasureSpec);
        if (size > flexItem.getMaxHeight()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.getMaxHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec));
        }
        return size < flexItem.getMinHeight() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec)) : childHeightMeasureSpec;
    }
}
