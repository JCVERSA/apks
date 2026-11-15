package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public abstract class r extends RecyclerView.p {
    static final float MILLISECONDS_PER_INCH = 100.0f;
    private Scroller mGravityScroller;
    RecyclerView mRecyclerView;
    private final RecyclerView.r mScrollListener = new a();

    class a extends RecyclerView.r {

        boolean f14100a = false;

        a() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            super.onScrollStateChanged(recyclerView, i10);
            if (i10 == 0 && this.f14100a) {
                this.f14100a = false;
                r.this.snapToTargetExistingView();
            }
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            if (i10 == 0 && i11 == 0) {
                return;
            }
            this.f14100a = true;
        }
    }

    class b extends h {
        b(Context context) {
            super(context);
        }

        @Override
        protected void o(View view, RecyclerView.x xVar, RecyclerView.w.a aVar) {
            r rVar = r.this;
            RecyclerView recyclerView = rVar.mRecyclerView;
            if (recyclerView == null) {
                return;
            }
            int[] iArrCalculateDistanceToFinalSnap = rVar.calculateDistanceToFinalSnap(recyclerView.getLayoutManager(), view);
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
    }

    private void a() {
        this.mRecyclerView.removeOnScrollListener(this.mScrollListener);
        this.mRecyclerView.setOnFlingListener(null);
    }

    private void b() {
        if (this.mRecyclerView.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.mRecyclerView.addOnScrollListener(this.mScrollListener);
        this.mRecyclerView.setOnFlingListener(this);
    }

    private boolean c(RecyclerView.m mVar, int i10, int i11) {
        RecyclerView.w wVarCreateScroller;
        int iFindTargetSnapPosition;
        if (!(mVar instanceof RecyclerView.w.b) || (wVarCreateScroller = createScroller(mVar)) == null || (iFindTargetSnapPosition = findTargetSnapPosition(mVar, i10, i11)) == -1) {
            return false;
        }
        wVarCreateScroller.p(iFindTargetSnapPosition);
        mVar.startSmoothScroll(wVarCreateScroller);
        return true;
    }

    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            a();
        }
        this.mRecyclerView = recyclerView;
        if (recyclerView != null) {
            b();
            this.mGravityScroller = new Scroller(this.mRecyclerView.getContext(), new DecelerateInterpolator());
            snapToTargetExistingView();
        }
    }

    public abstract int[] calculateDistanceToFinalSnap(RecyclerView.m mVar, View view);

    @SuppressLint({"UnknownNullness"})
    public int[] calculateScrollDistance(int i10, int i11) {
        this.mGravityScroller.fling(0, 0, i10, i11, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return new int[]{this.mGravityScroller.getFinalX(), this.mGravityScroller.getFinalY()};
    }

    protected RecyclerView.w createScroller(RecyclerView.m mVar) {
        return createSnapScroller(mVar);
    }

    @Nullable
    @Deprecated
    protected h createSnapScroller(@NonNull RecyclerView.m mVar) {
        if (mVar instanceof RecyclerView.w.b) {
            return new b(this.mRecyclerView.getContext());
        }
        return null;
    }

    public abstract View findSnapView(RecyclerView.m mVar);

    public abstract int findTargetSnapPosition(RecyclerView.m mVar, int i10, int i11);

    @Override
    public boolean onFling(int i10, int i11) {
        RecyclerView.m layoutManager = this.mRecyclerView.getLayoutManager();
        if (layoutManager == null || this.mRecyclerView.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.mRecyclerView.getMinFlingVelocity();
        return (Math.abs(i11) > minFlingVelocity || Math.abs(i10) > minFlingVelocity) && c(layoutManager, i10, i11);
    }

    void snapToTargetExistingView() {
        RecyclerView.m layoutManager;
        View viewFindSnapView;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewFindSnapView = findSnapView(layoutManager)) == null) {
            return;
        }
        int[] iArrCalculateDistanceToFinalSnap = calculateDistanceToFinalSnap(layoutManager, viewFindSnapView);
        int i10 = iArrCalculateDistanceToFinalSnap[0];
        if (i10 == 0 && iArrCalculateDistanceToFinalSnap[1] == 0) {
            return;
        }
        this.mRecyclerView.smoothScrollBy(i10, iArrCalculateDistanceToFinalSnap[1]);
    }
}
