package com.cloud.hisavana.sdk.common.activity;

import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PreloadH5Entry;
import com.cloud.hisavana.sdk.common.bean.SSPParamSplicedResult;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.widget.webview.ActionWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.k1;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import defpackage.atd;
import defpackage.ikd;
import defpackage.j1a;
import defpackage.y45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000e\u0010\u0003J\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;", "Lcom/cloud/hisavana/sdk/common/activity/b;", MethodDecl.initName, "()V", "", "title", "Lzfb;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "s", "onDestroy", "", "process", "z", "(I)V", "y", "Ljava/lang/String;", AbstractID3v1Tag.TAG, "Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;", "Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;", "preloadH5Entry", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OnlinePreloadLandingPageActivity extends b {

    public final String TAG = "PreloadLandingActivity";

    public PreloadH5Entry preloadH5Entry;

    public static final class a implements PreloadH5Entry.PreloadCallback {
        public a() {
        }

        @Override
        public void onPageFailed(int i) {
            OnlinePreloadLandingPageActivity.this.j(i);
        }

        @Override
        public void onPageStart() {
        }

        @Override
        public void onProgressChanged(int i) {
            OnlinePreloadLandingPageActivity.this.z(i);
        }

        @Override
        public void onReceivedTitle(String str) {
            y45.j(str, "title");
            OnlinePreloadLandingPageActivity.this.A(str);
        }

        @Override
        public void shouldOverrideUrlLoading(String str, boolean z) {
            OnlinePreloadLandingPageActivity.this.g(str, z);
        }
    }

    public final void A(String title) {
        TextView textView;
        ActionWebView webView;
        String url;
        if (title == null || title.length() == 0) {
            return;
        }
        PreloadH5Entry preloadH5Entry = this.preloadH5Entry;
        if ((preloadH5Entry == null || (webView = preloadH5Entry.getWebView()) == null || (url = webView.getUrl()) == null || !j1a.X(url, title, false, 2, null)) && (textView = this.g) != null) {
            textView.setText(title);
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    public void onDestroy() {
        PreloadH5Entry preloadH5Entry = this.preloadH5Entry;
        if (preloadH5Entry != null) {
            atd.a.f(this, preloadH5Entry);
        }
        this.h = null;
        super.onDestroy();
    }

    @Override
    public void s() {
        if (this.i == null) {
            j(TaErrorCode.WEBVIEW_ADSDTO_NULL);
            finish();
            ikd.b().e(this.TAG, "loadLandingPage,ad is null,finish");
            return;
        }
        com.cloud.hisavana.sdk.manager.a.a.A(20);
        SSPParamSplicedResult sSPParamSplicedResultA = b.a(this.j, this.i);
        String splicedURL = sSPParamSplicedResultA.getSplicedURL();
        String originalUrl = sSPParamSplicedResultA.getOriginalUrl();
        AdsDTO adsDTO = this.i;
        zfb zfbVar = null;
        k1.m(splicedURL, adsDTO, null, new k1.d(adsDTO));
        AthenaTracker.J(originalUrl, this.i, Boolean.FALSE);
        String realLandUrl = this.i.getRealLandUrl();
        if (realLandUrl == null || realLandUrl.length() == 0) {
            j(TaErrorCode.WEBVIEW_URL_EMPTY);
            finish();
            ikd.b().e(this.TAG, "loadLandingPage,click url is empty,finish");
            return;
        }
        WebPageBean webPageBean = this.s;
        if (webPageBean != null) {
            webPageBean.setUrl(this.i.getClickUrl());
        }
        WebPageBean webPageBean2 = this.s;
        if (webPageBean2 != null) {
            webPageBean2.setTargetUrl(this.i.getRealLandUrl());
        }
        v(this.i.getRealLandUrl());
        q(this.i.getClickUrl());
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.fl_webview);
        if (frameLayout != null) {
            atd atdVar = atd.a;
            AdsDTO adsDTO2 = this.i;
            y45.i(adsDTO2, "adsDTO");
            PreloadH5Entry preloadH5EntryE = atdVar.e(this, adsDTO2, new a());
            this.preloadH5Entry = preloadH5EntryE;
            if (preloadH5EntryE != null) {
                this.h = preloadH5EntryE.getWebView();
                frameLayout.addView(preloadH5EntryE.getWebView(), new FrameLayout.LayoutParams(-1, -1));
                this.s.setLoadStartTime(System.currentTimeMillis());
                A(preloadH5EntryE.getTitle());
                z(preloadH5EntryE.getProcess());
                String overrideUrl = preloadH5EntryE.getOverrideUrl();
                if (overrideUrl != null && overrideUrl.length() != 0 && g(preloadH5EntryE.getOverrideUrl(), false)) {
                    this.s.setSpendEndTime(System.currentTimeMillis());
                }
                zfbVar = zfb.a;
            }
            if (zfbVar == null) {
                j(TaErrorCode.WEBVIEW_CREAT_ERROR);
                if (!isFinishing() && !isDestroyed()) {
                    finish();
                }
                ikd.b().e(this.TAG, "loadLandingPage,preloadEntry is null,finish");
            }
        }
    }

    public final void z(int process) {
        ProgressBar progressBar;
        ikd.b().d(this.TAG, "setProgressBar " + process);
        if (process < 100) {
            ProgressBar progressBar2 = this.b;
            if (progressBar2 == null || 8 != progressBar2.getVisibility() || (progressBar = this.b) == null) {
                return;
            }
            progressBar.setVisibility(0);
            return;
        }
        ProgressBar progressBar3 = this.b;
        if (progressBar3 != null) {
            progressBar3.setVisibility(8);
        }
        WebPageBean webPageBean = this.s;
        if (webPageBean != null) {
            PreloadH5Entry preloadH5Entry = this.preloadH5Entry;
            webPageBean.setSpendEndTime(preloadH5Entry != null ? preloadH5Entry.getSpendEndTime() : 0L);
        }
        j(0);
    }
}
