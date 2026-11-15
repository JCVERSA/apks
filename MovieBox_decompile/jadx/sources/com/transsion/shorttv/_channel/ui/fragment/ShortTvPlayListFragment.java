package com.transsion.shorttv._channel.ui.fragment;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.os.d;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.google.android.material.appbar.AppBarLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv._channel.model.ShortTvPlayListResp;
import com.transsion.shorttv._channel.model.ShortTvPlayListType;
import com.transsion.shorttv._channel.ui.activity.ShortTvPlayListActivity;
import com.transsion.shorttv._channel.ui.adapter.a;
import com.transsion.shorttv._channel.ui.adapter.e;
import com.transsion.shorttv._channel.ui.fragment.ShortTvPlayListFragment;
import com.transsion.shorttv._channel.ui.viewmodel.ShortTvPlayListViewModel;
import com.transsion.shorttv.base.fragment.PageStatusFragment;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.Staff;
import com.transsion.shorttv.bean.Subject;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.y0;
import org.json.JSONException;
import org.json.JSONObject;
import qr.b0;
import r6.f;
import yg.l;

@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 Z2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001[B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0011\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0013\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0017\u001a\u00020\u00122\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u0017\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001f\u0010\u0018J\u000f\u0010 \u001a\u00020\u0012H\u0002¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0012H\u0002¢\u0006\u0004\b!\u0010\u0004J\u0017\u0010$\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0007J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u0007J\u000f\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0012H\u0016¢\u0006\u0004\b+\u0010\u0004J\u000f\u0010,\u001a\u00020\u0012H\u0016¢\u0006\u0004\b,\u0010\u0004J\u000f\u0010-\u001a\u00020\u0012H\u0016¢\u0006\u0004\b-\u0010\u0004J\u000f\u0010.\u001a\u00020\u0012H\u0016¢\u0006\u0004\b.\u0010\u0004J\u000f\u0010/\u001a\u00020\u0005H\u0016¢\u0006\u0004\b/\u0010\u0007J\u000f\u00100\u001a\u00020\u0012H\u0016¢\u0006\u0004\b0\u0010\u0004J\u000f\u00101\u001a\u00020\u0012H\u0016¢\u0006\u0004\b1\u0010\u0004J\u000f\u00103\u001a\u000202H\u0016¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u0012H\u0016¢\u0006\u0004\b5\u0010\u0004R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u0010<\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010>\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010;R\u0018\u0010@\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010;R\u0018\u0010B\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010;R\u0016\u0010E\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010I\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0018\u0010L\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0018\u0010O\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u001b\u0010U\u001a\u00020P8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010TR\u0018\u0010Y\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010X¨\u0006\\"}, d2 = {"Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;", "Lcom/transsion/shorttv/base/fragment/PageStatusFragment;", "Lqr/b0;", "<init>", "()V", "", "Q0", "()Z", "Lcom/transsion/shorttv/_channel/ui/adapter/a;", "E0", "()Lcom/transsion/shorttv/_channel/ui/adapter/a;", "Lcom/transsion/shorttv/_channel/ui/adapter/e;", "I0", "()Lcom/transsion/shorttv/_channel/ui/adapter/e;", "Lcom/transsion/shorttv/bean/Subject;", "subjectItem", "", RequestParameters.POSITION, "", "A0", "(Lcom/transsion/shorttv/bean/Subject;I)V", "Lcom/transsion/shorttv/_channel/model/ShortTvPlayListResp;", "playListResp", "U0", "(Lcom/transsion/shorttv/_channel/model/ShortTvPlayListResp;)V", "reload", "loadData", "loadMore", "isExpand", "z0", "(Z)V", "V0", "S0", "initAd", "Landroid/view/LayoutInflater;", "inflater", "C0", "(Landroid/view/LayoutInflater;)Lqr/b0;", "isShowPageStateLayoutTitle", "isAudioShowNoNetworkLayout", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "receiveArguments", "initViewData", "initViewModel", "initListener", "isMonitorNetworkState", "retryLoadData", "loadDefaultData", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "onDestroy", "Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;", "i", "Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvPlayListViewModel;", "viewModel", "j", "Ljava/lang/String;", "mLabel", CampaignEx.JSON_KEY_AD_K, "mCategory", "l", "mRecType", "m", "mTopIds", "n", "I", "mTabId", "Lbr/b;", "o", "Lbr/b;", "mExposureHelper", TtmlNode.TAG_P, "Lcom/transsion/shorttv/_channel/ui/adapter/e;", "mSubjectAdapter", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/shorttv/_channel/ui/adapter/a;", "mCastAdapter", "Lxq/d;", CampaignEx.JSON_KEY_AD_R, "Lkotlin/Lazy;", "B0", "()Lxq/d;", "mPlayListDotHelper", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "s", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "v3ListManager", "t", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvPlayListFragment extends PageStatusFragment<b0> {

    public static final Companion INSTANCE = new Companion(null);

    private ShortTvPlayListViewModel viewModel;

    private String mLabel;

    private String mCategory;

    private String mRecType;

    private String mTopIds;

    private int mTabId;

    private br.b mExposureHelper;

    private e mSubjectAdapter;

    private a mCastAdapter;

    private final Lazy mPlayListDotHelper = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ShortTvPlayListFragment.R0();
        }
    });

    private BiddingListManager v3ListManager;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ShortTvPlayListFragment a(String str, String str2, String str3, String str4, int i10) {
            ShortTvPlayListFragment shortTvPlayListFragment = new ShortTvPlayListFragment();
            shortTvPlayListFragment.setArguments(d.b(TuplesKt.a("label", str), TuplesKt.a("category", str2), TuplesKt.a("recType", str3), TuplesKt.a("topIds", str4), TuplesKt.a("tab_id", Integer.valueOf(i10))));
            return shortTvPlayListFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements br.a {
        b() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            Boolean hasResource;
            List<Object> data;
            List<Object> data2;
            boolean zBooleanValue = false;
            size = 0;
            int size = 0;
            zBooleanValue = false;
            if (ShortTvPlayListFragment.this.Q0()) {
                a aVar = ShortTvPlayListFragment.this.mCastAdapter;
                if (aVar != null && (data2 = aVar.getData()) != null) {
                    size = data2.size();
                }
                if (i10 >= size) {
                    return;
                }
                a aVar2 = ShortTvPlayListFragment.this.mCastAdapter;
                Staff staff = aVar2 != null ? (Staff) aVar2.getItem(i10) : null;
                ShortTvPlayListFragment.this.B0().b("playlist", staff != null ? staff.getStaffId() : null, staff != null ? staff.getOps() : null, Integer.valueOf(i10), ShortTvPlayListFragment.this.mCategory, ShortTvPlayListFragment.this.mRecType, ShortTvPlayListFragment.this.mLabel);
                return;
            }
            e eVar = ShortTvPlayListFragment.this.mSubjectAdapter;
            if (i10 >= ((eVar == null || (data = eVar.getData()) == null) ? 0 : data.size())) {
                return;
            }
            e eVar2 = ShortTvPlayListFragment.this.mSubjectAdapter;
            Subject subject = eVar2 != null ? (Subject) eVar2.getItem(i10) : null;
            xq.d dVarB0 = ShortTvPlayListFragment.this.B0();
            String subjectId = subject != null ? subject.getSubjectId() : null;
            String ops = subject != null ? subject.getOps() : null;
            Integer numValueOf = Integer.valueOf(i10);
            if (subject != null && (hasResource = subject.getHasResource()) != null) {
                zBooleanValue = hasResource.booleanValue();
            }
            dVarB0.d("playlist", subjectId, ops, numValueOf, zBooleanValue, ShortTvPlayListFragment.this.mCategory, ShortTvPlayListFragment.this.mRecType, ShortTvPlayListFragment.this.mLabel);
        }
    }

    static final class c implements c0, FunctionAdapter {

        private final Function1 f50623a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f50623a = function;
        }

        @Override
        public final Function a() {
            return this.f50623a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f50623a.invoke(obj);
        }
    }

    private final void A0(Subject subjectItem, int position) {
        Boolean hasResource;
        Context context = getContext();
        if (context != null) {
            rr.a.f71324a.a((FragmentActivity) context, "playlist", subjectItem != null ? subjectItem.getOps() : null, (64 & 8) != 0 ? null : "download_subject", (64 & 16) != 0 ? false : true, (64 & 32) != 0 ? null : subjectItem, (64 & 64) != 0 ? null : null, (64 & 128) != 0 ? Boolean.FALSE : Boolean.TRUE);
            B0().a("playlist", "download_subject", subjectItem != null ? subjectItem.getSubjectId() : null, subjectItem != null ? subjectItem.getOps() : null, Integer.valueOf(position), (subjectItem == null || (hasResource = subjectItem.getHasResource()) == null) ? false : hasResource.booleanValue(), this.mCategory, this.mRecType, this.mLabel);
        }
    }

    public final xq.d B0() {
        return (xq.d) this.mPlayListDotHelper.getValue();
    }

    public static final Unit D0(ShortTvPlayListFragment shortTvPlayListFragment, int i10, BiddingNativeManager current) {
        List<Object> data;
        List<Object> data2;
        Intrinsics.h(current, "current");
        if (current != null) {
            int size = 0;
            if (shortTvPlayListFragment.Q0()) {
                Staff staff = new Staff();
                staff.setNonAdDelegate(current);
                a aVar = shortTvPlayListFragment.mCastAdapter;
                if (aVar != null && (data2 = aVar.getData()) != null) {
                    size = data2.size();
                }
                if (i10 < size) {
                    a aVar2 = shortTvPlayListFragment.mCastAdapter;
                    if (aVar2 != null) {
                        aVar2.n(i10, staff);
                    }
                } else {
                    a aVar3 = shortTvPlayListFragment.mCastAdapter;
                    if (aVar3 != null) {
                        aVar3.p(staff);
                    }
                }
            } else {
                Subject subject = new Subject(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, false, null, null, 0, 0, null, 0, null, 0, null, -1, 1073741823, null);
                subject.setNonAdDelegate(current);
                e eVar = shortTvPlayListFragment.mSubjectAdapter;
                if (eVar != null && (data = eVar.getData()) != null) {
                    size = data.size();
                }
                if (i10 < size) {
                    e eVar2 = shortTvPlayListFragment.mSubjectAdapter;
                    if (eVar2 != null) {
                        eVar2.n(i10, subject);
                    }
                } else {
                    e eVar3 = shortTvPlayListFragment.mSubjectAdapter;
                    if (eVar3 != null) {
                        eVar3.p(subject);
                    }
                }
            }
        }
        return Unit.f64096a;
    }

    private final a E0() {
        a aVar = new a(new ArrayList(), this.mExposureHelper);
        aVar.h0().z(true);
        aVar.h0().y(true);
        aVar.h0().D(new f() {
            @Override
            public final void a() {
                ShortTvPlayListFragment.F0(this.f73245a);
            }
        });
        aVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ShortTvPlayListFragment.H0(this.f73246a, baseQuickAdapter, view, i10);
            }
        });
        this.mCastAdapter = aVar;
        return aVar;
    }

    public static final void F0(final ShortTvPlayListFragment shortTvPlayListFragment) {
        RecyclerView recyclerView;
        if (l.f76264a.e()) {
            shortTvPlayListFragment.loadMore();
            return;
        }
        jr.b.f63248a.d(R$string.short_tv_no_network);
        b0 b0Var = (b0) shortTvPlayListFragment.getMViewBinding();
        if (b0Var == null || (recyclerView = b0Var.f69958e) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                ShortTvPlayListFragment.G0(this.f73239a);
            }
        }, 300L);
    }

    public static final void G0(ShortTvPlayListFragment shortTvPlayListFragment) {
        t6.f fVarH0;
        a aVar = shortTvPlayListFragment.mCastAdapter;
        if (aVar == null || (fVarH0 = aVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    public static final void H0(ShortTvPlayListFragment shortTvPlayListFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i10);
        if (item instanceof Staff) {
            Staff staff = (Staff) item;
            Navigator.x(TheRouter.c("/movie/staff").K("id", staff.getStaffId()).J("staff", (Serializable) item), shortTvPlayListFragment.requireContext(), null, 2, null);
            shortTvPlayListFragment.B0().c("playlist", staff.getStaffId(), staff.getOps(), Integer.valueOf(i10), shortTvPlayListFragment.mCategory, shortTvPlayListFragment.mRecType, shortTvPlayListFragment.mLabel);
        }
    }

    private final e I0() {
        e eVar = new e(new ArrayList(), this.mExposureHelper);
        eVar.h0().z(true);
        eVar.h0().y(true);
        eVar.h0().D(new f() {
            @Override
            public final void a() {
                ShortTvPlayListFragment.J0(this.f73248a);
            }
        });
        eVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ShortTvPlayListFragment.L0(this.f73249a, baseQuickAdapter, view, i10);
            }
        });
        eVar.l(R$id.ll_download);
        eVar.s1(new r6.b() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ShortTvPlayListFragment.M0(this.f73238a, baseQuickAdapter, view, i10);
            }
        });
        this.mSubjectAdapter = eVar;
        return eVar;
    }

    public static final void J0(final ShortTvPlayListFragment shortTvPlayListFragment) {
        RecyclerView recyclerView;
        if (l.f76264a.e()) {
            shortTvPlayListFragment.loadMore();
            return;
        }
        jr.b.f63248a.d(R$string.short_tv_no_network);
        b0 b0Var = (b0) shortTvPlayListFragment.getMViewBinding();
        if (b0Var == null || (recyclerView = b0Var.f69958e) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                ShortTvPlayListFragment.K0(this.f73240a);
            }
        }, 300L);
    }

    public static final void K0(ShortTvPlayListFragment shortTvPlayListFragment) {
        t6.f fVarH0;
        e eVar = shortTvPlayListFragment.mSubjectAdapter;
        if (eVar == null || (fVarH0 = eVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    public static final void L0(ShortTvPlayListFragment shortTvPlayListFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i10);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            xq.b.c(subject);
            xq.d dVarB0 = shortTvPlayListFragment.B0();
            String subjectId = subject.getSubjectId();
            String ops = subject.getOps();
            Integer numValueOf = Integer.valueOf(i10);
            Boolean hasResource = subject.getHasResource();
            dVarB0.e("playlist", subjectId, ops, numValueOf, hasResource != null ? hasResource.booleanValue() : false, shortTvPlayListFragment.mCategory, shortTvPlayListFragment.mRecType, shortTvPlayListFragment.mLabel);
        }
    }

    public static final void M0(ShortTvPlayListFragment shortTvPlayListFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (hr.d.f61483a.a(view.getId(), 2000L)) {
            return;
        }
        Object item = adapter.getItem(i10);
        Subject subject = item instanceof Subject ? (Subject) item : null;
        if (view.getId() == R$id.ll_download) {
            shortTvPlayListFragment.A0(subject, i10);
        }
    }

    public static final void N0(ShortTvPlayListFragment shortTvPlayListFragment, View view) {
        FragmentActivity activity = shortTvPlayListFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    public static final void O0(ShortTvPlayListFragment shortTvPlayListFragment, b0 b0Var, AppBarLayout appBarLayout, int i10) {
        if (shortTvPlayListFragment.getContext() == null) {
            return;
        }
        if (Math.abs(i10) >= appBarLayout.getTotalScrollRange()) {
            b0Var.f69959f.setBackgroundColor(androidx.core.content.b.getColor(shortTvPlayListFragment.requireContext(), R$color.short_tv_bg));
            b0Var.f69956c.setImageTintList(ColorStateList.valueOf(androidx.core.content.b.getColor(shortTvPlayListFragment.requireContext(), R$color.short_tv_white)));
            AppCompatTextView tvTitle = b0Var.f69960g;
            Intrinsics.g(tvTitle, "tvTitle");
            cr.b.e(tvTitle);
            AppCompatTextView tvTitleExpand = b0Var.f69961h;
            Intrinsics.g(tvTitleExpand, "tvTitleExpand");
            cr.b.b(tvTitleExpand);
            shortTvPlayListFragment.z0(true);
            return;
        }
        b0Var.f69959f.setBackgroundColor(androidx.core.content.b.getColor(shortTvPlayListFragment.requireContext(), R$color.short_tv_transparent));
        b0Var.f69956c.setImageTintList(ColorStateList.valueOf(androidx.core.content.b.getColor(shortTvPlayListFragment.requireContext(), R$color.short_tv_white)));
        AppCompatTextView tvTitle2 = b0Var.f69960g;
        Intrinsics.g(tvTitle2, "tvTitle");
        cr.b.b(tvTitle2);
        AppCompatTextView tvTitleExpand2 = b0Var.f69961h;
        Intrinsics.g(tvTitleExpand2, "tvTitleExpand");
        cr.b.e(tvTitleExpand2);
        shortTvPlayListFragment.z0(false);
    }

    public static final Unit P0(ShortTvPlayListFragment shortTvPlayListFragment, ShortTvPlayListResp shortTvPlayListResp) throws JSONException {
        List<Object> data;
        List<Object> data2;
        e eVar;
        t6.f fVarH0;
        t6.f fVarH1;
        e eVar2;
        t6.f fVarH2;
        List<Object> data3;
        List<Object> data4;
        a aVar;
        t6.f fVarH3;
        t6.f fVarH4;
        a aVar2;
        t6.f fVarH5;
        shortTvPlayListFragment.showContentView();
        shortTvPlayListFragment.U0(shortTvPlayListResp);
        if (shortTvPlayListFragment.Q0()) {
            a aVar3 = shortTvPlayListFragment.mCastAdapter;
            if (aVar3 != null && (fVarH4 = aVar3.h0()) != null && fVarH4.r() && (aVar2 = shortTvPlayListFragment.mCastAdapter) != null && (fVarH5 = aVar2.h0()) != null) {
                fVarH5.s();
            }
            if (shortTvPlayListResp != null) {
                List<Staff> staffs = shortTvPlayListResp.getStaffs();
                int size = staffs != null ? staffs.size() : 0;
                if (size < 4 && (aVar = shortTvPlayListFragment.mCastAdapter) != null && (fVarH3 = aVar.h0()) != null) {
                    t6.f.u(fVarH3, false, 1, null);
                }
                a aVar4 = shortTvPlayListFragment.mCastAdapter;
                if (aVar4 == null || (data4 = aVar4.getData()) == null || data4.size() != 0 || size != 0) {
                    shortTvPlayListFragment.V0(shortTvPlayListResp);
                } else {
                    PageStatusFragment.c0(shortTvPlayListFragment, false, 1, null);
                }
                qi.b logViewConfig = shortTvPlayListFragment.getLogViewConfig();
                if (logViewConfig != null) {
                    logViewConfig.k(true);
                }
            } else {
                a aVar5 = shortTvPlayListFragment.mCastAdapter;
                if (aVar5 != null && (data3 = aVar5.getData()) != null && data3.size() == 0) {
                    PageStatusFragment.c0(shortTvPlayListFragment, false, 1, null);
                }
            }
        } else {
            e eVar3 = shortTvPlayListFragment.mSubjectAdapter;
            if (eVar3 != null && (fVarH1 = eVar3.h0()) != null && fVarH1.r() && (eVar2 = shortTvPlayListFragment.mSubjectAdapter) != null && (fVarH2 = eVar2.h0()) != null) {
                fVarH2.s();
            }
            if (shortTvPlayListResp != null) {
                List<Subject> subjects = shortTvPlayListResp.getSubjects();
                int size2 = subjects != null ? subjects.size() : 0;
                if (size2 < 4 && (eVar = shortTvPlayListFragment.mSubjectAdapter) != null && (fVarH0 = eVar.h0()) != null) {
                    t6.f.u(fVarH0, false, 1, null);
                }
                e eVar4 = shortTvPlayListFragment.mSubjectAdapter;
                if (eVar4 == null || (data2 = eVar4.getData()) == null || data2.size() != 0 || size2 != 0) {
                    shortTvPlayListFragment.V0(shortTvPlayListResp);
                } else {
                    PageStatusFragment.c0(shortTvPlayListFragment, false, 1, null);
                }
                qi.b logViewConfig2 = shortTvPlayListFragment.getLogViewConfig();
                if (logViewConfig2 != null) {
                    logViewConfig2.k(true);
                }
            } else {
                e eVar5 = shortTvPlayListFragment.mSubjectAdapter;
                if (eVar5 != null && (data = eVar5.getData()) != null && data.size() == 0) {
                    PageStatusFragment.c0(shortTvPlayListFragment, false, 1, null);
                }
            }
        }
        return Unit.f64096a;
    }

    public final boolean Q0() {
        return Intrinsics.c(this.mCategory, ShortTvPlayListType.CAST.getValue());
    }

    public static final xq.d R0() {
        return new xq.d();
    }

    private final void S0() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvPlayListFragment.T0(this.f73241a, (AddToDownloadEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = AddToDownloadEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, y0.c().r(), false, function1);
    }

    public static final Unit T0(ShortTvPlayListFragment shortTvPlayListFragment, AddToDownloadEvent value) {
        e eVar;
        List<Object> data;
        Intrinsics.h(value, "value");
        try {
            e eVar2 = shortTvPlayListFragment.mSubjectAdapter;
            int i10 = -1;
            if (eVar2 != null && (data = eVar2.getData()) != null) {
                Iterator<Object> it = data.iterator();
                int i11 = 0;
                while (it.hasNext()) {
                    if (Intrinsics.c(((Subject) it.next()).getSubjectId(), value.getSubjectId())) {
                        i10 = i11;
                        break;
                    }
                    i11++;
                }
            }
            if (i10 >= 0 && (eVar = shortTvPlayListFragment.mSubjectAdapter) != null) {
                eVar.notifyItemChanged(i10);
            }
        } catch (Exception unused) {
            wf.a.C0922a.g(wf.a.f74274a, " callback change data fail", false, 2, null);
        }
        return Unit.f64096a;
    }

    private final void U0(ShortTvPlayListResp playListResp) throws JSONException {
        List<Subject> subjects;
        List<Staff> staffs;
        String ops = playListResp != null ? playListResp.getOps() : null;
        JSONObject jSONObject = (ops == null || ops.length() == 0) ? new JSONObject() : new JSONObject(ops);
        jSONObject.put("rec_type", this.mRecType);
        jSONObject.put("label", this.mLabel);
        String string = jSONObject.toString();
        if (playListResp != null && (staffs = playListResp.getStaffs()) != null) {
            for (Staff staff : staffs) {
                String ops2 = staff.getOps();
                if (ops2 == null || ops2.length() == 0) {
                    staff.setOps(string);
                }
            }
        }
        if (playListResp == null || (subjects = playListResp.getSubjects()) == null) {
            return;
        }
        for (Subject subject : subjects) {
            String ops3 = subject.getOps();
            if (ops3 == null || ops3.length() == 0) {
                subject.setOps(string);
            }
        }
    }

    private final void V0(ShortTvPlayListResp playListResp) {
        b0 b0Var;
        List<Object> data;
        String url;
        Cover cover;
        String thumbnail;
        Cover cover2;
        List<Object> data2;
        List<Object> data3;
        e eVar;
        List<Object> data4;
        String avatarUrl;
        List<Object> data5;
        a aVar;
        if (getContext() == null || (b0Var = (b0) getMViewBinding()) == null) {
            return;
        }
        String title = playListResp.getTitle();
        if (title != null && title.length() > 0) {
            b0Var.f69960g.setText(playListResp.getTitle());
            b0Var.f69961h.setText(playListResp.getTitle());
        }
        Subject subject = null;
        staff = null;
        Staff staff = null;
        subject = null;
        String str = "";
        if (Q0()) {
            List<Staff> staffs = playListResp.getStaffs();
            if (staffs != null && (aVar = this.mCastAdapter) != null) {
                aVar.q(staffs);
            }
            a aVar2 = this.mCastAdapter;
            if (aVar2 == null || (data4 = aVar2.getData()) == null || !(!data4.isEmpty())) {
                return;
            }
            a aVar3 = this.mCastAdapter;
            if (aVar3 != null && (data5 = aVar3.getData()) != null) {
                staff = (Staff) data5.get(0);
            }
            ni.f.a aVar4 = ni.f.f67269a;
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            ni.f.b bVarM = aVar4.m(contextRequireContext);
            if (staff != null && (avatarUrl = staff.getAvatarUrl()) != null) {
                str = avatarUrl;
            }
            ni.f.b bVarG = bVarM.g(str);
            AppCompatImageView ivCover = b0Var.f69957d;
            Intrinsics.g(ivCover, "ivCover");
            bVarG.d(ivCover);
            return;
        }
        List<Subject> subjects = playListResp.getSubjects();
        if (subjects != null) {
            Boolean showRank = playListResp.getShowRank();
            e eVar2 = this.mSubjectAdapter;
            if (eVar2 != null && (data3 = eVar2.getData()) != null && data3.isEmpty() && showRank != null && (eVar = this.mSubjectAdapter) != null) {
                eVar.T1(showRank.booleanValue());
            }
            e eVar3 = this.mSubjectAdapter;
            if (eVar3 != null) {
                eVar3.q(subjects);
            }
        }
        e eVar4 = this.mSubjectAdapter;
        if (eVar4 == null || (data = eVar4.getData()) == null || !(!data.isEmpty())) {
            return;
        }
        e eVar5 = this.mSubjectAdapter;
        if (eVar5 != null && (data2 = eVar5.getData()) != null) {
            subject = (Subject) data2.get(0);
        }
        ni.f.a aVar5 = ni.f.f67269a;
        Context contextRequireContext2 = requireContext();
        Intrinsics.g(contextRequireContext2, "requireContext(...)");
        ni.f.b bVarM2 = aVar5.m(contextRequireContext2);
        if (subject == null || (cover2 = subject.getCover()) == null || (url = cover2.getUrl()) == null) {
            url = "";
        }
        ni.f.b bVarG2 = bVarM2.g(url);
        if (subject != null && (cover = subject.getCover()) != null && (thumbnail = cover.getThumbnail()) != null) {
            str = thumbnail;
        }
        ni.f.b bVarL = bVarG2.l(str);
        AppCompatImageView ivCover2 = b0Var.f69957d;
        Intrinsics.g(ivCover2, "ivCover");
        bVarL.d(ivCover2);
    }

    private final void initAd() {
        Map mapA = com.transsion.ad.strategy.c.f41178a.a("");
        String str = this.mCategory;
        if (str != null) {
            mapA.put("category", str);
        }
        BiddingListManager biddingListManager = new BiddingListManager();
        b0 b0Var = (b0) getMViewBinding();
        biddingListManager.F(b0Var != null ? b0Var.f69958e : null);
        biddingListManager.A(v.a(this));
        biddingListManager.G("PlayListScene");
        biddingListManager.B(mapA);
        biddingListManager.z(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return ShortTvPlayListFragment.D0(this.f73247a, ((Integer) obj).intValue(), (BiddingNativeManager) obj2);
            }
        });
        this.v3ListManager = biddingListManager;
    }

    private final void loadData() {
        ShortTvPlayListViewModel shortTvPlayListViewModel = this.viewModel;
        if (shortTvPlayListViewModel == null) {
            Intrinsics.y("viewModel");
            shortTvPlayListViewModel = null;
        }
        ShortTvPlayListViewModel shortTvPlayListViewModel2 = shortTvPlayListViewModel;
        String str = this.mLabel;
        if (str == null) {
            str = "";
        }
        String str2 = this.mCategory;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = this.mRecType;
        if (str3 == null) {
            str3 = "";
        }
        String str4 = this.mTopIds;
        if (str4 == null) {
            str4 = "";
        }
        shortTvPlayListViewModel2.f(str, str2, str3, str4, this.mTabId);
    }

    private final void loadMore() {
        loadData();
    }

    private final void reload() {
        if (l.f76264a.e()) {
            loadDefaultData();
        } else {
            showLoadingView();
            showNoNetworkViewDelayed();
        }
    }

    private final void z0(boolean isExpand) {
        if (isAdded()) {
            FragmentActivity activity = getActivity();
            if (activity instanceof ShortTvPlayListActivity) {
                ((ShortTvPlayListActivity) activity).W(isExpand);
            }
        }
    }

    @Override
    public b0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        b0 b0VarC = b0.c(inflater);
        Intrinsics.g(b0VarC, "inflate(...)");
        return b0VarC;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
        S0();
    }

    @Override
    public void initViewData() {
        Toolbar toolbar;
        Toolbar toolbar2;
        b0 b0Var = (b0) getMViewBinding();
        if (b0Var != null && (toolbar2 = b0Var.f69959f) != null) {
            xq.b.a(toolbar2);
        }
        pageStateFitStatusBar();
        initAd();
        if (((b0) getMViewBinding()) != null) {
            b0 b0Var2 = (b0) getMViewBinding();
            if (b0Var2 != null && (toolbar = b0Var2.f69959f) != null) {
                xq.b.a(toolbar);
            }
            pageStateFitStatusBar();
            initAd();
            final b0 b0Var3 = (b0) getMViewBinding();
            if (b0Var3 != null) {
                b0Var3.f69956c.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        ShortTvPlayListFragment.N0(this.f73242a, view);
                    }
                });
                RecyclerView recyclerView = b0Var3.f69958e;
                recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
                br.b bVar = new br.b(0.6f, new b(), false, 4, null);
                bVar.l(2);
                recyclerView.addOnScrollListener(bVar);
                this.mExposureHelper = bVar;
                recyclerView.setAdapter(Q0() ? E0() : I0());
                b0Var3.f69955b.addOnOffsetChangedListener(new AppBarLayout.g() {
                    @Override
                    public final void onOffsetChanged(AppBarLayout appBarLayout, int i10) {
                        ShortTvPlayListFragment.O0(this.f73243a, b0Var3, appBarLayout, i10);
                    }
                });
            }
        }
    }

    @Override
    public void initViewModel() {
        ShortTvPlayListViewModel shortTvPlayListViewModel = (ShortTvPlayListViewModel) new v0(this).a(ShortTvPlayListViewModel.class);
        this.viewModel = shortTvPlayListViewModel;
        ShortTvPlayListViewModel shortTvPlayListViewModel2 = null;
        if (shortTvPlayListViewModel == null) {
            Intrinsics.y("viewModel");
            shortTvPlayListViewModel = null;
        }
        shortTvPlayListViewModel.i(1);
        ShortTvPlayListViewModel shortTvPlayListViewModel3 = this.viewModel;
        if (shortTvPlayListViewModel3 == null) {
            Intrinsics.y("viewModel");
        } else {
            shortTvPlayListViewModel2 = shortTvPlayListViewModel3;
        }
        shortTvPlayListViewModel2.g().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvPlayListFragment.P0(this.f73237a, (ShortTvPlayListResp) obj);
            }
        }));
    }

    @Override
    public boolean isAudioShowNoNetworkLayout() {
        return true;
    }

    @Override
    public boolean isMonitorNetworkState() {
        return true;
    }

    @Override
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override
    public void loadDefaultData() {
        if (l.f76264a.e()) {
            showLoadingView();
            loadData();
        }
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("playlist", false, 2, null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        BiddingListManager biddingListManager = this.v3ListManager;
        if (biddingListManager != null) {
            biddingListManager.o();
        }
    }

    @Override
    public void receiveArguments() {
        HashMap mapG;
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.mLabel = arguments.getString("label");
            this.mCategory = arguments.getString("category");
            this.mRecType = arguments.getString("recType");
            this.mTopIds = arguments.getString("topIds");
            this.mTabId = arguments.getInt("tab_id", 0);
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
        mapG.put("label", this.mLabel);
        mapG.put("category", this.mCategory);
        mapG.put("rec_type", this.mRecType);
    }

    @Override
    public void retryLoadData() {
        List<Object> data;
        List<Object> data2;
        if (Q0()) {
            a aVar = this.mCastAdapter;
            if (aVar != null && (data2 = aVar.getData()) != null && data2.size() == 0) {
                reload();
                return;
            }
            a aVar2 = this.mCastAdapter;
            if (aVar2 == null || aVar2.h0().i() != LoadMoreStatus.Fail) {
                return;
            }
            aVar2.h0().w();
            return;
        }
        e eVar = this.mSubjectAdapter;
        if (eVar != null && (data = eVar.getData()) != null && data.size() == 0) {
            reload();
            return;
        }
        e eVar2 = this.mSubjectAdapter;
        if (eVar2 == null || eVar2.h0().i() != LoadMoreStatus.Fail) {
            return;
        }
        eVar2.h0().w();
    }
}
