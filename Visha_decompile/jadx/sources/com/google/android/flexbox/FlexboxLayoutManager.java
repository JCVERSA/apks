package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.dy3;
import java.util.ArrayList;
import java.util.List;

public class FlexboxLayoutManager extends RecyclerView.LayoutManager implements dy3, RecyclerView.SmoothScroller.ScrollVectorProvider {
    public static final Rect E = new Rect();
    public final Context A;
    public View B;
    public int C;
    public com.google.android.flexbox.b.C0088b D;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public boolean j;
    public boolean k;
    public List l;
    public final com.google.android.flexbox.b m;
    public RecyclerView.Recycler n;
    public RecyclerView.State o;
    public c p;
    public b q;
    public OrientationHelper r;
    public OrientationHelper s;
    public SavedState t;
    public int u;
    public int v;
    public int w;
    public int x;
    public boolean y;
    public SparseArray z;

    public class b {
        public int a;
        public int b;
        public int c;
        public int d;
        public boolean e;
        public boolean f;
        public boolean g;

        public b() {
            this.d = 0;
        }

        public final void q() {
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal() || !FlexboxLayoutManager.this.j) {
                this.c = this.e ? FlexboxLayoutManager.this.r.getEndAfterPadding() : FlexboxLayoutManager.this.r.getStartAfterPadding();
            } else {
                this.c = this.e ? FlexboxLayoutManager.this.r.getEndAfterPadding() : FlexboxLayoutManager.this.getWidth() - FlexboxLayoutManager.this.r.getStartAfterPadding();
            }
        }

