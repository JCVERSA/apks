package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;

public class LinearLayoutManager extends RecyclerView.m implements RecyclerView.w.b {
    static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    final a mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final b mLayoutChunkResult;
    private c mLayoutState;
    int mOrientation;
    m mOrientationHelper;
    SavedState mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private int[] mReusableIntPair;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        boolean mAnchorLayoutFromEnd;
        int mAnchorOffset;
        int mAnchorPosition;

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

        boolean hasValidAnchor() {
            return this.mAnchorPosition >= 0;
        }

        void invalidateAnchor() {
            this.mAnchorPosition = -1;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
        }

        SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mAnchorOffset = parcel.readInt();
            this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
        }

        @SuppressLint({"UnknownNullness"})
        public SavedState(SavedState savedState) {
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
        }
    }

    static class a {

        m f13893a;

        int f13894b;

        int f13895c;

        boolean f13896d;

        boolean f13897e;

        a() {
            e();
        }

        void a() {
            this.f13895c = this.f13896d ? this.f13893a.i() : this.f13893a.m();
        }

        public void b(View view, int i10) {
            if (this.f13896d) {
                this.f13895c = this.f13893a.d(view) + this.f13893a.o();
            } else {
                this.f13895c = this.f13893a.g(view);
            }
            this.f13894b = i10;
        }

        public void c(View view, int i10) {
            int iO = this.f13893a.o();
            if (iO >= 0) {
                b(view, i10);
                return;
            }
            this.f13894b = i10;
            if (this.f13896d) {
                int i11 = (this.f13893a.i() - iO) - this.f13893a.d(view);
                this.f13895c = this.f13893a.i() - i11;
                if (i11 > 0) {
                    int iE = this.f13895c - this.f13893a.e(view);
                    int iM = this.f13893a.m();
                    int iMin = iE - (iM + Math.min(this.f13893a.g(view) - iM, 0));
                    if (iMin < 0) {
                        this.f13895c += Math.min(i11, -iMin);
                        return;
                    }
                    return;
                }
                return;
            }
            int iG = this.f13893a.g(view);
            int iM2 = iG - this.f13893a.m();
            this.f13895c = iG;
            if (iM2 > 0) {
                int i12 = (this.f13893a.i() - Math.min(0, (this.f13893a.i() - iO) - this.f13893a.d(view))) - (iG + this.f13893a.e(view));
                if (i12 < 0) {
                    this.f13895c -= Math.min(iM2, -i12);
                }
            }
        }

        boolean d(View view, RecyclerView.x xVar) {
            RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
            return !nVar.isItemRemoved() && nVar.getViewLayoutPosition() >= 0 && nVar.getViewLayoutPosition() < xVar.b();
        }

        void e() {
            this.f13894b = -1;
            this.f13895c = Integer.MIN_VALUE;
            this.f13896d = false;
            this.f13897e = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f13894b + ", mCoordinate=" + this.f13895c + ", mLayoutFromEnd=" + this.f13896d + ", mValid=" + this.f13897e + '}';
        }
    }

    protected static class b {

        public int f13898a;

        public boolean f13899b;

        public boolean f13900c;

        public boolean f13901d;

        protected b() {
        }

        void a() {
            this.f13898a = 0;
            this.f13899b = false;
            this.f13900c = false;
            this.f13901d = false;
        }
    }

    static class c {

        int f13903b;

        int f13904c;

        int f13905d;

        int f13906e;

        int f13907f;

        int f13908g;

        int f13912k;

        boolean f13914m;

        boolean f13902a = true;

        int f13909h = 0;

        int f13910i = 0;

        boolean f13911j = false;

        List f13913l = null;

        c() {
        }

        private View e() {
            int size = this.f13913l.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = ((RecyclerView.a0) this.f13913l.get(i10)).itemView;
                RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
                if (!nVar.isItemRemoved() && this.f13905d == nVar.getViewLayoutPosition()) {
                    b(view);
                    return view;
                }
            }
            return null;
        }

        public void a() {
            b(null);
        }

        public void b(View view) {
            View viewF = f(view);
            if (viewF == null) {
                this.f13905d = -1;
            } else {
                this.f13905d = ((RecyclerView.n) viewF.getLayoutParams()).getViewLayoutPosition();
            }
        }

        boolean c(RecyclerView.x xVar) {
            int i10 = this.f13905d;
            return i10 >= 0 && i10 < xVar.b();
        }

        View d(RecyclerView.t tVar) {
            if (this.f13913l != null) {
                return e();
            }
            View viewO = tVar.o(this.f13905d);
            this.f13905d += this.f13906e;
            return viewO;
        }

        public View f(View view) {
            int viewLayoutPosition;
            int size = this.f13913l.size();
            View view2 = null;
            int i10 = Integer.MAX_VALUE;
            for (int i11 = 0; i11 < size; i11++) {
                View view3 = ((RecyclerView.a0) this.f13913l.get(i11)).itemView;
                RecyclerView.n nVar = (RecyclerView.n) view3.getLayoutParams();
                if (view3 != view && !nVar.isItemRemoved() && (viewLayoutPosition = (nVar.getViewLayoutPosition() - this.f13905d) * this.f13906e) >= 0 && viewLayoutPosition < i10) {
                    view2 = view3;
                    if (viewLayoutPosition == 0) {
                        break;
                    }
                    i10 = viewLayoutPosition;
                }
            }
            return view2;
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    private void A(RecyclerView.t tVar, int i10, int i11) {
        if (i10 < 0) {
            return;
        }
        int i12 = i10 - i11;
        int childCount = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i13 = 0; i13 < childCount; i13++) {
                View childAt = getChildAt(i13);
                if (this.mOrientationHelper.d(childAt) > i12 || this.mOrientationHelper.p(childAt) > i12) {
                    y(tVar, 0, i13);
                    return;
                }
            }
            return;
        }
        int i14 = childCount - 1;
        for (int i15 = i14; i15 >= 0; i15--) {
            View childAt2 = getChildAt(i15);
            if (this.mOrientationHelper.d(childAt2) > i12 || this.mOrientationHelper.p(childAt2) > i12) {
                y(tVar, i14, i15);
                return;
            }
        }
    }

    private void B() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    private boolean C(RecyclerView.t tVar, RecyclerView.x xVar, a aVar) {
        View viewFindReferenceChild;
        boolean z10 = false;
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null && aVar.d(focusedChild, xVar)) {
            aVar.c(focusedChild, getPosition(focusedChild));
            return true;
        }
        boolean z11 = this.mLastStackFromEnd;
        boolean z12 = this.mStackFromEnd;
        if (z11 != z12 || (viewFindReferenceChild = findReferenceChild(tVar, xVar, aVar.f13896d, z12)) == null) {
            return false;
        }
        aVar.b(viewFindReferenceChild, getPosition(viewFindReferenceChild));
        if (!xVar.e() && supportsPredictiveItemAnimations()) {
            int iG = this.mOrientationHelper.g(viewFindReferenceChild);
            int iD = this.mOrientationHelper.d(viewFindReferenceChild);
            int iM = this.mOrientationHelper.m();
            int i10 = this.mOrientationHelper.i();
            boolean z13 = iD <= iM && iG < iM;
            if (iG >= i10 && iD > i10) {
                z10 = true;
            }
            if (z13 || z10) {
                if (aVar.f13896d) {
                    iM = i10;
                }
                aVar.f13895c = iM;
            }
        }
        return true;
    }

    private boolean D(RecyclerView.x xVar, a aVar) {
        int i10;
        if (!xVar.e() && (i10 = this.mPendingScrollPosition) != -1) {
            if (i10 >= 0 && i10 < xVar.b()) {
                aVar.f13894b = this.mPendingScrollPosition;
                SavedState savedState = this.mPendingSavedState;
                if (savedState != null && savedState.hasValidAnchor()) {
                    boolean z10 = this.mPendingSavedState.mAnchorLayoutFromEnd;
                    aVar.f13896d = z10;
                    if (z10) {
                        aVar.f13895c = this.mOrientationHelper.i() - this.mPendingSavedState.mAnchorOffset;
                    } else {
                        aVar.f13895c = this.mOrientationHelper.m() + this.mPendingSavedState.mAnchorOffset;
                    }
                    return true;
                }
                if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
                    boolean z11 = this.mShouldReverseLayout;
                    aVar.f13896d = z11;
                    if (z11) {
                        aVar.f13895c = this.mOrientationHelper.i() - this.mPendingScrollPositionOffset;
                    } else {
                        aVar.f13895c = this.mOrientationHelper.m() + this.mPendingScrollPositionOffset;
                    }
                    return true;
                }
                View viewFindViewByPosition = findViewByPosition(this.mPendingScrollPosition);
                if (viewFindViewByPosition == null) {
                    if (getChildCount() > 0) {
                        aVar.f13896d = (this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout;
                    }
                    aVar.a();
                } else {
                    if (this.mOrientationHelper.e(viewFindViewByPosition) > this.mOrientationHelper.n()) {
                        aVar.a();
                        return true;
                    }
                    if (this.mOrientationHelper.g(viewFindViewByPosition) - this.mOrientationHelper.m() < 0) {
                        aVar.f13895c = this.mOrientationHelper.m();
                        aVar.f13896d = false;
                        return true;
                    }
                    if (this.mOrientationHelper.i() - this.mOrientationHelper.d(viewFindViewByPosition) < 0) {
                        aVar.f13895c = this.mOrientationHelper.i();
                        aVar.f13896d = true;
                        return true;
                    }
                    aVar.f13895c = aVar.f13896d ? this.mOrientationHelper.d(viewFindViewByPosition) + this.mOrientationHelper.o() : this.mOrientationHelper.g(viewFindViewByPosition);
                }
                return true;
            }
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        }
        return false;
    }

    private void E(RecyclerView.t tVar, RecyclerView.x xVar, a aVar) {
        if (D(xVar, aVar) || C(tVar, xVar, aVar)) {
            return;
        }
        aVar.a();
        aVar.f13894b = this.mStackFromEnd ? xVar.b() - 1 : 0;
    }

    private void F(int i10, int i11, boolean z10, RecyclerView.x xVar) {
        int iM;
        this.mLayoutState.f13914m = resolveIsInfinite();
        this.mLayoutState.f13907f = i10;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(xVar, iArr);
        int iMax = Math.max(0, this.mReusableIntPair[0]);
        int iMax2 = Math.max(0, this.mReusableIntPair[1]);
        boolean z11 = i10 == 1;
        c cVar = this.mLayoutState;
        int i12 = z11 ? iMax2 : iMax;
        cVar.f13909h = i12;
        if (!z11) {
            iMax = iMax2;
        }
        cVar.f13910i = iMax;
        if (z11) {
            cVar.f13909h = i12 + this.mOrientationHelper.j();
            View viewT = t();
            c cVar2 = this.mLayoutState;
            cVar2.f13906e = this.mShouldReverseLayout ? -1 : 1;
            int position = getPosition(viewT);
            c cVar3 = this.mLayoutState;
            cVar2.f13905d = position + cVar3.f13906e;
            cVar3.f13903b = this.mOrientationHelper.d(viewT);
            iM = this.mOrientationHelper.d(viewT) - this.mOrientationHelper.i();
        } else {
            View viewU = u();
            this.mLayoutState.f13909h += this.mOrientationHelper.m();
            c cVar4 = this.mLayoutState;
            cVar4.f13906e = this.mShouldReverseLayout ? 1 : -1;
            int position2 = getPosition(viewU);
            c cVar5 = this.mLayoutState;
            cVar4.f13905d = position2 + cVar5.f13906e;
            cVar5.f13903b = this.mOrientationHelper.g(viewU);
            iM = (-this.mOrientationHelper.g(viewU)) + this.mOrientationHelper.m();
        }
        c cVar6 = this.mLayoutState;
        cVar6.f13904c = i11;
        if (z10) {
            cVar6.f13904c = i11 - iM;
        }
        cVar6.f13908g = iM;
    }

    private void G(int i10, int i11) {
        this.mLayoutState.f13904c = this.mOrientationHelper.i() - i11;
        c cVar = this.mLayoutState;
        cVar.f13906e = this.mShouldReverseLayout ? -1 : 1;
        cVar.f13905d = i10;
        cVar.f13907f = 1;
        cVar.f13903b = i11;
        cVar.f13908g = Integer.MIN_VALUE;
    }

    private void H(a aVar) {
        G(aVar.f13894b, aVar.f13895c);
    }

    private void I(int i10, int i11) {
        this.mLayoutState.f13904c = i11 - this.mOrientationHelper.m();
        c cVar = this.mLayoutState;
        cVar.f13905d = i10;
        cVar.f13906e = this.mShouldReverseLayout ? 1 : -1;
        cVar.f13907f = -1;
        cVar.f13903b = i11;
        cVar.f13908g = Integer.MIN_VALUE;
    }

    private void J(a aVar) {
        I(aVar.f13894b, aVar.f13895c);
    }

    private int k(RecyclerView.x xVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return p.a(xVar, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private int l(RecyclerView.x xVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return p.b(xVar, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    private int m(RecyclerView.x xVar) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return p.c(xVar, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private View n() {
        return findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
    }

    private View o() {
        return findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
    }

    private View p() {
        return this.mShouldReverseLayout ? n() : o();
    }

    private View q() {
        return this.mShouldReverseLayout ? o() : n();
    }

    private int r(int i10, RecyclerView.t tVar, RecyclerView.x xVar, boolean z10) {
        int i11;
        int i12 = this.mOrientationHelper.i() - i10;
        if (i12 <= 0) {
            return 0;
        }
        int i13 = -scrollBy(-i12, tVar, xVar);
        int i14 = i10 + i13;
        if (!z10 || (i11 = this.mOrientationHelper.i() - i14) <= 0) {
            return i13;
        }
        this.mOrientationHelper.r(i11);
        return i11 + i13;
    }

    private int s(int i10, RecyclerView.t tVar, RecyclerView.x xVar, boolean z10) {
        int iM;
        int iM2 = i10 - this.mOrientationHelper.m();
        if (iM2 <= 0) {
            return 0;
        }
        int i11 = -scrollBy(iM2, tVar, xVar);
        int i12 = i10 + i11;
        if (!z10 || (iM = i12 - this.mOrientationHelper.m()) <= 0) {
            return i11;
        }
        this.mOrientationHelper.r(-iM);
        return i11 - iM;
    }

    private View t() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    private View u() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    private void v(RecyclerView.t tVar, RecyclerView.x xVar, int i10, int i11) {
        if (!xVar.g() || getChildCount() == 0 || xVar.e() || !supportsPredictiveItemAnimations()) {
            return;
        }
        List listK = tVar.k();
        int size = listK.size();
        int position = getPosition(getChildAt(0));
        int iE = 0;
        int iE2 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            RecyclerView.a0 a0Var = (RecyclerView.a0) listK.get(i12);
            if (!a0Var.isRemoved()) {
                if ((a0Var.getLayoutPosition() < position) != this.mShouldReverseLayout) {
                    iE += this.mOrientationHelper.e(a0Var.itemView);
                } else {
                    iE2 += this.mOrientationHelper.e(a0Var.itemView);
                }
            }
        }
        this.mLayoutState.f13913l = listK;
        if (iE > 0) {
            I(getPosition(u()), i10);
            c cVar = this.mLayoutState;
            cVar.f13909h = iE;
            cVar.f13904c = 0;
            cVar.a();
            fill(tVar, this.mLayoutState, xVar, false);
        }
        if (iE2 > 0) {
            G(getPosition(t()), i11);
            c cVar2 = this.mLayoutState;
            cVar2.f13909h = iE2;
            cVar2.f13904c = 0;
            cVar2.a();
            fill(tVar, this.mLayoutState, xVar, false);
        }
        this.mLayoutState.f13913l = null;
    }

    private void w() {
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("item ");
            sb2.append(getPosition(childAt));
            sb2.append(", coord:");
            sb2.append(this.mOrientationHelper.g(childAt));
        }
    }

    private void x(RecyclerView.t tVar, c cVar) {
        if (!cVar.f13902a || cVar.f13914m) {
            return;
        }
        int i10 = cVar.f13908g;
        int i11 = cVar.f13910i;
        if (cVar.f13907f == -1) {
            z(tVar, i10, i11);
        } else {
            A(tVar, i10, i11);
        }
    }

    private void y(RecyclerView.t tVar, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        if (i11 <= i10) {
            while (i10 > i11) {
                removeAndRecycleViewAt(i10, tVar);
                i10--;
            }
        } else {
            for (int i12 = i11 - 1; i12 >= i10; i12--) {
                removeAndRecycleViewAt(i12, tVar);
            }
        }
    }

    private void z(RecyclerView.t tVar, int i10, int i11) {
        int childCount = getChildCount();
        if (i10 < 0) {
            return;
        }
        int iH = (this.mOrientationHelper.h() - i10) + i11;
        if (this.mShouldReverseLayout) {
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                if (this.mOrientationHelper.g(childAt) < iH || this.mOrientationHelper.q(childAt) < iH) {
                    y(tVar, 0, i12);
                    return;
                }
            }
            return;
        }
        int i13 = childCount - 1;
        for (int i14 = i13; i14 >= 0; i14--) {
            View childAt2 = getChildAt(i14);
            if (this.mOrientationHelper.g(childAt2) < iH || this.mOrientationHelper.q(childAt2) < iH) {
                y(tVar, i13, i14);
                return;
            }
        }
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    protected void calculateExtraLayoutSpace(RecyclerView.x xVar, int[] iArr) {
        int i10;
        int extraLayoutSpace = getExtraLayoutSpace(xVar);
        if (this.mLayoutState.f13907f == -1) {
            i10 = 0;
        } else {
            i10 = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        iArr[0] = extraLayoutSpace;
        iArr[1] = i10;
    }

    @Override
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public void collectAdjacentPrefetchPositions(int i10, int i11, RecyclerView.x xVar, RecyclerView.m.c cVar) {
        if (this.mOrientation != 0) {
            i10 = i11;
        }
        if (getChildCount() == 0 || i10 == 0) {
            return;
        }
        ensureLayoutState();
        F(i10 > 0 ? 1 : -1, Math.abs(i10), true, xVar);
        collectPrefetchPositionsForLayoutState(xVar, this.mLayoutState, cVar);
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public void collectInitialPrefetchPositions(int i10, RecyclerView.m.c cVar) {
        boolean z10;
        int i11;
        SavedState savedState = this.mPendingSavedState;
        if (savedState == null || !savedState.hasValidAnchor()) {
            B();
            z10 = this.mShouldReverseLayout;
            i11 = this.mPendingScrollPosition;
            if (i11 == -1) {
                i11 = z10 ? i10 - 1 : 0;
            }
        } else {
            SavedState savedState2 = this.mPendingSavedState;
            z10 = savedState2.mAnchorLayoutFromEnd;
            i11 = savedState2.mAnchorPosition;
        }
        int i12 = z10 ? -1 : 1;
        for (int i13 = 0; i13 < this.mInitialPrefetchItemCount && i11 >= 0 && i11 < i10; i13++) {
            cVar.a(i11, 0);
            i11 += i12;
        }
    }

    void collectPrefetchPositionsForLayoutState(RecyclerView.x xVar, c cVar, RecyclerView.m.c cVar2) {
        int i10 = cVar.f13905d;
        if (i10 < 0 || i10 >= xVar.b()) {
            return;
        }
        cVar2.a(i10, Math.max(0, cVar.f13908g));
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollExtent(RecyclerView.x xVar) {
        return k(xVar);
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollOffset(RecyclerView.x xVar) {
        return l(xVar);
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollRange(RecyclerView.x xVar) {
        return m(xVar);
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public PointF computeScrollVectorForPosition(int i10) {
        if (getChildCount() == 0) {
            return null;
        }
        int i11 = (i10 < getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        return this.mOrientation == 0 ? new PointF(i11, 0.0f) : new PointF(0.0f, i11);
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollExtent(RecyclerView.x xVar) {
        return k(xVar);
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollOffset(RecyclerView.x xVar) {
        return l(xVar);
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollRange(RecyclerView.x xVar) {
        return m(xVar);
    }

    int convertFocusDirectionToLayoutDirection(int i10) {
        if (i10 == 1) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
        }
        if (i10 == 2) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1;
        }
        if (i10 == 17) {
            return this.mOrientation == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i10 == 33) {
            return this.mOrientation == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i10 != 66) {
            return (i10 == 130 && this.mOrientation == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.mOrientation == 0 ? 1 : Integer.MIN_VALUE;
    }

    c createLayoutState() {
        return new c();
    }

    void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
    }

    int fill(RecyclerView.t tVar, c cVar, RecyclerView.x xVar, boolean z10) {
        int i10 = cVar.f13904c;
        int i11 = cVar.f13908g;
        if (i11 != Integer.MIN_VALUE) {
            if (i10 < 0) {
                cVar.f13908g = i11 + i10;
            }
            x(tVar, cVar);
        }
        int i12 = cVar.f13904c + cVar.f13909h;
        b bVar = this.mLayoutChunkResult;
        while (true) {
            if ((!cVar.f13914m && i12 <= 0) || !cVar.c(xVar)) {
                break;
            }
            bVar.a();
            layoutChunk(tVar, xVar, cVar, bVar);
            if (!bVar.f13899b) {
                cVar.f13903b += bVar.f13898a * cVar.f13907f;
                if (!bVar.f13900c || cVar.f13913l != null || !xVar.e()) {
                    int i13 = cVar.f13904c;
                    int i14 = bVar.f13898a;
                    cVar.f13904c = i13 - i14;
                    i12 -= i14;
                }
                int i15 = cVar.f13908g;
                if (i15 != Integer.MIN_VALUE) {
                    int i16 = i15 + bVar.f13898a;
                    cVar.f13908g = i16;
                    int i17 = cVar.f13904c;
                    if (i17 < 0) {
                        cVar.f13908g = i16 + i17;
                    }
                    x(tVar, cVar);
                }
                if (z10 && bVar.f13901d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i10 - cVar.f13904c;
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    View findFirstVisibleChildClosestToEnd(boolean z10, boolean z11) {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), z10, z11) : findOneVisibleChild(getChildCount() - 1, -1, z10, z11);
    }

    View findFirstVisibleChildClosestToStart(boolean z10, boolean z11) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, z10, z11) : findOneVisibleChild(0, getChildCount(), z10, z11);
    }

    public int findFirstVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    View findOnePartiallyOrCompletelyInvisibleChild(int i10, int i11) {
        int i12;
        int i13;
        ensureLayoutState();
        if (i11 <= i10 && i11 >= i10) {
            return getChildAt(i10);
        }
        if (this.mOrientationHelper.g(getChildAt(i10)) < this.mOrientationHelper.m()) {
            i12 = 16644;
            i13 = 16388;
        } else {
            i12 = 4161;
            i13 = 4097;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.a(i10, i11, i12, i13) : this.mVerticalBoundCheck.a(i10, i11, i12, i13);
    }

    View findOneVisibleChild(int i10, int i11, boolean z10, boolean z11) {
        ensureLayoutState();
        int i12 = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE;
        int i13 = z10 ? 24579 : 320;
        if (!z11) {
            i12 = 0;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.a(i10, i11, i13, i12) : this.mVerticalBoundCheck.a(i10, i11, i13, i12);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0073  */
    /* JADX WARN: Code duplicated, block: B:35:0x0077  */
    View findReferenceChild(RecyclerView.t tVar, RecyclerView.x xVar, boolean z10, boolean z11) {
        int i10;
        int childCount;
        int i11;
        ensureLayoutState();
        int childCount2 = getChildCount();
        if (z11) {
            childCount = getChildCount() - 1;
            i10 = -1;
            i11 = -1;
        } else {
            i10 = childCount2;
            childCount = 0;
            i11 = 1;
        }
        int iB = xVar.b();
        int iM = this.mOrientationHelper.m();
        int i12 = this.mOrientationHelper.i();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (childCount != i10) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            int iG = this.mOrientationHelper.g(childAt);
            int iD = this.mOrientationHelper.d(childAt);
            if (position >= 0 && position < iB) {
                if (!((RecyclerView.n) childAt.getLayoutParams()).isItemRemoved()) {
                    boolean z12 = iD <= iM && iG < iM;
                    boolean z13 = iG >= i12 && iD > i12;
                    if (!z12 && !z13) {
                        return childAt;
                    }
                    if (z10) {
                        if (z13) {
                            view2 = childAt;
                        } else if (view == null) {
                            view = childAt;
                        }
                    } else if (z12) {
                        view2 = childAt;
                    } else if (view == null) {
                        view = childAt;
                    }
                } else if (view3 == null) {
                    view3 = childAt;
                }
            }
            childCount += i11;
        }
        if (view != null) {
            return view;
        }
        return view2 != null ? view2 : view3;
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public View findViewByPosition(int i10) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i10 - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i10) {
                return childAt;
            }
        }
        return super.findViewByPosition(i10);
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public RecyclerView.n generateDefaultLayoutParams() {
        return new RecyclerView.n(-2, -2);
    }

    @Deprecated
    protected int getExtraLayoutSpace(RecyclerView.x xVar) {
        if (xVar.d()) {
            return this.mOrientationHelper.n();
        }
        return 0;
    }

    public int getInitialPrefetchItemCount() {
        return this.mInitialPrefetchItemCount;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    @Override
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    protected boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    void layoutChunk(RecyclerView.t tVar, RecyclerView.x xVar, c cVar, b bVar) {
        int i10;
        int i11;
        int i12;
        int paddingLeft;
        int iF;
        View viewD = cVar.d(tVar);
        if (viewD == null) {
            bVar.f13899b = true;
            return;
        }
        RecyclerView.n nVar = (RecyclerView.n) viewD.getLayoutParams();
        if (cVar.f13913l == null) {
            if (this.mShouldReverseLayout == (cVar.f13907f == -1)) {
                addView(viewD);
            } else {
                addView(viewD, 0);
            }
        } else {
            if (this.mShouldReverseLayout == (cVar.f13907f == -1)) {
                addDisappearingView(viewD);
            } else {
                addDisappearingView(viewD, 0);
            }
        }
        measureChildWithMargins(viewD, 0, 0);
        bVar.f13898a = this.mOrientationHelper.e(viewD);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                iF = getWidth() - getPaddingRight();
                paddingLeft = iF - this.mOrientationHelper.f(viewD);
            } else {
                paddingLeft = getPaddingLeft();
                iF = this.mOrientationHelper.f(viewD) + paddingLeft;
            }
            if (cVar.f13907f == -1) {
                int i13 = cVar.f13903b;
                i12 = i13;
                i11 = iF;
                i10 = i13 - bVar.f13898a;
            } else {
                int i14 = cVar.f13903b;
                i10 = i14;
                i11 = iF;
                i12 = bVar.f13898a + i14;
            }
        } else {
            int paddingTop = getPaddingTop();
            int iF2 = this.mOrientationHelper.f(viewD) + paddingTop;
            if (cVar.f13907f == -1) {
                int i15 = cVar.f13903b;
                i11 = i15;
                i10 = paddingTop;
                i12 = iF2;
                paddingLeft = i15 - bVar.f13898a;
            } else {
                int i16 = cVar.f13903b;
                i10 = paddingTop;
                i11 = bVar.f13898a + i16;
                i12 = iF2;
                paddingLeft = i16;
            }
        }
        layoutDecoratedWithMargins(viewD, paddingLeft, i10, i11, i12);
        if (nVar.isItemRemoved() || nVar.isItemChanged()) {
            bVar.f13900c = true;
        }
        bVar.f13901d = viewD.hasFocusable();
    }

    void onAnchorReady(RecyclerView.t tVar, RecyclerView.x xVar, a aVar, int i10) {
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.t tVar) {
        super.onDetachedFromWindow(recyclerView, tVar);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(tVar);
            tVar.c();
        }
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public View onFocusSearchFailed(View view, int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        int iConvertFocusDirectionToLayoutDirection;
        B();
        if (getChildCount() == 0 || (iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i10)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        F(iConvertFocusDirectionToLayoutDirection, (int) (this.mOrientationHelper.n() * MAX_SCROLL_FACTOR), false, xVar);
        c cVar = this.mLayoutState;
        cVar.f13908g = Integer.MIN_VALUE;
        cVar.f13902a = false;
        fill(tVar, cVar, xVar, true);
        View viewQ = iConvertFocusDirectionToLayoutDirection == -1 ? q() : p();
        View viewU = iConvertFocusDirectionToLayoutDirection == -1 ? u() : t();
        if (!viewU.hasFocusable()) {
            return viewQ;
        }
        if (viewQ == null) {
            return null;
        }
        return viewU;
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public void onLayoutChildren(RecyclerView.t tVar, RecyclerView.x xVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int iR;
        int i14;
        View viewFindViewByPosition;
        int iG;
        int i15;
        int i16 = -1;
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && xVar.b() == 0) {
            removeAndRecycleAllViews(tVar);
            return;
        }
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.hasValidAnchor()) {
            this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
        }
        ensureLayoutState();
        this.mLayoutState.f13902a = false;
        B();
        View focusedChild = getFocusedChild();
        a aVar = this.mAnchorInfo;
        if (!aVar.f13897e || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
            aVar.e();
            a aVar2 = this.mAnchorInfo;
            aVar2.f13896d = this.mShouldReverseLayout ^ this.mStackFromEnd;
            E(tVar, xVar, aVar2);
            this.mAnchorInfo.f13897e = true;
        } else if (focusedChild != null && (this.mOrientationHelper.g(focusedChild) >= this.mOrientationHelper.i() || this.mOrientationHelper.d(focusedChild) <= this.mOrientationHelper.m())) {
            this.mAnchorInfo.c(focusedChild, getPosition(focusedChild));
        }
        c cVar = this.mLayoutState;
        cVar.f13907f = cVar.f13912k >= 0 ? 1 : -1;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(xVar, iArr);
        int iMax = Math.max(0, this.mReusableIntPair[0]) + this.mOrientationHelper.m();
        int iMax2 = Math.max(0, this.mReusableIntPair[1]) + this.mOrientationHelper.j();
        if (xVar.e() && (i14 = this.mPendingScrollPosition) != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (viewFindViewByPosition = findViewByPosition(i14)) != null) {
            if (this.mShouldReverseLayout) {
                i15 = this.mOrientationHelper.i() - this.mOrientationHelper.d(viewFindViewByPosition);
                iG = this.mPendingScrollPositionOffset;
            } else {
                iG = this.mOrientationHelper.g(viewFindViewByPosition) - this.mOrientationHelper.m();
                i15 = this.mPendingScrollPositionOffset;
            }
            int i17 = i15 - iG;
            if (i17 > 0) {
                iMax += i17;
            } else {
                iMax2 -= i17;
            }
        }
        a aVar3 = this.mAnchorInfo;
        if (!aVar3.f13896d ? !this.mShouldReverseLayout : this.mShouldReverseLayout) {
            i16 = 1;
        }
        onAnchorReady(tVar, xVar, aVar3, i16);
        detachAndScrapAttachedViews(tVar);
        this.mLayoutState.f13914m = resolveIsInfinite();
        this.mLayoutState.f13911j = xVar.e();
        this.mLayoutState.f13910i = 0;
        a aVar4 = this.mAnchorInfo;
        if (aVar4.f13896d) {
            J(aVar4);
            c cVar2 = this.mLayoutState;
            cVar2.f13909h = iMax;
            fill(tVar, cVar2, xVar, false);
            c cVar3 = this.mLayoutState;
            i11 = cVar3.f13903b;
            int i18 = cVar3.f13905d;
            int i19 = cVar3.f13904c;
            if (i19 > 0) {
                iMax2 += i19;
            }
            H(this.mAnchorInfo);
            c cVar4 = this.mLayoutState;
            cVar4.f13909h = iMax2;
            cVar4.f13905d += cVar4.f13906e;
            fill(tVar, cVar4, xVar, false);
            c cVar5 = this.mLayoutState;
            i10 = cVar5.f13903b;
            int i20 = cVar5.f13904c;
            if (i20 > 0) {
                I(i18, i11);
                c cVar6 = this.mLayoutState;
                cVar6.f13909h = i20;
                fill(tVar, cVar6, xVar, false);
                i11 = this.mLayoutState.f13903b;
            }
        } else {
            H(aVar4);
            c cVar7 = this.mLayoutState;
            cVar7.f13909h = iMax2;
            fill(tVar, cVar7, xVar, false);
            c cVar8 = this.mLayoutState;
            i10 = cVar8.f13903b;
            int i21 = cVar8.f13905d;
            int i22 = cVar8.f13904c;
            if (i22 > 0) {
                iMax += i22;
            }
            J(this.mAnchorInfo);
            c cVar9 = this.mLayoutState;
            cVar9.f13909h = iMax;
            cVar9.f13905d += cVar9.f13906e;
            fill(tVar, cVar9, xVar, false);
            c cVar10 = this.mLayoutState;
            i11 = cVar10.f13903b;
            int i23 = cVar10.f13904c;
            if (i23 > 0) {
                G(i21, i10);
                c cVar11 = this.mLayoutState;
                cVar11.f13909h = i23;
                fill(tVar, cVar11, xVar, false);
                i10 = this.mLayoutState.f13903b;
            }
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int iR2 = r(i10, tVar, xVar, true);
                i12 = i11 + iR2;
                i13 = i10 + iR2;
                iR = s(i12, tVar, xVar, false);
            } else {
                int iS = s(i11, tVar, xVar, true);
                i12 = i11 + iS;
                i13 = i10 + iS;
                iR = r(i13, tVar, xVar, false);
            }
            i11 = i12 + iR;
            i10 = i13 + iR;
        }
        v(tVar, xVar, i11, i10);
        if (xVar.e()) {
            this.mAnchorInfo.e();
        } else {
            this.mOrientationHelper.s();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public void onLayoutCompleted(RecyclerView.x xVar) {
        super.onLayoutCompleted(xVar);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.e();
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.mPendingSavedState = savedState;
            if (this.mPendingScrollPosition != -1) {
                savedState.invalidateAnchor();
            }
            requestLayout();
        }
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z10 = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            savedState.mAnchorLayoutFromEnd = z10;
            if (z10) {
                View viewT = t();
                savedState.mAnchorOffset = this.mOrientationHelper.i() - this.mOrientationHelper.d(viewT);
                savedState.mAnchorPosition = getPosition(viewT);
            } else {
                View viewU = u();
                savedState.mAnchorPosition = getPosition(viewU);
                savedState.mAnchorOffset = this.mOrientationHelper.g(viewU) - this.mOrientationHelper.m();
            }
        } else {
            savedState.invalidateAnchor();
        }
        return savedState;
    }

    public void prepareForDrop(@NonNull View view, @NonNull View view2, int i10, int i11) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        B();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        byte b10 = position < position2 ? (byte) 1 : (byte) -1;
        if (this.mShouldReverseLayout) {
            if (b10 == 1) {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.i() - (this.mOrientationHelper.g(view2) + this.mOrientationHelper.e(view)));
                return;
            } else {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.i() - this.mOrientationHelper.d(view2));
                return;
            }
        }
        if (b10 == -1) {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.g(view2));
        } else {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.d(view2) - this.mOrientationHelper.e(view));
        }
    }

    boolean resolveIsInfinite() {
        return this.mOrientationHelper.k() == 0 && this.mOrientationHelper.h() == 0;
    }

    int scrollBy(int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.f13902a = true;
        int i11 = i10 > 0 ? 1 : -1;
        int iAbs = Math.abs(i10);
        F(i11, iAbs, true, xVar);
        c cVar = this.mLayoutState;
        int iFill = cVar.f13908g + fill(tVar, cVar, xVar, false);
        if (iFill < 0) {
            return 0;
        }
        if (iAbs > iFill) {
            i10 = i11 * iFill;
        }
        this.mOrientationHelper.r(-i10);
        this.mLayoutState.f13912k = i10;
        return i10;
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public int scrollHorizontallyBy(int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i10, tVar, xVar);
    }

    @Override
    public void scrollToPosition(int i10) {
        this.mPendingScrollPosition = i10;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i10, int i11) {
        this.mPendingScrollPosition = i10;
        this.mPendingScrollPositionOffset = i11;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        requestLayout();
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public int scrollVerticallyBy(int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i10, tVar, xVar);
    }

    public void setInitialPrefetchItemCount(int i10) {
        this.mInitialPrefetchItemCount = i10;
    }

    public void setOrientation(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i10);
        }
        assertNotInLayoutOrScroll(null);
        if (i10 != this.mOrientation || this.mOrientationHelper == null) {
            m mVarB = m.b(this, i10);
            this.mOrientationHelper = mVarB;
            this.mAnchorInfo.f13893a = mVarB;
            this.mOrientation = i10;
            requestLayout();
        }
    }

    public void setRecycleChildrenOnDetach(boolean z10) {
        this.mRecycleChildrenOnDetach = z10;
    }

    public void setReverseLayout(boolean z10) {
        assertNotInLayoutOrScroll(null);
        if (z10 == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z10;
        requestLayout();
    }

    public void setSmoothScrollbarEnabled(boolean z10) {
        this.mSmoothScrollbarEnabled = z10;
    }

    public void setStackFromEnd(boolean z10) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd == z10) {
            return;
        }
        this.mStackFromEnd = z10;
        requestLayout();
    }

    @Override
    boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.x xVar, int i10) {
        h hVar = new h(recyclerView.getContext());
        hVar.p(i10);
        startSmoothScroll(hVar);
    }

    @Override
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    void validateChildOrder() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("validating child count ");
        sb2.append(getChildCount());
        if (getChildCount() < 1) {
            return;
        }
        int position = getPosition(getChildAt(0));
        int iG = this.mOrientationHelper.g(getChildAt(0));
        if (this.mShouldReverseLayout) {
            for (int i10 = 1; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                int position2 = getPosition(childAt);
                int iG2 = this.mOrientationHelper.g(childAt);
                if (position2 < position) {
                    w();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("detected invalid position. loc invalid? ");
                    sb3.append(iG2 < iG);
                    throw new RuntimeException(sb3.toString());
                }
                if (iG2 > iG) {
                    w();
                    throw new RuntimeException("detected invalid location");
                }
            }
            return;
        }
        for (int i11 = 1; i11 < getChildCount(); i11++) {
            View childAt2 = getChildAt(i11);
            int position3 = getPosition(childAt2);
            int iG3 = this.mOrientationHelper.g(childAt2);
            if (position3 < position) {
                w();
                StringBuilder sb4 = new StringBuilder();
                sb4.append("detected invalid position. loc invalid? ");
                sb4.append(iG3 < iG);
                throw new RuntimeException(sb4.toString());
            }
            if (iG3 < iG) {
                w();
                throw new RuntimeException("detected invalid location");
            }
        }
    }

    public LinearLayoutManager(Context context, int i10, boolean z10) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new a();
        this.mLayoutChunkResult = new b();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        setOrientation(i10);
        setReverseLayout(z10);
    }

    @SuppressLint({"UnknownNullness"})
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new a();
        this.mLayoutChunkResult = new b();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        RecyclerView.m.d properties = RecyclerView.m.getProperties(context, attributeSet, i10, i11);
        setOrientation(properties.f13926a);
        setReverseLayout(properties.f13928c);
        setStackFromEnd(properties.f13929d);
    }
}
