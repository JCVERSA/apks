package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

public class StaggeredGridLayoutManager extends RecyclerView.m implements RecyclerView.w.b {

    c[] f13980b;

    m f13981c;

    m f13982d;

    private int f13983e;

    private int f13984f;

    private final g f13985g;

    private BitSet f13988j;

    private boolean f13993o;

    private boolean f13994p;

    private SavedState f13995q;

    private int f13996r;

    private int[] f14001w;

    private int f13979a = -1;

    boolean f13986h = false;

    boolean f13987i = false;

    int f13989k = -1;

    int f13990l = Integer.MIN_VALUE;

    LazySpanLookup f13991m = new LazySpanLookup();

    private int f13992n = 2;

    private final Rect f13997s = new Rect();

    private final a f13998t = new a();

    private boolean f13999u = false;

    private boolean f14000v = true;

    private final Runnable f14002x = new Runnable() {
        @Override
        public void run() {
            StaggeredGridLayoutManager.this.q();
        }
    };

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        boolean mAnchorLayoutFromEnd;
        int mAnchorPosition;
        List<LazySpanLookup.FullSpanItem> mFullSpanItems;
        boolean mLastLayoutRTL;
        boolean mReverseLayout;
        int[] mSpanLookup;
        int mSpanLookupSize;
        int[] mSpanOffsets;
        int mSpanOffsetsSize;
        int mVisibleAnchorPosition;

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

        public SavedState() {
        }

        @Override
        public int describeContents() {
            return 0;
        }

