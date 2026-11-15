package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.util.Arrays;

public class GridLayoutManager extends LinearLayoutManager {

    boolean f13878a;

    int f13879b;

    int[] f13880c;

    View[] f13881d;

    final SparseIntArray f13882e;

    final SparseIntArray f13883f;

    c f13884g;

    final Rect f13885h;

    private boolean f13886i;

    public static final class a extends c {
        @Override
        public int e(int i10, int i11) {
            return i10 % i11;
        }

        @Override
        public int f(int i10) {
            return 1;
        }
    }

    public static abstract class c {

        final SparseIntArray f13889a = new SparseIntArray();

        final SparseIntArray f13890b = new SparseIntArray();

        private boolean f13891c = false;

        private boolean f13892d = false;

        static int a(SparseIntArray sparseIntArray, int i10) {
            int size = sparseIntArray.size() - 1;
            int i11 = 0;
            while (i11 <= size) {
                int i12 = (i11 + size) >>> 1;
                if (sparseIntArray.keyAt(i12) < i10) {
                    i11 = i12 + 1;
                } else {
                    size = i12 - 1;
                }
            }
            int i13 = i11 - 1;
            if (i13 < 0 || i13 >= sparseIntArray.size()) {
                return -1;
            }
            return sparseIntArray.keyAt(i13);
        }

        int b(int i10, int i11) {
            if (!this.f13892d) {
                return d(i10, i11);
            }
            int i12 = this.f13890b.get(i10, -1);
            if (i12 != -1) {
                return i12;
            }
            int iD = d(i10, i11);
            this.f13890b.put(i10, iD);
            return iD;
        }

        int c(int i10, int i11) {
            if (!this.f13891c) {
                return e(i10, i11);
            }
            int i12 = this.f13889a.get(i10, -1);
            if (i12 != -1) {
                return i12;
            }
            int iE = e(i10, i11);
            this.f13889a.put(i10, iE);
            return iE;
        }

