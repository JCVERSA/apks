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
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.h;
import androidx.recyclerview.widget.m;
import java.util.ArrayList;
import java.util.List;

public class FlexboxLayoutManager extends RecyclerView.m implements com.google.android.flexbox.a, RecyclerView.w.b {
    private static final Rect A = new Rect();

    private int f27266a;

    private int f27267b;

    private int f27268c;

    private int f27269d;

    private int f27270e;

    private boolean f27271f;

    private boolean f27272g;

    private List f27273h;

    private final com.google.android.flexbox.c f27274i;

    private RecyclerView.t f27275j;

    private RecyclerView.x f27276k;

    private c f27277l;

    private b f27278m;

    private m f27279n;

    private m f27280o;

    private SavedState f27281p;

    private int f27282q;

    private int f27283r;

    private int f27284s;

    private int f27285t;

    private boolean f27286u;

    private SparseArray f27287v;

    private final Context f27288w;

    private View f27289x;

    private int f27290y;

    private com.google.android.flexbox.c.b f27291z;

    private class b {

        private int f27292a;

        private int f27293b;

        private int f27294c;

        private int f27295d;

        private boolean f27296e;

        private boolean f27297f;

        private boolean f27298g;

        private b() {
            this.f27295d = 0;
        }

        static int l(b bVar, int i10) {
            int i11 = bVar.f27295d + i10;
            bVar.f27295d = i11;
            return i11;
        }

        public void r() {
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal() || !FlexboxLayoutManager.this.f27271f) {
                this.f27294c = this.f27296e ? FlexboxLayoutManager.this.f27279n.i() : FlexboxLayoutManager.this.f27279n.m();
            } else {
                this.f27294c = this.f27296e ? FlexboxLayoutManager.this.f27279n.i() : FlexboxLayoutManager.this.getWidth() - FlexboxLayoutManager.this.f27279n.m();
            }
        }

