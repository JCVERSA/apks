package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class n extends r {
    private static final int MAX_SCROLL_ON_FLING_DURATION = 100;

    @Nullable
    private m mHorizontalHelper;

    @Nullable
    private m mVerticalHelper;

    class a extends h {
        a(Context context) {
            super(context);
        }

        @Override
        protected void o(View view, RecyclerView.x xVar, RecyclerView.w.a aVar) {
            n nVar = n.this;
            int[] iArrCalculateDistanceToFinalSnap = nVar.calculateDistanceToFinalSnap(nVar.mRecyclerView.getLayoutManager(), view);
            int i10 = iArrCalculateDistanceToFinalSnap[0];
            int i11 = iArrCalculateDistanceToFinalSnap[1];
            int iW = w(Math.max(Math.abs(i10), Math.abs(i11)));
            if (iW > 0) {
                aVar.d(i10, i11, iW, this.f14076j);
            }
        }

        @Override
        protected float v(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }

        @Override
        protected int x(int i10) {
            return Math.min(100, super.x(i10));
        }
    }

    private int d(View view, m mVar) {
        return (mVar.g(view) + (mVar.e(view) / 2)) - (mVar.m() + (mVar.n() / 2));
    }

    private View e(RecyclerView.m mVar, m mVar2) {
        int childCount = mVar.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int iM = mVar2.m() + (mVar2.n() / 2);
        int i10 = Integer.MAX_VALUE;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = mVar.getChildAt(i11);
            int iAbs = Math.abs((mVar2.g(childAt) + (mVar2.e(childAt) / 2)) - iM);
            if (iAbs < i10) {
                view = childAt;
                i10 = iAbs;
            }
        }
        return view;
    }

    private m f(RecyclerView.m mVar) {
        m mVar2 = this.mHorizontalHelper;
        if (mVar2 == null || mVar2.f14092a != mVar) {
            this.mHorizontalHelper = m.a(mVar);
        }
        return this.mHorizontalHelper;
    }

    private m g(RecyclerView.m mVar) {
        if (mVar.canScrollVertically()) {
            return h(mVar);
        }
        if (mVar.canScrollHorizontally()) {
            return f(mVar);
        }
        return null;
    }

    private m h(RecyclerView.m mVar) {
        m mVar2 = this.mVerticalHelper;
        if (mVar2 == null || mVar2.f14092a != mVar) {
            this.mVerticalHelper = m.c(mVar);
        }
        return this.mVerticalHelper;
    }

    private boolean i(RecyclerView.m mVar, int i10, int i11) {
        if (mVar.canScrollHorizontally()) {
            return i10 > 0;
        }
        return i11 > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean j(RecyclerView.m mVar) {
        PointF pointFComputeScrollVectorForPosition;
        int itemCount = mVar.getItemCount();
        if (!(mVar instanceof RecyclerView.w.b) || (pointFComputeScrollVectorForPosition = ((RecyclerView.w.b) mVar).computeScrollVectorForPosition(itemCount - 1)) == null) {
            return false;
        }
        return pointFComputeScrollVectorForPosition.x < 0.0f || pointFComputeScrollVectorForPosition.y < 0.0f;
    }

    @Override
    @Nullable
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.m mVar, @NonNull View view) {
        int[] iArr = new int[2];
        if (mVar.canScrollHorizontally()) {
            iArr[0] = d(view, f(mVar));
        } else {
            iArr[0] = 0;
        }
        if (mVar.canScrollVertically()) {
            iArr[1] = d(view, h(mVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override
    @Nullable
    protected RecyclerView.w createScroller(@NonNull RecyclerView.m mVar) {
        if (mVar instanceof RecyclerView.w.b) {
            return new a(this.mRecyclerView.getContext());
        }
        return null;
    }

    @Override
    public View findSnapView(RecyclerView.m mVar) {
        if (mVar.canScrollVertically()) {
            return e(mVar, h(mVar));
        }
        if (mVar.canScrollHorizontally()) {
            return e(mVar, f(mVar));
        }
        return null;
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public int findTargetSnapPosition(RecyclerView.m mVar, int i10, int i11) {
        m mVarG;
        int itemCount = mVar.getItemCount();
        if (itemCount == 0 || (mVarG = g(mVar)) == null) {
            return -1;
        }
        int childCount = mVar.getChildCount();
        View view = null;
        int i12 = Integer.MAX_VALUE;
        int i13 = Integer.MIN_VALUE;
        View view2 = null;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = mVar.getChildAt(i14);
            if (childAt != null) {
                int iD = d(childAt, mVarG);
                if (iD <= 0 && iD > i13) {
                    view2 = childAt;
                    i13 = iD;
                }
                if (iD >= 0 && iD < i12) {
                    view = childAt;
                    i12 = iD;
                }
            }
        }
        boolean zI = i(mVar, i10, i11);
        if (zI && view != null) {
            return mVar.getPosition(view);
        }
        if (!zI && view2 != null) {
            return mVar.getPosition(view2);
        }
        if (zI) {
            view = view2;
        }
        if (view == null) {
            return -1;
        }
        int position = mVar.getPosition(view) + (j(mVar) == zI ? -1 : 1);
        if (position < 0 || position >= itemCount) {
            return -1;
        }
        return position;
    }
}
