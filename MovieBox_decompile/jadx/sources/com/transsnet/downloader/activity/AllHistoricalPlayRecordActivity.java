package com.transsnet.downloader.activity;

import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ij.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\t\u0010\u0007J\u000f\u0010\n\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\n\u0010\u0007J\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0016\u0010\u0004¨\u0006\u0017"}, d2 = {"Lcom/transsnet/downloader/activity/AllHistoricalPlayRecordActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lbx/a;", "<init>", "()V", "", "n0", "()Z", "isMonitorNetworkState", "isStatusDark", "isTranslucent", "C0", "()Lbx/a;", "", "f0", "()Ljava/lang/String;", "", "l0", "m0", "k0", "q0", "p0", "retryLoadData", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class AllHistoricalPlayRecordActivity extends BaseNewActivity<bx.a> {
    @Override
    public bx.a getViewBinding() {
        bx.a aVarC = bx.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override
    public String f0() {
        return "My Files";
    }

    @Override
    public boolean isMonitorNetworkState() {
        return false;
    }

    @Override
    public boolean isStatusDark() {
        return !y.f62128a.a();
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    public void k0() {
    }

    @Override
    public void l0() {
    }

    @Override
    public void m0() {
    }

    @Override
    public boolean n0() {
        return false;
    }

    @Override
    public void p0() {
    }

    @Override
    public void q0() {
        super.q0();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        wVarP.s(R$id.historicalRoot, new AllHistoricalPlayRecordFragment());
        wVarP.j();
    }

    @Override
    public void retryLoadData() {
    }
}