        public void s(View view) {
            m mVar = FlexboxLayoutManager.this.f27267b == 0 ? FlexboxLayoutManager.this.f27280o : FlexboxLayoutManager.this.f27279n;
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal() || !FlexboxLayoutManager.this.f27271f) {
                if (this.f27296e) {
                    this.f27294c = mVar.d(view) + mVar.o();
                } else {
                    this.f27294c = mVar.g(view);
                }
            } else if (this.f27296e) {
                this.f27294c = mVar.g(view) + mVar.o();
            } else {
                this.f27294c = mVar.d(view);
            }
            this.f27292a = FlexboxLayoutManager.this.getPosition(view);
            this.f27298g = false;
            int[] iArr = FlexboxLayoutManager.this.f27274i.f27330c;
            int i10 = this.f27292a;
            if (i10 == -1) {
                i10 = 0;
            }
            int i11 = iArr[i10];
            this.f27293b = i11 != -1 ? i11 : 0;
            if (FlexboxLayoutManager.this.f27273h.size() > this.f27293b) {
                this.f27292a = ((com.google.android.flexbox.b) FlexboxLayoutManager.this.f27273h.get(this.f27293b)).f27324o;
            }
        }

        public void t() {
            this.f27292a = -1;
            this.f27293b = -1;
            this.f27294c = Integer.MIN_VALUE;
            this.f27297f = false;
            this.f27298g = false;
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal()) {
                if (FlexboxLayoutManager.this.f27267b == 0) {
                    this.f27296e = FlexboxLayoutManager.this.f27266a == 1;
                    return;
                } else {
                    this.f27296e = FlexboxLayoutManager.this.f27267b == 2;
                    return;
                }
            }
            if (FlexboxLayoutManager.this.f27267b == 0) {
                this.f27296e = FlexboxLayoutManager.this.f27266a == 3;
            } else {
                this.f27296e = FlexboxLayoutManager.this.f27267b == 2;
            }
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f27292a + ", mFlexLinePosition=" + this.f27293b + ", mCoordinate=" + this.f27294c + ", mPerpendicularCoordinate=" + this.f27295d + ", mLayoutFromEnd=" + this.f27296e + ", mValid=" + this.f27297f + ", mAssignedFromSavedState=" + this.f27298g + '}';
        }
    }

    private static class c {

        private int f27300a;

        private boolean f27301b;

        private int f27302c;

        private int f27303d;

        private int f27304e;

        private int f27305f;

        private int f27306g;

        private int f27307h;

        private int f27308i;

        private boolean f27309j;

        private c() {
            this.f27307h = 1;
            this.f27308i = 1;
        }

        public boolean D(RecyclerView.x xVar, List list) {
            int i10;
            int i11 = this.f27303d;
            return i11 >= 0 && i11 < xVar.b() && (i10 = this.f27302c) >= 0 && i10 < list.size();
        }

        static int c(c cVar, int i10) {
            int i11 = cVar.f27304e + i10;
            cVar.f27304e = i11;
            return i11;
        }

        static int d(c cVar, int i10) {
            int i11 = cVar.f27304e - i10;
            cVar.f27304e = i11;
            return i11;
        }

        static int i(c cVar, int i10) {
            int i11 = cVar.f27300a - i10;
            cVar.f27300a = i11;
            return i11;
        }

        static int l(c cVar) {
            int i10 = cVar.f27302c;
            cVar.f27302c = i10 + 1;
            return i10;
        }

        static int m(c cVar) {
            int i10 = cVar.f27302c;
            cVar.f27302c = i10 - 1;
            return i10;
        }

        static int n(c cVar, int i10) {
            int i11 = cVar.f27302c + i10;
            cVar.f27302c = i11;
            return i11;
        }

        static int q(c cVar, int i10) {
            int i11 = cVar.f27305f + i10;
            cVar.f27305f = i11;
            return i11;
        }

        static int u(c cVar, int i10) {
            int i11 = cVar.f27303d + i10;
            cVar.f27303d = i11;
            return i11;
        }

        static int v(c cVar, int i10) {
            int i11 = cVar.f27303d - i10;
            cVar.f27303d = i11;
            return i11;
        }

        public String toString() {
            return "LayoutState{mAvailable=" + this.f27300a + ", mFlexLinePosition=" + this.f27302c + ", mPosition=" + this.f27303d + ", mOffset=" + this.f27304e + ", mScrollingOffset=" + this.f27305f + ", mLastScrollDelta=" + this.f27306g + ", mItemDirection=" + this.f27307h + ", mLayoutDirection=" + this.f27308i + '}';
        }
    }

    public FlexboxLayoutManager(Context context) {
        this(context, 0, 1);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    private View A(View view, com.google.android.flexbox.b bVar) {
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int i10 = bVar.f27317h;
        for (int i11 = 1; i11 < i10; i11++) {
            View childAt = getChildAt(i11);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.f27271f || zIsMainAxisDirectionHorizontal) {
                    if (this.f27279n.g(view) > this.f27279n.g(childAt)) {
                        view = childAt;
                    }
                } else if (this.f27279n.d(view) < this.f27279n.d(childAt)) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    private View B(int i10) {
        View viewE = E(getChildCount() - 1, -1, i10);
        if (viewE == null) {
            return null;
        }
        return C(viewE, (com.google.android.flexbox.b) this.f27273h.get(this.f27274i.f27330c[getPosition(viewE)]));
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0047  */
    private View C(View view, com.google.android.flexbox.b bVar) {
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int childCount = (getChildCount() - bVar.f27317h) - 1;
        for (int childCount2 = getChildCount() - 2; childCount2 > childCount; childCount2--) {
            View childAt = getChildAt(childCount2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.f27271f || zIsMainAxisDirectionHorizontal) {
                    if (this.f27279n.d(view) < this.f27279n.d(childAt)) {
                        view = childAt;
                    }
                } else if (this.f27279n.g(view) > this.f27279n.g(childAt)) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    private View D(int i10, int i11, boolean z10) {
        int i12 = i11 > i10 ? 1 : -1;
        while (i10 != i11) {
            View childAt = getChildAt(i10);
            if (R(childAt, z10)) {
                return childAt;
            }
            i10 += i12;
        }
        return null;
    }

    private View E(int i10, int i11, int i12) {
        int position;
        x();
        ensureLayoutState();
        int iM = this.f27279n.m();
        int i13 = this.f27279n.i();
        int i14 = i11 > i10 ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i10 != i11) {
            View childAt = getChildAt(i10);
            if (childAt != null && (position = getPosition(childAt)) >= 0 && position < i12) {
                if (((RecyclerView.n) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.f27279n.g(childAt) >= iM && this.f27279n.d(childAt) <= i13) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i10 += i14;
        }
        return view != null ? view : view2;
    }

    private int F(int i10, RecyclerView.t tVar, RecyclerView.x xVar, boolean z10) {
        int iO;
        int i11;
        if (isMainAxisDirectionHorizontal() || !this.f27271f) {
            int i12 = this.f27279n.i() - i10;
            if (i12 <= 0) {
                return 0;
            }
            iO = -O(-i12, tVar, xVar);
        } else {
            int iM = i10 - this.f27279n.m();
            if (iM <= 0) {
                return 0;
            }
            iO = O(iM, tVar, xVar);
        }
        int i13 = i10 + iO;
        if (!z10 || (i11 = this.f27279n.i() - i13) <= 0) {
            return iO;
        }
        this.f27279n.r(i11);
        return i11 + iO;
    }

    private int G(int i10, RecyclerView.t tVar, RecyclerView.x xVar, boolean z10) {
        int iO;
        int iM;
        if (isMainAxisDirectionHorizontal() || !this.f27271f) {
            int iM2 = i10 - this.f27279n.m();
            if (iM2 <= 0) {
                return 0;
            }
            iO = -O(iM2, tVar, xVar);
        } else {
            int i11 = this.f27279n.i() - i10;
            if (i11 <= 0) {
                return 0;
            }
            iO = O(-i11, tVar, xVar);
        }
        int i12 = i10 + iO;
        if (!z10 || (iM = i12 - this.f27279n.m()) <= 0) {
            return iO;
        }
        this.f27279n.r(-iM);
        return iO - iM;
    }

    private int H(View view) {
        return getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).bottomMargin;
    }

    private View I() {
        return getChildAt(0);
    }

    private int J(View view) {
        return getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).leftMargin;
    }

    private int K(View view) {
        return getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).rightMargin;
    }

    private int L(View view) {
        return getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).topMargin;
    }

    private int O(int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        x();
        int i11 = 1;
        this.f27277l.f27309j = true;
        boolean z10 = !isMainAxisDirectionHorizontal() && this.f27271f;
        if (!z10 ? i10 <= 0 : i10 >= 0) {
            i11 = -1;
        }
        int iAbs = Math.abs(i10);
        k0(i11, iAbs);
        int iY = this.f27277l.f27305f + y(tVar, xVar, this.f27277l);
        if (iY < 0) {
            return 0;
        }
        if (z10) {
            if (iAbs > iY) {
                i10 = (-i11) * iY;
            }
        } else if (iAbs > iY) {
            i10 = i11 * iY;
        }
        this.f27279n.r(-i10);
        this.f27277l.f27306g = i10;
        return i10;
    }

    private int P(int i10) {
        int iMin;
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        x();
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        View view = this.f27289x;
        int width = zIsMainAxisDirectionHorizontal ? view.getWidth() : view.getHeight();
        int width2 = zIsMainAxisDirectionHorizontal ? getWidth() : getHeight();
        if (getLayoutDirection() == 1) {
            int iAbs = Math.abs(i10);
            if (i10 < 0) {
                iMin = Math.min((width2 + this.f27278m.f27295d) - width, iAbs);
            } else {
                if (this.f27278m.f27295d + i10 <= 0) {
                    return i10;
                }
                iMin = this.f27278m.f27295d;
            }
        } else {
            if (i10 > 0) {
                return Math.min((width2 - this.f27278m.f27295d) - width, i10);
            }
            if (this.f27278m.f27295d + i10 >= 0) {
                return i10;
            }
            iMin = this.f27278m.f27295d;
        }
        return -iMin;
    }

    private boolean R(View view, boolean z10) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int iJ = J(view);
        int iL = L(view);
        int iK = K(view);
        int iH = H(view);
        boolean z11 = paddingLeft <= iJ && width >= iK;
        boolean z12 = iJ >= width || iK >= paddingLeft;
        boolean z13 = paddingTop <= iL && height >= iH;
        boolean z14 = iL >= height || iH >= paddingTop;
        if (z10) {
            return z11 && z13;
        }
        return z12 && z14;
    }

    private int S(com.google.android.flexbox.b bVar, c cVar) {
        return isMainAxisDirectionHorizontal() ? T(bVar, cVar) : U(bVar, cVar);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:45:0x00de  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:50:0x0111  */
    /* JADX WARN: Code duplicated, block: B:53:0x0132  */
    /* JADX WARN: Code duplicated, block: B:54:0x0152  */
    /* JADX WARN: Code duplicated, block: B:61:0x0195 A[SYNTHETIC] */
    private int T(com.google.android.flexbox.b bVar, c cVar) {
        float f10;
        float f11;
        float f12;
        float measuredWidth;
        float measuredWidth2;
        float fMax;
        int iB;
        int i10;
        int i11;
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
        int i12 = cVar.f27304e;
        if (cVar.f27308i == -1) {
            i12 -= bVar.f27316g;
        }
        int i13 = i12;
        int i14 = cVar.f27303d;
        int i15 = this.f27268c;
        int i16 = 1;
        if (i15 != 0) {
            if (i15 == 1) {
                int i17 = bVar.f27314e;
                float f13 = (width - i17) + paddingRight;
                f12 = 0.0f;
                f11 = i17 - paddingLeft;
                f10 = f13;
            } else if (i15 == 2) {
                int i18 = bVar.f27314e;
                f10 = paddingLeft + ((width - i18) / 2.0f);
                f11 = (width - paddingRight) - ((width - i18) / 2.0f);
            } else if (i15 == 3) {
                f10 = paddingLeft;
                int i19 = bVar.f27317h;
                f12 = (width - bVar.f27314e) / (i19 != 1 ? i19 - 1 : 1.0f);
                f11 = width - paddingRight;
            } else if (i15 == 4) {
                int i20 = bVar.f27317h;
                f12 = i20 != 0 ? (width - bVar.f27314e) / i20 : 0.0f;
                float f14 = f12 / 2.0f;
                f10 = paddingLeft + f14;
                f11 = (width - paddingRight) - f14;
            } else {
                if (i15 != 5) {
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.f27268c);
                }
                int i21 = bVar.f27317h;
                f12 = i21 != 0 ? (width - bVar.f27314e) / (i21 + 1) : 0.0f;
                f10 = paddingLeft + f12;
                f11 = (width - paddingRight) - f12;
            }
            measuredWidth = f10 - this.f27278m.f27295d;
            measuredWidth2 = f11 - this.f27278m.f27295d;
            fMax = Math.max(f12, 0.0f);
            iB = bVar.b();
            i10 = 0;
            i11 = i14;
            while (i11 < i14 + iB) {
                flexItemAt = getFlexItemAt(i11);
                if (flexItemAt != null) {
                    if (cVar.f27308i == i16) {
                        calculateItemDecorationsForChild(flexItemAt, A);
                        addView(flexItemAt);
                    } else {
                        calculateItemDecorationsForChild(flexItemAt, A);
                        addView(flexItemAt, i10);
                        i10++;
                    }
                    int i22 = i10;
                    com.google.android.flexbox.c cVar2 = this.f27274i;
                    long j10 = cVar2.f27331d[i11];
                    iY = cVar2.y(j10);
                    iX = this.f27274i.x(j10);
                    layoutParams = (LayoutParams) flexItemAt.getLayoutParams();
                    if (shouldMeasureChild(flexItemAt, iY, iX, layoutParams)) {
                        flexItemAt.measure(iY, iX);
                    }
                    leftDecorationWidth = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + getLeftDecorationWidth(flexItemAt);
                    rightDecorationWidth = measuredWidth2 - (((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getRightDecorationWidth(flexItemAt));
                    topDecorationHeight = i13 + getTopDecorationHeight(flexItemAt);
                    if (this.f27271f) {
                        this.f27274i.Q(flexItemAt, bVar, Math.round(rightDecorationWidth) - flexItemAt.getMeasuredWidth(), topDecorationHeight, Math.round(rightDecorationWidth), topDecorationHeight + flexItemAt.getMeasuredHeight());
                    } else {
                        this.f27274i.Q(flexItemAt, bVar, Math.round(leftDecorationWidth), topDecorationHeight, Math.round(leftDecorationWidth) + flexItemAt.getMeasuredWidth(), topDecorationHeight + flexItemAt.getMeasuredHeight());
                    }
                    i10 = i22;
                    measuredWidth = leftDecorationWidth + flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getRightDecorationWidth(flexItemAt) + fMax;
                    measuredWidth2 = rightDecorationWidth - (((flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) + getLeftDecorationWidth(flexItemAt)) + fMax);
                }
                i11++;
                i16 = 1;
            }
            c.n(cVar, this.f27277l.f27308i);
            return bVar.a();
        }
        f10 = paddingLeft;
        f11 = width - paddingRight;
        f12 = 0.0f;
        measuredWidth = f10 - this.f27278m.f27295d;
        measuredWidth2 = f11 - this.f27278m.f27295d;
        fMax = Math.max(f12, 0.0f);
        iB = bVar.b();
        i10 = 0;
        i11 = i14;
        while (i11 < i14 + iB) {
            flexItemAt = getFlexItemAt(i11);
            if (flexItemAt != null) {
                if (cVar.f27308i == i16) {
                    calculateItemDecorationsForChild(flexItemAt, A);
                    addView(flexItemAt);
                } else {
                    calculateItemDecorationsForChild(flexItemAt, A);
                    addView(flexItemAt, i10);
                    i10++;
                }
                int i23 = i10;
                com.google.android.flexbox.c cVar3 = this.f27274i;
                long j11 = cVar3.f27331d[i11];
                iY = cVar3.y(j11);
                iX = this.f27274i.x(j11);
                layoutParams = (LayoutParams) flexItemAt.getLayoutParams();
                if (shouldMeasureChild(flexItemAt, iY, iX, layoutParams)) {
                    flexItemAt.measure(iY, iX);
                }
                leftDecorationWidth = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + getLeftDecorationWidth(flexItemAt);
                rightDecorationWidth = measuredWidth2 - (((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getRightDecorationWidth(flexItemAt));
                topDecorationHeight = i13 + getTopDecorationHeight(flexItemAt);
                if (this.f27271f) {
                    this.f27274i.Q(flexItemAt, bVar, Math.round(rightDecorationWidth) - flexItemAt.getMeasuredWidth(), topDecorationHeight, Math.round(rightDecorationWidth), topDecorationHeight + flexItemAt.getMeasuredHeight());
                } else {
                    this.f27274i.Q(flexItemAt, bVar, Math.round(leftDecorationWidth), topDecorationHeight, Math.round(leftDecorationWidth) + flexItemAt.getMeasuredWidth(), topDecorationHeight + flexItemAt.getMeasuredHeight());
                }
                i10 = i23;
                measuredWidth = leftDecorationWidth + flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getRightDecorationWidth(flexItemAt) + fMax;
                measuredWidth2 = rightDecorationWidth - (((flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) + getLeftDecorationWidth(flexItemAt)) + fMax);
            }
            i11++;
            i16 = 1;
        }
        c.n(cVar, this.f27277l.f27308i);
        return bVar.a();
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:42:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:45:0x0103  */
    /* JADX WARN: Code duplicated, block: B:48:0x0121  */
    /* JADX WARN: Code duplicated, block: B:50:0x012c  */
    /* JADX WARN: Code duplicated, block: B:53:0x0147  */
    /* JADX WARN: Code duplicated, block: B:55:0x014b  */
    /* JADX WARN: Code duplicated, block: B:56:0x0175  */
    /* JADX WARN: Code duplicated, block: B:57:0x019b  */
    /* JADX WARN: Code duplicated, block: B:59:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:60:0x01c3  */
    private int U(com.google.android.flexbox.b bVar, c cVar) {
        float f10;
        float f11;
        float f12;
        float measuredHeight;
        float measuredHeight2;
        float fMax;
        int iB;
        int i10;
        int i11;
        View flexItemAt;
        float f13;
        int iY;
        int iX;
        LayoutParams layoutParams;
        float topDecorationHeight;
        float bottomDecorationHeight;
        int leftDecorationWidth;
        int rightDecorationWidth;
        boolean z10;
        boolean z11;
        View view;
        int i12;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i13 = cVar.f27304e;
        int i14 = cVar.f27304e;
        if (cVar.f27308i == -1) {
            int i15 = bVar.f27316g;
            i13 -= i15;
            i14 += i15;
        }
        int i16 = i13;
        int i17 = i14;
        int i18 = cVar.f27303d;
        int i19 = this.f27268c;
        boolean z12 = true;
        if (i19 != 0) {
            if (i19 == 1) {
                int i20 = bVar.f27314e;
                float f14 = (height - i20) + paddingBottom;
                f12 = 0.0f;
                f11 = i20 - paddingTop;
                f10 = f14;
            } else if (i19 == 2) {
                int i21 = bVar.f27314e;
                f10 = paddingTop + ((height - i21) / 2.0f);
                f11 = (height - paddingBottom) - ((height - i21) / 2.0f);
            } else if (i19 == 3) {
                f10 = paddingTop;
                int i22 = bVar.f27317h;
                f12 = (height - bVar.f27314e) / (i22 != 1 ? i22 - 1 : 1.0f);
                f11 = height - paddingBottom;
            } else if (i19 == 4) {
                int i23 = bVar.f27317h;
                f12 = i23 != 0 ? (height - bVar.f27314e) / i23 : 0.0f;
                float f15 = f12 / 2.0f;
                f10 = paddingTop + f15;
                f11 = (height - paddingBottom) - f15;
            } else {
                if (i19 != 5) {
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.f27268c);
                }
                int i24 = bVar.f27317h;
                f12 = i24 != 0 ? (height - bVar.f27314e) / (i24 + 1) : 0.0f;
                f10 = paddingTop + f12;
                f11 = (height - paddingBottom) - f12;
            }
            measuredHeight = f10 - this.f27278m.f27295d;
            measuredHeight2 = f11 - this.f27278m.f27295d;
            fMax = Math.max(f12, 0.0f);
            iB = bVar.b();
            i10 = 0;
            i11 = i18;
            while (i11 < i18 + iB) {
                flexItemAt = getFlexItemAt(i11);
                if (flexItemAt == null) {
                    i12 = i11;
                    z11 = z12;
                    f13 = fMax;
                } else {
                    com.google.android.flexbox.c cVar2 = this.f27274i;
                    f13 = fMax;
                    long j10 = cVar2.f27331d[i11];
                    iY = cVar2.y(j10);
                    iX = this.f27274i.x(j10);
                    layoutParams = (LayoutParams) flexItemAt.getLayoutParams();
                    if (shouldMeasureChild(flexItemAt, iY, iX, layoutParams)) {
                        flexItemAt.measure(iY, iX);
                    }
                    topDecorationHeight = measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + getTopDecorationHeight(flexItemAt);
                    bottomDecorationHeight = measuredHeight2 - (((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getBottomDecorationHeight(flexItemAt));
                    if (cVar.f27308i == 1) {
                        calculateItemDecorationsForChild(flexItemAt, A);
                        addView(flexItemAt);
                    } else {
                        calculateItemDecorationsForChild(flexItemAt, A);
                        addView(flexItemAt, i10);
                        i10++;
                    }
                    int i25 = i10;
                    leftDecorationWidth = i16 + getLeftDecorationWidth(flexItemAt);
                    rightDecorationWidth = i17 - getRightDecorationWidth(flexItemAt);
                    z10 = this.f27271f;
                    if (z10) {
                        z11 = true;
                        view = flexItemAt;
                        i12 = i11;
                        if (this.f27272g) {
                            this.f27274i.R(view, bVar, z10, leftDecorationWidth, Math.round(bottomDecorationHeight) - view.getMeasuredHeight(), leftDecorationWidth + view.getMeasuredWidth(), Math.round(bottomDecorationHeight));
                        } else {
                            this.f27274i.R(view, bVar, z10, leftDecorationWidth, Math.round(topDecorationHeight), leftDecorationWidth + view.getMeasuredWidth(), Math.round(topDecorationHeight) + view.getMeasuredHeight());
                        }
                    } else if (this.f27272g) {
                        z11 = true;
                        view = flexItemAt;
                        i12 = i11;
                        this.f27274i.R(flexItemAt, bVar, z10, rightDecorationWidth - flexItemAt.getMeasuredWidth(), Math.round(bottomDecorationHeight) - flexItemAt.getMeasuredHeight(), rightDecorationWidth, Math.round(bottomDecorationHeight));
                    } else {
                        z11 = true;
                        view = flexItemAt;
                        i12 = i11;
                        this.f27274i.R(view, bVar, z10, rightDecorationWidth - view.getMeasuredWidth(), Math.round(topDecorationHeight), rightDecorationWidth, Math.round(topDecorationHeight) + view.getMeasuredHeight());
                    }
                    View view2 = view;
                    measuredHeight = topDecorationHeight + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + getBottomDecorationHeight(view2) + f13;
                    i10 = i25;
                    measuredHeight2 = bottomDecorationHeight - (((view2.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) + getTopDecorationHeight(view2)) + f13);
                }
                i11 = i12 + 1;
                fMax = f13;
                z12 = z11;
            }
            c.n(cVar, this.f27277l.f27308i);
            return bVar.a();
        }
        f10 = paddingTop;
        f11 = height - paddingBottom;
        f12 = 0.0f;
        measuredHeight = f10 - this.f27278m.f27295d;
        measuredHeight2 = f11 - this.f27278m.f27295d;
        fMax = Math.max(f12, 0.0f);
        iB = bVar.b();
        i10 = 0;
        i11 = i18;
        while (i11 < i18 + iB) {
            flexItemAt = getFlexItemAt(i11);
            if (flexItemAt == null) {
                i12 = i11;
                z11 = z12;
                f13 = fMax;
            } else {
                com.google.android.flexbox.c cVar3 = this.f27274i;
                f13 = fMax;
                long j11 = cVar3.f27331d[i11];
                iY = cVar3.y(j11);
                iX = this.f27274i.x(j11);
                layoutParams = (LayoutParams) flexItemAt.getLayoutParams();
                if (shouldMeasureChild(flexItemAt, iY, iX, layoutParams)) {
                    flexItemAt.measure(iY, iX);
                }
                topDecorationHeight = measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + getTopDecorationHeight(flexItemAt);
                bottomDecorationHeight = measuredHeight2 - (((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getBottomDecorationHeight(flexItemAt));
                if (cVar.f27308i == 1) {
                    calculateItemDecorationsForChild(flexItemAt, A);
                    addView(flexItemAt);
                } else {
                    calculateItemDecorationsForChild(flexItemAt, A);
                    addView(flexItemAt, i10);
                    i10++;
                }
                int i26 = i10;
                leftDecorationWidth = i16 + getLeftDecorationWidth(flexItemAt);
                rightDecorationWidth = i17 - getRightDecorationWidth(flexItemAt);
                z10 = this.f27271f;
                if (z10) {
                    z11 = true;
                    view = flexItemAt;
                    i12 = i11;
                    if (this.f27272g) {
                        this.f27274i.R(view, bVar, z10, leftDecorationWidth, Math.round(bottomDecorationHeight) - view.getMeasuredHeight(), leftDecorationWidth + view.getMeasuredWidth(), Math.round(bottomDecorationHeight));
                    } else {
                        this.f27274i.R(view, bVar, z10, leftDecorationWidth, Math.round(topDecorationHeight), leftDecorationWidth + view.getMeasuredWidth(), Math.round(topDecorationHeight) + view.getMeasuredHeight());
                    }
                } else if (this.f27272g) {
                    z11 = true;
                    view = flexItemAt;
                    i12 = i11;
                    this.f27274i.R(flexItemAt, bVar, z10, rightDecorationWidth - flexItemAt.getMeasuredWidth(), Math.round(bottomDecorationHeight) - flexItemAt.getMeasuredHeight(), rightDecorationWidth, Math.round(bottomDecorationHeight));
                } else {
                    z11 = true;
                    view = flexItemAt;
                    i12 = i11;
                    this.f27274i.R(view, bVar, z10, rightDecorationWidth - view.getMeasuredWidth(), Math.round(topDecorationHeight), rightDecorationWidth, Math.round(topDecorationHeight) + view.getMeasuredHeight());
                }
                View view3 = view;
                measuredHeight = topDecorationHeight + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + getBottomDecorationHeight(view3) + f13;
                i10 = i26;
                measuredHeight2 = bottomDecorationHeight - (((view3.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) + getTopDecorationHeight(view3)) + f13);
            }
            i11 = i12 + 1;
            fMax = f13;
            z12 = z11;
        }
        c.n(cVar, this.f27277l.f27308i);
        return bVar.a();
    }

    private void V(RecyclerView.t tVar, c cVar) {
        if (cVar.f27309j) {
            if (cVar.f27308i == -1) {
                X(tVar, cVar);
            } else {
                Y(tVar, cVar);
            }
        }
    }

    private void W(RecyclerView.t tVar, int i10, int i11) {
        while (i11 >= i10) {
            removeAndRecycleViewAt(i11, tVar);
            i11--;
        }
    }

    private void X(RecyclerView.t tVar, c cVar) {
        int childCount;
        int i10;
        View childAt;
        int i11;
        if (cVar.f27305f < 0 || (childCount = getChildCount()) == 0 || (childAt = getChildAt((i10 = childCount - 1))) == null || (i11 = this.f27274i.f27330c[getPosition(childAt)]) == -1) {
            return;
        }
        com.google.android.flexbox.b bVar = (com.google.android.flexbox.b) this.f27273h.get(i11);
        for (int i12 = i10; i12 >= 0; i12--) {
            View childAt2 = getChildAt(i12);
            if (childAt2 != null) {
                if (!r(childAt2, cVar.f27305f)) {
                    break;
                }
                if (bVar.f27324o != getPosition(childAt2)) {
                    continue;
                } else if (i11 <= 0) {
                    childCount = i12;
                    break;
                } else {
                    i11 += cVar.f27308i;
                    bVar = (com.google.android.flexbox.b) this.f27273h.get(i11);
                    childCount = i12;
                }
            }
        }
        W(tVar, childCount, i10);
    }

    private void Y(RecyclerView.t tVar, c cVar) {
        int childCount;
        View childAt;
        if (cVar.f27305f < 0 || (childCount = getChildCount()) == 0 || (childAt = getChildAt(0)) == null) {
            return;
        }
        int i10 = this.f27274i.f27330c[getPosition(childAt)];
        int i11 = -1;
        if (i10 == -1) {
            return;
        }
        com.google.android.flexbox.b bVar = (com.google.android.flexbox.b) this.f27273h.get(i10);
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getChildAt(i12);
            if (childAt2 != null) {
                if (!s(childAt2, cVar.f27305f)) {
                    break;
                }
                if (bVar.f27325p != getPosition(childAt2)) {
                    continue;
                } else if (i10 >= this.f27273h.size() - 1) {
                    i11 = i12;
                    break;
                } else {
                    i10 += cVar.f27308i;
                    bVar = (com.google.android.flexbox.b) this.f27273h.get(i10);
                    i11 = i12;
                }
            }
        }
        W(tVar, 0, i11);
    }

    private void Z() {
        int heightMode = isMainAxisDirectionHorizontal() ? getHeightMode() : getWidthMode();
        this.f27277l.f27301b = heightMode == 0 || heightMode == Integer.MIN_VALUE;
    }

    private void a0() {
        int layoutDirection = getLayoutDirection();
        int i10 = this.f27266a;
        if (i10 == 0) {
            this.f27271f = layoutDirection == 1;
            this.f27272g = this.f27267b == 2;
            return;
        }
        if (i10 == 1) {
            this.f27271f = layoutDirection != 1;
            this.f27272g = this.f27267b == 2;
            return;
        }
        if (i10 == 2) {
            boolean z10 = layoutDirection == 1;
            this.f27271f = z10;
            if (this.f27267b == 2) {
                this.f27271f = !z10;
            }
            this.f27272g = false;
            return;
        }
        if (i10 != 3) {
            this.f27271f = false;
            this.f27272g = false;
            return;
        }
        boolean z11 = layoutDirection == 1;
        this.f27271f = z11;
        if (this.f27267b == 2) {
            this.f27271f = !z11;
        }
        this.f27272g = true;
    }

    private void ensureLayoutState() {
        if (this.f27277l == null) {
            this.f27277l = new c();
        }
    }

    private boolean f0(RecyclerView.x xVar, b bVar) {
        if (getChildCount() == 0) {
            return false;
        }
        View viewB = bVar.f27296e ? B(xVar.b()) : z(xVar.b());
        if (viewB == null) {
            return false;
        }
        bVar.s(viewB);
        if (xVar.e() || !supportsPredictiveItemAnimations()) {
            return true;
        }
        if (this.f27279n.g(viewB) < this.f27279n.i() && this.f27279n.d(viewB) >= this.f27279n.m()) {
            return true;
        }
        bVar.f27294c = bVar.f27296e ? this.f27279n.i() : this.f27279n.m();
        return true;
    }

    private boolean g0(RecyclerView.x xVar, b bVar, SavedState savedState) {
        int i10;
        View childAt;
        if (!xVar.e() && (i10 = this.f27282q) != -1) {
            if (i10 >= 0 && i10 < xVar.b()) {
                bVar.f27292a = this.f27282q;
                bVar.f27293b = this.f27274i.f27330c[bVar.f27292a];
                SavedState savedState2 = this.f27281p;
                if (savedState2 != null && savedState2.g(xVar.b())) {
                    bVar.f27294c = this.f27279n.m() + savedState.mAnchorOffset;
                    bVar.f27298g = true;
                    bVar.f27293b = -1;
                    return true;
                }
                if (this.f27283r != Integer.MIN_VALUE) {
                    if (isMainAxisDirectionHorizontal() || !this.f27271f) {
                        bVar.f27294c = this.f27279n.m() + this.f27283r;
                    } else {
                        bVar.f27294c = this.f27283r - this.f27279n.j();
                    }
                    return true;
                }
                View viewFindViewByPosition = findViewByPosition(this.f27282q);
                if (viewFindViewByPosition == null) {
                    if (getChildCount() > 0 && (childAt = getChildAt(0)) != null) {
                        bVar.f27296e = this.f27282q < getPosition(childAt);
                    }
                    bVar.r();
                } else {
                    if (this.f27279n.e(viewFindViewByPosition) > this.f27279n.n()) {
                        bVar.r();
                        return true;
                    }
                    if (this.f27279n.g(viewFindViewByPosition) - this.f27279n.m() < 0) {
                        bVar.f27294c = this.f27279n.m();
                        bVar.f27296e = false;
                        return true;
                    }
                    if (this.f27279n.i() - this.f27279n.d(viewFindViewByPosition) < 0) {
                        bVar.f27294c = this.f27279n.i();
                        bVar.f27296e = true;
                        return true;
                    }
                    bVar.f27294c = bVar.f27296e ? this.f27279n.d(viewFindViewByPosition) + this.f27279n.o() : this.f27279n.g(viewFindViewByPosition);
                }
                return true;
            }
            this.f27282q = -1;
            this.f27283r = Integer.MIN_VALUE;
        }
        return false;
    }

    private void h0(RecyclerView.x xVar, b bVar) {
        if (g0(xVar, bVar, this.f27281p) || f0(xVar, bVar)) {
            return;
        }
        bVar.r();
        bVar.f27292a = 0;
        bVar.f27293b = 0;
    }

    private static boolean i(int i10, int i11, int i12) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (i12 > 0 && i10 != i12) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i10;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i10;
        }
        return true;
    }

    private void i0(int i10) {
        if (i10 >= findLastVisibleItemPosition()) {
            return;
        }
        int childCount = getChildCount();
        this.f27274i.t(childCount);
        this.f27274i.u(childCount);
        this.f27274i.s(childCount);
        if (i10 >= this.f27274i.f27330c.length) {
            return;
        }
        this.f27290y = i10;
        View viewI = I();
        if (viewI == null) {
            return;
        }
        this.f27282q = getPosition(viewI);
        if (isMainAxisDirectionHorizontal() || !this.f27271f) {
            this.f27283r = this.f27279n.g(viewI) - this.f27279n.m();
        } else {
            this.f27283r = this.f27279n.d(viewI) + this.f27279n.j();
        }
    }

    private void j0(int i10) {
        int i11;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int width = getWidth();
        int height = getHeight();
        boolean z10 = false;
        if (isMainAxisDirectionHorizontal()) {
            int i12 = this.f27284s;
            if (i12 != Integer.MIN_VALUE && i12 != width) {
                z10 = true;
            }
            i11 = this.f27277l.f27301b ? this.f27288w.getResources().getDisplayMetrics().heightPixels : this.f27277l.f27300a;
        } else {
            int i13 = this.f27285t;
            if (i13 != Integer.MIN_VALUE && i13 != height) {
                z10 = true;
            }
            i11 = this.f27277l.f27301b ? this.f27288w.getResources().getDisplayMetrics().widthPixels : this.f27277l.f27300a;
        }
        int i14 = i11;
        this.f27284s = width;
        this.f27285t = height;
        int i15 = this.f27290y;
        if (i15 == -1 && (this.f27282q != -1 || z10)) {
            if (this.f27278m.f27296e) {
                return;
            }
            this.f27273h.clear();
            this.f27291z.a();
            if (isMainAxisDirectionHorizontal()) {
                this.f27274i.e(this.f27291z, iMakeMeasureSpec, iMakeMeasureSpec2, i14, this.f27278m.f27292a, this.f27273h);
            } else {
                this.f27274i.h(this.f27291z, iMakeMeasureSpec, iMakeMeasureSpec2, i14, this.f27278m.f27292a, this.f27273h);
            }
            this.f27273h = this.f27291z.f27333a;
            this.f27274i.p(iMakeMeasureSpec, iMakeMeasureSpec2);
            this.f27274i.X();
            b bVar = this.f27278m;
            bVar.f27293b = this.f27274i.f27330c[bVar.f27292a];
            this.f27277l.f27302c = this.f27278m.f27293b;
            return;
        }
        int iMin = i15 != -1 ? Math.min(i15, this.f27278m.f27292a) : this.f27278m.f27292a;
        this.f27291z.a();
        if (isMainAxisDirectionHorizontal()) {
            if (this.f27273h.size() > 0) {
                this.f27274i.j(this.f27273h, iMin);
                this.f27274i.b(this.f27291z, iMakeMeasureSpec, iMakeMeasureSpec2, i14, iMin, this.f27278m.f27292a, this.f27273h);
            } else {
                this.f27274i.s(i10);
                this.f27274i.d(this.f27291z, iMakeMeasureSpec, iMakeMeasureSpec2, i14, 0, this.f27273h);
            }
        } else if (this.f27273h.size() > 0) {
            this.f27274i.j(this.f27273h, iMin);
            this.f27274i.b(this.f27291z, iMakeMeasureSpec2, iMakeMeasureSpec, i14, iMin, this.f27278m.f27292a, this.f27273h);
        } else {
            this.f27274i.s(i10);
            this.f27274i.g(this.f27291z, iMakeMeasureSpec, iMakeMeasureSpec2, i14, 0, this.f27273h);
        }
        this.f27273h = this.f27291z.f27333a;
        this.f27274i.q(iMakeMeasureSpec, iMakeMeasureSpec2, iMin);
        this.f27274i.Y(iMin);
    }

    private void k0(int i10, int i11) {
        this.f27277l.f27308i = i10;
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        boolean z10 = !zIsMainAxisDirectionHorizontal && this.f27271f;
        if (i10 == 1) {
            View childAt = getChildAt(getChildCount() - 1);
            if (childAt == null) {
                return;
            }
            this.f27277l.f27304e = this.f27279n.d(childAt);
            int position = getPosition(childAt);
            View viewC = C(childAt, (com.google.android.flexbox.b) this.f27273h.get(this.f27274i.f27330c[position]));
            this.f27277l.f27307h = 1;
            c cVar = this.f27277l;
            cVar.f27303d = position + cVar.f27307h;
            if (this.f27274i.f27330c.length <= this.f27277l.f27303d) {
                this.f27277l.f27302c = -1;
            } else {
                c cVar2 = this.f27277l;
                cVar2.f27302c = this.f27274i.f27330c[cVar2.f27303d];
            }
            if (z10) {
                this.f27277l.f27304e = this.f27279n.g(viewC);
                this.f27277l.f27305f = (-this.f27279n.g(viewC)) + this.f27279n.m();
                c cVar3 = this.f27277l;
                cVar3.f27305f = Math.max(cVar3.f27305f, 0);
            } else {
                this.f27277l.f27304e = this.f27279n.d(viewC);
                this.f27277l.f27305f = this.f27279n.d(viewC) - this.f27279n.i();
            }
            if ((this.f27277l.f27302c == -1 || this.f27277l.f27302c > this.f27273h.size() - 1) && this.f27277l.f27303d <= getFlexItemCount()) {
                int i12 = i11 - this.f27277l.f27305f;
                this.f27291z.a();
                if (i12 > 0) {
                    if (zIsMainAxisDirectionHorizontal) {
                        this.f27274i.d(this.f27291z, iMakeMeasureSpec, iMakeMeasureSpec2, i12, this.f27277l.f27303d, this.f27273h);
                    } else {
                        this.f27274i.g(this.f27291z, iMakeMeasureSpec, iMakeMeasureSpec2, i12, this.f27277l.f27303d, this.f27273h);
                    }
                    this.f27274i.q(iMakeMeasureSpec, iMakeMeasureSpec2, this.f27277l.f27303d);
                    this.f27274i.Y(this.f27277l.f27303d);
                }
            }
        } else {
            View childAt2 = getChildAt(0);
            if (childAt2 == null) {
                return;
            }
            this.f27277l.f27304e = this.f27279n.g(childAt2);
            int position2 = getPosition(childAt2);
            View viewA = A(childAt2, (com.google.android.flexbox.b) this.f27273h.get(this.f27274i.f27330c[position2]));
            this.f27277l.f27307h = 1;
            int i13 = this.f27274i.f27330c[position2];
            if (i13 == -1) {
                i13 = 0;
            }
            if (i13 > 0) {
                this.f27277l.f27303d = position2 - ((com.google.android.flexbox.b) this.f27273h.get(i13 - 1)).b();
            } else {
                this.f27277l.f27303d = -1;
            }
            this.f27277l.f27302c = i13 > 0 ? i13 - 1 : 0;
            if (z10) {
                this.f27277l.f27304e = this.f27279n.d(viewA);
                this.f27277l.f27305f = this.f27279n.d(viewA) - this.f27279n.i();
                c cVar4 = this.f27277l;
                cVar4.f27305f = Math.max(cVar4.f27305f, 0);
            } else {
                this.f27277l.f27304e = this.f27279n.g(viewA);
                this.f27277l.f27305f = (-this.f27279n.g(viewA)) + this.f27279n.m();
            }
        }
        c cVar5 = this.f27277l;
        cVar5.f27300a = i11 - cVar5.f27305f;
    }

    private void l0(b bVar, boolean z10, boolean z11) {
        if (z11) {
            Z();
        } else {
            this.f27277l.f27301b = false;
        }
        if (isMainAxisDirectionHorizontal() || !this.f27271f) {
            this.f27277l.f27300a = this.f27279n.i() - bVar.f27294c;
        } else {
            this.f27277l.f27300a = bVar.f27294c - getPaddingRight();
        }
        this.f27277l.f27303d = bVar.f27292a;
        this.f27277l.f27307h = 1;
        this.f27277l.f27308i = 1;
        this.f27277l.f27304e = bVar.f27294c;
        this.f27277l.f27305f = Integer.MIN_VALUE;
        this.f27277l.f27302c = bVar.f27293b;
        if (!z10 || this.f27273h.size() <= 1 || bVar.f27293b < 0 || bVar.f27293b >= this.f27273h.size() - 1) {
            return;
        }
        com.google.android.flexbox.b bVar2 = (com.google.android.flexbox.b) this.f27273h.get(bVar.f27293b);
        c.l(this.f27277l);
        c.u(this.f27277l, bVar2.b());
    }

    private void m0(b bVar, boolean z10, boolean z11) {
        if (z11) {
            Z();
        } else {
            this.f27277l.f27301b = false;
        }
        if (isMainAxisDirectionHorizontal() || !this.f27271f) {
            this.f27277l.f27300a = bVar.f27294c - this.f27279n.m();
        } else {
            this.f27277l.f27300a = (this.f27289x.getWidth() - bVar.f27294c) - this.f27279n.m();
        }
        this.f27277l.f27303d = bVar.f27292a;
        this.f27277l.f27307h = 1;
        this.f27277l.f27308i = -1;
        this.f27277l.f27304e = bVar.f27294c;
        this.f27277l.f27305f = Integer.MIN_VALUE;
        this.f27277l.f27302c = bVar.f27293b;
        if (!z10 || bVar.f27293b <= 0 || this.f27273h.size() <= bVar.f27293b) {
            return;
        }
        com.google.android.flexbox.b bVar2 = (com.google.android.flexbox.b) this.f27273h.get(bVar.f27293b);
        c.m(this.f27277l);
        c.v(this.f27277l, bVar2.b());
    }

    private boolean r(View view, int i10) {
        if (isMainAxisDirectionHorizontal() || !this.f27271f) {
            return this.f27279n.g(view) >= this.f27279n.h() - i10;
        }
        return this.f27279n.d(view) <= i10;
    }

    private boolean s(View view, int i10) {
        if (isMainAxisDirectionHorizontal() || !this.f27271f) {
            return this.f27279n.d(view) <= i10;
        }
        return this.f27279n.h() - this.f27279n.g(view) <= i10;
    }

    private boolean shouldMeasureChild(View view, int i10, int i11, RecyclerView.n nVar) {
        return (!view.isLayoutRequested() && isMeasurementCacheEnabled() && i(view.getWidth(), i10, ((ViewGroup.MarginLayoutParams) nVar).width) && i(view.getHeight(), i11, ((ViewGroup.MarginLayoutParams) nVar).height)) ? false : true;
    }

    private void t() {
        this.f27273h.clear();
        this.f27278m.t();
        this.f27278m.f27295d = 0;
    }

    private int u(RecyclerView.x xVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        int iB = xVar.b();
        x();
        View viewZ = z(iB);
        View viewB = B(iB);
        if (xVar.b() == 0 || viewZ == null || viewB == null) {
            return 0;
        }
        return Math.min(this.f27279n.n(), this.f27279n.d(viewB) - this.f27279n.g(viewZ));
    }

    private int v(RecyclerView.x xVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        int iB = xVar.b();
        View viewZ = z(iB);
        View viewB = B(iB);
        if (xVar.b() != 0 && viewZ != null && viewB != null) {
            int position = getPosition(viewZ);
            int position2 = getPosition(viewB);
            int iAbs = Math.abs(this.f27279n.d(viewB) - this.f27279n.g(viewZ));
            int[] iArr = this.f27274i.f27330c;
            int i10 = iArr[position];
            if (i10 != 0 && i10 != -1) {
                return Math.round((i10 * (iAbs / ((iArr[position2] - i10) + 1))) + (this.f27279n.m() - this.f27279n.g(viewZ)));
            }
        }
        return 0;
    }

    private int w(RecyclerView.x xVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        int iB = xVar.b();
        View viewZ = z(iB);
        View viewB = B(iB);
        if (xVar.b() == 0 || viewZ == null || viewB == null) {
            return 0;
        }
        return (int) ((Math.abs(this.f27279n.d(viewB) - this.f27279n.g(viewZ)) / ((findLastVisibleItemPosition() - findFirstVisibleItemPosition()) + 1)) * xVar.b());
    }

    private void x() {
        if (this.f27279n != null) {
            return;
        }
        if (isMainAxisDirectionHorizontal()) {
            if (this.f27267b == 0) {
                this.f27279n = m.a(this);
                this.f27280o = m.c(this);
                return;
            } else {
                this.f27279n = m.c(this);
                this.f27280o = m.a(this);
                return;
            }
        }
        if (this.f27267b == 0) {
            this.f27279n = m.c(this);
            this.f27280o = m.a(this);
        } else {
            this.f27279n = m.a(this);
            this.f27280o = m.c(this);
        }
    }

    private int y(RecyclerView.t tVar, RecyclerView.x xVar, c cVar) {
        if (cVar.f27305f != Integer.MIN_VALUE) {
            if (cVar.f27300a < 0) {
                c.q(cVar, cVar.f27300a);
            }
            V(tVar, cVar);
        }
        int i10 = cVar.f27300a;
        int iA = cVar.f27300a;
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int iS = 0;
        while (true) {
            if ((iA <= 0 && !this.f27277l.f27301b) || !cVar.D(xVar, this.f27273h)) {
                break;
            }
            com.google.android.flexbox.b bVar = (com.google.android.flexbox.b) this.f27273h.get(cVar.f27302c);
            cVar.f27303d = bVar.f27324o;
            iS += S(bVar, cVar);
            if (zIsMainAxisDirectionHorizontal || !this.f27271f) {
                c.c(cVar, bVar.a() * cVar.f27308i);
            } else {
                c.d(cVar, bVar.a() * cVar.f27308i);
            }
            iA -= bVar.a();
        }
        c.i(cVar, iS);
        if (cVar.f27305f != Integer.MIN_VALUE) {
            c.q(cVar, iS);
            if (cVar.f27300a < 0) {
                c.q(cVar, cVar.f27300a);
            }
            V(tVar, cVar);
        }
        return i10 - cVar.f27300a;
    }

    private View z(int i10) {
        View viewE = E(0, getChildCount(), i10);
        if (viewE == null) {
            return null;
        }
        int i11 = this.f27274i.f27330c[getPosition(viewE)];
        if (i11 == -1) {
            return null;
        }
        return A(viewE, (com.google.android.flexbox.b) this.f27273h.get(i11));
    }

    public List M() {
        ArrayList arrayList = new ArrayList(this.f27273h.size());
        int size = this.f27273h.size();
        for (int i10 = 0; i10 < size; i10++) {
            com.google.android.flexbox.b bVar = (com.google.android.flexbox.b) this.f27273h.get(i10);
            if (bVar.b() != 0) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    int N(int i10) {
        return this.f27274i.f27330c[i10];
    }

    boolean Q() {
        return this.f27271f;
    }

    public void b0(int i10) {
        int i11 = this.f27269d;
        if (i11 != i10) {
            if (i11 == 4 || i10 == 4) {
                removeAllViews();
                t();
            }
            this.f27269d = i10;
            requestLayout();
        }
    }

    public void c0(int i10) {
        if (this.f27266a != i10) {
            removeAllViews();
            this.f27266a = i10;
            this.f27279n = null;
            this.f27280o = null;
            t();
            requestLayout();
        }
    }

    @Override
    public boolean canScrollHorizontally() {
        if (this.f27267b == 0) {
            return isMainAxisDirectionHorizontal();
        }
        if (isMainAxisDirectionHorizontal()) {
            int width = getWidth();
            View view = this.f27289x;
            if (width <= (view != null ? view.getWidth() : 0)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean canScrollVertically() {
        if (this.f27267b == 0) {
            return !isMainAxisDirectionHorizontal();
        }
        if (isMainAxisDirectionHorizontal()) {
            return true;
        }
        int height = getHeight();
        View view = this.f27289x;
        return height > (view != null ? view.getHeight() : 0);
    }

    @Override
    public boolean checkLayoutParams(RecyclerView.n nVar) {
        return nVar instanceof LayoutParams;
    }

    @Override
    public int computeHorizontalScrollExtent(RecyclerView.x xVar) {
        return u(xVar);
    }

    @Override
    public int computeHorizontalScrollOffset(RecyclerView.x xVar) {
        return v(xVar);
    }

    @Override
    public int computeHorizontalScrollRange(RecyclerView.x xVar) {
        return w(xVar);
    }

    @Override
    public PointF computeScrollVectorForPosition(int i10) {
        View childAt;
        if (getChildCount() == 0 || (childAt = getChildAt(0)) == null) {
            return null;
        }
        int i11 = i10 < getPosition(childAt) ? -1 : 1;
        return isMainAxisDirectionHorizontal() ? new PointF(0.0f, i11) : new PointF(i11, 0.0f);
    }

    @Override
    public int computeVerticalScrollExtent(RecyclerView.x xVar) {
        return u(xVar);
    }

    @Override
    public int computeVerticalScrollOffset(RecyclerView.x xVar) {
        return v(xVar);
    }

    @Override
    public int computeVerticalScrollRange(RecyclerView.x xVar) {
        return w(xVar);
    }

    public void d0(int i10) {
        if (i10 == 2) {
            throw new UnsupportedOperationException("wrap_reverse is not supported in FlexboxLayoutManager");
        }
        int i11 = this.f27267b;
        if (i11 != i10) {
            if (i11 == 0 || i10 == 0) {
                removeAllViews();
                t();
            }
            this.f27267b = i10;
            this.f27279n = null;
            this.f27280o = null;
            requestLayout();
        }
    }

    public void e0(int i10) {
        if (this.f27268c != i10) {
            this.f27268c = i10;
            requestLayout();
        }
    }

    public int findFirstVisibleItemPosition() {
        View viewD = D(0, getChildCount(), false);
        if (viewD == null) {
            return -1;
        }
        return getPosition(viewD);
    }

    public int findLastVisibleItemPosition() {
        View viewD = D(getChildCount() - 1, -1, false);
        if (viewD == null) {
            return -1;
        }
        return getPosition(viewD);
    }

    @Override
    public RecyclerView.n generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override
    public RecyclerView.n generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override
    public int getAlignContent() {
        return 5;
    }

    @Override
    public int getAlignItems() {
        return this.f27269d;
    }

    @Override
    public int getChildHeightMeasureSpec(int i10, int i11, int i12) {
        return RecyclerView.m.getChildMeasureSpec(getHeight(), getHeightMode(), i11, i12, canScrollVertically());
    }

    @Override
    public int getChildWidthMeasureSpec(int i10, int i11, int i12) {
        return RecyclerView.m.getChildMeasureSpec(getWidth(), getWidthMode(), i11, i12, canScrollHorizontally());
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
    public int getDecorationLengthMainAxis(View view, int i10, int i11) {
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
        return this.f27266a;
    }

    @Override
    public View getFlexItemAt(int i10) {
        View view = (View) this.f27287v.get(i10);
        return view != null ? view : this.f27275j.o(i10);
    }

    @Override
    public int getFlexItemCount() {
        return this.f27276k.b();
    }

    @Override
    public List getFlexLinesInternal() {
        return this.f27273h;
    }

    @Override
    public int getFlexWrap() {
        return this.f27267b;
    }

    @Override
    public int getLargestMainSize() {
        if (this.f27273h.size() == 0) {
            return 0;
        }
        int size = this.f27273h.size();
        int iMax = Integer.MIN_VALUE;
        for (int i10 = 0; i10 < size; i10++) {
            iMax = Math.max(iMax, ((com.google.android.flexbox.b) this.f27273h.get(i10)).f27314e);
        }
        return iMax;
    }

    @Override
    public int getMaxLine() {
        return this.f27270e;
    }

    @Override
    public View getReorderedFlexItemAt(int i10) {
        return getFlexItemAt(i10);
    }

    @Override
    public int getSumOfCrossSize() {
        int size = this.f27273h.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += ((com.google.android.flexbox.b) this.f27273h.get(i11)).f27316g;
        }
        return i10;
    }

    @Override
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override
    public boolean isMainAxisDirectionHorizontal() {
        int i10 = this.f27266a;
        return i10 == 0 || i10 == 1;
    }

    @Override
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        removeAllViews();
    }

    @Override
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f27289x = (View) recyclerView.getParent();
    }

    @Override
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.t tVar) {
        super.onDetachedFromWindow(recyclerView, tVar);
        if (this.f27286u) {
            removeAndRecycleAllViews(tVar);
            tVar.c();
        }
    }

    @Override
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsAdded(recyclerView, i10, i11);
        i0(i10);
    }

    @Override
    public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        super.onItemsMoved(recyclerView, i10, i11, i12);
        i0(Math.min(i10, i11));
    }

    @Override
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsRemoved(recyclerView, i10, i11);
        i0(i10);
    }

    @Override
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
        super.onItemsUpdated(recyclerView, i10, i11, obj);
        i0(i10);
    }

    @Override
    public void onLayoutChildren(RecyclerView.t tVar, RecyclerView.x xVar) {
        int i10;
        int i11;
        this.f27275j = tVar;
        this.f27276k = xVar;
        int iB = xVar.b();
        if (iB == 0 && xVar.e()) {
            return;
        }
        a0();
        x();
        ensureLayoutState();
        this.f27274i.t(iB);
        this.f27274i.u(iB);
        this.f27274i.s(iB);
        this.f27277l.f27309j = false;
        SavedState savedState = this.f27281p;
        if (savedState != null && savedState.g(iB)) {
            this.f27282q = this.f27281p.mAnchorPosition;
        }
        if (!this.f27278m.f27297f || this.f27282q != -1 || this.f27281p != null) {
            this.f27278m.t();
            h0(xVar, this.f27278m);
            this.f27278m.f27297f = true;
        }
        detachAndScrapAttachedViews(tVar);
        if (this.f27278m.f27296e) {
            m0(this.f27278m, false, true);
        } else {
            l0(this.f27278m, false, true);
        }
        j0(iB);
        y(tVar, xVar, this.f27277l);
        if (this.f27278m.f27296e) {
            i11 = this.f27277l.f27304e;
            l0(this.f27278m, true, false);
            y(tVar, xVar, this.f27277l);
            i10 = this.f27277l.f27304e;
        } else {
            i10 = this.f27277l.f27304e;
            m0(this.f27278m, true, false);
            y(tVar, xVar, this.f27277l);
            i11 = this.f27277l.f27304e;
        }
        if (getChildCount() > 0) {
            if (this.f27278m.f27296e) {
                G(i11 + F(i10, tVar, xVar, true), tVar, xVar, false);
            } else {
                F(i10 + G(i11, tVar, xVar, true), tVar, xVar, false);
            }
        }
    }

    @Override
    public void onLayoutCompleted(RecyclerView.x xVar) {
        super.onLayoutCompleted(xVar);
        this.f27281p = null;
        this.f27282q = -1;
        this.f27283r = Integer.MIN_VALUE;
        this.f27290y = -1;
        this.f27278m.t();
        this.f27287v.clear();
    }

    @Override
    public void onNewFlexItemAdded(View view, int i10, int i11, com.google.android.flexbox.b bVar) {
        calculateItemDecorationsForChild(view, A);
        if (isMainAxisDirectionHorizontal()) {
            int leftDecorationWidth = getLeftDecorationWidth(view) + getRightDecorationWidth(view);
            bVar.f27314e += leftDecorationWidth;
            bVar.f27315f += leftDecorationWidth;
        } else {
            int topDecorationHeight = getTopDecorationHeight(view) + getBottomDecorationHeight(view);
            bVar.f27314e += topDecorationHeight;
            bVar.f27315f += topDecorationHeight;
        }
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f27281p = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override
    public Parcelable onSaveInstanceState() {
        if (this.f27281p != null) {
            return new SavedState(this.f27281p);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            View viewI = I();
            savedState.mAnchorPosition = getPosition(viewI);
            savedState.mAnchorOffset = this.f27279n.g(viewI) - this.f27279n.m();
        } else {
            savedState.h();
        }
        return savedState;
    }

    @Override
    public int scrollHorizontallyBy(int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        if (!isMainAxisDirectionHorizontal() || this.f27267b == 0) {
            int iO = O(i10, tVar, xVar);
            this.f27287v.clear();
            return iO;
        }
        int iP = P(i10);
        b.l(this.f27278m, iP);
        this.f27280o.r(-iP);
        return iP;
    }

    @Override
    public void scrollToPosition(int i10) {
        this.f27282q = i10;
        this.f27283r = Integer.MIN_VALUE;
        SavedState savedState = this.f27281p;
        if (savedState != null) {
            savedState.h();
        }
        requestLayout();
    }

    @Override
    public int scrollVerticallyBy(int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        if (isMainAxisDirectionHorizontal() || (this.f27267b == 0 && !isMainAxisDirectionHorizontal())) {
            int iO = O(i10, tVar, xVar);
            this.f27287v.clear();
            return iO;
        }
        int iP = P(i10);
        b.l(this.f27278m, iP);
        this.f27280o.r(-iP);
        return iP;
    }

    @Override
    public void setFlexLines(List list) {
        this.f27273h = list;
    }

    @Override
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.x xVar, int i10) {
        h hVar = new h(recyclerView.getContext());
        hVar.p(i10);
        startSmoothScroll(hVar);
    }

    @Override
    public void updateViewCache(int i10, View view) {
        this.f27287v.put(i10, view);
    }

    private static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        private int mAnchorOffset;
        private int mAnchorPosition;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public boolean g(int i10) {
            int i11 = this.mAnchorPosition;
            return i11 >= 0 && i11 < i10;
        }

        public void h() {
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
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
        }

        SavedState() {
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

    public FlexboxLayoutManager(Context context, int i10, int i11) {
        this.f27270e = -1;
        this.f27273h = new ArrayList();
        this.f27274i = new com.google.android.flexbox.c(this);
        this.f27278m = new b();
        this.f27282q = -1;
        this.f27283r = Integer.MIN_VALUE;
        this.f27284s = Integer.MIN_VALUE;
        this.f27285t = Integer.MIN_VALUE;
        this.f27287v = new SparseArray();
        this.f27290y = -1;
        this.f27291z = new com.google.android.flexbox.c.b();
        c0(i10);
        d0(i11);
        b0(4);
        this.f27288w = context;
    }

    @Override
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsUpdated(recyclerView, i10, i11);
        i0(i10);
    }

    public static class LayoutParams extends RecyclerView.n implements FlexItem {
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

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public LayoutParams createFromParcel(Parcel parcel) {
                return new LayoutParams(parcel);
            }

            @Override
            public LayoutParams[] newArray(int i10) {
                return new LayoutParams[i10];
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

        public void setAlignSelf(int i10) {
            this.mAlignSelf = i10;
        }

        public void setFlexBasisPercent(float f10) {
            this.mFlexBasisPercent = f10;
        }

        public void setFlexGrow(float f10) {
            this.mFlexGrow = f10;
        }

        public void setFlexShrink(float f10) {
            this.mFlexShrink = f10;
        }

        public void setHeight(int i10) {
            ((ViewGroup.MarginLayoutParams) this).height = i10;
        }

        public void setMaxHeight(int i10) {
            this.mMaxHeight = i10;
        }

        public void setMaxWidth(int i10) {
            this.mMaxWidth = i10;
        }

        @Override
        public void setMinHeight(int i10) {
            this.mMinHeight = i10;
        }

        @Override
        public void setMinWidth(int i10) {
            this.mMinWidth = i10;
        }

        public void setOrder(int i10) {
            throw new UnsupportedOperationException("Setting the order in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to reorder using the attribute.");
        }

        public void setWidth(int i10) {
            ((ViewGroup.MarginLayoutParams) this).width = i10;
        }

        public void setWrapBefore(boolean z10) {
            this.mWrapBefore = z10;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
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

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
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

        public LayoutParams(RecyclerView.n nVar) {
            super(nVar);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((RecyclerView.n) layoutParams);
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

        protected LayoutParams(Parcel parcel) {
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

    public FlexboxLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f27270e = -1;
        this.f27273h = new ArrayList();
        this.f27274i = new com.google.android.flexbox.c(this);
        this.f27278m = new b();
        this.f27282q = -1;
        this.f27283r = Integer.MIN_VALUE;
        this.f27284s = Integer.MIN_VALUE;
        this.f27285t = Integer.MIN_VALUE;
        this.f27287v = new SparseArray();
        this.f27290y = -1;
        this.f27291z = new com.google.android.flexbox.c.b();
        RecyclerView.m.d properties = RecyclerView.m.getProperties(context, attributeSet, i10, i11);
        int i12 = properties.f13926a;
        if (i12 != 0) {
            if (i12 == 1) {
                if (properties.f13928c) {
                    c0(3);
                } else {
                    c0(2);
                }
            }
        } else if (properties.f13928c) {
            c0(1);
        } else {
            c0(0);
        }
        d0(1);
        b0(4);
        this.f27288w = context;
    }

    @Override
    public void onNewFlexLineAdded(com.google.android.flexbox.b bVar) {
    }
}
