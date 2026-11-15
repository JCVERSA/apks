package com.transsion.shorttv_pugc.base.pager;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.n;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.shorttv_pugc.base.pager.PagerLayoutManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000k\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001?\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B+\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u0004\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0013\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\f2\f\u0010\u0012\u001a\b\u0018\u00010\u0011R\u00020\fH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0016\u0010\u0017J/\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\b2\f\u0010\u0012\u001a\b\u0018\u00010\u0011R\u00020\f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ/\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\b2\f\u0010\u0012\u001a\b\u0018\u00010\u0011R\u00020\f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001e\u0010\u001cJ\u0017\u0010!\u001a\u00020\u000e2\b\u0010 \u001a\u0004\u0018\u00010\u001f¢\u0006\u0004\b!\u0010\"J'\u0010#\u001a\u00020\u000e2\f\u0010\u0012\u001a\b\u0018\u00010\u0011R\u00020\f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b&\u0010'R\u001b\u0010-\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0018\u00100\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00103\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\"\u0010&\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u0010'\"\u0004\b7\u00108R\u0016\u0010:\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00102R\u0016\u0010<\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u00102R\u0016\u0010>\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u00102R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\u0014\u0010F\u001a\u00020C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010E¨\u0006G"}, d2 = {"Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;", "Landroidx/recyclerview/widget/LinearLayoutManager;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "onAttachedToWindow", "(Landroidx/recyclerview/widget/RecyclerView;)V", "Landroidx/recyclerview/widget/RecyclerView$t;", "recycler", "onDetachedFromWindow", "(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V", "Landroid/view/View;", "T", "()Landroid/view/View;", "dy", "Landroidx/recyclerview/widget/RecyclerView$x;", "state", "scrollVerticallyBy", "(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;)I", "dx", "scrollHorizontallyBy", "Lks/a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "X", "(Lks/a;)V", "onLayoutChildren", "(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;)V", "", "canScrollVertically", "()Z", "Landroidx/recyclerview/widget/n;", "a", "Lkotlin/Lazy;", "U", "()Landroidx/recyclerview/widget/n;", "pagerSnapHelper", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lks/a;", "onViewPagerListener", "c", "I", "direction", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "getCanScrollVertically", "W", "(Z)V", "e", "oldState", "f", "oldPosition", "g", "oldPositionIdle", "com/transsion/shorttv_pugc/base/pager/PagerLayoutManager$b", "h", "Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager$b;", "rvScrollListener", "Landroidx/recyclerview/widget/RecyclerView$o;", "i", "Landroidx/recyclerview/widget/RecyclerView$o;", "childAttachStateChangeListener", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PagerLayoutManager extends LinearLayoutManager {

    private final Lazy pagerSnapHelper;

    private ks.a onViewPagerListener;

    private int direction;

    private boolean canScrollVertically;

    private int oldState;

    private int oldPosition;

    private int oldPositionIdle;

    private final b rvScrollListener;

    private final RecyclerView.o childAttachStateChangeListener;

    public static final class a implements RecyclerView.o {
        a() {
        }

        @Override
        public void onChildViewAttachedToWindow(View view) {
            ks.a aVar;
            Intrinsics.h(view, "view");
            int position = PagerLayoutManager.this.getPosition(view);
            if (PagerLayoutManager.this.getChildCount() == 1 && position == 0 && (aVar = PagerLayoutManager.this.onViewPagerListener) != null) {
                aVar.b(view);
            }
        }

        @Override
        public void onChildViewDetachedFromWindow(View view) {
            Intrinsics.h(view, "view");
            if (PagerLayoutManager.this.direction >= 0) {
                ks.a aVar = PagerLayoutManager.this.onViewPagerListener;
                if (aVar != null) {
                    aVar.c(true, PagerLayoutManager.this.getPosition(view), view);
                    return;
                }
                return;
            }
            ks.a aVar2 = PagerLayoutManager.this.onViewPagerListener;
            if (aVar2 != null) {
                aVar2.c(false, PagerLayoutManager.this.getPosition(view), view);
            }
        }
    }

    public static final class b extends RecyclerView.r {
        b() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i10);
            View viewFindSnapView = PagerLayoutManager.this.U().findSnapView(PagerLayoutManager.this);
            if (viewFindSnapView == null) {
                return;
            }
            int position = PagerLayoutManager.this.getPosition(viewFindSnapView);
            if (PagerLayoutManager.this.oldState != i10 && PagerLayoutManager.this.oldPosition != position) {
                PagerLayoutManager.this.oldState = i10;
                PagerLayoutManager.this.oldPosition = position;
                ks.a aVar = PagerLayoutManager.this.onViewPagerListener;
                if (aVar != null) {
                    aVar.a(position, position == PagerLayoutManager.this.getItemCount() - 1, viewFindSnapView);
                }
            }
            if (i10 == 0) {
                PagerLayoutManager.this.oldPositionIdle = position;
                ks.a aVar2 = PagerLayoutManager.this.onViewPagerListener;
                if (aVar2 != null) {
                    aVar2.d(position, position == PagerLayoutManager.this.getItemCount() - 1, viewFindSnapView);
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerLayoutManager(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.pagerSnapHelper = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return PagerLayoutManager.V();
            }
        });
        this.canScrollVertically = true;
        this.oldState = -1;
        this.oldPosition = -1;
        this.oldPositionIdle = -1;
        this.rvScrollListener = new b();
        this.childAttachStateChangeListener = new a();
    }

    public final n U() {
        return (n) this.pagerSnapHelper.getValue();
    }

    public static final n V() {
        return new n();
    }

    public final View T() {
        return U().findSnapView(this);
    }

    public final void W(boolean z10) {
        this.canScrollVertically = z10;
    }

    public final void X(ks.a listener) {
        this.onViewPagerListener = listener;
    }

    @Override
    public boolean canScrollVertically() {
        return this.canScrollVertically & super.canScrollVertically();
    }

    @Override
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        if ((recyclerView != null ? recyclerView.getOnFlingListener() : null) == null) {
            U().attachToRecyclerView(recyclerView);
        }
        if (recyclerView != null) {
            recyclerView.addOnChildAttachStateChangeListener(this.childAttachStateChangeListener);
        }
        if (recyclerView != null) {
            recyclerView.addOnScrollListener(this.rvScrollListener);
        }
    }

    @Override
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.t recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        if (recyclerView != null) {
            recyclerView.removeOnChildAttachStateChangeListener(this.childAttachStateChangeListener);
        }
        if (recyclerView != null) {
            recyclerView.removeOnScrollListener(this.rvScrollListener);
        }
    }

    @Override
    public void onLayoutChildren(RecyclerView.t recycler, RecyclerView.x state) {
        try {
            super.onLayoutChildren(recycler, state);
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    @Override
    public int scrollHorizontallyBy(int dx2, RecyclerView.t recycler, RecyclerView.x state) {
        this.direction = dx2;
        return super.scrollHorizontallyBy(dx2, recycler, state);
    }

    @Override
    public int scrollVerticallyBy(int dy2, RecyclerView.t recycler, RecyclerView.x state) {
        this.direction = dy2;
        return super.scrollVerticallyBy(dy2, recycler, state);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        Intrinsics.h(context, "context");
        this.pagerSnapHelper = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return PagerLayoutManager.V();
            }
        });
        this.canScrollVertically = true;
        this.oldState = -1;
        this.oldPosition = -1;
        this.oldPositionIdle = -1;
        this.rvScrollListener = new b();
        this.childAttachStateChangeListener = new a();
    }
}
