package com.transsnet.downloader.fragment.ad;

import android.view.LayoutInflater;
import bx.k0;
import com.transsion.baseui.fragment.LazyFragment;
import com.transsion.wrapperad.view.NativeSlideshowView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import qi.b;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\u0004J\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0007J\u000f\u0010\u0013\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\r\u0010\u001c\u001a\u00020\b¢\u0006\u0004\b\u001c\u0010\u0004¨\u0006\u001d"}, d2 = {"Lcom/transsnet/downloader/fragment/ad/TopCardAdFragment;", "Lcom/transsion/baseui/fragment/LazyFragment;", "Lbx/k0;", "<init>", "()V", "", "l0", "()Ljava/lang/String;", "", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "m0", "(Landroid/view/LayoutInflater;)Lbx/k0;", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "getPageStateLayoutTitle", "initViewData", "initViewModel", "initListener", "retryLoadData", "lazyLoadData", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "loadDefaultData", "k0", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TopCardAdFragment extends LazyFragment<k0> {
    private final String l0() {
        return "DownloadListScene";
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

    /* JADX WARN: Multi-variable type inference failed */
    public final void k0() {
        NativeSlideshowView nativeSlideshowView;
        k0 k0Var = (k0) getMViewBinding();
        if (k0Var == null || (nativeSlideshowView = k0Var.f16139c) == null) {
            return;
        }
        nativeSlideshowView.affirm();
    }

    @Override
    public void lazyLoadData() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void loadDefaultData() {
        NativeSlideshowView nativeSlideshowView;
        NativeSlideshowView nativeSlideshowView2;
        super.loadDefaultData();
        k0 k0Var = (k0) getMViewBinding();
        if (k0Var != null && (nativeSlideshowView2 = k0Var.f16139c) != null) {
            nativeSlideshowView2.setSceneId(l0());
        }
        k0 k0Var2 = (k0) getMViewBinding();
        if (k0Var2 == null || (nativeSlideshowView = k0Var2.f16139c) == null) {
            return;
        }
        nativeSlideshowView.initAd();
    }

    @Override
    public k0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        k0 k0VarC = k0.c(inflater);
        Intrinsics.g(k0VarC, "inflate(...)");
        return k0VarC;
    }

    @Override
    public b newLogViewConfig() {
        return new b("TopCardAdFragment", false, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onDestroy() {
        NativeSlideshowView nativeSlideshowView;
        super.onDestroy();
        k0 k0Var = (k0) getMViewBinding();
        if (k0Var == null || (nativeSlideshowView = k0Var.f16139c) == null) {
            return;
        }
        nativeSlideshowView.destroy();
    }

    @Override
    public void retryLoadData() {
    }
}
