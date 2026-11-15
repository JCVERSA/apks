package com.cloud.hisavana.sdk.common.activity;

import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.Y0;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PreloadH5Entry;
import com.cloud.hisavana.sdk.common.bean.SSPParamSplicedResult;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.widget.webview.ActionWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.t3;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0012\u0010\u0003R\u0014\u0010\u0015\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;", "Lcom/cloud/hisavana/sdk/common/activity/b;", "<init>", "()V", "", CampaignEx.JSON_KEY_TITLE, "", "A", "(Ljava/lang/String;)V", "", "process", "z", "(I)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "s", "onDestroy", "x", "Ljava/lang/String;", "TAG", "Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;", "y", "Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;", "preloadH5Entry", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OnlinePreloadLandingPageActivity extends b {

    private final String TAG = "PreloadLandingActivity";

    private PreloadH5Entry preloadH5Entry;

    public final void A(String title) {
        TextView textView;
        ActionWebView webView;
        String url;
        if (title == null || title.length() == 0) {
            return;
        }
        PreloadH5Entry preloadH5Entry = this.preloadH5Entry;
        if ((preloadH5Entry == null || (webView = preloadH5Entry.getWebView()) == null || (url = webView.getUrl()) == null || !StringsKt.c0(url, title, false, 2, null)) && (textView = this.f21295f) != null) {
            textView.setText(title);
        }
    }

    public final void z(int process) {
        ProgressBar progressBar;
        b4.b().d(this.TAG, "setProgressBar " + process);
        if (process < 100) {
            ProgressBar progressBar2 = this.f21290a;
            if (progressBar2 == null || 8 != progressBar2.getVisibility() || (progressBar = this.f21290a) == null) {
                return;
            }
            progressBar.setVisibility(0);
            return;
        }
        ProgressBar progressBar3 = this.f21290a;
        if (progressBar3 != null) {
            progressBar3.setVisibility(8);
        }
        WebPageBean webPageBean = this.f21307r;
        if (webPageBean != null) {
            PreloadH5Entry preloadH5Entry = this.preloadH5Entry;
            webPageBean.setSpendEndTime(preloadH5Entry != null ? preloadH5Entry.getSpendEndTime() : 0L);
        }
        j(0);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    protected void onDestroy() {
        PreloadH5Entry preloadH5Entry = this.preloadH5Entry;
        if (preloadH5Entry != null) {
            t3.f22329a.f(this, preloadH5Entry);
        }
        this.f21296g = null;
        super.onDestroy();
    }

    @Override
    protected void s() {
        if (this.f21297h == null) {
            j(TaErrorCode.WEBVIEW_ADSDTO_NULL);
            finish();
            b4.b().e(this.TAG, "loadLandingPage,ad is null,finish");
            return;
        }
        com.cloud.hisavana.sdk.manager.a.f21996a.A(20);
        SSPParamSplicedResult sSPParamSplicedResultA = b.a(this.f21298i, this.f21297h);
        String splicedURL = sSPParamSplicedResultA.getSplicedURL();
        String originalUrl = sSPParamSplicedResultA.getOriginalUrl();
        AdsDTO adsDTO = this.f21297h;
        Unit unit = null;
        Y0.m(splicedURL, adsDTO, null, new Y0.d(adsDTO));
        AthenaTracker.G(originalUrl, this.f21297h, Boolean.FALSE);
        String realLandUrl = this.f21297h.getRealLandUrl();
        if (realLandUrl == null || realLandUrl.length() == 0) {
            j(TaErrorCode.WEBVIEW_URL_EMPTY);
            finish();
            b4.b().e(this.TAG, "loadLandingPage,click url is empty,finish");
            return;
        }
        WebPageBean webPageBean = this.f21307r;
        if (webPageBean != null) {
            webPageBean.setUrl(this.f21297h.getClickUrl());
        }
        WebPageBean webPageBean2 = this.f21307r;
        if (webPageBean2 != null) {
            webPageBean2.setTargetUrl(this.f21297h.getRealLandUrl());
        }
        v(this.f21297h.getRealLandUrl());
        q(this.f21297h.getClickUrl());
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.fl_webview);
        if (frameLayout != null) {
            t3 t3Var = t3.f22329a;
            AdsDTO adsDTO2 = this.f21297h;
            Intrinsics.g(adsDTO2, "adsDTO");
            PreloadH5Entry preloadH5EntryE = t3Var.e(this, adsDTO2, new a());
            this.preloadH5Entry = preloadH5EntryE;
            if (preloadH5EntryE != null) {
                this.f21296g = preloadH5EntryE.getWebView();
                frameLayout.addView(preloadH5EntryE.getWebView(), new FrameLayout.LayoutParams(-1, -1));
                this.f21307r.setLoadStartTime(System.currentTimeMillis());
                A(preloadH5EntryE.getTitle());
                z(preloadH5EntryE.getProcess());
                String overrideUrl = preloadH5EntryE.getOverrideUrl();
                if (overrideUrl != null && overrideUrl.length() != 0 && g(preloadH5EntryE.getOverrideUrl(), false)) {
                    this.f21307r.setSpendEndTime(System.currentTimeMillis());
                }
                unit = Unit.f64096a;
            }
            if (unit == null) {
                j(TaErrorCode.WEBVIEW_CREAT_ERROR);
                if (!isFinishing() && !isDestroyed()) {
                    finish();
                }
                b4.b().e(this.TAG, "loadLandingPage,preloadEntry is null,finish");
            }
        }
    }

    public static final class a implements PreloadH5Entry.PreloadCallback {
        a() {
        }

        @Override
        public void onPageFailed(int i10) {
            OnlinePreloadLandingPageActivity.this.j(i10);
        }

        @Override
        public void onProgressChanged(int i10) {
            OnlinePreloadLandingPageActivity.this.z(i10);
        }

        @Override
        public void onReceivedTitle(String title) {
            Intrinsics.h(title, "title");
            OnlinePreloadLandingPageActivity.this.A(title);
        }

        @Override
        public void shouldOverrideUrlLoading(String str, boolean z10) {
            OnlinePreloadLandingPageActivity.this.g(str, z10);
        }

        @Override
        public void onPageStart() {
        }
    }
}