        void invalidateAnchorPositionInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mAnchorPosition = -1;
            this.mVisibleAnchorPosition = -1;
        }

        void invalidateSpanInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mSpanLookupSize = 0;
            this.mSpanLookup = null;
            this.mFullSpanItems = null;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mVisibleAnchorPosition);
            parcel.writeInt(this.mSpanOffsetsSize);
            if (this.mSpanOffsetsSize > 0) {
                parcel.writeIntArray(this.mSpanOffsets);
            }
            parcel.writeInt(this.mSpanLookupSize);
            if (this.mSpanLookupSize > 0) {
                parcel.writeIntArray(this.mSpanLookup);
            }
            parcel.writeInt(this.mReverseLayout ? 1 : 0);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
            parcel.writeInt(this.mLastLayoutRTL ? 1 : 0);
            parcel.writeList(this.mFullSpanItems);
        }

        SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mVisibleAnchorPosition = parcel.readInt();
            int i10 = parcel.readInt();
            this.mSpanOffsetsSize = i10;
            if (i10 > 0) {
                int[] iArr = new int[i10];
                this.mSpanOffsets = iArr;
                parcel.readIntArray(iArr);
            }
            int i11 = parcel.readInt();
            this.mSpanLookupSize = i11;
            if (i11 > 0) {
                int[] iArr2 = new int[i11];
                this.mSpanLookup = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.mReverseLayout = parcel.readInt() == 1;
            this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
            this.mLastLayoutRTL = parcel.readInt() == 1;
            this.mFullSpanItems = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.mSpanOffsetsSize = savedState.mSpanOffsetsSize;
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mVisibleAnchorPosition = savedState.mVisibleAnchorPosition;
            this.mSpanOffsets = savedState.mSpanOffsets;
            this.mSpanLookupSize = savedState.mSpanLookupSize;
            this.mSpanLookup = savedState.mSpanLookup;
            this.mReverseLayout = savedState.mReverseLayout;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
            this.mLastLayoutRTL = savedState.mLastLayoutRTL;
            this.mFullSpanItems = savedState.mFullSpanItems;
        }
    }

    class a {

        int f14009a;

        int f14010b;

        boolean f14011c;

        boolean f14012d;

        boolean f14013e;

        int[] f14014f;

        a() {
            c();
        }

        void a() {
            this.f14010b = this.f14011c ? StaggeredGridLayoutManager.this.f13981c.i() : StaggeredGridLayoutManager.this.f13981c.m();
        }

        void b(int i10) {
            if (this.f14011c) {
                this.f14010b = StaggeredGridLayoutManager.this.f13981c.i() - i10;
            } else {
                this.f14010b = StaggeredGridLayoutManager.this.f13981c.m() + i10;
            }
        }

        void c() {
            this.f14009a = -1;
            this.f14010b = Integer.MIN_VALUE;
            this.f14011c = false;
            this.f14012d = false;
            this.f14013e = false;
            int[] iArr = this.f14014f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        void d(c[] cVarArr) {
            int length = cVarArr.length;
            int[] iArr = this.f14014f;
            if (iArr == null || iArr.length < length) {
                this.f14014f = new int[StaggeredGridLayoutManager.this.f13980b.length];
            }
            for (int i10 = 0; i10 < length; i10++) {
                this.f14014f[i10] = cVarArr[i10].t(Integer.MIN_VALUE);
            }
        }
    }

    public static class b extends RecyclerView.n {

        c f14016a;

        boolean f14017b;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public final int a() {
            c cVar = this.f14016a;
            if (cVar == null) {
                return -1;
            }
            return cVar.f14022e;
        }

        public boolean b() {
            return this.f14017b;
        }

        public void c(boolean z10) {
            this.f14017b = z10;
        }

        public b(int i10, int i11) {
            super(i10, i11);
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    class c {

        ArrayList f14018a = new ArrayList();

        int f14019b = Integer.MIN_VALUE;

        int f14020c = Integer.MIN_VALUE;

        int f14021d = 0;

        final int f14022e;

        c(int i10) {
            this.f14022e = i10;
        }

        void a(View view) {
            b bVarR = r(view);
            bVarR.f14016a = this;
            this.f14018a.add(view);
            this.f14020c = Integer.MIN_VALUE;
            if (this.f14018a.size() == 1) {
                this.f14019b = Integer.MIN_VALUE;
            }
            if (bVarR.isItemRemoved() || bVarR.isItemChanged()) {
                this.f14021d += StaggeredGridLayoutManager.this.f13981c.e(view);
            }
        }

        void b(boolean z10, int i10) {
            int iP = z10 ? p(Integer.MIN_VALUE) : t(Integer.MIN_VALUE);
            e();
            if (iP == Integer.MIN_VALUE) {
                return;
            }
            if (!z10 || iP >= StaggeredGridLayoutManager.this.f13981c.i()) {
                if (z10 || iP <= StaggeredGridLayoutManager.this.f13981c.m()) {
                    if (i10 != Integer.MIN_VALUE) {
                        iP += i10;
                    }
                    this.f14020c = iP;
                    this.f14019b = iP;
                }
            }
        }

        void c() {
            LazySpanLookup.FullSpanItem fullSpanItemF;
            ArrayList arrayList = this.f14018a;
            View view = (View) arrayList.get(arrayList.size() - 1);
            b bVarR = r(view);
            this.f14020c = StaggeredGridLayoutManager.this.f13981c.d(view);
            if (bVarR.f14017b && (fullSpanItemF = StaggeredGridLayoutManager.this.f13991m.f(bVarR.getViewLayoutPosition())) != null && fullSpanItemF.f14006b == 1) {
                this.f14020c += fullSpanItemF.a(this.f14022e);
            }
        }

        void d() {
            LazySpanLookup.FullSpanItem fullSpanItemF;
            View view = (View) this.f14018a.get(0);
            b bVarR = r(view);
            this.f14019b = StaggeredGridLayoutManager.this.f13981c.g(view);
            if (bVarR.f14017b && (fullSpanItemF = StaggeredGridLayoutManager.this.f13991m.f(bVarR.getViewLayoutPosition())) != null && fullSpanItemF.f14006b == -1) {
                this.f14019b -= fullSpanItemF.a(this.f14022e);
            }
        }

        void e() {
            this.f14018a.clear();
            u();
            this.f14021d = 0;
        }

        public int f() {
            return StaggeredGridLayoutManager.this.f13986h ? l(this.f14018a.size() - 1, -1, true) : l(0, this.f14018a.size(), true);
        }

        public int g() {
            return StaggeredGridLayoutManager.this.f13986h ? m(this.f14018a.size() - 1, -1, false) : m(0, this.f14018a.size(), false);
        }

        public int h() {
            return StaggeredGridLayoutManager.this.f13986h ? m(0, this.f14018a.size(), true) : m(this.f14018a.size() - 1, -1, true);
        }

        public int i() {
            return StaggeredGridLayoutManager.this.f13986h ? l(0, this.f14018a.size(), true) : l(this.f14018a.size() - 1, -1, true);
        }

        public int j() {
            return StaggeredGridLayoutManager.this.f13986h ? m(0, this.f14018a.size(), false) : m(this.f14018a.size() - 1, -1, false);
        }

        int k(int i10, int i11, boolean z10, boolean z11, boolean z12) {
            int iM = StaggeredGridLayoutManager.this.f13981c.m();
            int i12 = StaggeredGridLayoutManager.this.f13981c.i();
            int i13 = i11 > i10 ? 1 : -1;
            while (i10 != i11) {
                View view = (View) this.f14018a.get(i10);
                int iG = StaggeredGridLayoutManager.this.f13981c.g(view);
                int iD = StaggeredGridLayoutManager.this.f13981c.d(view);
                boolean z13 = false;
                boolean z14 = !z12 ? iG >= i12 : iG > i12;
                if (!z12 ? iD > iM : iD >= iM) {
                    z13 = true;
                }
                if (z14 && z13) {
                    if (z10 && z11) {
                        if (iG >= iM && iD <= i12) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    } else {
                        if (z11) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                        if (iG < iM || iD > i12) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    }
                }
                i10 += i13;
            }
            return -1;
        }

        int l(int i10, int i11, boolean z10) {
            return k(i10, i11, false, false, z10);
        }

        int m(int i10, int i11, boolean z10) {
            return k(i10, i11, z10, true, false);
        }

        public int n() {
            return this.f14021d;
        }

        int o() {
            int i10 = this.f14020c;
            if (i10 != Integer.MIN_VALUE) {
                return i10;
            }
            c();
            return this.f14020c;
        }

        int p(int i10) {
            int i11 = this.f14020c;
            if (i11 != Integer.MIN_VALUE) {
                return i11;
            }
            if (this.f14018a.size() == 0) {
                return i10;
            }
            c();
            return this.f14020c;
        }

        public View q(int i10, int i11) {
            View view = null;
            if (i11 != -1) {
                int size = this.f14018a.size() - 1;
                while (size >= 0) {
                    View view2 = (View) this.f14018a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.f13986h && staggeredGridLayoutManager.getPosition(view2) >= i10) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.f13986h && staggeredGridLayoutManager2.getPosition(view2) <= i10) || !view2.hasFocusable()) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = this.f14018a.size();
                int i12 = 0;
                while (i12 < size2) {
                    View view3 = (View) this.f14018a.get(i12);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.f13986h && staggeredGridLayoutManager3.getPosition(view3) <= i10) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.f13986h && staggeredGridLayoutManager4.getPosition(view3) >= i10) || !view3.hasFocusable()) {
                        break;
                    }
                    i12++;
                    view = view3;
                }
            }
            return view;
        }

        b r(View view) {
            return (b) view.getLayoutParams();
        }

        int s() {
            int i10 = this.f14019b;
            if (i10 != Integer.MIN_VALUE) {
                return i10;
            }
            d();
            return this.f14019b;
        }

        int t(int i10) {
            int i11 = this.f14019b;
            if (i11 != Integer.MIN_VALUE) {
                return i11;
            }
            if (this.f14018a.size() == 0) {
                return i10;
            }
            d();
            return this.f14019b;
        }

        void u() {
            this.f14019b = Integer.MIN_VALUE;
            this.f14020c = Integer.MIN_VALUE;
        }

        void v(int i10) {
            int i11 = this.f14019b;
            if (i11 != Integer.MIN_VALUE) {
                this.f14019b = i11 + i10;
            }
            int i12 = this.f14020c;
            if (i12 != Integer.MIN_VALUE) {
                this.f14020c = i12 + i10;
            }
        }

        void w() {
            int size = this.f14018a.size();
            View view = (View) this.f14018a.remove(size - 1);
            b bVarR = r(view);
            bVarR.f14016a = null;
            if (bVarR.isItemRemoved() || bVarR.isItemChanged()) {
                this.f14021d -= StaggeredGridLayoutManager.this.f13981c.e(view);
            }
            if (size == 1) {
                this.f14019b = Integer.MIN_VALUE;
            }
            this.f14020c = Integer.MIN_VALUE;
        }

        void x() {
            View view = (View) this.f14018a.remove(0);
            b bVarR = r(view);
            bVarR.f14016a = null;
            if (this.f14018a.size() == 0) {
                this.f14020c = Integer.MIN_VALUE;
            }
            if (bVarR.isItemRemoved() || bVarR.isItemChanged()) {
                this.f14021d -= StaggeredGridLayoutManager.this.f13981c.e(view);
            }
            this.f14019b = Integer.MIN_VALUE;
        }

        void y(View view) {
            b bVarR = r(view);
            bVarR.f14016a = this;
            this.f14018a.add(0, view);
            this.f14019b = Integer.MIN_VALUE;
            if (this.f14018a.size() == 1) {
                this.f14020c = Integer.MIN_VALUE;
            }
            if (bVarR.isItemRemoved() || bVarR.isItemChanged()) {
                this.f14021d += StaggeredGridLayoutManager.this.f13981c.e(view);
            }
        }

        void z(int i10) {
            this.f14019b = i10;
            this.f14020c = i10;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        RecyclerView.m.d properties = RecyclerView.m.getProperties(context, attributeSet, i10, i11);
        setOrientation(properties.f13926a);
        h0(properties.f13927b);
        setReverseLayout(properties.f13928c);
        this.f13985g = new g();
        x();
    }

    private int F(int i10) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            int position = getPosition(getChildAt(childCount));
            if (position >= 0 && position < i10) {
                return position;
            }
        }
        return 0;
    }

    private void H(RecyclerView.t tVar, RecyclerView.x xVar, boolean z10) {
        int i10;
        int iL = L(Integer.MIN_VALUE);
        if (iL != Integer.MIN_VALUE && (i10 = this.f13981c.i() - iL) > 0) {
            int i11 = i10 - (-scrollBy(-i10, tVar, xVar));
            if (!z10 || i11 <= 0) {
                return;
            }
            this.f13981c.r(i11);
        }
    }

    private void I(RecyclerView.t tVar, RecyclerView.x xVar, boolean z10) {
        int iM;
        int iO = O(Integer.MAX_VALUE);
        if (iO != Integer.MAX_VALUE && (iM = iO - this.f13981c.m()) > 0) {
            int iScrollBy = iM - scrollBy(iM, tVar, xVar);
            if (!z10 || iScrollBy <= 0) {
                return;
            }
            this.f13981c.r(-iScrollBy);
        }
    }

    private int L(int i10) {
        int iP = this.f13980b[0].p(i10);
        for (int i11 = 1; i11 < this.f13979a; i11++) {
            int iP2 = this.f13980b[i11].p(i10);
            if (iP2 > iP) {
                iP = iP2;
            }
        }
        return iP;
    }

    private int M(int i10) {
        int iT = this.f13980b[0].t(i10);
        for (int i11 = 1; i11 < this.f13979a; i11++) {
            int iT2 = this.f13980b[i11].t(i10);
            if (iT2 > iT) {
                iT = iT2;
            }
        }
        return iT;
    }

    private int N(int i10) {
        int iP = this.f13980b[0].p(i10);
        for (int i11 = 1; i11 < this.f13979a; i11++) {
            int iP2 = this.f13980b[i11].p(i10);
            if (iP2 < iP) {
                iP = iP2;
            }
        }
        return iP;
    }

    private int O(int i10) {
        int iT = this.f13980b[0].t(i10);
        for (int i11 = 1; i11 < this.f13979a; i11++) {
            int iT2 = this.f13980b[i11].t(i10);
            if (iT2 < iT) {
                iT = iT2;
            }
        }
        return iT;
    }

    private c P(g gVar) {
        int i10;
        int i11;
        int i12;
        if (X(gVar.f14070e)) {
            i11 = this.f13979a - 1;
            i10 = -1;
            i12 = -1;
        } else {
            i10 = this.f13979a;
            i11 = 0;
            i12 = 1;
        }
        c cVar = null;
        if (gVar.f14070e == 1) {
            int iM = this.f13981c.m();
            int i13 = Integer.MAX_VALUE;
            while (i11 != i10) {
                c cVar2 = this.f13980b[i11];
                int iP = cVar2.p(iM);
                if (iP < i13) {
                    cVar = cVar2;
                    i13 = iP;
                }
                i11 += i12;
            }
            return cVar;
        }
        int i14 = this.f13981c.i();
        int i15 = Integer.MIN_VALUE;
        while (i11 != i10) {
            c cVar3 = this.f13980b[i11];
            int iT = cVar3.t(i14);
            if (iT > i15) {
                cVar = cVar3;
                i15 = iT;
            }
            i11 += i12;
        }
        return cVar;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0026  */
    /* JADX WARN: Code duplicated, block: B:17:0x0029 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x002c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0037  */
    /* JADX WARN: Code duplicated, block: B:21:0x003d  */
    /* JADX WARN: Code duplicated, block: B:23:0x0044 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0045  */
    /* JADX WARN: Code duplicated, block: B:26:0x0049  */
    /* JADX WARN: Code duplicated, block: B:27:0x004e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0054  */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    private void R(int i10, int i11, int i12) {
        int i13;
        int i14;
        int iK;
        int iK2 = this.f13987i ? K() : J();
        if (i12 == 8) {
            if (i10 < i11) {
                i13 = i11 + 1;
            } else {
                i13 = i10 + 1;
                i14 = i11;
            }
            this.f13991m.h(i14);
            if (i12 != 1) {
                this.f13991m.j(i10, i11);
            } else if (i12 != 2) {
                this.f13991m.k(i10, i11);
            } else if (i12 == 8) {
                this.f13991m.k(i10, 1);
                this.f13991m.j(i11, 1);
            }
            if (i13 <= iK2) {
                return;
            }
            if (this.f13987i) {
                iK = J();
            } else {
                iK = K();
            }
            if (i14 <= iK) {
                requestLayout();
            }
        }
        i13 = i10 + i11;
        i14 = i10;
        this.f13991m.h(i14);
        if (i12 != 1) {
            this.f13991m.j(i10, i11);
        } else if (i12 != 2) {
            this.f13991m.k(i10, i11);
        } else if (i12 == 8) {
            this.f13991m.k(i10, 1);
            this.f13991m.j(i11, 1);
        }
        if (i13 <= iK2) {
            return;
        }
        if (this.f13987i) {
            iK = J();
        } else {
            iK = K();
        }
        if (i14 <= iK) {
            requestLayout();
        }
    }

    private void U(View view, int i10, int i11, boolean z10) {
        calculateItemDecorationsForChild(view, this.f13997s);
        b bVar = (b) view.getLayoutParams();
        int i12 = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
        Rect rect = this.f13997s;
        int iP0 = p0(i10, i12 + rect.left, ((ViewGroup.MarginLayoutParams) bVar).rightMargin + rect.right);
        int i13 = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
        Rect rect2 = this.f13997s;
        int iP1 = p0(i11, i13 + rect2.top, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin + rect2.bottom);
        if (z10 ? shouldReMeasureChild(view, iP0, iP1, bVar) : shouldMeasureChild(view, iP0, iP1, bVar)) {
            view.measure(iP0, iP1);
        }
    }

    private void V(View view, b bVar, boolean z10) {
        if (bVar.f14017b) {
            if (this.f13983e == 1) {
                U(view, this.f13996r, RecyclerView.m.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) bVar).height, true), z10);
                return;
            } else {
                U(view, RecyclerView.m.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) bVar).width, true), this.f13996r, z10);
                return;
            }
        }
        if (this.f13983e == 1) {
            U(view, RecyclerView.m.getChildMeasureSpec(this.f13984f, getWidthMode(), 0, ((ViewGroup.MarginLayoutParams) bVar).width, false), RecyclerView.m.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) bVar).height, true), z10);
        } else {
            U(view, RecyclerView.m.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) bVar).width, true), RecyclerView.m.getChildMeasureSpec(this.f13984f, getHeightMode(), 0, ((ViewGroup.MarginLayoutParams) bVar).height, false), z10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:86:0x0155  */
    private void W(RecyclerView.t tVar, RecyclerView.x xVar, boolean z10) {
        boolean z11;
        SavedState savedState;
        a aVar = this.f13998t;
        if (!(this.f13995q == null && this.f13989k == -1) && xVar.b() == 0) {
            removeAndRecycleAllViews(tVar);
            aVar.c();
            return;
        }
        boolean z12 = (aVar.f14013e && this.f13989k == -1 && this.f13995q == null) ? false : true;
        if (z12) {
            aVar.c();
            if (this.f13995q != null) {
                l(aVar);
            } else {
                e0();
                aVar.f14011c = this.f13987i;
            }
            l0(xVar, aVar);
            aVar.f14013e = true;
        }
        if (this.f13995q == null && this.f13989k == -1 && (aVar.f14011c != this.f13993o || isLayoutRTL() != this.f13994p)) {
            this.f13991m.b();
            aVar.f14012d = true;
        }
        if (getChildCount() > 0 && ((savedState = this.f13995q) == null || savedState.mSpanOffsetsSize < 1)) {
            if (aVar.f14012d) {
                for (int i10 = 0; i10 < this.f13979a; i10++) {
                    this.f13980b[i10].e();
                    int i11 = aVar.f14010b;
                    if (i11 != Integer.MIN_VALUE) {
                        this.f13980b[i10].z(i11);
                    }
                }
            } else if (z12 || this.f13998t.f14014f == null) {
                for (int i12 = 0; i12 < this.f13979a; i12++) {
                    this.f13980b[i12].b(this.f13987i, aVar.f14010b);
                }
                this.f13998t.d(this.f13980b);
            } else {
                for (int i13 = 0; i13 < this.f13979a; i13++) {
                    c cVar = this.f13980b[i13];
                    cVar.e();
                    cVar.z(this.f13998t.f14014f[i13]);
                }
            }
        }
        detachAndScrapAttachedViews(tVar);
        this.f13985g.f14066a = false;
        this.f13999u = false;
        n0(this.f13982d.n());
        m0(aVar.f14009a, xVar);
        if (aVar.f14011c) {
            g0(-1);
            y(tVar, this.f13985g, xVar);
            g0(1);
            g gVar = this.f13985g;
            gVar.f14068c = aVar.f14009a + gVar.f14069d;
            y(tVar, gVar, xVar);
        } else {
            g0(1);
            y(tVar, this.f13985g, xVar);
            g0(-1);
            g gVar2 = this.f13985g;
            gVar2.f14068c = aVar.f14009a + gVar2.f14069d;
            y(tVar, gVar2, xVar);
        }
        d0();
        if (getChildCount() > 0) {
            if (this.f13987i) {
                H(tVar, xVar, true);
                I(tVar, xVar, false);
            } else {
                I(tVar, xVar, true);
                H(tVar, xVar, false);
            }
        }
        if (z10 && !xVar.e() && this.f13992n != 0 && getChildCount() > 0 && (this.f13999u || S() != null)) {
            removeCallbacks(this.f14002x);
            z11 = q();
        }
        if (xVar.e()) {
            this.f13998t.c();
        }
        this.f13993o = aVar.f14011c;
        this.f13994p = isLayoutRTL();
        if (z11) {
            this.f13998t.c();
            W(tVar, xVar, false);
        }
    }

    private boolean X(int i10) {
        if (this.f13983e == 0) {
            return (i10 == -1) != this.f13987i;
        }
        return ((i10 == -1) == this.f13987i) == isLayoutRTL();
    }

    private void Z(View view) {
        for (int i10 = this.f13979a - 1; i10 >= 0; i10--) {
            this.f13980b[i10].y(view);
        }
    }

    private void a0(RecyclerView.t tVar, g gVar) {
        int iMin;
        if (!gVar.f14066a || gVar.f14074i) {
            return;
        }
        if (gVar.f14067b == 0) {
            if (gVar.f14070e == -1) {
                b0(tVar, gVar.f14072g);
                return;
            } else {
                c0(tVar, gVar.f14071f);
                return;
            }
        }
        if (gVar.f14070e == -1) {
            int i10 = gVar.f14071f;
            int iM = i10 - M(i10);
            b0(tVar, iM < 0 ? gVar.f14072g : gVar.f14072g - Math.min(iM, gVar.f14067b));
        } else {
            int iN = N(gVar.f14072g) - gVar.f14072g;
            if (iN < 0) {
                iMin = gVar.f14071f;
            } else {
                iMin = Math.min(iN, gVar.f14067b) + gVar.f14071f;
            }
            c0(tVar, iMin);
        }
    }

    private void b0(RecyclerView.t tVar, int i10) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.f13981c.g(childAt) < i10 || this.f13981c.q(childAt) < i10) {
                return;
            }
            b bVar = (b) childAt.getLayoutParams();
            if (bVar.f14017b) {
                for (int i11 = 0; i11 < this.f13979a; i11++) {
                    if (this.f13980b[i11].f14018a.size() == 1) {
                        return;
                    }
                }
                for (int i12 = 0; i12 < this.f13979a; i12++) {
                    this.f13980b[i12].w();
                }
            } else if (bVar.f14016a.f14018a.size() == 1) {
                return;
            } else {
                bVar.f14016a.w();
            }
            removeAndRecycleView(childAt, tVar);
        }
    }

    private void c0(RecyclerView.t tVar, int i10) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.f13981c.d(childAt) > i10 || this.f13981c.p(childAt) > i10) {
                return;
            }
            b bVar = (b) childAt.getLayoutParams();
            if (bVar.f14017b) {
                for (int i11 = 0; i11 < this.f13979a; i11++) {
                    if (this.f13980b[i11].f14018a.size() == 1) {
                        return;
                    }
                }
                for (int i12 = 0; i12 < this.f13979a; i12++) {
                    this.f13980b[i12].x();
                }
            } else if (bVar.f14016a.f14018a.size() == 1) {
                return;
            } else {
                bVar.f14016a.x();
            }
            removeAndRecycleView(childAt, tVar);
        }
    }

    private int convertFocusDirectionToLayoutDirection(int i10) {
        if (i10 == 1) {
            return (this.f13983e != 1 && isLayoutRTL()) ? 1 : -1;
        }
        if (i10 == 2) {
            return (this.f13983e != 1 && isLayoutRTL()) ? -1 : 1;
        }
        if (i10 == 17) {
            return this.f13983e == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i10 == 33) {
            return this.f13983e == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i10 != 66) {
            return (i10 == 130 && this.f13983e == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.f13983e == 0 ? 1 : Integer.MIN_VALUE;
    }

    private void d0() {
        if (this.f13982d.k() == 1073741824) {
            return;
        }
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            float fE = this.f13982d.e(childAt);
            if (fE >= fMax) {
                if (((b) childAt.getLayoutParams()).b()) {
                    fE = (fE * 1.0f) / this.f13979a;
                }
                fMax = Math.max(fMax, fE);
            }
        }
        int i11 = this.f13984f;
        int iRound = Math.round(fMax * this.f13979a);
        if (this.f13982d.k() == Integer.MIN_VALUE) {
            iRound = Math.min(iRound, this.f13982d.n());
        }
        n0(iRound);
        if (this.f13984f == i11) {
            return;
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getChildAt(i12);
            b bVar = (b) childAt2.getLayoutParams();
            if (!bVar.f14017b) {
                if (isLayoutRTL() && this.f13983e == 1) {
                    int i13 = this.f13979a;
                    int i14 = bVar.f14016a.f14022e;
                    childAt2.offsetLeftAndRight(((-((i13 - 1) - i14)) * this.f13984f) - ((-((i13 - 1) - i14)) * i11));
                } else {
                    int i15 = bVar.f14016a.f14022e;
                    int i16 = this.f13984f * i15;
                    int i17 = i15 * i11;
                    if (this.f13983e == 1) {
                        childAt2.offsetLeftAndRight(i16 - i17);
                    } else {
                        childAt2.offsetTopAndBottom(i16 - i17);
                    }
                }
            }
        }
    }

    private void e0() {
        if (this.f13983e == 1 || !isLayoutRTL()) {
            this.f13987i = this.f13986h;
        } else {
            this.f13987i = !this.f13986h;
        }
    }

    private void g0(int i10) {
        g gVar = this.f13985g;
        gVar.f14070e = i10;
        gVar.f14069d = this.f13987i != (i10 == -1) ? -1 : 1;
    }

    private void i0(int i10, int i11) {
        for (int i12 = 0; i12 < this.f13979a; i12++) {
            if (!this.f13980b[i12].f14018a.isEmpty()) {
                o0(this.f13980b[i12], i10, i11);
            }
        }
    }

    private boolean j0(RecyclerView.x xVar, a aVar) {
        aVar.f14009a = this.f13993o ? F(xVar.b()) : z(xVar.b());
        aVar.f14010b = Integer.MIN_VALUE;
        return true;
    }

    private void k(View view) {
        for (int i10 = this.f13979a - 1; i10 >= 0; i10--) {
            this.f13980b[i10].a(view);
        }
    }

    private void l(a aVar) {
        SavedState savedState = this.f13995q;
        int i10 = savedState.mSpanOffsetsSize;
        if (i10 > 0) {
            if (i10 == this.f13979a) {
                for (int i11 = 0; i11 < this.f13979a; i11++) {
                    this.f13980b[i11].e();
                    SavedState savedState2 = this.f13995q;
                    int i12 = savedState2.mSpanOffsets[i11];
                    if (i12 != Integer.MIN_VALUE) {
                        i12 += savedState2.mAnchorLayoutFromEnd ? this.f13981c.i() : this.f13981c.m();
                    }
                    this.f13980b[i11].z(i12);
                }
            } else {
                savedState.invalidateSpanInfo();
                SavedState savedState3 = this.f13995q;
                savedState3.mAnchorPosition = savedState3.mVisibleAnchorPosition;
            }
        }
        SavedState savedState4 = this.f13995q;
        this.f13994p = savedState4.mLastLayoutRTL;
        setReverseLayout(savedState4.mReverseLayout);
        e0();
        SavedState savedState5 = this.f13995q;
        int i13 = savedState5.mAnchorPosition;
        if (i13 != -1) {
            this.f13989k = i13;
            aVar.f14011c = savedState5.mAnchorLayoutFromEnd;
        } else {
            aVar.f14011c = this.f13987i;
        }
        if (savedState5.mSpanLookupSize > 1) {
            LazySpanLookup lazySpanLookup = this.f13991m;
            lazySpanLookup.f14003a = savedState5.mSpanLookup;
            lazySpanLookup.f14004b = savedState5.mFullSpanItems;
        }
    }

    private void m0(int i10, RecyclerView.x xVar) {
        int iN;
        int iN2;
        int iC;
        g gVar = this.f13985g;
        boolean z10 = false;
        gVar.f14067b = 0;
        gVar.f14068c = i10;
        if (!isSmoothScrolling() || (iC = xVar.c()) == -1) {
            iN = 0;
            iN2 = 0;
        } else {
            if (this.f13987i == (iC < i10)) {
                iN = this.f13981c.n();
                iN2 = 0;
            } else {
                iN2 = this.f13981c.n();
                iN = 0;
            }
        }
        if (getClipToPadding()) {
            this.f13985g.f14071f = this.f13981c.m() - iN2;
            this.f13985g.f14072g = this.f13981c.i() + iN;
        } else {
            this.f13985g.f14072g = this.f13981c.h() + iN;
            this.f13985g.f14071f = -iN2;
        }
        g gVar2 = this.f13985g;
        gVar2.f14073h = false;
        gVar2.f14066a = true;
        if (this.f13981c.k() == 0 && this.f13981c.h() == 0) {
            z10 = true;
        }
        gVar2.f14074i = z10;
    }

    private void o(View view, b bVar, g gVar) {
        if (gVar.f14070e == 1) {
            if (bVar.f14017b) {
                k(view);
                return;
            } else {
                bVar.f14016a.a(view);
                return;
            }
        }
        if (bVar.f14017b) {
            Z(view);
        } else {
            bVar.f14016a.y(view);
        }
    }

    private void o0(c cVar, int i10, int i11) {
        int iN = cVar.n();
        if (i10 == -1) {
            if (cVar.s() + iN <= i11) {
                this.f13988j.set(cVar.f14022e, false);
            }
        } else if (cVar.o() - iN >= i11) {
            this.f13988j.set(cVar.f14022e, false);
        }
    }

    private int p(int i10) {
        if (getChildCount() == 0) {
            return this.f13987i ? 1 : -1;
        }
        return (i10 < J()) != this.f13987i ? -1 : 1;
    }

    private int p0(int i10, int i11, int i12) {
        if (i11 == 0 && i12 == 0) {
            return i10;
        }
        int mode = View.MeasureSpec.getMode(i10);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i10) - i11) - i12), mode) : i10;
    }

    private boolean r(c cVar) {
        if (this.f13987i) {
            if (cVar.o() < this.f13981c.i()) {
                ArrayList arrayList = cVar.f14018a;
                return !cVar.r((View) arrayList.get(arrayList.size() - 1)).f14017b;
            }
        } else if (cVar.s() > this.f13981c.m()) {
            return !cVar.r((View) cVar.f14018a.get(0)).f14017b;
        }
        return false;
    }

    private int s(RecyclerView.x xVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        return p.a(xVar, this.f13981c, B(!this.f14000v), A(!this.f14000v), this, this.f14000v);
    }

    private int t(RecyclerView.x xVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        return p.b(xVar, this.f13981c, B(!this.f14000v), A(!this.f14000v), this, this.f14000v, this.f13987i);
    }

    private int u(RecyclerView.x xVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        return p.c(xVar, this.f13981c, B(!this.f14000v), A(!this.f14000v), this, this.f14000v);
    }

    private LazySpanLookup.FullSpanItem v(int i10) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f14007c = new int[this.f13979a];
        for (int i11 = 0; i11 < this.f13979a; i11++) {
            fullSpanItem.f14007c[i11] = i10 - this.f13980b[i11].p(i10);
        }
        return fullSpanItem;
    }

    private LazySpanLookup.FullSpanItem w(int i10) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f14007c = new int[this.f13979a];
        for (int i11 = 0; i11 < this.f13979a; i11++) {
            fullSpanItem.f14007c[i11] = this.f13980b[i11].t(i10) - i10;
        }
        return fullSpanItem;
    }

    private void x() {
        this.f13981c = m.b(this, this.f13983e);
        this.f13982d = m.b(this, 1 - this.f13983e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r16v0, types: [androidx.recyclerview.widget.RecyclerView$m, androidx.recyclerview.widget.StaggeredGridLayoutManager] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v7 */
    private int y(RecyclerView.t tVar, g gVar, RecyclerView.x xVar) {
        int i10;
        int iL;
        c cVarP;
        int iE;
        int i11;
        int iE2;
        int iE3;
        boolean z10;
        ?? r10 = 0;
        this.f13988j.set(0, this.f13979a, true);
        if (this.f13985g.f14074i) {
            i10 = gVar.f14070e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            i10 = gVar.f14070e == 1 ? gVar.f14072g + gVar.f14067b : gVar.f14071f - gVar.f14067b;
        }
        int i12 = i10;
        i0(gVar.f14070e, i12);
        int i13 = this.f13987i ? this.f13981c.i() : this.f13981c.m();
        ?? r11 = false;
        while (gVar.a(xVar) && (this.f13985g.f14074i || !this.f13988j.isEmpty())) {
            View viewB = gVar.b(tVar);
            b bVar = (b) viewB.getLayoutParams();
            int viewLayoutPosition = bVar.getViewLayoutPosition();
            int iG = this.f13991m.g(viewLayoutPosition);
            ?? r12 = iG == -1 ? 1 : r10;
            if (r12 != 0) {
                cVarP = bVar.f14017b ? this.f13980b[r10] : P(gVar);
                this.f13991m.n(viewLayoutPosition, cVarP);
            } else {
                cVarP = this.f13980b[iG];
            }
            c cVar = cVarP;
            bVar.f14016a = cVar;
            if (gVar.f14070e == 1) {
                addView(viewB);
            } else {
                addView(viewB, r10);
            }
            V(viewB, bVar, r10);
            if (gVar.f14070e == 1) {
                int iL2 = bVar.f14017b ? L(i13) : cVar.p(i13);
                int iE4 = this.f13981c.e(viewB) + iL2;
                if (r12 != 0 && bVar.f14017b) {
                    LazySpanLookup.FullSpanItem fullSpanItemV = v(iL2);
                    fullSpanItemV.f14006b = -1;
                    fullSpanItemV.f14005a = viewLayoutPosition;
                    this.f13991m.a(fullSpanItemV);
                }
                i11 = iE4;
                iE = iL2;
            } else {
                int iO = bVar.f14017b ? O(i13) : cVar.t(i13);
                iE = iO - this.f13981c.e(viewB);
                if (r12 != 0 && bVar.f14017b) {
                    LazySpanLookup.FullSpanItem fullSpanItemW = w(iO);
                    fullSpanItemW.f14006b = 1;
                    fullSpanItemW.f14005a = viewLayoutPosition;
                    this.f13991m.a(fullSpanItemW);
                }
                i11 = iO;
            }
            if (bVar.f14017b && gVar.f14069d == -1) {
                if (r12 != 0) {
                    this.f13999u = true;
                } else {
                    if (!(gVar.f14070e == 1 ? m() : n())) {
                        LazySpanLookup.FullSpanItem fullSpanItemF = this.f13991m.f(viewLayoutPosition);
                        if (fullSpanItemF != null) {
                            fullSpanItemF.f14008d = true;
                        }
                        this.f13999u = true;
                    }
                }
            }
            o(viewB, bVar, gVar);
            if (isLayoutRTL() && this.f13983e == 1) {
                int i14 = bVar.f14017b ? this.f13982d.i() : this.f13982d.i() - (((this.f13979a - 1) - cVar.f14022e) * this.f13984f);
                iE3 = i14;
                iE2 = i14 - this.f13982d.e(viewB);
            } else {
                int iM = bVar.f14017b ? this.f13982d.m() : (cVar.f14022e * this.f13984f) + this.f13982d.m();
                iE2 = iM;
                iE3 = this.f13982d.e(viewB) + iM;
            }
            if (this.f13983e == 1) {
                layoutDecoratedWithMargins(viewB, iE2, iE, iE3, i11);
            } else {
                layoutDecoratedWithMargins(viewB, iE, iE2, i11, iE3);
            }
            if (bVar.f14017b) {
                i0(this.f13985g.f14070e, i12);
            } else {
                o0(cVar, this.f13985g.f14070e, i12);
            }
            a0(tVar, this.f13985g);
            if (!this.f13985g.f14073h || !viewB.hasFocusable()) {
                z10 = false;
            } else if (bVar.f14017b) {
                this.f13988j.clear();
                z10 = false;
            } else {
                z10 = false;
                this.f13988j.set(cVar.f14022e, false);
            }
            r10 = z10;
            r11 = true;
        }
        ?? r13 = r10;
        if (r11 == false) {
            a0(tVar, this.f13985g);
        }
        if (this.f13985g.f14070e == -1) {
            iL = this.f13981c.m() - O(this.f13981c.m());
        } else {
            iL = L(this.f13981c.i()) - this.f13981c.i();
        }
        return iL > 0 ? Math.min(gVar.f14067b, iL) : r13 == true ? 1 : 0;
    }

    private int z(int i10) {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            int position = getPosition(getChildAt(i11));
            if (position >= 0 && position < i10) {
                return position;
            }
        }
        return 0;
    }

    View A(boolean z10) {
        int iM = this.f13981c.m();
        int i10 = this.f13981c.i();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int iG = this.f13981c.g(childAt);
            int iD = this.f13981c.d(childAt);
            if (iD > iM && iG < i10) {
                if (iD <= i10 || !z10) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    View B(boolean z10) {
        int iM = this.f13981c.m();
        int i10 = this.f13981c.i();
        int childCount = getChildCount();
        View view = null;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            int iG = this.f13981c.g(childAt);
            if (this.f13981c.d(childAt) > iM && iG < i10) {
                if (iG >= iM || !z10) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    int C() {
        View viewA = this.f13987i ? A(true) : B(true);
        if (viewA == null) {
            return -1;
        }
        return getPosition(viewA);
    }

    public int[] D(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f13979a];
        } else if (iArr.length < this.f13979a) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f13979a + ", array size:" + iArr.length);
        }
        for (int i10 = 0; i10 < this.f13979a; i10++) {
            iArr[i10] = this.f13980b[i10].g();
        }
        return iArr;
    }

    public int[] E(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f13979a];
        } else if (iArr.length < this.f13979a) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f13979a + ", array size:" + iArr.length);
        }
        for (int i10 = 0; i10 < this.f13979a; i10++) {
            iArr[i10] = this.f13980b[i10].h();
        }
        return iArr;
    }

    public int[] G(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f13979a];
        } else if (iArr.length < this.f13979a) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f13979a + ", array size:" + iArr.length);
        }
        for (int i10 = 0; i10 < this.f13979a; i10++) {
            iArr[i10] = this.f13980b[i10].j();
        }
        return iArr;
    }

    int J() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    int K() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    public int Q() {
        return this.f13979a;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0086  */
    /* JADX WARN: Code duplicated, block: B:39:0x0097  */
    /* JADX WARN: Code duplicated, block: B:40:0x0099  */
    /* JADX WARN: Code duplicated, block: B:42:0x009c  */
    /* JADX WARN: Code duplicated, block: B:43:0x009e  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x00a2 A[SYNTHETIC] */
    View S() {
        int i10;
        boolean z10;
        boolean z11;
        int childCount = getChildCount();
        int i11 = childCount - 1;
        BitSet bitSet = new BitSet(this.f13979a);
        bitSet.set(0, this.f13979a, true);
        byte b10 = (this.f13983e == 1 && isLayoutRTL()) ? (byte) 1 : (byte) -1;
        if (this.f13987i) {
            childCount = -1;
        } else {
            i11 = 0;
        }
        int i12 = i11 < childCount ? 1 : -1;
        while (i11 != childCount) {
            View childAt = getChildAt(i11);
            b bVar = (b) childAt.getLayoutParams();
            if (bitSet.get(bVar.f14016a.f14022e)) {
                if (r(bVar.f14016a)) {
                    return childAt;
                }
                bitSet.clear(bVar.f14016a.f14022e);
            }
            if (!bVar.f14017b && (i10 = i11 + i12) != childCount) {
                View childAt2 = getChildAt(i10);
                if (this.f13987i) {
                    int iD = this.f13981c.d(childAt);
                    int iD2 = this.f13981c.d(childAt2);
                    if (iD < iD2) {
                        return childAt;
                    }
                    if (iD == iD2) {
                        if (bVar.f14016a.f14022e - ((b) childAt2.getLayoutParams()).f14016a.f14022e < 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (b10 < 0) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (z10 != z11) {
                            return childAt;
                        }
                    } else {
                        continue;
                    }
                } else {
                    int iG = this.f13981c.g(childAt);
                    int iG2 = this.f13981c.g(childAt2);
                    if (iG > iG2) {
                        return childAt;
                    }
                    if (iG == iG2) {
                        if (bVar.f14016a.f14022e - ((b) childAt2.getLayoutParams()).f14016a.f14022e < 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (b10 < 0) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (z10 != z11) {
                            return childAt;
                        }
                    } else {
                        continue;
                    }
                }
            }
            i11 += i12;
        }
        return null;
    }

    public void T() {
        this.f13991m.b();
        requestLayout();
    }

    void Y(int i10, RecyclerView.x xVar) {
        int iJ;
        int i11;
        if (i10 > 0) {
            iJ = K();
            i11 = 1;
        } else {
            iJ = J();
            i11 = -1;
        }
        this.f13985g.f14066a = true;
        m0(iJ, xVar);
        g0(i11);
        g gVar = this.f13985g;
        gVar.f14068c = iJ + gVar.f14069d;
        gVar.f14067b = Math.abs(i10);
    }

    @Override
    public void assertNotInLayoutOrScroll(String str) {
        if (this.f13995q == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    @Override
    public boolean canScrollHorizontally() {
        return this.f13983e == 0;
    }

    @Override
    public boolean canScrollVertically() {
        return this.f13983e == 1;
    }

    @Override
    public boolean checkLayoutParams(RecyclerView.n nVar) {
        return nVar instanceof b;
    }

    @Override
    public void collectAdjacentPrefetchPositions(int i10, int i11, RecyclerView.x xVar, RecyclerView.m.c cVar) {
        int iP;
        int iT;
        if (this.f13983e != 0) {
            i10 = i11;
        }
        if (getChildCount() == 0 || i10 == 0) {
            return;
        }
        Y(i10, xVar);
        int[] iArr = this.f14001w;
        if (iArr == null || iArr.length < this.f13979a) {
            this.f14001w = new int[this.f13979a];
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.f13979a; i13++) {
            g gVar = this.f13985g;
            if (gVar.f14069d == -1) {
                iP = gVar.f14071f;
                iT = this.f13980b[i13].t(iP);
            } else {
                iP = this.f13980b[i13].p(gVar.f14072g);
                iT = this.f13985g.f14072g;
            }
            int i14 = iP - iT;
            if (i14 >= 0) {
                this.f14001w[i12] = i14;
                i12++;
            }
        }
        Arrays.sort(this.f14001w, 0, i12);
        for (int i15 = 0; i15 < i12 && this.f13985g.a(xVar); i15++) {
            cVar.a(this.f13985g.f14068c, this.f14001w[i15]);
            g gVar2 = this.f13985g;
            gVar2.f14068c += gVar2.f14069d;
        }
    }

    @Override
    public int computeHorizontalScrollExtent(RecyclerView.x xVar) {
        return s(xVar);
    }

    @Override
    public int computeHorizontalScrollOffset(RecyclerView.x xVar) {
        return t(xVar);
    }

    @Override
    public int computeHorizontalScrollRange(RecyclerView.x xVar) {
        return u(xVar);
    }

    @Override
    public PointF computeScrollVectorForPosition(int i10) {
        int iP = p(i10);
        PointF pointF = new PointF();
        if (iP == 0) {
            return null;
        }
        if (this.f13983e == 0) {
            pointF.x = iP;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = iP;
        }
        return pointF;
    }

    @Override
    public int computeVerticalScrollExtent(RecyclerView.x xVar) {
        return s(xVar);
    }

    @Override
    public int computeVerticalScrollOffset(RecyclerView.x xVar) {
        return t(xVar);
    }

    @Override
    public int computeVerticalScrollRange(RecyclerView.x xVar) {
        return u(xVar);
    }

    public void f0(int i10) {
        assertNotInLayoutOrScroll(null);
        if (i10 == this.f13992n) {
            return;
        }
        if (i10 != 0 && i10 != 2) {
            throw new IllegalArgumentException("invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS");
        }
        this.f13992n = i10;
        requestLayout();
    }

    @Override
    public RecyclerView.n generateDefaultLayoutParams() {
        return this.f13983e == 0 ? new b(-2, -1) : new b(-1, -2);
    }

    @Override
    public RecyclerView.n generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    public int getOrientation() {
        return this.f13983e;
    }

    public void h0(int i10) {
        assertNotInLayoutOrScroll(null);
        if (i10 != this.f13979a) {
            T();
            this.f13979a = i10;
            this.f13988j = new BitSet(this.f13979a);
            this.f13980b = new c[this.f13979a];
            for (int i11 = 0; i11 < this.f13979a; i11++) {
                this.f13980b[i11] = new c(i11);
            }
            requestLayout();
        }
    }

    @Override
    public boolean isAutoMeasureEnabled() {
        return this.f13992n != 0;
    }

    boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    boolean k0(RecyclerView.x xVar, a aVar) {
        int i10;
        if (!xVar.e() && (i10 = this.f13989k) != -1) {
            if (i10 >= 0 && i10 < xVar.b()) {
                SavedState savedState = this.f13995q;
                if (savedState == null || savedState.mAnchorPosition == -1 || savedState.mSpanOffsetsSize < 1) {
                    View viewFindViewByPosition = findViewByPosition(this.f13989k);
                    if (viewFindViewByPosition != null) {
                        aVar.f14009a = this.f13987i ? K() : J();
                        if (this.f13990l != Integer.MIN_VALUE) {
                            if (aVar.f14011c) {
                                aVar.f14010b = (this.f13981c.i() - this.f13990l) - this.f13981c.d(viewFindViewByPosition);
                            } else {
                                aVar.f14010b = (this.f13981c.m() + this.f13990l) - this.f13981c.g(viewFindViewByPosition);
                            }
                            return true;
                        }
                        if (this.f13981c.e(viewFindViewByPosition) > this.f13981c.n()) {
                            aVar.f14010b = aVar.f14011c ? this.f13981c.i() : this.f13981c.m();
                            return true;
                        }
                        int iG = this.f13981c.g(viewFindViewByPosition) - this.f13981c.m();
                        if (iG < 0) {
                            aVar.f14010b = -iG;
                            return true;
                        }
                        int i11 = this.f13981c.i() - this.f13981c.d(viewFindViewByPosition);
                        if (i11 < 0) {
                            aVar.f14010b = i11;
                            return true;
                        }
                        aVar.f14010b = Integer.MIN_VALUE;
                    } else {
                        int i12 = this.f13989k;
                        aVar.f14009a = i12;
                        int i13 = this.f13990l;
                        if (i13 == Integer.MIN_VALUE) {
                            aVar.f14011c = p(i12) == 1;
                            aVar.a();
                        } else {
                            aVar.b(i13);
                        }
                        aVar.f14012d = true;
                    }
                } else {
                    aVar.f14010b = Integer.MIN_VALUE;
                    aVar.f14009a = this.f13989k;
                }
                return true;
            }
            this.f13989k = -1;
            this.f13990l = Integer.MIN_VALUE;
        }
        return false;
    }

    void l0(RecyclerView.x xVar, a aVar) {
        if (k0(xVar, aVar) || j0(xVar, aVar)) {
            return;
        }
        aVar.a();
        aVar.f14009a = 0;
    }

    boolean m() {
        int iP = this.f13980b[0].p(Integer.MIN_VALUE);
        for (int i10 = 1; i10 < this.f13979a; i10++) {
            if (this.f13980b[i10].p(Integer.MIN_VALUE) != iP) {
                return false;
            }
        }
        return true;
    }

    boolean n() {
        int iT = this.f13980b[0].t(Integer.MIN_VALUE);
        for (int i10 = 1; i10 < this.f13979a; i10++) {
            if (this.f13980b[i10].t(Integer.MIN_VALUE) != iT) {
                return false;
            }
        }
        return true;
    }

    void n0(int i10) {
        this.f13984f = i10 / this.f13979a;
        this.f13996r = View.MeasureSpec.makeMeasureSpec(i10, this.f13982d.k());
    }

    @Override
    public void offsetChildrenHorizontal(int i10) {
        super.offsetChildrenHorizontal(i10);
        for (int i11 = 0; i11 < this.f13979a; i11++) {
            this.f13980b[i11].v(i10);
        }
    }

    @Override
    public void offsetChildrenVertical(int i10) {
        super.offsetChildrenVertical(i10);
        for (int i11 = 0; i11 < this.f13979a; i11++) {
            this.f13980b[i11].v(i10);
        }
    }

    @Override
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        this.f13991m.b();
        for (int i10 = 0; i10 < this.f13979a; i10++) {
            this.f13980b[i10].e();
        }
    }

    @Override
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.t tVar) {
        super.onDetachedFromWindow(recyclerView, tVar);
        removeCallbacks(this.f14002x);
        for (int i10 = 0; i10 < this.f13979a; i10++) {
            this.f13980b[i10].e();
        }
        recyclerView.requestLayout();
    }

    @Override
    public View onFocusSearchFailed(View view, int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        View viewFindContainingItemView;
        View viewQ;
        if (getChildCount() == 0 || (viewFindContainingItemView = findContainingItemView(view)) == null) {
            return null;
        }
        e0();
        int iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i10);
        if (iConvertFocusDirectionToLayoutDirection == Integer.MIN_VALUE) {
            return null;
        }
        b bVar = (b) viewFindContainingItemView.getLayoutParams();
        boolean z10 = bVar.f14017b;
        c cVar = bVar.f14016a;
        int iK = iConvertFocusDirectionToLayoutDirection == 1 ? K() : J();
        m0(iK, xVar);
        g0(iConvertFocusDirectionToLayoutDirection);
        g gVar = this.f13985g;
        gVar.f14068c = gVar.f14069d + iK;
        gVar.f14067b = (int) (this.f13981c.n() * 0.33333334f);
        g gVar2 = this.f13985g;
        gVar2.f14073h = true;
        gVar2.f14066a = false;
        y(tVar, gVar2, xVar);
        this.f13993o = this.f13987i;
        if (!z10 && (viewQ = cVar.q(iK, iConvertFocusDirectionToLayoutDirection)) != null && viewQ != viewFindContainingItemView) {
            return viewQ;
        }
        if (X(iConvertFocusDirectionToLayoutDirection)) {
            for (int i11 = this.f13979a - 1; i11 >= 0; i11--) {
                View viewQ2 = this.f13980b[i11].q(iK, iConvertFocusDirectionToLayoutDirection);
                if (viewQ2 != null && viewQ2 != viewFindContainingItemView) {
                    return viewQ2;
                }
            }
        } else {
            for (int i12 = 0; i12 < this.f13979a; i12++) {
                View viewQ3 = this.f13980b[i12].q(iK, iConvertFocusDirectionToLayoutDirection);
                if (viewQ3 != null && viewQ3 != viewFindContainingItemView) {
                    return viewQ3;
                }
            }
        }
        boolean z11 = (this.f13986h ^ true) == (iConvertFocusDirectionToLayoutDirection == -1);
        if (!z10) {
            View viewFindViewByPosition = findViewByPosition(z11 ? cVar.f() : cVar.i());
            if (viewFindViewByPosition != null && viewFindViewByPosition != viewFindContainingItemView) {
                return viewFindViewByPosition;
            }
        }
        if (X(iConvertFocusDirectionToLayoutDirection)) {
            for (int i13 = this.f13979a - 1; i13 >= 0; i13--) {
                if (i13 != cVar.f14022e) {
                    View viewFindViewByPosition2 = findViewByPosition(z11 ? this.f13980b[i13].f() : this.f13980b[i13].i());
                    if (viewFindViewByPosition2 != null && viewFindViewByPosition2 != viewFindContainingItemView) {
                        return viewFindViewByPosition2;
                    }
                }
            }
        } else {
            for (int i14 = 0; i14 < this.f13979a; i14++) {
                View viewFindViewByPosition3 = findViewByPosition(z11 ? this.f13980b[i14].f() : this.f13980b[i14].i());
                if (viewFindViewByPosition3 != null && viewFindViewByPosition3 != viewFindContainingItemView) {
                    return viewFindViewByPosition3;
                }
            }
        }
        return null;
    }

    @Override
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View viewB = B(false);
            View viewA = A(false);
            if (viewB == null || viewA == null) {
                return;
            }
            int position = getPosition(viewB);
            int position2 = getPosition(viewA);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
            } else {
                accessibilityEvent.setFromIndex(position2);
                accessibilityEvent.setToIndex(position);
            }
        }
    }

    @Override
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        R(i10, i11, 1);
    }

    @Override
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f13991m.b();
        requestLayout();
    }

    @Override
    public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        R(i10, i11, 8);
    }

    @Override
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        R(i10, i11, 2);
    }

    @Override
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
        R(i10, i11, 4);
    }

    @Override
    public void onLayoutChildren(RecyclerView.t tVar, RecyclerView.x xVar) {
        W(tVar, xVar, true);
    }

    @Override
    public void onLayoutCompleted(RecyclerView.x xVar) {
        super.onLayoutCompleted(xVar);
        this.f13989k = -1;
        this.f13990l = Integer.MIN_VALUE;
        this.f13995q = null;
        this.f13998t.c();
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f13995q = savedState;
            if (this.f13989k != -1) {
                savedState.invalidateAnchorPositionInfo();
                this.f13995q.invalidateSpanInfo();
            }
            requestLayout();
        }
    }

    @Override
    public Parcelable onSaveInstanceState() {
        int iT;
        int iM;
        int[] iArr;
        if (this.f13995q != null) {
            return new SavedState(this.f13995q);
        }
        SavedState savedState = new SavedState();
        savedState.mReverseLayout = this.f13986h;
        savedState.mAnchorLayoutFromEnd = this.f13993o;
        savedState.mLastLayoutRTL = this.f13994p;
        LazySpanLookup lazySpanLookup = this.f13991m;
        if (lazySpanLookup == null || (iArr = lazySpanLookup.f14003a) == null) {
            savedState.mSpanLookupSize = 0;
        } else {
            savedState.mSpanLookup = iArr;
            savedState.mSpanLookupSize = iArr.length;
            savedState.mFullSpanItems = lazySpanLookup.f14004b;
        }
        if (getChildCount() > 0) {
            savedState.mAnchorPosition = this.f13993o ? K() : J();
            savedState.mVisibleAnchorPosition = C();
            int i10 = this.f13979a;
            savedState.mSpanOffsetsSize = i10;
            savedState.mSpanOffsets = new int[i10];
            for (int i11 = 0; i11 < this.f13979a; i11++) {
                if (this.f13993o) {
                    iT = this.f13980b[i11].p(Integer.MIN_VALUE);
                    if (iT != Integer.MIN_VALUE) {
                        iM = this.f13981c.i();
                        iT -= iM;
                    }
                } else {
                    iT = this.f13980b[i11].t(Integer.MIN_VALUE);
                    if (iT != Integer.MIN_VALUE) {
                        iM = this.f13981c.m();
                        iT -= iM;
                    }
                }
                savedState.mSpanOffsets[i11] = iT;
            }
        } else {
            savedState.mAnchorPosition = -1;
            savedState.mVisibleAnchorPosition = -1;
            savedState.mSpanOffsetsSize = 0;
        }
        return savedState;
    }

    @Override
    public void onScrollStateChanged(int i10) {
        if (i10 == 0) {
            q();
        }
    }

    boolean q() {
        int iJ;
        int iK;
        if (getChildCount() == 0 || this.f13992n == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.f13987i) {
            iJ = K();
            iK = J();
        } else {
            iJ = J();
            iK = K();
        }
        if (iJ == 0 && S() != null) {
            this.f13991m.b();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
        if (!this.f13999u) {
            return false;
        }
        int i10 = this.f13987i ? -1 : 1;
        int i11 = iK + 1;
        LazySpanLookup.FullSpanItem fullSpanItemE = this.f13991m.e(iJ, i11, i10, true);
        if (fullSpanItemE == null) {
            this.f13999u = false;
            this.f13991m.d(i11);
            return false;
        }
        LazySpanLookup.FullSpanItem fullSpanItemE2 = this.f13991m.e(iJ, fullSpanItemE.f14005a, i10 * (-1), true);
        if (fullSpanItemE2 == null) {
            this.f13991m.d(fullSpanItemE.f14005a);
        } else {
            this.f13991m.d(fullSpanItemE2.f14005a + 1);
        }
        requestSimpleAnimationsInNextLayout();
        requestLayout();
        return true;
    }

    int scrollBy(int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        Y(i10, xVar);
        int iY = y(tVar, this.f13985g, xVar);
        if (this.f13985g.f14067b >= iY) {
            i10 = i10 < 0 ? -iY : iY;
        }
        this.f13981c.r(-i10);
        this.f13993o = this.f13987i;
        g gVar = this.f13985g;
        gVar.f14067b = 0;
        a0(tVar, gVar);
        return i10;
    }

    @Override
    public int scrollHorizontallyBy(int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        return scrollBy(i10, tVar, xVar);
    }

    @Override
    public void scrollToPosition(int i10) {
        SavedState savedState = this.f13995q;
        if (savedState != null && savedState.mAnchorPosition != i10) {
            savedState.invalidateAnchorPositionInfo();
        }
        this.f13989k = i10;
        this.f13990l = Integer.MIN_VALUE;
        requestLayout();
    }

    @Override
    public int scrollVerticallyBy(int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        return scrollBy(i10, tVar, xVar);
    }

    @Override
    public void setMeasuredDimension(Rect rect, int i10, int i11) {
        int iChooseSize;
        int iChooseSize2;
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.f13983e == 1) {
            iChooseSize2 = RecyclerView.m.chooseSize(i11, rect.height() + paddingTop, getMinimumHeight());
            iChooseSize = RecyclerView.m.chooseSize(i10, (this.f13984f * this.f13979a) + paddingLeft, getMinimumWidth());
        } else {
            iChooseSize = RecyclerView.m.chooseSize(i10, rect.width() + paddingLeft, getMinimumWidth());
            iChooseSize2 = RecyclerView.m.chooseSize(i11, (this.f13984f * this.f13979a) + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    public void setOrientation(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i10 == this.f13983e) {
            return;
        }
        this.f13983e = i10;
        m mVar = this.f13981c;
        this.f13981c = this.f13982d;
        this.f13982d = mVar;
        requestLayout();
    }

    public void setReverseLayout(boolean z10) {
        assertNotInLayoutOrScroll(null);
        SavedState savedState = this.f13995q;
        if (savedState != null && savedState.mReverseLayout != z10) {
            savedState.mReverseLayout = z10;
        }
        this.f13986h = z10;
        requestLayout();
    }

    @Override
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.x xVar, int i10) {
        h hVar = new h(recyclerView.getContext());
        hVar.p(i10);
        startSmoothScroll(hVar);
    }

    @Override
    public boolean supportsPredictiveItemAnimations() {
        return this.f13995q == null;
    }

    @Override
    public RecyclerView.n generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    static class LazySpanLookup {

        int[] f14003a;

        List f14004b;

        LazySpanLookup() {
        }

        private int i(int i10) {
            if (this.f14004b == null) {
                return -1;
            }
            FullSpanItem fullSpanItemF = f(i10);
            if (fullSpanItemF != null) {
                this.f14004b.remove(fullSpanItemF);
            }
            int size = this.f14004b.size();
            int i11 = 0;
            while (true) {
                if (i11 >= size) {
                    i11 = -1;
                    break;
                }
                if (((FullSpanItem) this.f14004b.get(i11)).f14005a >= i10) {
                    break;
                }
                i11++;
            }
            if (i11 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = (FullSpanItem) this.f14004b.get(i11);
            this.f14004b.remove(i11);
            return fullSpanItem.f14005a;
        }

        private void l(int i10, int i11) {
            List list = this.f14004b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = (FullSpanItem) this.f14004b.get(size);
                int i12 = fullSpanItem.f14005a;
                if (i12 >= i10) {
                    fullSpanItem.f14005a = i12 + i11;
                }
            }
        }

        private void m(int i10, int i11) {
            List list = this.f14004b;
            if (list == null) {
                return;
            }
            int i12 = i10 + i11;
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = (FullSpanItem) this.f14004b.get(size);
                int i13 = fullSpanItem.f14005a;
                if (i13 >= i10) {
                    if (i13 < i12) {
                        this.f14004b.remove(size);
                    } else {
                        fullSpanItem.f14005a = i13 - i11;
                    }
                }
            }
        }

        public void a(FullSpanItem fullSpanItem) {
            if (this.f14004b == null) {
                this.f14004b = new ArrayList();
            }
            int size = this.f14004b.size();
            for (int i10 = 0; i10 < size; i10++) {
                FullSpanItem fullSpanItem2 = (FullSpanItem) this.f14004b.get(i10);
                if (fullSpanItem2.f14005a == fullSpanItem.f14005a) {
                    this.f14004b.remove(i10);
                }
                if (fullSpanItem2.f14005a >= fullSpanItem.f14005a) {
                    this.f14004b.add(i10, fullSpanItem);
                    return;
                }
            }
            this.f14004b.add(fullSpanItem);
        }

        void b() {
            int[] iArr = this.f14003a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f14004b = null;
        }

        void c(int i10) {
            int[] iArr = this.f14003a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i10, 10) + 1];
                this.f14003a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i10 >= iArr.length) {
                int[] iArr3 = new int[o(i10)];
                this.f14003a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f14003a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        int d(int i10) {
            List list = this.f14004b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (((FullSpanItem) this.f14004b.get(size)).f14005a >= i10) {
                        this.f14004b.remove(size);
                    }
                }
            }
            return h(i10);
        }

        public FullSpanItem e(int i10, int i11, int i12, boolean z10) {
            List list = this.f14004b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i13 = 0; i13 < size; i13++) {
                FullSpanItem fullSpanItem = (FullSpanItem) this.f14004b.get(i13);
                int i14 = fullSpanItem.f14005a;
                if (i14 >= i11) {
                    return null;
                }
                if (i14 >= i10 && (i12 == 0 || fullSpanItem.f14006b == i12 || (z10 && fullSpanItem.f14008d))) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        public FullSpanItem f(int i10) {
            List list = this.f14004b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = (FullSpanItem) this.f14004b.get(size);
                if (fullSpanItem.f14005a == i10) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        int g(int i10) {
            int[] iArr = this.f14003a;
            if (iArr == null || i10 >= iArr.length) {
                return -1;
            }
            return iArr[i10];
        }

        int h(int i10) {
            int[] iArr = this.f14003a;
            if (iArr == null || i10 >= iArr.length) {
                return -1;
            }
            int i11 = i(i10);
            if (i11 == -1) {
                int[] iArr2 = this.f14003a;
                Arrays.fill(iArr2, i10, iArr2.length, -1);
                return this.f14003a.length;
            }
            int iMin = Math.min(i11 + 1, this.f14003a.length);
            Arrays.fill(this.f14003a, i10, iMin, -1);
            return iMin;
        }

        void j(int i10, int i11) {
            int[] iArr = this.f14003a;
            if (iArr == null || i10 >= iArr.length) {
                return;
            }
            int i12 = i10 + i11;
            c(i12);
            int[] iArr2 = this.f14003a;
            System.arraycopy(iArr2, i10, iArr2, i12, (iArr2.length - i10) - i11);
            Arrays.fill(this.f14003a, i10, i12, -1);
            l(i10, i11);
        }

        void k(int i10, int i11) {
            int[] iArr = this.f14003a;
            if (iArr == null || i10 >= iArr.length) {
                return;
            }
            int i12 = i10 + i11;
            c(i12);
            int[] iArr2 = this.f14003a;
            System.arraycopy(iArr2, i12, iArr2, i10, (iArr2.length - i10) - i11);
            int[] iArr3 = this.f14003a;
            Arrays.fill(iArr3, iArr3.length - i11, iArr3.length, -1);
            m(i10, i11);
        }

        void n(int i10, c cVar) {
            c(i10);
            this.f14003a[i10] = cVar.f14022e;
        }

        int o(int i10) {
            int length = this.f14003a.length;
            while (length <= i10) {
                length *= 2;
            }
            return length;
        }

        @SuppressLint({"BanParcelableUsage"})
        static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new a();

            int f14005a;

            int f14006b;

            int[] f14007c;

            boolean f14008d;

            class a implements Parcelable.Creator {
                a() {
                }

                @Override
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                @Override
                public FullSpanItem[] newArray(int i10) {
                    return new FullSpanItem[i10];
                }
            }

            FullSpanItem(Parcel parcel) {
                this.f14005a = parcel.readInt();
                this.f14006b = parcel.readInt();
                this.f14008d = parcel.readInt() == 1;
                int i10 = parcel.readInt();
                if (i10 > 0) {
                    int[] iArr = new int[i10];
                    this.f14007c = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            int a(int i10) {
                int[] iArr = this.f14007c;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i10];
            }

            @Override
            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f14005a + ", mGapDir=" + this.f14006b + ", mHasUnwantedGapAfter=" + this.f14008d + ", mGapPerSpan=" + Arrays.toString(this.f14007c) + '}';
            }

            @Override
            public void writeToParcel(Parcel parcel, int i10) {
                parcel.writeInt(this.f14005a);
                parcel.writeInt(this.f14006b);
                parcel.writeInt(this.f14008d ? 1 : 0);
                int[] iArr = this.f14007c;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.f14007c);
                }
            }

            FullSpanItem() {
            }
        }
    }

    public StaggeredGridLayoutManager(int i10, int i11) {
        this.f13983e = i11;
        h0(i10);
        this.f13985g = new g();
        x();
    }
}
