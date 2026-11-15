package com.transsnet.downloader.fragment.ad;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.p009lifecycle.v;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import bx.t;
import com.blankj.utilcode.util.a0;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.hisavana.common.bean.TAdNativeInfo;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.icon.BiddingIconAdManager;
import com.transsion.ad.bidding.icon.BiddingWrapperIconBean;
import com.transsion.baseui.fragment.LazyFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\r\u0010\u001c\u001a\u00020\u0005¢\u0006\u0004\b\u001c\u0010\u0004R\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001a\u0010%\u001a\b\u0012\u0004\u0012\u00020\"0!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,¨\u0006."}, d2 = {"Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;", "Lcom/transsion/baseui/fragment/LazyFragment;", "Lbx/t;", "<init>", "()V", "", "q0", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "p0", "(Landroid/view/LayoutInflater;)Lbx/t;", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", "lazyLoadData", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "loadDefaultData", "o0", "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;", "a", "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;", "adManager", "", "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/List;", "iconList", "Lcom/transsnet/downloader/fragment/ad/a;", "c", "Lcom/transsnet/downloader/fragment/ad/a;", "mAppDownloadAdapter", "Loh/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Loh/a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class AppDownloadAdFragment extends LazyFragment<t> {

    private com.transsnet.downloader.fragment.ad.a mAppDownloadAdapter;

    private BiddingIconAdManager adManager = new BiddingIconAdManager();

    private final List iconList = new ArrayList();

    private final oh.a listener = new b();

    public static final class a extends RecyclerView.l {

        final boolean f56922a;

        a(boolean z10) {
            this.f56922a = z10;
        }

        @Override
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            RecyclerView.Adapter adapter = parent.getAdapter();
            if (adapter != null) {
                boolean z10 = this.f56922a;
                if (childAdapterPosition == 0) {
                    if (z10) {
                        outRect.right = a0.a(12.0f);
                        outRect.left = a0.a(8.0f);
                    } else {
                        outRect.left = a0.a(12.0f);
                        outRect.right = a0.a(8.0f);
                    }
                    outRect.bottom = a0.a(12.0f);
                    return;
                }
                if (childAdapterPosition == adapter.getItemCount() - 1) {
                    if (z10) {
                        outRect.left = a0.a(12.0f);
                    } else {
                        outRect.right = a0.a(12.0f);
                    }
                    outRect.bottom = a0.a(12.0f);
                    return;
                }
                if (z10) {
                    outRect.left = a0.a(8.0f);
                } else {
                    outRect.right = a0.a(8.0f);
                }
                outRect.bottom = a0.a(12.0f);
            }
        }
    }

    public static final class b extends oh.a {
        b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void w(List list) {
            FrameLayout frameLayout;
            AppCompatTextView appCompatTextView;
            super.w(list);
            AppDownloadAdFragment.this.iconList.clear();
            if (list != null && (!list.isEmpty())) {
                AppDownloadAdFragment.this.iconList.addAll(list);
            }
            com.transsnet.downloader.fragment.ad.a aVar = AppDownloadAdFragment.this.mAppDownloadAdapter;
            if (aVar != null) {
                aVar.n1(AppDownloadAdFragment.this.iconList);
            }
            t tVar = (t) AppDownloadAdFragment.this.getMViewBinding();
            if (tVar != null && (appCompatTextView = tVar.f16247e) != null) {
                AppDownloadAdFragment appDownloadAdFragment = AppDownloadAdFragment.this;
                if (appDownloadAdFragment.iconList.isEmpty()) {
                    appCompatTextView.setVisibility(8);
                } else {
                    appCompatTextView.setVisibility(0);
                    appCompatTextView.setText(String.valueOf(appDownloadAdFragment.iconList.size()));
                }
            }
            t tVar2 = (t) AppDownloadAdFragment.this.getMViewBinding();
            if (tVar2 == null || (frameLayout = tVar2.f16245c) == null) {
                return;
            }
            frameLayout.setVisibility(AppDownloadAdFragment.this.iconList.isEmpty() ? 8 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.fragment.ad.AppDownloadAdFragment$loadDefaultData$1", f = "AppDownloadAdFragment.kt", l = {111}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AppDownloadAdFragment.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                BiddingIconAdManager biddingIconAdManager = AppDownloadAdFragment.this.adManager;
                int iQ = com.transsion.ad.scene.a.q(com.transsion.ad.scene.a.f41152a, "DownloadCenterAppDistributionScene", 0, 2, null);
                oh.a aVar = AppDownloadAdFragment.this.listener;
                this.label = 1;
                if (BiddingIconAdManager.S(biddingIconAdManager, "DownloadCenterAppDistributionScene", true, iQ, aVar, null, this, 16, null) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void q0() {
        RecyclerView recyclerView;
        t tVar = (t) getMViewBinding();
        if (tVar == null || (recyclerView = tVar.f16244b) == null) {
            return;
        }
        com.transsnet.downloader.fragment.ad.a aVar = new com.transsnet.downloader.fragment.ad.a(this.adManager);
        this.mAppDownloadAdapter = aVar;
        recyclerView.setAdapter(aVar);
        recyclerView.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        recyclerView.addItemDecoration(new a(TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1));
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
    }

    @Override
    public void initViewData() {
        q0();
    }

    @Override
    public void initViewModel() {
    }

    @Override
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override
    public boolean isMonitorNetworkState() {
        return false;
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void loadDefaultData() {
        super.loadDefaultData();
        k.d(v.a(this), null, null, new AnonymousClass1(null), 3, null);
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("AppDownloadAdFragment", false, 2, null);
    }

    public final void o0() {
        if (this.iconList.isEmpty()) {
            loadDefaultData();
        }
    }

    @Override
    public void onDestroy() {
        List<Object> data;
        TAdNativeInfo nativeInfo;
        super.onDestroy();
        this.adManager.I();
        com.transsnet.downloader.fragment.ad.a aVar = this.mAppDownloadAdapter;
        if (aVar == null || (data = aVar.getData()) == null) {
            return;
        }
        Iterator<T> it = data.iterator();
        while (it.hasNext()) {
            BiddingWrapperIconBean biddingWrapperIconBean = (BiddingWrapperIconBean) it.next();
            if (biddingWrapperIconBean.getType() == 2 && (nativeInfo = biddingWrapperIconBean.getNativeInfo()) != null) {
                nativeInfo.release();
            }
        }
    }

    @Override
    public t getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        t tVarC = t.c(inflater);
        Intrinsics.g(tVarC, "inflate(...)");
        return tVarC;
    }

    @Override
    public void retryLoadData() {
    }
}