        public int d(int i10, int i11) {
            int i12;
            int i13;
            int iC;
            int iA;
            if (!this.f13892d || (iA = a(this.f13890b, i10)) == -1) {
                i12 = 0;
                i13 = 0;
                iC = 0;
            } else {
                i12 = this.f13890b.get(iA);
                i13 = iA + 1;
                iC = c(iA, i11) + f(iA);
                if (iC == i11) {
                    i12++;
                    iC = 0;
                }
            }
            int iF = f(i10);
            while (i13 < i10) {
                int iF2 = f(i13);
                iC += iF2;
                if (iC == i11) {
                    i12++;
                    iC = 0;
                } else if (iC > i11) {
                    i12++;
                    iC = iF2;
                }
                i13++;
            }
            return iC + iF > i11 ? i12 + 1 : i12;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0024  */
        /* JADX WARN: Code duplicated, block: B:14:0x002b  */
        /* JADX WARN: Code duplicated, block: B:15:0x002d A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:16:0x002f  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x002b -> B:17:0x0030). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002d -> B:17:0x0030). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x002f -> B:17:0x0030). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        public int e(int r6, int r7) {
            /*
                r5 = this;
                int r0 = r5.f(r6)
                r1 = 0
                if (r0 != r7) goto L8
                return r1
            L8:
                boolean r2 = r5.f13891c
                if (r2 == 0) goto L20
                android.util.SparseIntArray r2 = r5.f13889a
                int r2 = a(r2, r6)
                if (r2 < 0) goto L20
                android.util.SparseIntArray r3 = r5.f13889a
                int r3 = r3.get(r2)
                int r4 = r5.f(r2)
                int r3 = r3 + r4
                goto L30
            L20:
                r2 = r1
                r3 = r2
            L22:
                if (r2 >= r6) goto L33
                int r4 = r5.f(r2)
                int r3 = r3 + r4
                if (r3 != r7) goto L2d
                r3 = r1
                goto L30
            L2d:
                if (r3 <= r7) goto L30
                r3 = r4
            L30:
                int r2 = r2 + 1
                goto L22
            L33:
                int r0 = r0 + r3
                if (r0 > r7) goto L37
                return r3
            L37:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.c.e(int, int):int");
        }

        public abstract int f(int i10);

        public void g() {
            this.f13890b.clear();
        }

        public void h() {
            this.f13889a.clear();
        }

        public void i(boolean z10) {
            if (!z10) {
                this.f13890b.clear();
            }
            this.f13891c = z10;
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f13878a = false;
        this.f13879b = -1;
        this.f13882e = new SparseIntArray();
        this.f13883f = new SparseIntArray();
        this.f13884g = new a();
        this.f13885h = new Rect();
        c0(RecyclerView.m.getProperties(context, attributeSet, i10, i11).f13927b);
    }

    private void K(RecyclerView.t tVar, RecyclerView.x xVar, int i10, boolean z10) {
        int i11;
        int i12;
        int i13;
        int i14 = 0;
        if (z10) {
            i13 = 1;
            i12 = i10;
            i11 = 0;
        } else {
            i11 = i10 - 1;
            i12 = -1;
            i13 = -1;
        }
        while (i11 != i12) {
            View view = this.f13881d[i11];
            b bVar = (b) view.getLayoutParams();
            int iX = X(tVar, xVar, getPosition(view));
            bVar.f13888b = iX;
            bVar.f13887a = i14;
            i14 += iX;
            i11 += i13;
        }
    }

    private void L() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            b bVar = (b) getChildAt(i10).getLayoutParams();
            int viewLayoutPosition = bVar.getViewLayoutPosition();
            this.f13882e.put(viewLayoutPosition, bVar.b());
            this.f13883f.put(viewLayoutPosition, bVar.a());
        }
    }

    private void M(int i10) {
        this.f13880c = N(this.f13880c, this.f13879b, i10);
    }

    static int[] N(int[] iArr, int i10, int i11) {
        int i12;
        if (iArr == null || iArr.length != i10 + 1 || iArr[iArr.length - 1] != i11) {
            iArr = new int[i10 + 1];
        }
        int i13 = 0;
        iArr[0] = 0;
        int i14 = i11 / i10;
        int i15 = i11 % i10;
        int i16 = 0;
        for (int i17 = 1; i17 <= i10; i17++) {
            i13 += i15;
            if (i13 <= 0 || i10 - i13 >= i15) {
                i12 = i14;
            } else {
                i12 = i14 + 1;
                i13 -= i10;
            }
            i16 += i12;
            iArr[i17] = i16;
        }
        return iArr;
    }

    private void O() {
        this.f13882e.clear();
        this.f13883f.clear();
    }

    private int P(RecyclerView.x xVar) {
        if (getChildCount() != 0 && xVar.b() != 0) {
            ensureLayoutState();
            boolean zIsSmoothScrollbarEnabled = isSmoothScrollbarEnabled();
            View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!zIsSmoothScrollbarEnabled, true);
            View viewFindFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(!zIsSmoothScrollbarEnabled, true);
            if (viewFindFirstVisibleChildClosestToStart != null && viewFindFirstVisibleChildClosestToEnd != null) {
                int iB = this.f13884g.b(getPosition(viewFindFirstVisibleChildClosestToStart), this.f13879b);
                int iB2 = this.f13884g.b(getPosition(viewFindFirstVisibleChildClosestToEnd), this.f13879b);
                int iMax = this.mShouldReverseLayout ? Math.max(0, ((this.f13884g.b(xVar.b() - 1, this.f13879b) + 1) - Math.max(iB, iB2)) - 1) : Math.max(0, Math.min(iB, iB2));
                if (zIsSmoothScrollbarEnabled) {
                    return Math.round((iMax * (Math.abs(this.mOrientationHelper.d(viewFindFirstVisibleChildClosestToEnd) - this.mOrientationHelper.g(viewFindFirstVisibleChildClosestToStart)) / ((this.f13884g.b(getPosition(viewFindFirstVisibleChildClosestToEnd), this.f13879b) - this.f13884g.b(getPosition(viewFindFirstVisibleChildClosestToStart), this.f13879b)) + 1))) + (this.mOrientationHelper.m() - this.mOrientationHelper.g(viewFindFirstVisibleChildClosestToStart)));
                }
                return iMax;
            }
        }
        return 0;
    }

    private int Q(RecyclerView.x xVar) {
        if (getChildCount() != 0 && xVar.b() != 0) {
            ensureLayoutState();
            View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!isSmoothScrollbarEnabled(), true);
            View viewFindFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(!isSmoothScrollbarEnabled(), true);
            if (viewFindFirstVisibleChildClosestToStart != null && viewFindFirstVisibleChildClosestToEnd != null) {
                if (!isSmoothScrollbarEnabled()) {
                    return this.f13884g.b(xVar.b() - 1, this.f13879b) + 1;
                }
                return (int) (((this.mOrientationHelper.d(viewFindFirstVisibleChildClosestToEnd) - this.mOrientationHelper.g(viewFindFirstVisibleChildClosestToStart)) / ((this.f13884g.b(getPosition(viewFindFirstVisibleChildClosestToEnd), this.f13879b) - this.f13884g.b(getPosition(viewFindFirstVisibleChildClosestToStart), this.f13879b)) + 1)) * (this.f13884g.b(xVar.b() - 1, this.f13879b) + 1));
            }
        }
        return 0;
    }

    private void R(RecyclerView.t tVar, RecyclerView.x xVar, LinearLayoutManager.a aVar, int i10) {
        boolean z10 = i10 == 1;
        int iW = W(tVar, xVar, aVar.f13894b);
        if (z10) {
            while (iW > 0) {
                int i11 = aVar.f13894b;
                if (i11 <= 0) {
                    return;
                }
                int i12 = i11 - 1;
                aVar.f13894b = i12;
                iW = W(tVar, xVar, i12);
            }
            return;
        }
        int iB = xVar.b() - 1;
        int i13 = aVar.f13894b;
        while (i13 < iB) {
            int i14 = i13 + 1;
            int iW2 = W(tVar, xVar, i14);
            if (iW2 <= iW) {
                break;
            }
            i13 = i14;
            iW = iW2;
        }
        aVar.f13894b = i13;
    }

    private void S() {
        View[] viewArr = this.f13881d;
        if (viewArr == null || viewArr.length != this.f13879b) {
            this.f13881d = new View[this.f13879b];
        }
    }

    private int V(RecyclerView.t tVar, RecyclerView.x xVar, int i10) {
        if (!xVar.e()) {
            return this.f13884g.b(i10, this.f13879b);
        }
        int iF = tVar.f(i10);
        if (iF != -1) {
            return this.f13884g.b(iF, this.f13879b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i10);
        return 0;
    }

    private int W(RecyclerView.t tVar, RecyclerView.x xVar, int i10) {
        if (!xVar.e()) {
            return this.f13884g.c(i10, this.f13879b);
        }
        int i11 = this.f13883f.get(i10, -1);
        if (i11 != -1) {
            return i11;
        }
        int iF = tVar.f(i10);
        if (iF != -1) {
            return this.f13884g.c(iF, this.f13879b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i10);
        return 0;
    }

    private int X(RecyclerView.t tVar, RecyclerView.x xVar, int i10) {
        if (!xVar.e()) {
            return this.f13884g.f(i10);
        }
        int i11 = this.f13882e.get(i10, -1);
        if (i11 != -1) {
            return i11;
        }
        int iF = tVar.f(i10);
        if (iF != -1) {
            return this.f13884g.f(iF);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i10);
        return 1;
    }

    private void Z(float f10, int i10) {
        M(Math.max(Math.round(f10 * this.f13879b), i10));
    }

    private void a0(View view, int i10, boolean z10) {
        int childMeasureSpec;
        int childMeasureSpec2;
        b bVar = (b) view.getLayoutParams();
        Rect rect = bVar.mDecorInsets;
        int i11 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar).topMargin + ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        int i12 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar).leftMargin + ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        int iT = T(bVar.f13887a, bVar.f13888b);
        if (this.mOrientation == 1) {
            childMeasureSpec2 = RecyclerView.m.getChildMeasureSpec(iT, i10, i12, ((ViewGroup.MarginLayoutParams) bVar).width, false);
            childMeasureSpec = RecyclerView.m.getChildMeasureSpec(this.mOrientationHelper.n(), getHeightMode(), i11, ((ViewGroup.MarginLayoutParams) bVar).height, true);
        } else {
            int childMeasureSpec3 = RecyclerView.m.getChildMeasureSpec(iT, i10, i11, ((ViewGroup.MarginLayoutParams) bVar).height, false);
            int childMeasureSpec4 = RecyclerView.m.getChildMeasureSpec(this.mOrientationHelper.n(), getWidthMode(), i12, ((ViewGroup.MarginLayoutParams) bVar).width, true);
            childMeasureSpec = childMeasureSpec3;
            childMeasureSpec2 = childMeasureSpec4;
        }
        b0(view, childMeasureSpec2, childMeasureSpec, z10);
    }

    private void b0(View view, int i10, int i11, boolean z10) {
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        if (z10 ? shouldReMeasureChild(view, i10, i11, nVar) : shouldMeasureChild(view, i10, i11, nVar)) {
            view.measure(i10, i11);
        }
    }

    private void e0() {
        int height;
        int paddingTop;
        if (getOrientation() == 1) {
            height = getWidth() - getPaddingRight();
            paddingTop = getPaddingLeft();
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = getPaddingTop();
        }
        M(height - paddingTop);
    }

    int T(int i10, int i11) {
        if (this.mOrientation != 1 || !isLayoutRTL()) {
            int[] iArr = this.f13880c;
            return iArr[i11 + i10] - iArr[i10];
        }
        int[] iArr2 = this.f13880c;
        int i12 = this.f13879b;
        return iArr2[i12 - i10] - iArr2[(i12 - i10) - i11];
    }

    public int U() {
        return this.f13879b;
    }

    public c Y() {
        return this.f13884g;
    }

    public void c0(int i10) {
        if (i10 == this.f13879b) {
            return;
        }
        this.f13878a = true;
        if (i10 >= 1) {
            this.f13879b = i10;
            this.f13884g.h();
            requestLayout();
        } else {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i10);
        }
    }

    @Override
    public boolean checkLayoutParams(RecyclerView.n nVar) {
        return nVar instanceof b;
    }

    @Override
    void collectPrefetchPositionsForLayoutState(RecyclerView.x xVar, LinearLayoutManager.c cVar, RecyclerView.m.c cVar2) {
        int iF = this.f13879b;
        for (int i10 = 0; i10 < this.f13879b && cVar.c(xVar) && iF > 0; i10++) {
            int i11 = cVar.f13905d;
            cVar2.a(i11, Math.max(0, cVar.f13908g));
            iF -= this.f13884g.f(i11);
            cVar.f13905d += cVar.f13906e;
        }
    }

    @Override
    public int computeHorizontalScrollOffset(RecyclerView.x xVar) {
        return this.f13886i ? P(xVar) : super.computeHorizontalScrollOffset(xVar);
    }

    @Override
    public int computeHorizontalScrollRange(RecyclerView.x xVar) {
        return this.f13886i ? Q(xVar) : super.computeHorizontalScrollRange(xVar);
    }

    @Override
    public int computeVerticalScrollOffset(RecyclerView.x xVar) {
        return this.f13886i ? P(xVar) : super.computeVerticalScrollOffset(xVar);
    }

    @Override
    public int computeVerticalScrollRange(RecyclerView.x xVar) {
        return this.f13886i ? Q(xVar) : super.computeVerticalScrollRange(xVar);
    }

    public void d0(c cVar) {
        this.f13884g = cVar;
    }

    @Override
    View findReferenceChild(RecyclerView.t tVar, RecyclerView.x xVar, boolean z10, boolean z11) {
        int i10;
        int childCount;
        int childCount2 = getChildCount();
        int i11 = 1;
        if (z11) {
            childCount = getChildCount() - 1;
            i10 = -1;
            i11 = -1;
        } else {
            i10 = childCount2;
            childCount = 0;
        }
        int iB = xVar.b();
        ensureLayoutState();
        int iM = this.mOrientationHelper.m();
        int i12 = this.mOrientationHelper.i();
        View view = null;
        View view2 = null;
        while (childCount != i10) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            if (position >= 0 && position < iB && W(tVar, xVar, position) == 0) {
                if (((RecyclerView.n) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.mOrientationHelper.g(childAt) < i12 && this.mOrientationHelper.d(childAt) >= iM) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            childCount += i11;
        }
        return view != null ? view : view2;
    }

    @Override
    public RecyclerView.n generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new b(-2, -1) : new b(-1, -2);
    }

    @Override
    public RecyclerView.n generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    @Override
    public int getColumnCountForAccessibility(RecyclerView.t tVar, RecyclerView.x xVar) {
        if (this.mOrientation == 1) {
            return this.f13879b;
        }
        if (xVar.b() < 1) {
            return 0;
        }
        return V(tVar, xVar, xVar.b() - 1) + 1;
    }

    @Override
    public int getRowCountForAccessibility(RecyclerView.t tVar, RecyclerView.x xVar) {
        if (this.mOrientation == 0) {
            return this.f13879b;
        }
        if (xVar.b() < 1) {
            return 0;
        }
        return V(tVar, xVar, xVar.b() - 1) + 1;
    }

    @Override
    void layoutChunk(RecyclerView.t tVar, RecyclerView.x xVar, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int iF;
        int i15;
        int iF2;
        int iF3;
        int i16;
        int childMeasureSpec;
        int childMeasureSpec2;
        View viewD;
        int iL = this.mOrientationHelper.l();
        boolean z10 = iL != 1073741824;
        int i17 = getChildCount() > 0 ? this.f13880c[this.f13879b] : 0;
        if (z10) {
            e0();
        }
        boolean z11 = cVar.f13906e == 1;
        int iW = this.f13879b;
        if (!z11) {
            iW = W(tVar, xVar, cVar.f13905d) + X(tVar, xVar, cVar.f13905d);
        }
        int i18 = 0;
        while (i18 < this.f13879b && cVar.c(xVar) && iW > 0) {
            int i19 = cVar.f13905d;
            int iX = X(tVar, xVar, i19);
            if (iX > this.f13879b) {
                throw new IllegalArgumentException("Item at position " + i19 + " requires " + iX + " spans but GridLayoutManager has only " + this.f13879b + " spans.");
            }
            iW -= iX;
            if (iW < 0 || (viewD = cVar.d(tVar)) == null) {
                break;
            }
            this.f13881d[i18] = viewD;
            i18++;
        }
        if (i18 == 0) {
            bVar.f13899b = true;
            return;
        }
        K(tVar, xVar, i18, z11);
        float f10 = 0.0f;
        int i20 = 0;
        for (int i21 = 0; i21 < i18; i21++) {
            View view = this.f13881d[i21];
            if (cVar.f13913l == null) {
                if (z11) {
                    addView(view);
                } else {
                    addView(view, 0);
                }
            } else if (z11) {
                addDisappearingView(view);
            } else {
                addDisappearingView(view, 0);
            }
            calculateItemDecorationsForChild(view, this.f13885h);
            a0(view, iL, false);
            int iE = this.mOrientationHelper.e(view);
            if (iE > i20) {
                i20 = iE;
            }
            float f11 = (this.mOrientationHelper.f(view) * 1.0f) / ((b) view.getLayoutParams()).f13888b;
            if (f11 > f10) {
                f10 = f11;
            }
        }
        if (z10) {
            Z(f10, i17);
            i20 = 0;
            for (int i22 = 0; i22 < i18; i22++) {
                View view2 = this.f13881d[i22];
                a0(view2, 1073741824, true);
                int iE2 = this.mOrientationHelper.e(view2);
                if (iE2 > i20) {
                    i20 = iE2;
                }
            }
        }
        for (int i23 = 0; i23 < i18; i23++) {
            View view3 = this.f13881d[i23];
            if (this.mOrientationHelper.e(view3) != i20) {
                b bVar2 = (b) view3.getLayoutParams();
                Rect rect = bVar2.mDecorInsets;
                int i24 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar2).topMargin + ((ViewGroup.MarginLayoutParams) bVar2).bottomMargin;
                int i25 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar2).leftMargin + ((ViewGroup.MarginLayoutParams) bVar2).rightMargin;
                int iT = T(bVar2.f13887a, bVar2.f13888b);
                if (this.mOrientation == 1) {
                    childMeasureSpec2 = RecyclerView.m.getChildMeasureSpec(iT, 1073741824, i25, ((ViewGroup.MarginLayoutParams) bVar2).width, false);
                    childMeasureSpec = View.MeasureSpec.makeMeasureSpec(i20 - i24, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i20 - i25, 1073741824);
                    childMeasureSpec = RecyclerView.m.getChildMeasureSpec(iT, 1073741824, i24, ((ViewGroup.MarginLayoutParams) bVar2).height, false);
                    childMeasureSpec2 = iMakeMeasureSpec;
                }
                b0(view3, childMeasureSpec2, childMeasureSpec, true);
            }
        }
        bVar.f13898a = i20;
        if (this.mOrientation == 1) {
            if (cVar.f13907f == -1) {
                iF = cVar.f13903b;
                i16 = iF - i20;
            } else {
                i16 = cVar.f13903b;
                iF = i16 + i20;
            }
            i13 = i16;
            i14 = 0;
            i12 = 0;
        } else {
            if (cVar.f13907f == -1) {
                i11 = cVar.f13903b;
                i10 = i11 - i20;
            } else {
                i10 = cVar.f13903b;
                i11 = i10 + i20;
            }
            i12 = i10;
            i13 = 0;
            i14 = i11;
            iF = 0;
        }
        int i26 = 0;
        while (i26 < i18) {
            View view4 = this.f13881d[i26];
            b bVar3 = (b) view4.getLayoutParams();
            if (this.mOrientation == 1) {
                if (isLayoutRTL()) {
                    int paddingLeft = getPaddingLeft() + this.f13880c[this.f13879b - bVar3.f13887a];
                    iF2 = paddingLeft;
                    iF3 = paddingLeft - this.mOrientationHelper.f(view4);
                } else {
                    int paddingLeft2 = getPaddingLeft() + this.f13880c[bVar3.f13887a];
                    iF3 = paddingLeft2;
                    iF2 = this.mOrientationHelper.f(view4) + paddingLeft2;
                }
                i15 = i13;
            } else {
                int paddingTop = getPaddingTop() + this.f13880c[bVar3.f13887a];
                i15 = paddingTop;
                iF2 = i14;
                iF3 = i12;
                iF = this.mOrientationHelper.f(view4) + paddingTop;
            }
            layoutDecoratedWithMargins(view4, iF3, i15, iF2, iF);
            if (bVar3.isItemRemoved() || bVar3.isItemChanged()) {
                bVar.f13900c = true;
            }
            bVar.f13901d |= view4.hasFocusable();
            i26++;
            iF = iF;
            i14 = iF2;
            i12 = iF3;
            i13 = i15;
        }
        Arrays.fill(this.f13881d, (Object) null);
    }

    @Override
    void onAnchorReady(RecyclerView.t tVar, RecyclerView.x xVar, LinearLayoutManager.a aVar, int i10) {
        super.onAnchorReady(tVar, xVar, aVar, i10);
        e0();
        if (xVar.b() > 0 && !xVar.e()) {
            R(tVar, xVar, aVar, i10);
        }
        S();
    }

    /* JADX WARN: Code duplicated, block: B:72:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:73:0x010f  */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d1, code lost:
    
        if (r13 == (r2 > r15)) goto L47;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View onFocusSearchFailed(View view, int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        int childCount;
        int i11;
        int childCount2;
        View view2;
        View view3;
        int i12;
        int i13;
        int i14;
        int i15;
        RecyclerView.t tVar2 = tVar;
        RecyclerView.x xVar2 = xVar;
        View viewFindContainingItemView = findContainingItemView(view);
        View view4 = null;
        if (viewFindContainingItemView == null) {
            return null;
        }
        b bVar = (b) viewFindContainingItemView.getLayoutParams();
        int i16 = bVar.f13887a;
        int i17 = bVar.f13888b + i16;
        if (super.onFocusSearchFailed(view, i10, tVar, xVar) == null) {
            return null;
        }
        if ((convertFocusDirectionToLayoutDirection(i10) == 1) != this.mShouldReverseLayout) {
            childCount2 = getChildCount() - 1;
            childCount = -1;
            i11 = -1;
        } else {
            childCount = getChildCount();
            i11 = 1;
            childCount2 = 0;
        }
        boolean z10 = this.mOrientation == 1 && isLayoutRTL();
        int iV = V(tVar2, xVar2, childCount2);
        int i18 = -1;
        int i19 = -1;
        int iMin = 0;
        int iMin2 = 0;
        int i20 = childCount2;
        View view5 = null;
        while (i20 != childCount) {
            int iV2 = V(tVar2, xVar2, i20);
            View childAt = getChildAt(i20);
            if (childAt == viewFindContainingItemView) {
                break;
            }
            if (!childAt.hasFocusable() || iV2 == iV) {
                b bVar2 = (b) childAt.getLayoutParams();
                int i21 = bVar2.f13887a;
                view2 = viewFindContainingItemView;
                int i22 = bVar2.f13888b + i21;
                if (childAt.hasFocusable() && i21 == i16 && i22 == i17) {
                    return childAt;
                }
                if (!(childAt.hasFocusable() && view4 == null) && (childAt.hasFocusable() || view5 != null)) {
                    view3 = view5;
                    int iMin3 = Math.min(i22, i17) - Math.max(i21, i16);
                    if (!childAt.hasFocusable()) {
                        if (view4 == null) {
                            i12 = iMin;
                            i13 = childCount;
                            if (isViewPartiallyVisible(childAt, false, true)) {
                                i14 = iMin2;
                                if (iMin3 > i14) {
                                    i15 = i19;
                                } else if (iMin3 == i14) {
                                    i15 = i19;
                                    if (z10 == (i21 > i15)) {
                                    }
                                    i20 += i11;
                                    tVar2 = tVar;
                                    xVar2 = xVar;
                                    viewFindContainingItemView = view2;
                                    childCount = i13;
                                } else {
                                    i15 = i19;
                                }
                                if (childAt.hasFocusable()) {
                                    i18 = bVar2.f13887a;
                                    i19 = i15;
                                    iMin2 = i14;
                                    view5 = view3;
                                    view4 = childAt;
                                    iMin = Math.min(i22, i17) - Math.max(i21, i16);
                                } else {
                                    int i23 = bVar2.f13887a;
                                    iMin2 = Math.min(i22, i17) - Math.max(i21, i16);
                                    i19 = i23;
                                    iMin = i12;
                                    view5 = childAt;
                                }
                                i20 += i11;
                                tVar2 = tVar;
                                xVar2 = xVar;
                                viewFindContainingItemView = view2;
                                childCount = i13;
                            }
                            i19 = i15;
                            iMin2 = i14;
                            iMin = i12;
                            view5 = view3;
                            i20 += i11;
                            tVar2 = tVar;
                            xVar2 = xVar;
                            viewFindContainingItemView = view2;
                            childCount = i13;
                        }
                        i15 = i19;
                        i14 = iMin2;
                        i19 = i15;
                        iMin2 = i14;
                        iMin = i12;
                        view5 = view3;
                        i20 += i11;
                        tVar2 = tVar;
                        xVar2 = xVar;
                        viewFindContainingItemView = view2;
                        childCount = i13;
                    } else if (iMin3 <= iMin) {
                        if (iMin3 == iMin) {
                        }
                    }
                } else {
                    view3 = view5;
                }
                i12 = iMin;
                i13 = childCount;
                i15 = i19;
                i14 = iMin2;
                if (childAt.hasFocusable()) {
                    i18 = bVar2.f13887a;
                    i19 = i15;
                    iMin2 = i14;
                    view5 = view3;
                    view4 = childAt;
                    iMin = Math.min(i22, i17) - Math.max(i21, i16);
                } else {
                    int i24 = bVar2.f13887a;
                    iMin2 = Math.min(i22, i17) - Math.max(i21, i16);
                    i19 = i24;
                    iMin = i12;
                    view5 = childAt;
                }
                i20 += i11;
                tVar2 = tVar;
                xVar2 = xVar;
                viewFindContainingItemView = view2;
                childCount = i13;
            } else {
                if (view4 != null) {
                    break;
                }
                view2 = viewFindContainingItemView;
                view3 = view5;
            }
            i12 = iMin;
            i13 = childCount;
            i15 = i19;
            i14 = iMin2;
            i19 = i15;
            iMin2 = i14;
            iMin = i12;
            view5 = view3;
            i20 += i11;
            tVar2 = tVar;
            xVar2 = xVar;
            viewFindContainingItemView = view2;
            childCount = i13;
        }
        return view4 != null ? view4 : view5;
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(RecyclerView.t tVar, RecyclerView.x xVar, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(tVar, xVar, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName(GridView.class.getName());
    }

    @Override
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.t tVar, RecyclerView.x xVar, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, accessibilityNodeInfoCompat);
            return;
        }
        b bVar = (b) layoutParams;
        int iV = V(tVar, xVar, bVar.getViewLayoutPosition());
        if (this.mOrientation == 0) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(bVar.a(), bVar.b(), iV, 1, false, false));
        } else {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(iV, 1, bVar.a(), bVar.b(), false, false));
        }
    }

    @Override
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        this.f13884g.h();
        this.f13884g.g();
    }

    @Override
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f13884g.h();
        this.f13884g.g();
    }

    @Override
    public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        this.f13884g.h();
        this.f13884g.g();
    }

    @Override
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        this.f13884g.h();
        this.f13884g.g();
    }

    @Override
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
        this.f13884g.h();
        this.f13884g.g();
    }

    @Override
    public void onLayoutChildren(RecyclerView.t tVar, RecyclerView.x xVar) {
        if (xVar.e()) {
            L();
        }
        super.onLayoutChildren(tVar, xVar);
        O();
    }

    @Override
    public void onLayoutCompleted(RecyclerView.x xVar) {
        super.onLayoutCompleted(xVar);
        this.f13878a = false;
    }

    @Override
    public int scrollHorizontallyBy(int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        e0();
        S();
        return super.scrollHorizontallyBy(i10, tVar, xVar);
    }

    @Override
    public int scrollVerticallyBy(int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        e0();
        S();
        return super.scrollVerticallyBy(i10, tVar, xVar);
    }

    @Override
    public void setMeasuredDimension(Rect rect, int i10, int i11) {
        int iChooseSize;
        int iChooseSize2;
        if (this.f13880c == null) {
            super.setMeasuredDimension(rect, i10, i11);
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == 1) {
            iChooseSize2 = RecyclerView.m.chooseSize(i11, rect.height() + paddingTop, getMinimumHeight());
            int[] iArr = this.f13880c;
            iChooseSize = RecyclerView.m.chooseSize(i10, iArr[iArr.length - 1] + paddingLeft, getMinimumWidth());
        } else {
            iChooseSize = RecyclerView.m.chooseSize(i10, rect.width() + paddingLeft, getMinimumWidth());
            int[] iArr2 = this.f13880c;
            iChooseSize2 = RecyclerView.m.chooseSize(i11, iArr2[iArr2.length - 1] + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    @Override
    public void setStackFromEnd(boolean z10) {
        if (z10) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    @Override
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.f13878a;
    }

    @Override
    public RecyclerView.n generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    public static class b extends RecyclerView.n {

        int f13887a;

        int f13888b;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f13887a = -1;
            this.f13888b = 0;
        }

        public int a() {
            return this.f13887a;
        }

        public int b() {
            return this.f13888b;
        }

        public b(int i10, int i11) {
            super(i10, i11);
            this.f13887a = -1;
            this.f13888b = 0;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f13887a = -1;
            this.f13888b = 0;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f13887a = -1;
            this.f13888b = 0;
        }
    }

    public GridLayoutManager(Context context, int i10) {
        super(context);
        this.f13878a = false;
        this.f13879b = -1;
        this.f13882e = new SparseIntArray();
        this.f13883f = new SparseIntArray();
        this.f13884g = new a();
        this.f13885h = new Rect();
        c0(i10);
    }

    public GridLayoutManager(Context context, int i10, int i11, boolean z10) {
        super(context, i11, z10);
        this.f13878a = false;
        this.f13879b = -1;
        this.f13882e = new SparseIntArray();
        this.f13883f = new SparseIntArray();
        this.f13884g = new a();
        this.f13885h = new Rect();
        c0(i10);
    }
}
