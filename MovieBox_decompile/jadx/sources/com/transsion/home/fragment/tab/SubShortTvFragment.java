package com.transsion.home.fragment.tab;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.home.R$id;
import com.transsion.shorttv.ui.fragment.ShortTVDiscoverFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0007*\u0001/\b\u0007\u0018\u0000 32\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00014B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u001f\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0011\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016¢\u0006\u0004\b \u0010!R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010(\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010$R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u00102\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101¨\u00065"}, d2 = {"Lcom/transsion/home/fragment/tab/SubShortTvFragment;", "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;", "Lqk/v;", "<init>", "()V", "", "y0", "", "alpha", "E0", "(F)V", "z0", "()F", "Landroid/view/LayoutInflater;", "inflater", "A0", "(Landroid/view/LayoutInflater;)Lqk/v;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "p0", "", "lastAdPosition", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "wrapperNativeManager", "l0", "(ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "Landroidx/recyclerview/widget/RecyclerView;", "f0", "()Landroidx/recyclerview/widget/RecyclerView;", "", "g", "Z", "mHasTranslateWindow", "h", "I", "mHeaderBgHeight", "i", "mIsFirstRender", "Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;", "j", "Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;", "shorTvFragment", "com/transsion/home/fragment/tab/SubShortTvFragment$b", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/home/fragment/tab/SubShortTvFragment$b;", "mRecycleScrollListener", "l", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SubShortTvFragment extends BaseHomeSubFragment<qk.v> {

    public static final Companion INSTANCE = new Companion(null);

    public static final int f44117m = 8;

    private boolean mHasTranslateWindow;

    private int mHeaderBgHeight;

    private ShortTVDiscoverFragment shorTvFragment;

    private boolean mIsFirstRender = true;

    private final b mRecycleScrollListener = new b();

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SubShortTvFragment a(int i10) {
            SubShortTvFragment subShortTvFragment = new SubShortTvFragment();
            subShortTvFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("tab_id", Integer.valueOf(i10))));
            return subShortTvFragment;
        }

        private Companion() {
        }
    }

    public static final class b extends RecyclerView.r {
        b() {
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            if (SubShortTvFragment.this.mHasTranslateWindow) {
                int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
                SubShortTvFragment subShortTvFragment = SubShortTvFragment.this;
                subShortTvFragment.E0(RangesKt.g((iComputeVerticalScrollOffset * 1.0f) / subShortTvFragment.mHeaderBgHeight, 1.0f));
                if (!SubShortTvFragment.this.getMIsWhite() && SubShortTvFragment.this.z0() < 0.7f) {
                    SubShortTvFragment.this.b0(true);
                } else {
                    if (!SubShortTvFragment.this.getMIsWhite() || SubShortTvFragment.this.z0() < 0.7f) {
                        return;
                    }
                    SubShortTvFragment.this.b0(false);
                }
            }
        }
    }

    public static final vr.a B0() {
        return new com.transsion.postdetail.shorttv.factory.i();
    }

    public static final ws.a C0() {
        return new com.transsion.postdetail.shorttv.factory.a();
    }

    public static final Unit D0(SubShortTvFragment subShortTvFragment, boolean z10) {
        subShortTvFragment.mHasTranslateWindow = z10;
        if (subShortTvFragment.mIsFirstRender) {
            subShortTvFragment.y0();
            subShortTvFragment.mIsFirstRender = false;
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void E0(float alpha) {
        View view;
        qk.v vVar = (qk.v) getMViewBinding();
        if (vVar == null || (view = vVar.f69861c) == null) {
            return;
        }
        view.setAlpha(alpha);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void y0() {
        View view;
        FrameLayout frameLayout;
        qk.v vVar = (qk.v) getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (vVar == null || (frameLayout = vVar.f69860b) == null) ? null : frameLayout.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        if (this.mHasTranslateWindow) {
            layoutParams2.topMargin = 0;
            E0(0.0f);
            b0(true);
        } else {
            qk.v vVar2 = (qk.v) getMViewBinding();
            layoutParams2.topMargin = (vVar2 == null || (view = vVar2.f69861c) == null) ? 0 : view.getHeight();
            E0(1.0f);
            b0(false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final float z0() {
        View view;
        qk.v vVar = (qk.v) getMViewBinding();
        if (vVar == null || (view = vVar.f69861c) == null) {
            return 0.0f;
        }
        return view.getAlpha();
    }

    @Override
    public qk.v getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        qk.v vVarC = qk.v.c(inflater);
        Intrinsics.g(vVarC, "inflate(...)");
        return vVarC;
    }

    @Override
    public RecyclerView f0() {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initView(View view, Bundle savedInstanceState) {
        View view2;
        ViewGroup.LayoutParams layoutParams;
        Intrinsics.h(view, "view");
        pq.c.f69249a.a(new Function0() {
            @Override
            public final Object invoke() {
                return SubShortTvFragment.B0();
            }
        });
        cs.a.f58651a.a(new Function0() {
            @Override
            public final Object invoke() {
                return SubShortTvFragment.C0();
            }
        });
        this.shorTvFragment = ShortTVDiscoverFragment.INSTANCE.a(true, getArguments());
        this.mHeaderBgHeight = h0();
        qk.v vVar = (qk.v) getMViewBinding();
        if (vVar != null && (view2 = vVar.f69861c) != null && (layoutParams = view2.getLayoutParams()) != null) {
            layoutParams.height = this.mHeaderBgHeight;
        }
        ShortTVDiscoverFragment shortTVDiscoverFragment = this.shorTvFragment;
        if (shortTVDiscoverFragment != null) {
            shortTVDiscoverFragment.B1(this.mRecycleScrollListener, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return SubShortTvFragment.D0(this.f44306a, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    @Override
    public void l0(int lastAdPosition, BiddingNativeManager wrapperNativeManager) {
        Intrinsics.h(wrapperNativeManager, "wrapperNativeManager");
    }

    @Override
    public void lazyLoadData() {
        y0();
        ShortTVDiscoverFragment shortTVDiscoverFragment = this.shorTvFragment;
        if (shortTVDiscoverFragment != null) {
            getChildFragmentManager().p().s(R$id.sub_shor_tv_container, shortTVDiscoverFragment).i();
        }
    }

    @Override
    public void p0() {
        ShortTVDiscoverFragment shortTVDiscoverFragment = this.shorTvFragment;
        if (shortTVDiscoverFragment != null) {
            shortTVDiscoverFragment.u1();
        }
    }
}
