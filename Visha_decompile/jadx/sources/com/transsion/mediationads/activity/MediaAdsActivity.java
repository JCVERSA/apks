package com.transsion.mediationads.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.alibaba.android.arouter.core.LogisticsCenter;
import com.alibaba.android.arouter.facade.Postcard;
import com.alibaba.android.arouter.launcher.ARouter;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.common.interfacz.OnSkipListener;
import com.hisavana.common.interfacz.TAdditionalListener;
import com.hisavana.mediation.ad.TSplashAd;
import com.hisavana.mediation.ad.TSplashView;
import com.transsion.mediationads.R;
import com.transsion.mediationads.activity.MediaAdsActivity;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.widgetslib.view.OSLoadingView;
import defpackage.e80;
import defpackage.f5;
import defpackage.oy5;
import defpackage.pp3;
import defpackage.rz5;
import defpackage.t81;
import defpackage.wn8;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.apache.commons.lang3.BooleanUtils;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 ?2\u00020\u0001:\u0003@ABB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\n\u0010\u0003J\r\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\f\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0003R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u001dR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u001aR\u0018\u0010 \u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u001aR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010%\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010#R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010+\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010(R\u0016\u0010-\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010#R\u0016\u0010/\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010#R\u0016\u00100\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010#R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00106\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00103R\u0014\u0010:\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0014\u0010>\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=¨\u0006C"}, d2 = {"Lcom/transsion/mediationads/activity/MediaAdsActivity;", "Landroidx/appcompat/app/AppCompatActivity;", MethodDecl.initName, "()V", "Landroid/os/Bundle;", "savedInstanceState", "Lzfb;", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "onPause", "U", "onDestroy", "O", "Q", "R", "P", ExifInterface.LATITUDE_SOUTH, "Lcom/hisavana/mediation/ad/TSplashView;", "N", "Lcom/hisavana/mediation/ad/TSplashView;", "mSplashView", "Lcom/hisavana/mediation/ad/TSplashAd;", "Lcom/hisavana/mediation/ad/TSplashAd;", "mTSplashAd", "Landroid/view/View;", "Landroid/view/View;", "mSplashContainer", "Lcom/transsion/widgetslib/view/OSLoadingView;", "Lcom/transsion/widgetslib/view/OSLoadingView;", "mLoadingView", "mLoadingContainer", "mBrandBottom", "", "T", "Z", "mIsAdLoaded", "mHasNavigated", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "J", "adRequestTimeMs", ExifInterface.LONGITUDE_WEST, "adShowTimeMs", "X", "hasReportedResponse", "Y", "hasReportedSkip", "hasReportedClose", "", "a0", "Ljava/lang/String;", "mSceneToken", "b0", "mInterceptType", "Landroid/os/Handler;", "c0", "Landroid/os/Handler;", "mainHandler", "Ljava/lang/Runnable;", "d0", "Ljava/lang/Runnable;", "splashTimeoutRunnable", "e0", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "c", "mediationAds_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaAdsActivity extends AppCompatActivity {

    public TSplashView mSplashView;

    public TSplashAd mTSplashAd;

    public View mSplashContainer;

    public OSLoadingView mLoadingView;

    public View mLoadingContainer;

    public View mBrandBottom;

    public boolean mIsAdLoaded;

    public boolean mHasNavigated;

    public long adRequestTimeMs;

    public long adShowTimeMs;

    public boolean hasReportedResponse;

    public boolean hasReportedSkip;

    public boolean hasReportedClose;

    public String mSceneToken;

    public String mInterceptType = "mi_rule";

    public final Handler mainHandler = new Handler(Looper.getMainLooper());

    public final Runnable splashTimeoutRunnable = new Runnable() {
        @Override
        public final void run() {
            MediaAdsActivity.T(this.b);
        }
    };

    public final class b extends TAdditionalListener {
        public b() {
        }

        @Override
        public void onClick(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
            y45.j(additionalInfo, "additionalInfo");
            super.onClick(tAdNativeInfo, additionalInfo);
            Log.i("mediation_ad_MediaAdsActivity", "Splash ad clicked, nativeInfo: " + tAdNativeInfo);
            rz5.a.a(1);
        }

        @Override
        public void onClosed(int i) {
            super.onClosed(i);
            Log.i("mediation_ad_MediaAdsActivity", "Splash ad closed, source: " + i);
            if (!MediaAdsActivity.this.hasReportedClose && !MediaAdsActivity.this.hasReportedSkip) {
                MediaAdsActivity.this.hasReportedClose = true;
                rz5.a.b(1, 1, MediaAdsActivity.this.adShowTimeMs > 0 ? wn8.e((System.currentTimeMillis() - MediaAdsActivity.this.adShowTimeMs) / 1000, 0L) : 0L);
            }
            MediaAdsActivity.this.U();
        }

        @Override
        public void onLoadFailure(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
            y45.j(additionalInfo, "additionalInfo");
            super.onLoadFailure(tAdErrorCode, additionalInfo);
            Log.i("mediation_ad_MediaAdsActivity", "Splash ad onLoadFailure: " + tAdErrorCode);
            if (!MediaAdsActivity.this.hasReportedResponse) {
                MediaAdsActivity.this.hasReportedResponse = true;
                rz5.a.d(1, 0, System.currentTimeMillis() - MediaAdsActivity.this.adRequestTimeMs, String.valueOf(tAdErrorCode != null ? Integer.valueOf(tAdErrorCode.getErrorCode()) : null));
            }
            MediaAdsActivity.this.mInterceptType = "mi_rule";
            MediaAdsActivity.this.U();
        }

        @Override
        public void onLoadSuccess(AdditionalInfo additionalInfo) {
            y45.j(additionalInfo, "additionalInfo");
            super.onLoadSuccess(additionalInfo);
            TSplashAd tSplashAd = MediaAdsActivity.this.mTSplashAd;
            Boolean boolValueOf = tSplashAd != null ? Boolean.valueOf(tSplashAd.hasAd()) : null;
            Log.i("mediation_ad_MediaAdsActivity", "Splash ad onLoadSuccess hasAd:" + boolValueOf);
            if (boolValueOf != null) {
                if ((boolValueOf.booleanValue() ? null : boolValueOf) != null) {
                    MediaAdsActivity mediaAdsActivity = MediaAdsActivity.this;
                    mediaAdsActivity.mInterceptType = "mi_rule";
                    mediaAdsActivity.U();
                    return;
                }
            }
            MediaAdsActivity.this.mIsAdLoaded = true;
            if (!MediaAdsActivity.this.hasReportedResponse) {
                MediaAdsActivity.this.hasReportedResponse = true;
                rz5.a.d(1, 1, System.currentTimeMillis() - MediaAdsActivity.this.adRequestTimeMs, null);
            }
            MediaAdsActivity.this.P();
            MediaAdsActivity.this.S();
        }

        @Override
        public void onShow(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
            y45.j(additionalInfo, "additionalInfo");
            super.onShow(tAdNativeInfo, additionalInfo);
            Log.i("mediation_ad_MediaAdsActivity", "Splash ad shown, nativeInfo: " + tAdNativeInfo);
            MediaAdsActivity.this.adShowTimeMs = System.currentTimeMillis();
            rz5.a.e(1, null);
            MediaAdsActivity.this.mInterceptType = BooleanUtils.NO;
        }

        @Override
        public void onShowError(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
            y45.j(additionalInfo, "additionalInfo");
            super.onShowError(tAdErrorCode, additionalInfo);
            MediaAdsActivity.this.mInterceptType = "mi_rule";
        }
    }

    public final class c implements OnSkipListener {
        public c() {
        }

        @Override
        public void onClick() {
            MediaAdsActivity.this.hasReportedSkip = true;
            rz5.a.f(1, MediaAdsActivity.this.adShowTimeMs > 0 ? wn8.e((System.currentTimeMillis() - MediaAdsActivity.this.adShowTimeMs) / 1000, 0L) : 0L);
            MediaAdsActivity.this.U();
        }

        @Override
        public void onTimeReach() {
            MediaAdsActivity.this.hasReportedSkip = true;
            rz5.a.b(1, 2, MediaAdsActivity.this.adShowTimeMs > 0 ? wn8.e((System.currentTimeMillis() - MediaAdsActivity.this.adShowTimeMs) / 1000, 0L) : 0L);
            MediaAdsActivity.this.U();
        }
    }

    public static final void T(MediaAdsActivity mediaAdsActivity) {
        if (mediaAdsActivity.mHasNavigated || mediaAdsActivity.mIsAdLoaded) {
            return;
        }
        Log.i("mediation_ad_MediaAdsActivity", "Splash ad timeout, navigate to main");
        if (!mediaAdsActivity.hasReportedResponse) {
            mediaAdsActivity.hasReportedResponse = true;
            rz5.a.d(1, 0, System.currentTimeMillis() - mediaAdsActivity.adRequestTimeMs, "Response_timeout");
        }
        mediaAdsActivity.mInterceptType = "mi_rule";
        mediaAdsActivity.U();
    }

    public final void O() {
        e80.m(this, !((getResources().getConfiguration().uiMode & 48) == 32));
    }

    public final void P() {
        View view = this.mLoadingContainer;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.mSplashContainer;
        if (view2 != null) {
            view2.setVisibility(0);
        }
        TSplashView tSplashView = this.mSplashView;
        if (tSplashView != null) {
            tSplashView.setVisibility(0);
        }
    }

    public final void Q() {
        this.mSplashContainer = findViewById(R.id.ll_splash_ad);
        TSplashView tSplashView = (TSplashView) findViewById(R.id.splash_ad);
        this.mSplashView = tSplashView;
        if (tSplashView == null) {
            return;
        }
        R();
        TSplashAd tSplashAd = new TSplashAd(this, "260311tzba8dkH");
        this.mTSplashAd = tSplashAd;
        this.mSceneToken = tSplashAd.enterScene("splash_scene_video", 1);
        TSplashAd tSplashAd2 = this.mTSplashAd;
        if (tSplashAd2 != null) {
            tSplashAd2.setSplashMode(2);
        }
        TSplashAd tSplashAd3 = this.mTSplashAd;
        if (tSplashAd3 != null) {
            tSplashAd3.setRequestBody(new TAdRequestBody.AdRequestBodyBuild().setAdditionalListener(new b()).build());
        }
        TSplashAd tSplashAd4 = this.mTSplashAd;
        if (tSplashAd4 != null) {
            tSplashAd4.setOnSkipListener(new c());
        }
        this.adRequestTimeMs = System.currentTimeMillis();
        this.adShowTimeMs = 0L;
        this.hasReportedResponse = false;
        this.hasReportedSkip = false;
        this.hasReportedClose = false;
        rz5.a.c(1);
        TSplashAd tSplashAd5 = this.mTSplashAd;
        if (tSplashAd5 != null) {
            tSplashAd5.loadAd();
        }
        this.mainHandler.postDelayed(this.splashTimeoutRunnable, 4000L);
    }

    public final void R() {
        View view = this.mLoadingContainer;
        if (view != null) {
            view.setVisibility(0);
        }
        View view2 = this.mSplashContainer;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        TSplashView tSplashView = this.mSplashView;
        if (tSplashView != null) {
            tSplashView.setVisibility(8);
        }
    }

    public final void S() {
        Log.d("mediation_ad_MediaAdsActivity", "showSplashAd");
        TSplashAd tSplashAd = this.mTSplashAd;
        if (tSplashAd == null || this.mSplashView == null) {
            return;
        }
        Log.d("mediation_ad_MediaAdsActivity", "showSplashAd " + tSplashAd);
        View view = this.mBrandBottom;
        if (view != null) {
            view.setVisibility(8);
        }
        TSplashAd tSplashAd2 = this.mTSplashAd;
        if (tSplashAd2 != null) {
            tSplashAd2.setLogoLayoutHeightRatio(Float.valueOf(0.15f));
        }
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.splash_logo_layout, (ViewGroup) null, false);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv_logo_mini);
        if (imageView != null) {
            imageView.setImageResource(pp3.c ? R.drawable.ic_logo_mini_pre : R.drawable.ic_logo_mini);
        }
        TSplashAd tSplashAd3 = this.mTSplashAd;
        if (tSplashAd3 != null) {
            TSplashView tSplashView = this.mSplashView;
            y45.g(tSplashView);
            tSplashAd3.showAd(tSplashView, viewInflate, this.mSceneToken);
        }
    }

    public final void U() {
        if (this.mHasNavigated) {
            return;
        }
        this.mHasNavigated = true;
        this.mainHandler.removeCallbacks(this.splashTimeoutRunnable);
        oy5.a("cold_start", this.mInterceptType);
        Postcard postcardGreenChannel = ARouter.getInstance().build(VishaRouterTable.PATH_PAGE_ACTIVITY_VIDEO_PLAYER_MAIN).greenChannel();
        LogisticsCenter.completion(postcardGreenChannel);
        Intent intent = new Intent(this, postcardGreenChannel.getDestination());
        intent.putExtras(postcardGreenChannel.getExtras());
        intent.setFlags(postcardGreenChannel.getFlags());
        f5.c(intent, this);
        overridePendingTransition(0, 0);
        finish();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        t81.a(this);
        supportRequestWindowFeature(1);
        e80.v(this);
        O();
        setContentView(R.layout.activity_media_ads);
        this.mLoadingView = (OSLoadingView) findViewById(R.id.loading_view);
        this.mLoadingContainer = findViewById(R.id.loading_container);
        this.mBrandBottom = findViewById(R.id.include_brand_bottom);
        Q();
    }

    @Override
    public void onDestroy() {
        this.mainHandler.removeCallbacks(this.splashTimeoutRunnable);
        super.onDestroy();
        TSplashAd tSplashAd = this.mTSplashAd;
        if (tSplashAd != null) {
            tSplashAd.destroy();
        }
        this.mTSplashAd = null;
    }

    @Override
    public void onPause() {
        super.onPause();
        TSplashAd tSplashAd = this.mTSplashAd;
        if (tSplashAd != null) {
            tSplashAd.pause();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        O();
        TSplashAd tSplashAd = this.mTSplashAd;
        if (tSplashAd != null) {
            tSplashAd.resume();
        }
    }
}