        public final void r(View view) {
            OrientationHelper orientationHelper = FlexboxLayoutManager.this.f == 0 ? FlexboxLayoutManager.this.s : FlexboxLayoutManager.this.r;
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal() || !FlexboxLayoutManager.this.j) {
                if (this.e) {
                    this.c = orientationHelper.getDecoratedEnd(view) + orientationHelper.getTotalSpaceChange();
                } else {
                    this.c = orientationHelper.getDecoratedStart(view);
                }
            } else if (this.e) {
                this.c = orientationHelper.getDecoratedStart(view) + orientationHelper.getTotalSpaceChange();
            } else {
                this.c = orientationHelper.getDecoratedEnd(view);
            }
            this.a = FlexboxLayoutManager.this.getPosition(view);
            this.g = false;
            int[] iArr = FlexboxLayoutManager.this.m.c;
            int i = this.a;
            if (i == -1) {
                i = 0;
            }
            int i2 = iArr[i];
            this.b = i2 != -1 ? i2 : 0;
            if (FlexboxLayoutManager.this.l.size() > this.b) {
                this.a = ((com.google.android.flexbox.a) FlexboxLayoutManager.this.l.get(this.b)).o;
            }
        }

        public final void s() {
            this.a = -1;
            this.b = -1;
            this.c = Integer.MIN_VALUE;
            this.f = false;
            this.g = false;
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal()) {
                if (FlexboxLayoutManager.this.f == 0) {
                    this.e = FlexboxLayoutManager.this.e == 1;
                    return;
                } else {
                    this.e = FlexboxLayoutManager.this.f == 2;
                    return;
                }
            }
            if (FlexboxLayoutManager.this.f == 0) {
                this.e = FlexboxLayoutManager.this.e == 3;
            } else {
                this.e = FlexboxLayoutManager.this.f == 2;
            }
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.a + ", mFlexLinePosition=" + this.b + ", mCoordinate=" + this.c + ", mPerpendicularCoordinate=" + this.d + ", mLayoutFromEnd=" + this.e + ", mValid=" + this.f + ", mAssignedFromSavedState=" + this.g + '}';
        }
    }

    public static class c {
        public int a;
        public boolean b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;
        public boolean j;

        public c() {
            this.h = 1;
            this.i = 1;
        }

        public static int i(c cVar) {
            int i = cVar.c;
            cVar.c = i + 1;
            return i;
        }

        public static int j(c cVar) {
            int i = cVar.c;
            cVar.c = i - 1;
            return i;
        }

        public String toString() {
            return "LayoutState{mAvailable=" + this.a + ", mFlexLinePosition=" + this.c + ", mPosition=" + this.d + ", mOffset=" + this.e + ", mScrollingOffset=" + this.f + ", mLastScrollDelta=" + this.g + ", mItemDirection=" + this.h + ", mLayoutDirection=" + this.i + '}';
        }

        public final boolean w(RecyclerView.State state, List list) {
            int i;
            int i2 = this.d;
            return i2 >= 0 && i2 < state.getItemCount() && (i = this.c) >= 0 && i < list.size();
        }
    }

    public FlexboxLayoutManager(Context context) {
        this(context, 0, 1);
    }

    private void ensureLayoutState() {
        if (this.p == null) {
            this.p = new c();
        }
    }

    public static boolean isMeasurementUpToDate(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (i3 > 0 && i != i3) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i;
        }
        return true;
    }

    private boolean shouldMeasureChild(View view, int i, int i2, RecyclerView.LayoutParams layoutParams) {
        return (!view.isLayoutRequested() && isMeasurementCacheEnabled() && isMeasurementUpToDate(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) && isMeasurementUpToDate(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
    }

    public final int A(View view) {
        return getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
    }

    public final int B(View view) {
        return getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
    }

    public List C() {
        ArrayList arrayList = new ArrayList(this.l.size());
        int size = this.l.size();
        for (int i = 0; i < size; i++) {
            com.google.android.flexbox.a aVar = (com.google.android.flexbox.a) this.l.get(i);
            if (aVar.b() != 0) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    public int D(int i) {
        return this.m.c[i];
    }

    public final int E(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        q();
        int i2 = 1;
        this.p.j = true;
        boolean z = !isMainAxisDirectionHorizontal() && this.j;
        if (!z ? i <= 0 : i >= 0) {
            i2 = -1;
        }
        int iAbs = Math.abs(i);
        X(i2, iAbs);
        int iR = this.p.f + r(recycler, state, this.p);
        if (iR < 0) {
            return 0;
        }
        if (z) {
            if (iAbs > iR) {
                i = (-i2) * iR;
            }
        } else if (iAbs > iR) {
            i = i2 * iR;
        }
        this.r.offsetChildren(-i);
        this.p.g = i;
        return i;
    }

    public final int F(int i) {
        int i2;
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        q();
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        View view = this.B;
        int width = zIsMainAxisDirectionHorizontal ? view.getWidth() : view.getHeight();
        int width2 = zIsMainAxisDirectionHorizontal ? getWidth() : getHeight();
        if (getLayoutDirection() == 1) {
            int iAbs = Math.abs(i);
            if (i < 0) {
                return -Math.min((width2 + this.q.d) - width, iAbs);
            }
            if (this.q.d + i > 0) {
                i2 = this.q.d;
                i = -i2;
            }
        } else {
            if (i > 0) {
                return Math.min((width2 - this.q.d) - width, i);
            }
            if (this.q.d + i < 0) {
                i2 = this.q.d;
                i = -i2;
            }
        }
        return i;
    }

    public final boolean G(View view, boolean z) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int iZ = z(view);
        int iB = B(view);
        int iA = A(view);
        int iY = y(view);
        boolean z2 = paddingLeft <= iZ && width >= iA;
        boolean z3 = iZ >= width || iA >= paddingLeft;
        boolean z4 = paddingTop <= iB && height >= iY;
        boolean z5 = iB >= height || iY >= paddingTop;
        if (z) {
            return z2 && z4;
        }
        return z3 && z5;
    }

    public final int H(com.google.android.flexbox.a aVar, c cVar) {
        return isMainAxisDirectionHorizontal() ? I(aVar, cVar) : J(aVar, cVar);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:45:0x00de  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:50:0x0111  */
    /* JADX WARN: Code duplicated, block: B:53:0x0132  */
    /* JADX WARN: Code duplicated, block: B:54:0x0152  */
    /* JADX WARN: Code duplicated, block: B:61:0x0195 A[SYNTHETIC] */
    public final int I(com.google.android.flexbox.a aVar, c cVar) {
        float f;
        float f2;
        float f3;
        float measuredWidth;
        float measuredWidth2;
        float fMax;
        int iB;
        int i;
        int i2;
        View flexItemAt;
        int iY;
        int iX;
        LayoutParams layoutParams;
        float leftDecorationWidth;
        float rightDecorationWidth;
        int topDecorationHeight;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int width = getWidth();
        int i3 = cVar.e;
        if (cVar.i == -1) {
            i3 -= aVar.g;
        }
        int i4 = i3;
        int i5 = cVar.d;
        int i6 = this.g;
        int i7 = 1;
        if (i6 != 0) {
            if (i6 == 1) {
                int i8 = aVar.e;
                float f4 = (width - i8) + paddingRight;
                f3 = 0.0f;
                f2 = i8 - paddingLeft;
                f = f4;
            } else if (i6 == 2) {
                int i9 = aVar.e;
                f = paddingLeft + ((width - i9) / 2.0f);
                f2 = (width - paddingRight) - ((width - i9) / 2.0f);
            } else if (i6 == 3) {
                f = paddingLeft;
                int i10 = aVar.h;
                f3 = (width - aVar.e) / (i10 != 1 ? i10 - 1 : 1.0f);
                f2 = width - paddingRight;
            } else if (i6 == 4) {
                int i11 = aVar.h;
                f3 = i11 != 0 ? (width - aVar.e) / i11 : 0.0f;
                float f5 = f3 / 2.0f;
                f = paddingLeft + f5;
                f2 = (width - paddingRight) - f5;
            } else {
                if (i6 != 5) {
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.g);
                }
                int i12 = aVar.h;
                f3 = i12 != 0 ? (width - aVar.e) / (i12 + 1) : 0.0f;
                f = paddingLeft + f3;
                f2 = (width - paddingRight) - f3;
            }
            measuredWidth = f - this.q.d;
            measuredWidth2 = f2 - this.q.d;
            fMax = Math.max(f3, 0.0f);
            iB = aVar.b();
            i = 0;
            i2 = i5;
            while (i2 < i5 + iB) {
                flexItemAt = getFlexItemAt(i2);
                if (flexItemAt != null) {
                    if (cVar.i == i7) {
                        calculateItemDecorationsForChild(flexItemAt, E);
                        addView(flexItemAt);
                    } else {
                        calculateItemDecorationsForChild(flexItemAt, E);
                        addView(flexItemAt, i);
                        i++;
                    }
                    int i13 = i;
                    com.google.android.flexbox.b bVar = this.m;
                    long j = bVar.d[i2];
                    iY = bVar.y(j);
                    iX = this.m.x(j);
                    layoutParams = (LayoutParams) flexItemAt.getLayoutParams();
                    if (shouldMeasureChild(flexItemAt, iY, iX, layoutParams)) {
                        flexItemAt.measure(iY, iX);
                    }
                    leftDecorationWidth = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + getLeftDecorationWidth(flexItemAt);
                    rightDecorationWidth = measuredWidth2 - (((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getRightDecorationWidth(flexItemAt));
                    topDecorationHeight = i4 + getTopDecorationHeight(flexItemAt);
                    if (this.j) {
                        this.m.Q(flexItemAt, aVar, Math.round(rightDecorationWidth) - flexItemAt.getMeasuredWidth(), topDecorationHeight, Math.round(rightDecorationWidth), topDecorationHeight + flexItemAt.getMeasuredHeight());
                    } else {
                        this.m.Q(flexItemAt, aVar, Math.round(leftDecorationWidth), topDecorationHeight, Math.round(leftDecorationWidth) + flexItemAt.getMeasuredWidth(), topDecorationHeight + flexItemAt.getMeasuredHeight());
                    }
                    i = i13;
                    measuredWidth = leftDecorationWidth + flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getRightDecorationWidth(flexItemAt) + fMax;
                    measuredWidth2 = rightDecorationWidth - (((flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) + getLeftDecorationWidth(flexItemAt)) + fMax);
                }
                i2++;
                i7 = 1;
            }
            cVar.c += this.p.i;
            return aVar.a();
        }
        f = paddingLeft;
        f2 = width - paddingRight;
        f3 = 0.0f;
        measuredWidth = f - this.q.d;
        measuredWidth2 = f2 - this.q.d;
        fMax = Math.max(f3, 0.0f);
        iB = aVar.b();
        i = 0;
        i2 = i5;
        while (i2 < i5 + iB) {
            flexItemAt = getFlexItemAt(i2);
            if (flexItemAt != null) {
                if (cVar.i == i7) {
                    calculateItemDecorationsForChild(flexItemAt, E);
                    addView(flexItemAt);
                } else {
                    calculateItemDecorationsForChild(flexItemAt, E);
                    addView(flexItemAt, i);
                    i++;
                }
                int i14 = i;
                com.google.android.flexbox.b bVar2 = this.m;
                long j2 = bVar2.d[i2];
                iY = bVar2.y(j2);
                iX = this.m.x(j2);
                layoutParams = (LayoutParams) flexItemAt.getLayoutParams();
                if (shouldMeasureChild(flexItemAt, iY, iX, layoutParams)) {
                    flexItemAt.measure(iY, iX);
                }
                leftDecorationWidth = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + getLeftDecorationWidth(flexItemAt);
                rightDecorationWidth = measuredWidth2 - (((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getRightDecorationWidth(flexItemAt));
                topDecorationHeight = i4 + getTopDecorationHeight(flexItemAt);
                if (this.j) {
                    this.m.Q(flexItemAt, aVar, Math.round(rightDecorationWidth) - flexItemAt.getMeasuredWidth(), topDecorationHeight, Math.round(rightDecorationWidth), topDecorationHeight + flexItemAt.getMeasuredHeight());
                } else {
                    this.m.Q(flexItemAt, aVar, Math.round(leftDecorationWidth), topDecorationHeight, Math.round(leftDecorationWidth) + flexItemAt.getMeasuredWidth(), topDecorationHeight + flexItemAt.getMeasuredHeight());
                }
                i = i14;
                measuredWidth = leftDecorationWidth + flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getRightDecorationWidth(flexItemAt) + fMax;
                measuredWidth2 = rightDecorationWidth - (((flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) + getLeftDecorationWidth(flexItemAt)) + fMax);
            }
            i2++;
            i7 = 1;
        }
        cVar.c += this.p.i;
        return aVar.a();
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:42:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:48:0x011d  */
    /* JADX WARN: Code duplicated, block: B:50:0x0128  */
    /* JADX WARN: Code duplicated, block: B:53:0x0143  */
    /* JADX WARN: Code duplicated, block: B:55:0x0147  */
    /* JADX WARN: Code duplicated, block: B:56:0x0171  */
    /* JADX WARN: Code duplicated, block: B:57:0x0197  */
    /* JADX WARN: Code duplicated, block: B:59:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:60:0x01bf  */
    public final int J(com.google.android.flexbox.a aVar, c cVar) {
        float f;
        float f2;
        float f3;
        float measuredHeight;
        float measuredHeight2;
        float fMax;
        int iB;
        int i;
        int i2;
        View flexItemAt;
        int iY;
        int iX;
        LayoutParams layoutParams;
        float topDecorationHeight;
        float bottomDecorationHeight;
        int leftDecorationWidth;
        int rightDecorationWidth;
        boolean z;
        boolean z2;
        View view;
        int i3;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i4 = cVar.e;
        int i5 = cVar.e;
        if (cVar.i == -1) {
            int i6 = aVar.g;
            i4 -= i6;
            i5 += i6;
        }
        int i7 = i4;
        int i8 = i5;
        int i9 = cVar.d;
        int i10 = this.g;
        boolean z3 = true;
        if (i10 != 0) {
            if (i10 == 1) {
                int i11 = aVar.e;
                float f4 = (height - i11) + paddingBottom;
                f3 = 0.0f;
                f2 = i11 - paddingTop;
                f = f4;
            } else if (i10 == 2) {
                int i12 = aVar.e;
                f = paddingTop + ((height - i12) / 2.0f);
                f2 = (height - paddingBottom) - ((height - i12) / 2.0f);
            } else if (i10 == 3) {
                f = paddingTop;
                int i13 = aVar.h;
                f3 = (height - aVar.e) / (i13 != 1 ? i13 - 1 : 1.0f);
                f2 = height - paddingBottom;
            } else if (i10 == 4) {
                int i14 = aVar.h;
                f3 = i14 != 0 ? (height - aVar.e) / i14 : 0.0f;
                float f5 = f3 / 2.0f;
                f = paddingTop + f5;
                f2 = (height - paddingBottom) - f5;
            } else {
                if (i10 != 5) {
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.g);
                }
                int i15 = aVar.h;
                f3 = i15 != 0 ? (height - aVar.e) / (i15 + 1) : 0.0f;
                f = paddingTop + f3;
                f2 = (height - paddingBottom) - f3;
            }
            measuredHeight = f - this.q.d;
            measuredHeight2 = f2 - this.q.d;
            fMax = Math.max(f3, 0.0f);
            iB = aVar.b();
            i = 0;
            i2 = i9;
            while (i2 < i9 + iB) {
                flexItemAt = getFlexItemAt(i2);
                if (flexItemAt == null) {
                    i3 = i2;
                    z2 = z3;
                } else {
                    com.google.android.flexbox.b bVar = this.m;
                    long j = bVar.d[i2];
                    iY = bVar.y(j);
                    iX = this.m.x(j);
                    layoutParams = (LayoutParams) flexItemAt.getLayoutParams();
                    if (shouldMeasureChild(flexItemAt, iY, iX, layoutParams)) {
                        flexItemAt.measure(iY, iX);
                    }
                    topDecorationHeight = measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + getTopDecorationHeight(flexItemAt);
                    bottomDecorationHeight = measuredHeight2 - (((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getBottomDecorationHeight(flexItemAt));
                    if (cVar.i == 1) {
                        calculateItemDecorationsForChild(flexItemAt, E);
                        addView(flexItemAt);
                    } else {
                        calculateItemDecorationsForChild(flexItemAt, E);
                        addView(flexItemAt, i);
                        i++;
                    }
                    int i16 = i;
                    leftDecorationWidth = i7 + getLeftDecorationWidth(flexItemAt);
                    rightDecorationWidth = i8 - getRightDecorationWidth(flexItemAt);
                    z = this.j;
                    if (z) {
                        z2 = true;
                        view = flexItemAt;
                        i3 = i2;
                        if (this.k) {
                            this.m.R(view, aVar, z, leftDecorationWidth, Math.round(bottomDecorationHeight) - view.getMeasuredHeight(), leftDecorationWidth + view.getMeasuredWidth(), Math.round(bottomDecorationHeight));
                        } else {
                            this.m.R(view, aVar, z, leftDecorationWidth, Math.round(topDecorationHeight), leftDecorationWidth + view.getMeasuredWidth(), Math.round(topDecorationHeight) + view.getMeasuredHeight());
                        }
                    } else if (this.k) {
                        z2 = true;
                        view = flexItemAt;
                        i3 = i2;
                        this.m.R(flexItemAt, aVar, z, rightDecorationWidth - flexItemAt.getMeasuredWidth(), Math.round(bottomDecorationHeight) - flexItemAt.getMeasuredHeight(), rightDecorationWidth, Math.round(bottomDecorationHeight));
                    } else {
                        z2 = true;
                        view = flexItemAt;
                        i3 = i2;
                        this.m.R(view, aVar, z, rightDecorationWidth - view.getMeasuredWidth(), Math.round(topDecorationHeight), rightDecorationWidth, Math.round(topDecorationHeight) + view.getMeasuredHeight());
                    }
                    View view2 = view;
                    i = i16;
                    measuredHeight = topDecorationHeight + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + getBottomDecorationHeight(view2) + fMax;
                    measuredHeight2 = bottomDecorationHeight - (((view2.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) + getTopDecorationHeight(view2)) + fMax);
                }
                i2 = i3 + 1;
                z3 = z2;
            }
            cVar.c += this.p.i;
            return aVar.a();
        }
        f = paddingTop;
        f2 = height - paddingBottom;
        f3 = 0.0f;
        measuredHeight = f - this.q.d;
        measuredHeight2 = f2 - this.q.d;
        fMax = Math.max(f3, 0.0f);
        iB = aVar.b();
        i = 0;
        i2 = i9;
        while (i2 < i9 + iB) {
            flexItemAt = getFlexItemAt(i2);
            if (flexItemAt == null) {
                i3 = i2;
                z2 = z3;
            } else {
                com.google.android.flexbox.b bVar2 = this.m;
                long j2 = bVar2.d[i2];
                iY = bVar2.y(j2);
                iX = this.m.x(j2);
                layoutParams = (LayoutParams) flexItemAt.getLayoutParams();
                if (shouldMeasureChild(flexItemAt, iY, iX, layoutParams)) {
                    flexItemAt.measure(iY, iX);
                }
                topDecorationHeight = measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + getTopDecorationHeight(flexItemAt);
                bottomDecorationHeight = measuredHeight2 - (((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getBottomDecorationHeight(flexItemAt));
                if (cVar.i == 1) {
                    calculateItemDecorationsForChild(flexItemAt, E);
                    addView(flexItemAt);
                } else {
                    calculateItemDecorationsForChild(flexItemAt, E);
                    addView(flexItemAt, i);
                    i++;
                }
                int i17 = i;
                leftDecorationWidth = i7 + getLeftDecorationWidth(flexItemAt);
                rightDecorationWidth = i8 - getRightDecorationWidth(flexItemAt);
                z = this.j;
                if (z) {
                    z2 = true;
                    view = flexItemAt;
                    i3 = i2;
                    if (this.k) {
                        this.m.R(view, aVar, z, leftDecorationWidth, Math.round(bottomDecorationHeight) - view.getMeasuredHeight(), leftDecorationWidth + view.getMeasuredWidth(), Math.round(bottomDecorationHeight));
                    } else {
                        this.m.R(view, aVar, z, leftDecorationWidth, Math.round(topDecorationHeight), leftDecorationWidth + view.getMeasuredWidth(), Math.round(topDecorationHeight) + view.getMeasuredHeight());
                    }
                } else if (this.k) {
                    z2 = true;
                    view = flexItemAt;
                    i3 = i2;
                    this.m.R(flexItemAt, aVar, z, rightDecorationWidth - flexItemAt.getMeasuredWidth(), Math.round(bottomDecorationHeight) - flexItemAt.getMeasuredHeight(), rightDecorationWidth, Math.round(bottomDecorationHeight));
                } else {
                    z2 = true;
                    view = flexItemAt;
                    i3 = i2;
                    this.m.R(view, aVar, z, rightDecorationWidth - view.getMeasuredWidth(), Math.round(topDecorationHeight), rightDecorationWidth, Math.round(topDecorationHeight) + view.getMeasuredHeight());
                }
                View view3 = view;
                i = i17;
                measuredHeight = topDecorationHeight + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + getBottomDecorationHeight(view3) + fMax;
                measuredHeight2 = bottomDecorationHeight - (((view3.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) + getTopDecorationHeight(view3)) + fMax);
            }
            i2 = i3 + 1;
            z3 = z2;
        }
        cVar.c += this.p.i;
        return aVar.a();
    }

    public final void K(RecyclerView.Recycler recycler, c cVar) {
        if (cVar.j) {
            if (cVar.i == -1) {
                L(recycler, cVar);
            } else {
                M(recycler, cVar);
            }
        }
    }

    public final void L(RecyclerView.Recycler recycler, c cVar) {
        if (cVar.f < 0) {
            return;
        }
        this.r.getEnd();
        int unused = cVar.f;
        int childCount = getChildCount();
        if (childCount == 0) {
            return;
        }
        int i = childCount - 1;
        int i2 = this.m.c[getPosition(getChildAt(i))];
        if (i2 == -1) {
            return;
        }
        com.google.android.flexbox.a aVar = (com.google.android.flexbox.a) this.l.get(i2);
        for (int i3 = i; i3 >= 0; i3--) {
            View childAt = getChildAt(i3);
            if (!n(childAt, cVar.f)) {
                break;
            }
            if (aVar.o == getPosition(childAt)) {
                if (i2 <= 0) {
                    childCount = i3;
                    break;
                } else {
                    i2 += cVar.i;
                    aVar = (com.google.android.flexbox.a) this.l.get(i2);
                    childCount = i3;
                }
            }
        }
        recycleChildren(recycler, childCount, i);
    }

    public final void M(RecyclerView.Recycler recycler, c cVar) {
        int childCount;
        if (cVar.f >= 0 && (childCount = getChildCount()) != 0) {
            int i = this.m.c[getPosition(getChildAt(0))];
            int i2 = -1;
            if (i == -1) {
                return;
            }
            com.google.android.flexbox.a aVar = (com.google.android.flexbox.a) this.l.get(i);
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (!o(childAt, cVar.f)) {
                    break;
                }
                if (aVar.p == getPosition(childAt)) {
                    if (i >= this.l.size() - 1) {
                        i2 = i3;
                        break;
                    } else {
                        i += cVar.i;
                        aVar = (com.google.android.flexbox.a) this.l.get(i);
                        i2 = i3;
                    }
                }
            }
            recycleChildren(recycler, 0, i2);
        }
    }

    public final void N() {
        int heightMode = isMainAxisDirectionHorizontal() ? getHeightMode() : getWidthMode();
        this.p.b = heightMode == 0 || heightMode == Integer.MIN_VALUE;
    }

    public final void O() {
        int layoutDirection = getLayoutDirection();
        int i = this.e;
        if (i == 0) {
            this.j = layoutDirection == 1;
            this.k = this.f == 2;
            return;
        }
        if (i == 1) {
            this.j = layoutDirection != 1;
            this.k = this.f == 2;
            return;
        }
        if (i == 2) {
            boolean z = layoutDirection == 1;
            this.j = z;
            if (this.f == 2) {
                this.j = !z;
            }
            this.k = false;
            return;
        }
        if (i != 3) {
            this.j = false;
            this.k = false;
            return;
        }
        boolean z2 = layoutDirection == 1;
        this.j = z2;
        if (this.f == 2) {
            this.j = !z2;
        }
        this.k = true;
    }

    public void P(int i) {
        int i2 = this.h;
        if (i2 != i) {
            if (i2 == 4 || i == 4) {
                removeAllViews();
                p();
            }
            this.h = i;
            requestLayout();
        }
    }

    public void Q(int i) {
        if (this.e != i) {
            removeAllViews();
            this.e = i;
            this.r = null;
            this.s = null;
            p();
            requestLayout();
        }
    }

    public void R(int i) {
        if (i == 2) {
            throw new UnsupportedOperationException("wrap_reverse is not supported in FlexboxLayoutManager");
        }
        int i2 = this.f;
        if (i2 != i) {
            if (i2 == 0 || i == 0) {
                removeAllViews();
                p();
            }
            this.f = i;
            this.r = null;
            this.s = null;
            requestLayout();
        }
    }

    public final boolean S(RecyclerView.State state, b bVar) {
        if (getChildCount() == 0) {
            return false;
        }
        View viewU = bVar.e ? u(state.getItemCount()) : s(state.getItemCount());
        if (viewU == null) {
            return false;
        }
        bVar.r(viewU);
        if (state.isPreLayout() || !supportsPredictiveItemAnimations()) {
            return true;
        }
        if (this.r.getDecoratedStart(viewU) < this.r.getEndAfterPadding() && this.r.getDecoratedEnd(viewU) >= this.r.getStartAfterPadding()) {
            return true;
        }
        bVar.c = bVar.e ? this.r.getEndAfterPadding() : this.r.getStartAfterPadding();
        return true;
    }

    public final boolean T(RecyclerView.State state, b bVar, SavedState savedState) {
        int i;
        if (!state.isPreLayout() && (i = this.u) != -1) {
            if (i >= 0 && i < state.getItemCount()) {
                bVar.a = this.u;
                bVar.b = this.m.c[bVar.a];
                SavedState savedState2 = this.t;
                if (savedState2 != null && savedState2.hasValidAnchor(state.getItemCount())) {
                    bVar.c = this.r.getStartAfterPadding() + savedState.mAnchorOffset;
                    bVar.g = true;
                    bVar.b = -1;
                    return true;
                }
                if (this.v != Integer.MIN_VALUE) {
                    if (isMainAxisDirectionHorizontal() || !this.j) {
                        bVar.c = this.r.getStartAfterPadding() + this.v;
                    } else {
                        bVar.c = this.v - this.r.getEndPadding();
                    }
                    return true;
                }
                View viewFindViewByPosition = findViewByPosition(this.u);
                if (viewFindViewByPosition == null) {
                    if (getChildCount() > 0) {
                        bVar.e = this.u < getPosition(getChildAt(0));
                    }
                    bVar.q();
                } else {
                    if (this.r.getDecoratedMeasurement(viewFindViewByPosition) > this.r.getTotalSpace()) {
                        bVar.q();
                        return true;
                    }
                    if (this.r.getDecoratedStart(viewFindViewByPosition) - this.r.getStartAfterPadding() < 0) {
                        bVar.c = this.r.getStartAfterPadding();
                        bVar.e = false;
                        return true;
                    }
                    if (this.r.getEndAfterPadding() - this.r.getDecoratedEnd(viewFindViewByPosition) < 0) {
                        bVar.c = this.r.getEndAfterPadding();
                        bVar.e = true;
                        return true;
                    }
                    bVar.c = bVar.e ? this.r.getDecoratedEnd(viewFindViewByPosition) + this.r.getTotalSpaceChange() : this.r.getDecoratedStart(viewFindViewByPosition);
                }
                return true;
            }
            this.u = -1;
            this.v = Integer.MIN_VALUE;
        }
        return false;
    }

    public final void U(RecyclerView.State state, b bVar) {
        if (T(state, bVar, this.t) || S(state, bVar)) {
            return;
        }
        bVar.q();
        bVar.a = 0;
        bVar.b = 0;
    }

    public final void V(int i) {
        if (i >= findLastVisibleItemPosition()) {
            return;
        }
        int childCount = getChildCount();
        this.m.t(childCount);
        this.m.u(childCount);
        this.m.s(childCount);
        if (i >= this.m.c.length) {
            return;
        }
        this.C = i;
        View childClosestToStart = getChildClosestToStart();
        if (childClosestToStart == null) {
            return;
        }
        this.u = getPosition(childClosestToStart);
        if (isMainAxisDirectionHorizontal() || !this.j) {
            this.v = this.r.getDecoratedStart(childClosestToStart) - this.r.getStartAfterPadding();
        } else {
            this.v = this.r.getDecoratedEnd(childClosestToStart) + this.r.getEndPadding();
        }
    }

    public final void W(int i) {
        int i2;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int width = getWidth();
        int height = getHeight();
        boolean z = false;
        if (isMainAxisDirectionHorizontal()) {
            int i3 = this.w;
            if (i3 != Integer.MIN_VALUE && i3 != width) {
                z = true;
            }
            i2 = this.p.b ? this.A.getResources().getDisplayMetrics().heightPixels : this.p.a;
        } else {
            int i4 = this.x;
            if (i4 != Integer.MIN_VALUE && i4 != height) {
                z = true;
            }
            i2 = this.p.b ? this.A.getResources().getDisplayMetrics().widthPixels : this.p.a;
        }
        int i5 = i2;
        this.w = width;
        this.x = height;
        int i6 = this.C;
        if (i6 == -1 && (this.u != -1 || z)) {
            if (this.q.e) {
                return;
            }
            this.l.clear();
            this.D.a();
            if (isMainAxisDirectionHorizontal()) {
                this.m.e(this.D, iMakeMeasureSpec, iMakeMeasureSpec2, i5, this.q.a, this.l);
            } else {
                this.m.h(this.D, iMakeMeasureSpec, iMakeMeasureSpec2, i5, this.q.a, this.l);
            }
            this.l = this.D.a;
            this.m.p(iMakeMeasureSpec, iMakeMeasureSpec2);
            this.m.X();
            b bVar = this.q;
            bVar.b = this.m.c[bVar.a];
            this.p.c = this.q.b;
            return;
        }
        int iMin = i6 != -1 ? Math.min(i6, this.q.a) : this.q.a;
        this.D.a();
        if (isMainAxisDirectionHorizontal()) {
            if (this.l.size() > 0) {
                this.m.j(this.l, iMin);
                this.m.b(this.D, iMakeMeasureSpec, iMakeMeasureSpec2, i5, iMin, this.q.a, this.l);
            } else {
                this.m.s(i);
                this.m.d(this.D, iMakeMeasureSpec, iMakeMeasureSpec2, i5, 0, this.l);
            }
        } else if (this.l.size() > 0) {
            this.m.j(this.l, iMin);
            this.m.b(this.D, iMakeMeasureSpec2, iMakeMeasureSpec, i5, iMin, this.q.a, this.l);
        } else {
            this.m.s(i);
            this.m.g(this.D, iMakeMeasureSpec, iMakeMeasureSpec2, i5, 0, this.l);
        }
        this.l = this.D.a;
        this.m.q(iMakeMeasureSpec, iMakeMeasureSpec2, iMin);
        this.m.Y(iMin);
    }

    public final void X(int i, int i2) {
        this.p.i = i;
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        boolean z = !zIsMainAxisDirectionHorizontal && this.j;
        if (i == 1) {
            View childAt = getChildAt(getChildCount() - 1);
            this.p.e = this.r.getDecoratedEnd(childAt);
            int position = getPosition(childAt);
            View viewV = v(childAt, (com.google.android.flexbox.a) this.l.get(this.m.c[position]));
            this.p.h = 1;
            c cVar = this.p;
            cVar.d = position + cVar.h;
            if (this.m.c.length <= this.p.d) {
                this.p.c = -1;
            } else {
                c cVar2 = this.p;
                cVar2.c = this.m.c[cVar2.d];
            }
            if (z) {
                this.p.e = this.r.getDecoratedStart(viewV);
                this.p.f = (-this.r.getDecoratedStart(viewV)) + this.r.getStartAfterPadding();
                c cVar3 = this.p;
                cVar3.f = cVar3.f >= 0 ? this.p.f : 0;
            } else {
                this.p.e = this.r.getDecoratedEnd(viewV);
                this.p.f = this.r.getDecoratedEnd(viewV) - this.r.getEndAfterPadding();
            }
            if ((this.p.c == -1 || this.p.c > this.l.size() - 1) && this.p.d <= getFlexItemCount()) {
                int i3 = i2 - this.p.f;
                this.D.a();
                if (i3 > 0) {
                    if (zIsMainAxisDirectionHorizontal) {
                        this.m.d(this.D, iMakeMeasureSpec, iMakeMeasureSpec2, i3, this.p.d, this.l);
                    } else {
                        this.m.g(this.D, iMakeMeasureSpec, iMakeMeasureSpec2, i3, this.p.d, this.l);
                    }
                    this.m.q(iMakeMeasureSpec, iMakeMeasureSpec2, this.p.d);
                    this.m.Y(this.p.d);
                }
            }
        } else {
            View childAt2 = getChildAt(0);
            this.p.e = this.r.getDecoratedStart(childAt2);
            int position2 = getPosition(childAt2);
            View viewT = t(childAt2, (com.google.android.flexbox.a) this.l.get(this.m.c[position2]));
            this.p.h = 1;
            int i4 = this.m.c[position2];
            if (i4 == -1) {
                i4 = 0;
            }
            if (i4 > 0) {
                this.p.d = position2 - ((com.google.android.flexbox.a) this.l.get(i4 - 1)).b();
            } else {
                this.p.d = -1;
            }
            this.p.c = i4 > 0 ? i4 - 1 : 0;
            if (z) {
                this.p.e = this.r.getDecoratedEnd(viewT);
                this.p.f = this.r.getDecoratedEnd(viewT) - this.r.getEndAfterPadding();
                c cVar4 = this.p;
                cVar4.f = cVar4.f >= 0 ? this.p.f : 0;
            } else {
                this.p.e = this.r.getDecoratedStart(viewT);
                this.p.f = (-this.r.getDecoratedStart(viewT)) + this.r.getStartAfterPadding();
            }
        }
        c cVar5 = this.p;
        cVar5.a = i2 - cVar5.f;
    }

    public final void Y(b bVar, boolean z, boolean z2) {
        if (z2) {
            N();
        } else {
            this.p.b = false;
        }
        if (isMainAxisDirectionHorizontal() || !this.j) {
            this.p.a = this.r.getEndAfterPadding() - bVar.c;
        } else {
            this.p.a = bVar.c - getPaddingRight();
        }
        this.p.d = bVar.a;
        this.p.h = 1;
        this.p.i = 1;
        this.p.e = bVar.c;
        this.p.f = Integer.MIN_VALUE;
        this.p.c = bVar.b;
        if (!z || this.l.size() <= 1 || bVar.b < 0 || bVar.b >= this.l.size() - 1) {
            return;
        }
        com.google.android.flexbox.a aVar = (com.google.android.flexbox.a) this.l.get(bVar.b);
        c.i(this.p);
        this.p.d += aVar.b();
    }

    public final void Z(b bVar, boolean z, boolean z2) {
        if (z2) {
            N();
        } else {
            this.p.b = false;
        }
        if (isMainAxisDirectionHorizontal() || !this.j) {
            this.p.a = bVar.c - this.r.getStartAfterPadding();
        } else {
            this.p.a = (this.B.getWidth() - bVar.c) - this.r.getStartAfterPadding();
        }
        this.p.d = bVar.a;
        this.p.h = 1;
        this.p.i = -1;
        this.p.e = bVar.c;
        this.p.f = Integer.MIN_VALUE;
        this.p.c = bVar.b;
        if (!z || bVar.b <= 0 || this.l.size() <= bVar.b) {
            return;
        }
        com.google.android.flexbox.a aVar = (com.google.android.flexbox.a) this.l.get(bVar.b);
        c.j(this.p);
        this.p.d -= aVar.b();
    }

    @Override
    public boolean canScrollHorizontally() {
        if (this.f == 0) {
            return isMainAxisDirectionHorizontal();
        }
        if (isMainAxisDirectionHorizontal()) {
            int width = getWidth();
            View view = this.B;
            if (width <= (view != null ? view.getWidth() : 0)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean canScrollVertically() {
        if (this.f == 0) {
            return !isMainAxisDirectionHorizontal();
        }
        if (isMainAxisDirectionHorizontal()) {
            return true;
        }
        int height = getHeight();
        View view = this.B;
        return height > (view != null ? view.getHeight() : 0);
    }

    @Override
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    public final int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        q();
        View viewS = s(itemCount);
        View viewU = u(itemCount);
        if (state.getItemCount() == 0 || viewS == null || viewU == null) {
            return 0;
        }
        return Math.min(this.r.getTotalSpace(), this.r.getDecoratedEnd(viewU) - this.r.getDecoratedStart(viewS));
    }

    public final int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View viewS = s(itemCount);
        View viewU = u(itemCount);
        if (state.getItemCount() != 0 && viewS != null && viewU != null) {
            int position = getPosition(viewS);
            int position2 = getPosition(viewU);
            int iAbs = Math.abs(this.r.getDecoratedEnd(viewU) - this.r.getDecoratedStart(viewS));
            int[] iArr = this.m.c;
            int i = iArr[position];
            if (i != 0 && i != -1) {
                return Math.round((i * (iAbs / ((iArr[position2] - i) + 1))) + (this.r.getStartAfterPadding() - this.r.getDecoratedStart(viewS)));
            }
        }
        return 0;
    }

    public final int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View viewS = s(itemCount);
        View viewU = u(itemCount);
        if (state.getItemCount() == 0 || viewS == null || viewU == null) {
            return 0;
        }
        return (int) ((Math.abs(this.r.getDecoratedEnd(viewU) - this.r.getDecoratedStart(viewS)) / ((findLastVisibleItemPosition() - findFirstVisibleItemPosition()) + 1)) * state.getItemCount());
    }

    @Override
    public PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        int i2 = i < getPosition(getChildAt(0)) ? -1 : 1;
        return isMainAxisDirectionHorizontal() ? new PointF(0.0f, i2) : new PointF(i2, 0.0f);
    }

    @Override
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    public int findFirstVisibleItemPosition() {
        View viewW = w(0, getChildCount(), false);
        if (viewW == null) {
            return -1;
        }
        return getPosition(viewW);
    }

    public int findLastVisibleItemPosition() {
        View viewW = w(getChildCount() - 1, -1, false);
        if (viewW == null) {
            return -1;
        }
        return getPosition(viewW);
    }

    public final int fixLayoutEndGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int iE;
        int endAfterPadding;
        if (isMainAxisDirectionHorizontal() || !this.j) {
            int endAfterPadding2 = this.r.getEndAfterPadding() - i;
            if (endAfterPadding2 <= 0) {
                return 0;
            }
            iE = -E(-endAfterPadding2, recycler, state);
        } else {
            int startAfterPadding = i - this.r.getStartAfterPadding();
            if (startAfterPadding <= 0) {
                return 0;
            }
            iE = E(startAfterPadding, recycler, state);
        }
        int i2 = i + iE;
        if (!z || (endAfterPadding = this.r.getEndAfterPadding() - i2) <= 0) {
            return iE;
        }
        this.r.offsetChildren(endAfterPadding);
        return endAfterPadding + iE;
    }

    public final int fixLayoutStartGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int iE;
        int startAfterPadding;
        if (isMainAxisDirectionHorizontal() || !this.j) {
            int startAfterPadding2 = i - this.r.getStartAfterPadding();
            if (startAfterPadding2 <= 0) {
                return 0;
            }
            iE = -E(startAfterPadding2, recycler, state);
        } else {
            int endAfterPadding = this.r.getEndAfterPadding() - i;
            if (endAfterPadding <= 0) {
                return 0;
            }
            iE = E(-endAfterPadding, recycler, state);
        }
        int i2 = i + iE;
        if (!z || (startAfterPadding = i2 - this.r.getStartAfterPadding()) <= 0) {
            return iE;
        }
        this.r.offsetChildren(-startAfterPadding);
        return iE - startAfterPadding;
    }

    @Override
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override
    public int getAlignContent() {
        return 5;
    }

    @Override
    public int getAlignItems() {
        return this.h;
    }

    public final View getChildClosestToStart() {
        return getChildAt(0);
    }

    @Override
    public int getChildHeightMeasureSpec(int i, int i2, int i3) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), i2, i3, canScrollVertically());
    }

    @Override
    public int getChildWidthMeasureSpec(int i, int i2, int i3) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), i2, i3, canScrollHorizontally());
    }

    @Override
    public int getDecorationLengthCrossAxis(View view) {
        int leftDecorationWidth;
        int rightDecorationWidth;
        if (isMainAxisDirectionHorizontal()) {
            leftDecorationWidth = getTopDecorationHeight(view);
            rightDecorationWidth = getBottomDecorationHeight(view);
        } else {
            leftDecorationWidth = getLeftDecorationWidth(view);
            rightDecorationWidth = getRightDecorationWidth(view);
        }
        return leftDecorationWidth + rightDecorationWidth;
    }

    @Override
    public int getDecorationLengthMainAxis(View view, int i, int i2) {
        int topDecorationHeight;
        int bottomDecorationHeight;
        if (isMainAxisDirectionHorizontal()) {
            topDecorationHeight = getLeftDecorationWidth(view);
            bottomDecorationHeight = getRightDecorationWidth(view);
        } else {
            topDecorationHeight = getTopDecorationHeight(view);
            bottomDecorationHeight = getBottomDecorationHeight(view);
        }
        return topDecorationHeight + bottomDecorationHeight;
    }

    @Override
    public int getFlexDirection() {
        return this.e;
    }

    @Override
    public View getFlexItemAt(int i) {
        View view = (View) this.z.get(i);
        return view != null ? view : this.n.getViewForPosition(i);
    }

    @Override
    public int getFlexItemCount() {
        return this.o.getItemCount();
    }

    @Override
    public List getFlexLinesInternal() {
        return this.l;
    }

    @Override
    public int getFlexWrap() {
        return this.f;
    }

    @Override
    public int getLargestMainSize() {
        if (this.l.size() == 0) {
            return 0;
        }
        int size = this.l.size();
        int iMax = Integer.MIN_VALUE;
        for (int i = 0; i < size; i++) {
            iMax = Math.max(iMax, ((com.google.android.flexbox.a) this.l.get(i)).e);
        }
        return iMax;
    }

    @Override
    public int getMaxLine() {
        return this.i;
    }

    @Override
    public View getReorderedFlexItemAt(int i) {
        return getFlexItemAt(i);
    }

    @Override
    public int getSumOfCrossSize() {
        int size = this.l.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += ((com.google.android.flexbox.a) this.l.get(i2)).g;
        }
        return i;
    }

    public boolean isLayoutRtl() {
        return this.j;
    }

    @Override
    public boolean isMainAxisDirectionHorizontal() {
        int i = this.e;
        return i == 0 || i == 1;
    }

    public final boolean n(View view, int i) {
        if (isMainAxisDirectionHorizontal() || !this.j) {
            return this.r.getDecoratedStart(view) >= this.r.getEnd() - i;
        }
        return this.r.getDecoratedEnd(view) <= i;
    }

    public final boolean o(View view, int i) {
        if (isMainAxisDirectionHorizontal() || !this.j) {
            return this.r.getDecoratedEnd(view) <= i;
        }
        return this.r.getEnd() - this.r.getDecoratedStart(view) <= i;
    }

    @Override
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        removeAllViews();
    }

    @Override
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.B = (View) recyclerView.getParent();
    }

    @Override
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        if (this.y) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        super.onItemsAdded(recyclerView, i, i2);
        V(i);
    }

    @Override
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        super.onItemsMoved(recyclerView, i, i2, i3);
        V(Math.min(i, i2));
    }

    @Override
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        super.onItemsRemoved(recyclerView, i, i2);
        V(i);
    }

    @Override
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        super.onItemsUpdated(recyclerView, i, i2, obj);
        V(i);
    }

    @Override
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i;
        int i2;
        this.n = recycler;
        this.o = state;
        int itemCount = state.getItemCount();
        if (itemCount == 0 && state.isPreLayout()) {
            return;
        }
        O();
        q();
        ensureLayoutState();
        this.m.t(itemCount);
        this.m.u(itemCount);
        this.m.s(itemCount);
        this.p.j = false;
        SavedState savedState = this.t;
        if (savedState != null && savedState.hasValidAnchor(itemCount)) {
            this.u = this.t.mAnchorPosition;
        }
        if (!this.q.f || this.u != -1 || this.t != null) {
            this.q.s();
            U(state, this.q);
            this.q.f = true;
        }
        detachAndScrapAttachedViews(recycler);
        if (this.q.e) {
            Z(this.q, false, true);
        } else {
            Y(this.q, false, true);
        }
        W(itemCount);
        if (this.q.e) {
            r(recycler, state, this.p);
            i2 = this.p.e;
            Y(this.q, true, false);
            r(recycler, state, this.p);
            i = this.p.e;
        } else {
            r(recycler, state, this.p);
            i = this.p.e;
            Z(this.q, true, false);
            r(recycler, state, this.p);
            i2 = this.p.e;
        }
        if (getChildCount() > 0) {
            if (this.q.e) {
                fixLayoutStartGap(i2 + fixLayoutEndGap(i, recycler, state, true), recycler, state, false);
            } else {
                fixLayoutEndGap(i + fixLayoutStartGap(i2, recycler, state, true), recycler, state, false);
            }
        }
    }

    @Override
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.t = null;
        this.u = -1;
        this.v = Integer.MIN_VALUE;
        this.C = -1;
        this.q.s();
        this.z.clear();
    }

    @Override
    public void onNewFlexItemAdded(View view, int i, int i2, com.google.android.flexbox.a aVar) {
        calculateItemDecorationsForChild(view, E);
        if (isMainAxisDirectionHorizontal()) {
            int leftDecorationWidth = getLeftDecorationWidth(view) + getRightDecorationWidth(view);
            aVar.e += leftDecorationWidth;
            aVar.f += leftDecorationWidth;
        } else {
            int topDecorationHeight = getTopDecorationHeight(view) + getBottomDecorationHeight(view);
            aVar.e += topDecorationHeight;
            aVar.f += topDecorationHeight;
        }
    }

    @Override
    public void onNewFlexLineAdded(com.google.android.flexbox.a aVar) {
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.t = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override
    public Parcelable onSaveInstanceState() {
        if (this.t != null) {
            return new SavedState(this.t);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            View childClosestToStart = getChildClosestToStart();
            savedState.mAnchorPosition = getPosition(childClosestToStart);
            savedState.mAnchorOffset = this.r.getDecoratedStart(childClosestToStart) - this.r.getStartAfterPadding();
        } else {
            savedState.invalidateAnchor();
        }
        return savedState;
    }

    public final void p() {
        this.l.clear();
        this.q.s();
        this.q.d = 0;
    }

    public final void q() {
        if (this.r != null) {
            return;
        }
        if (isMainAxisDirectionHorizontal()) {
            if (this.f == 0) {
                this.r = OrientationHelper.createHorizontalHelper(this);
                this.s = OrientationHelper.createVerticalHelper(this);
                return;
            } else {
                this.r = OrientationHelper.createVerticalHelper(this);
                this.s = OrientationHelper.createHorizontalHelper(this);
                return;
            }
        }
        if (this.f == 0) {
            this.r = OrientationHelper.createVerticalHelper(this);
            this.s = OrientationHelper.createHorizontalHelper(this);
        } else {
            this.r = OrientationHelper.createHorizontalHelper(this);
            this.s = OrientationHelper.createVerticalHelper(this);
        }
    }

    public final int r(RecyclerView.Recycler recycler, RecyclerView.State state, c cVar) {
        if (cVar.f != Integer.MIN_VALUE) {
            if (cVar.a < 0) {
                cVar.f += cVar.a;
            }
            K(recycler, cVar);
        }
        int i = cVar.a;
        int iA = cVar.a;
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int iH = 0;
        while (true) {
            if ((iA <= 0 && !this.p.b) || !cVar.w(state, this.l)) {
                break;
            }
            com.google.android.flexbox.a aVar = (com.google.android.flexbox.a) this.l.get(cVar.c);
            cVar.d = aVar.o;
            iH += H(aVar, cVar);
            if (zIsMainAxisDirectionHorizontal || !this.j) {
                cVar.e += aVar.a() * cVar.i;
            } else {
                cVar.e -= aVar.a() * cVar.i;
            }
            iA -= aVar.a();
        }
        cVar.a -= iH;
        if (cVar.f != Integer.MIN_VALUE) {
            cVar.f += iH;
            if (cVar.a < 0) {
                cVar.f += cVar.a;
            }
            K(recycler, cVar);
        }
        return i - cVar.a;
    }

    public final void recycleChildren(RecyclerView.Recycler recycler, int i, int i2) {
        while (i2 >= i) {
            removeAndRecycleViewAt(i2, recycler);
            i2--;
        }
    }

    public final View s(int i) {
        View viewX = x(0, getChildCount(), i);
        if (viewX == null) {
            return null;
        }
        int i2 = this.m.c[getPosition(viewX)];
        if (i2 == -1) {
            return null;
        }
        return t(viewX, (com.google.android.flexbox.a) this.l.get(i2));
    }

    @Override
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!isMainAxisDirectionHorizontal() || (this.f == 0 && isMainAxisDirectionHorizontal())) {
            int iE = E(i, recycler, state);
            this.z.clear();
            return iE;
        }
        int iF = F(i);
        this.q.d += iF;
        this.s.offsetChildren(-iF);
        return iF;
    }

    @Override
    public void scrollToPosition(int i) {
        this.u = i;
        this.v = Integer.MIN_VALUE;
        SavedState savedState = this.t;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        requestLayout();
    }

    @Override
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (isMainAxisDirectionHorizontal() || (this.f == 0 && !isMainAxisDirectionHorizontal())) {
            int iE = E(i, recycler, state);
            this.z.clear();
            return iE;
        }
        int iF = F(i);
        this.q.d += iF;
        this.s.offsetChildren(-iF);
        return iF;
    }

    @Override
    public void setFlexLines(List list) {
        this.l = list;
    }

    @Override
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    public final View t(View view, com.google.android.flexbox.a aVar) {
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int i = aVar.h;
        for (int i2 = 1; i2 < i; i2++) {
            View childAt = getChildAt(i2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.j || zIsMainAxisDirectionHorizontal) {
                    if (this.r.getDecoratedStart(view) > this.r.getDecoratedStart(childAt)) {
                        view = childAt;
                    }
                } else if (this.r.getDecoratedEnd(view) < this.r.getDecoratedEnd(childAt)) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final View u(int i) {
        View viewX = x(getChildCount() - 1, -1, i);
        if (viewX == null) {
            return null;
        }
        return v(viewX, (com.google.android.flexbox.a) this.l.get(this.m.c[getPosition(viewX)]));
    }

    @Override
    public void updateViewCache(int i, View view) {
        this.z.put(i, view);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0047  */
    public final View v(View view, com.google.android.flexbox.a aVar) {
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int childCount = (getChildCount() - aVar.h) - 1;
        for (int childCount2 = getChildCount() - 2; childCount2 > childCount; childCount2--) {
            View childAt = getChildAt(childCount2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.j || zIsMainAxisDirectionHorizontal) {
                    if (this.r.getDecoratedEnd(view) < this.r.getDecoratedEnd(childAt)) {
                        view = childAt;
                    }
                } else if (this.r.getDecoratedStart(view) > this.r.getDecoratedStart(childAt)) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final View w(int i, int i2, boolean z) {
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View childAt = getChildAt(i);
            if (G(childAt, z)) {
                return childAt;
            }
            i += i3;
        }
        return null;
    }

    public final View x(int i, int i2, int i3) {
        q();
        ensureLayoutState();
        int startAfterPadding = this.r.getStartAfterPadding();
        int endAfterPadding = this.r.getEndAfterPadding();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View childAt = getChildAt(i);
            int position = getPosition(childAt);
            if (position >= 0 && position < i3) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.r.getDecoratedStart(childAt) >= startAfterPadding && this.r.getDecoratedEnd(childAt) <= endAfterPadding) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i += i4;
        }
        return view != null ? view : view2;
    }

    public final int y(View view) {
        return getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    public final int z(View view) {
        return getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
    }

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        private int mAnchorOffset;
        private int mAnchorPosition;

        public static class a implements Parcelable.Creator {
            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public boolean hasValidAnchor(int i) {
            int i2 = this.mAnchorPosition;
            return i2 >= 0 && i2 < i;
        }

        public void invalidateAnchor() {
            this.mAnchorPosition = -1;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "SavedState{mAnchorPosition=" + this.mAnchorPosition + ", mAnchorOffset=" + this.mAnchorOffset + '}';
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
        }

        public SavedState() {
        }

        private SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mAnchorOffset = parcel.readInt();
        }

        private SavedState(SavedState savedState) {
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
        }
    }

    public FlexboxLayoutManager(Context context, int i, int i2) {
        this.i = -1;
        this.l = new ArrayList();
        this.m = new com.google.android.flexbox.b(this);
        this.q = new b();
        this.u = -1;
        this.v = Integer.MIN_VALUE;
        this.w = Integer.MIN_VALUE;
        this.x = Integer.MIN_VALUE;
        this.z = new SparseArray();
        this.C = -1;
        this.D = new com.google.android.flexbox.b.C0088b();
        Q(i);
        R(i2);
        P(4);
        setAutoMeasureEnabled(true);
        this.A = context;
    }

    @Override
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2) {
        super.onItemsUpdated(recyclerView, i, i2);
        V(i);
    }

    public static class LayoutParams extends RecyclerView.LayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new a();
        private int mAlignSelf;
        private float mFlexBasisPercent;
        private float mFlexGrow;
        private float mFlexShrink;
        private int mMaxHeight;
        private int mMaxWidth;
        private int mMinHeight;
        private int mMinWidth;
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
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
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
            return 1;
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
            throw new UnsupportedOperationException("Setting the order in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to reorder using the attribute.");
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

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((RecyclerView.LayoutParams) layoutParams);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
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

        public LayoutParams(Parcel parcel) {
            super(-2, -2);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
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

    public FlexboxLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.i = -1;
        this.l = new ArrayList();
        this.m = new com.google.android.flexbox.b(this);
        this.q = new b();
        this.u = -1;
        this.v = Integer.MIN_VALUE;
        this.w = Integer.MIN_VALUE;
        this.x = Integer.MIN_VALUE;
        this.z = new SparseArray();
        this.C = -1;
        this.D = new com.google.android.flexbox.b.C0088b();
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i, i2);
        int i3 = properties.orientation;
        if (i3 != 0) {
            if (i3 == 1) {
                if (properties.reverseLayout) {
                    Q(3);
                } else {
                    Q(2);
                }
            }
        } else if (properties.reverseLayout) {
            Q(1);
        } else {
            Q(0);
        }
        R(1);
        P(4);
        setAutoMeasureEnabled(true);
        this.A = context;
    }
}
