package com.hisavana.mintegral.executer;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.sdk.commonutil.util.h;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.base.WrapTadView;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mintegral.check.ExistsCheck;
import com.mbridge.msdk.out.MBSplashHandler;
import com.mbridge.msdk.out.MBSplashLoadListener;
import com.mbridge.msdk.out.MBSplashShowListener;
import com.mbridge.msdk.out.MBridgeIds;
import com.transsion.push.PushConstants;

public class MintegralSplash extends BaseSplash {

    private MBSplashHandler f32498d;

    private MBSplashLoadListener f32499e;

    private MBSplashShowListener f32500f;

    private String f32501g;

    class AnonymousClass1 implements MBSplashLoadListener {
        AnonymousClass1() {
        }

        public void b() {
            MintegralSplash.this.adLoaded();
        }

        @Override
        public void isSupportZoomOut(MBridgeIds mBridgeIds, boolean z10) {
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "isSupportZoomOut");
        }

        @Override
        public void onLoadFailed(MBridgeIds mBridgeIds, String str, int i10) {
            MintegralSplash.this.adFailedToLoad(new TAdErrorCode(30003, "Mintegral Ads failed to load ad with error message: " + str));
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onError msg " + str);
        }

        @Override
        public void onLoadSuccessed(MBridgeIds mBridgeIds, int i10) {
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onLoadSuccessed");
            new Handler().postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.f32508a.b();
                }
            }, 200L);
        }
    }

    public MintegralSplash(Context context, Network network) {
        super(context, network);
        this.f32499e = new AnonymousClass1();
        this.f32500f = new MBSplashShowListener() {
            @Override
            public void onAdClicked(MBridgeIds mBridgeIds) {
                MintegralSplash.this.adClicked(null);
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdClicked");
            }

            @Override
            public void onAdTick(MBridgeIds mBridgeIds, long j10) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdTick" + j10);
            }

            @Override
            public void onDismiss(MBridgeIds mBridgeIds, int i10) {
                if (i10 == 1) {
                    MintegralSplash.this.onSkipClick();
                }
                if (i10 == 2) {
                    MintegralSplash.this.onTimeReach();
                }
                MintegralSplash.this.adClosed();
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onDismiss" + i10);
            }

            @Override
            public void onShowFailed(MBridgeIds mBridgeIds, String str) {
                MintegralSplash.this.onAdShowError(new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, "Mintegral Ads failed to load ad with error message: " + str));
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onShowFailed,error msg，" + str);
            }

            @Override
            public void onShowSuccessed(MBridgeIds mBridgeIds) {
                MintegralSplash.this.adImpression(null);
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onShowSuccessed");
            }

            @Override
            public void onZoomOutPlayFinish(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onZoomOutPlayFinish");
            }

            @Override
            public void onZoomOutPlayStart(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onZoomOutPlayStart");
            }
        };
    }

    @Override
    public void addLogoLayout(View view) {
        int i10;
        if (view == null || this.f32498d == null) {
            return;
        }
        int iF = h.f();
        if (iF > 0) {
            Float f10 = this.mLogoLayoutHeightRatio;
            float fFloatValue = f10 != null ? f10.floatValue() : getLogoHeightDefaultRatio();
            AdLogUtil.Log().i(ExistsCheck.MINTEGRAL_TAG, "mediation sdk mintegral addLogoLayout heightRatio = " + fFloatValue);
            i10 = (int) (((float) iF) * fFloatValue);
        } else {
            i10 = 0;
        }
        if (i10 == 0) {
            return;
        }
        this.f32498d.setLogoView(view, h.g(), i10);
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        MBSplashHandler mBSplashHandler = this.f32498d;
        if (mBSplashHandler != null) {
            mBSplashHandler.onDestroy();
        }
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    protected View getSplash() {
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onSplashLoad");
        if (e.a() != null) {
            return new View(e.a().getApplicationContext());
        }
        return null;
    }

    @Override
    public void onSplashShow() {
    }

    @Override
    protected void onSplashStartLoad() {
        Network network = this.mNetwork;
        if (network != null && !TextUtils.isEmpty(network.getCodeSeatId()) && this.f32499e != null && this.f32500f != null) {
            if (!TextUtils.isEmpty(this.mNetwork.getBidInfo() != null ? this.mNetwork.getBidInfo().getPayload() : null)) {
                MBSplashHandler mBSplashHandler = new MBSplashHandler("", this.mNetwork.getCodeSeatId());
                this.f32498d = mBSplashHandler;
                mBSplashHandler.setSplashLoadListener(this.f32499e);
                this.f32498d.setSplashShowListener(this.f32500f);
                this.f32498d.setOrientation(getOrientation());
                this.f32498d.preLoadByToken(this.mNetwork.getBidInfo().getPayload());
                this.f32501g = this.mNetwork.getBidInfo().getPayload();
                return;
            }
        }
        adFailedToLoad(new TAdErrorCode(30003, "Mintegral Ads failed to load ad error with param empty"));
    }

    @Override
    public void pauseAd() {
        MBSplashHandler mBSplashHandler = this.f32498d;
        if (mBSplashHandler != null) {
            mBSplashHandler.onPause();
        }
    }

    @Override
    public void resumeAd() {
        MBSplashHandler mBSplashHandler = this.f32498d;
        if (mBSplashHandler != null) {
            mBSplashHandler.onResume();
        }
    }

    @Override
    public void show(WrapTadView wrapTadView, String str, String str2) {
        logTrigerShow(str, str2);
        if (this.f32498d == null || wrapTadView == null || TextUtils.isEmpty(this.f32501g) || !this.f32498d.isReady(this.f32501g)) {
            onAdShowError(new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, "Mintegral Ads failed to load ad with error message: mbSplashHandler is null"));
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onAdShowError");
        } else {
            addLogoLayout(getLogoLayout());
            this.f32498d.show(wrapTadView, this.f32501g);
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, PushConstants.PUSH_SERVICE_TYPE_SHOW);
        }
    }
}
