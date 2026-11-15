package com.hisavana.mintegral.executer;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mintegral.check.ExistsCheck;
import com.hisavana.mintegral.check.MBridgeSDKManager;
import com.mbridge.msdk.out.BannerAdListener;
import com.mbridge.msdk.out.BannerSize;
import com.mbridge.msdk.out.MBBannerView;
import com.mbridge.msdk.out.MBridgeIds;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.ref.WeakReference;

public class MintegralBanner extends BaseBanner {

    private MBBannerView f32484d;

    private BannerAdListener f32485e;

    private BannerSize f32486f;

    public MintegralBanner(Context context, Network network, int i10) {
        super(context, network);
        this.f32485e = new BannerAdListener() {
            @Override
            public void closeFullScreen(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads closeFullScreen");
            }

            @Override
            public void onClick(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onClick");
                MintegralBanner.this.adClicked(null);
            }

            @Override
            public void onCloseBanner(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onCloseBanner");
                MintegralBanner.this.adClosed();
            }

            @Override
            public void onLeaveApp(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onLeaveApp");
            }

            @Override
            public void onLoadFailed(MBridgeIds mBridgeIds, String str) {
                MintegralBanner.this.adFailedToLoad(new TAdErrorCode(30003, str));
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral onLoadFailed message：" + str);
            }

            @Override
            public void onLoadSuccessed(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onLoadSuccessed");
                MintegralBanner.this.adLoaded();
            }

            @Override
            public void onLogImpression(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads onAdShowed");
                MintegralBanner.this.adImpression(null);
            }

            @Override
            public void showFullScreen(MBridgeIds mBridgeIds) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "Mintegral Ads showFullScreen");
            }
        };
        if (i10 == 0) {
            this.f32486f = new BannerSize(4, 0, 0);
            return;
        }
        if (i10 == 1) {
            this.f32486f = new BannerSize(5, Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 100);
            return;
        }
        if (i10 == 2) {
            this.f32486f = new BannerSize(2, 0, 0);
        } else if (i10 != 3) {
            this.f32486f = new BannerSize(4, 0, 0);
        } else {
            this.f32486f = new BannerSize(2, 0, 0);
        }
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    public int dpToPx(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override
    protected View getBanner() {
        WeakReference<Context> weakReference;
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "getBanner " + this.f32484d);
        if (this.f32484d == null && (weakReference = this.mContext) != null && weakReference.get() != null) {
            MBBannerView mBBannerView = new MBBannerView(e.a());
            this.f32484d = mBBannerView;
            mBBannerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        }
        return this.f32484d;
    }

    @Override
    protected void onBannerDestroy() {
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onBannerDestroy");
        MBBannerView mBBannerView = this.f32484d;
        if (mBBannerView != null) {
            mBBannerView.release();
            this.f32484d = null;
        }
        this.f32485e = null;
    }

    @Override
    protected void onBannerLoad() {
        Network network;
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onBannerLoad");
        if (MBridgeSDKManager.getInstance().getCurrentState() != MBridgeSDKManager.MBridgeSDKInitializeState.SDK_STATE_INITIALIZE_SUCCESS) {
            adFailedToLoad(new TAdErrorCode(30001, "Mintegral Ads failed to load ad error with param empty"));
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "init onError ");
            return;
        }
        if (this.f32484d != null && (network = this.mNetwork) != null && !TextUtils.isEmpty(network.getCodeSeatId()) && this.f32485e != null) {
            if (!TextUtils.isEmpty(this.mNetwork.getBidInfo() != null ? this.mNetwork.getBidInfo().getPayload() : null)) {
                this.f32484d.init(this.f32486f, "", this.mNetwork.getCodeSeatId());
                this.f32484d.setBannerAdListener(this.f32485e);
                this.f32484d.loadFromBid(this.mNetwork.getBidInfo().getPayload());
                return;
            }
        }
        adFailedToLoad(new TAdErrorCode(30003, "Mintegral Ads failed to load ad error with param is empty"));
    }

    @Override
    public void pauseAd() {
        MBBannerView mBBannerView = this.f32484d;
        if (mBBannerView != null) {
            mBBannerView.onPause();
        }
    }

    @Override
    public void resumeAd() {
        MBBannerView mBBannerView = this.f32484d;
        if (mBBannerView != null) {
            mBBannerView.onResume();
        }
    }

    @Override
    protected void showBanner() {
        AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "showBanner");
        MBBannerView mBBannerView = this.f32484d;
        if (mBBannerView == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e(ExistsCheck.MINTEGRAL_TAG, "showBanner show error,mbBannerView is null");
            return;
        }
        ViewGroup.LayoutParams layoutParams = mBBannerView.getLayoutParams();
        layoutParams.width = dpToPx(this.f32484d.getContext(), this.f32486f.getWidth());
        layoutParams.height = dpToPx(this.f32484d.getContext(), this.f32486f.getHeight());
        this.f32484d.setLayoutParams(layoutParams);
        this.f32484d.setVisibility(0);
    }
}
