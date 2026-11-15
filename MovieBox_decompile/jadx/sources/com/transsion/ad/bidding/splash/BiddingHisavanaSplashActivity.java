package com.transsion.ad.bidding.splash;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import sh.g;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\n\u0010\u0003J\u001b\u0010\r\u001a\u00020\u00062\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b¢\u0006\u0004\b\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019¨\u0006\u001d"}, d2 = {"Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "onStop", "Lkotlin/Function0;", "callback", "O", "(Lkotlin/jvm/functions/Function0;)V", "Lsh/g;", "a", "Lsh/g;", "binding", "Lcom/transsion/ad/bidding/splash/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/bidding/splash/a;", "splashProvider", "", "c", "Z", "isTimeReached", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, IntegrationConstants.IS_FOREGROUND, "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"CustomSplashScreen"})
public final class BiddingHisavanaSplashActivity extends AppCompatActivity {

    private g binding;

    private a splashProvider;

    private boolean isTimeReached;

    private boolean isForeground;

    public final void O(Function0 callback) {
        Intrinsics.h(callback, "callback");
        if (this.isForeground) {
            callback.invoke();
        } else {
            this.isTimeReached = true;
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        View viewInflate;
        super.onCreate(savedInstanceState);
        g gVarC = g.c(getLayoutInflater());
        this.binding = gVarC;
        setContentView(gVarC != null ? gVarC.getRoot() : null);
        a aVarA = a.f41007l.a(getIntent().getStringExtra("key_scene_id"));
        this.splashProvider = aVarA;
        Integer numU = aVarA != null ? aVarA.u() : null;
        if (numU == null || numU.intValue() == 0) {
            viewInflate = null;
        } else {
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(this);
            int iIntValue = numU.intValue();
            g gVar = this.binding;
            viewInflate = layoutInflaterFrom.inflate(iIntValue, (ViewGroup) (gVar != null ? gVar.f72121b : null), false);
        }
        a aVar = this.splashProvider;
        if (aVar != null) {
            g gVar2 = this.binding;
            aVar.w(this, gVar2 != null ? gVar2.f72121b : null, viewInflate);
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        this.isForeground = true;
        if (this.isTimeReached) {
            finish();
        }
    }

    @Override
    protected void onStop() {
        super.onStop();
        this.isForeground = false;
    }
}
