package com.hisavana.pangle.check;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.init.PAGConfig;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.base.BaseQueryPrice;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.AdSourceConfig;
import com.hisavana.common.bean.AppStartInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.IBaseAdSummary;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.pangle.executer.PangleBanner;
import com.hisavana.pangle.executer.PangleInterstitial;
import com.hisavana.pangle.executer.PangleNative;
import com.hisavana.pangle.executer.PangleSplash;
import com.hisavana.pangle.executer.PangleVideo;
import com.hisavana.pangle.holder.NativeAdViewHolder;

public class ExistsCheck implements IBaseAdSummary {
    public static final String PANGLE_TAG = "pangle_log";

    private static int f32515a;

    private static boolean f32516b;

    private static PAGConfig a(String str) {
        return new PAGConfig.Builder().appId(str).debugLog(f32516b).appIcon(f32515a).supportMultiProcess(true).setGDPRConsent(AppStartInfo.userConsent ? 1 : 0).setPAConsent(1 ^ (AppStartInfo.ageRestrictedUser ? 1 : 0)).build();
    }

    public static void initAdSource(String str, PAGSdk.PAGInitCallback pAGInitCallback) {
        AdLogUtil.Log().d(PANGLE_TAG, "initAdSource");
        if (PAGSdk.isInitSuccess()) {
            if (pAGInitCallback != null) {
                pAGInitCallback.success();
            }
        } else {
            try {
                PAGSdk.init(e.a(), a(str), pAGInitCallback);
            } catch (Exception e10) {
                AdLogUtil.Log().e(ComConstants.SDK_INIT, "ExistsCheck --> Pangle--> initialize exception");
                pAGInitCallback.fail(30001, e10.getMessage());
            }
        }
    }

    @Override
    public BaseBanner getBanner(Context context, Network network, int i10, int i11) {
        return new PangleBanner(context, network, i10);
    }

    @Override
    public BaseInterstitial getInterstitial(Context context, Network network) {
        return new PangleInterstitial(context, network);
    }

    @Override
    public BaseNative getNative(Context context, Network network, int i10) {
        return new PangleNative(context, network, i10);
    }

    @Override
    public BaseNativeViewHolder getNativeViewHolder() {
        return new NativeAdViewHolder();
    }

    @Override
    public BaseQueryPrice getQueryPrice() {
        return null;
    }

    @Override
    public BaseSplash getSplash(Context context, Network network) {
        return new PangleSplash(context, network);
    }

    @Override
    public BaseVideo getVideo(Context context, Network network) {
        return new PangleVideo(context, network);
    }

    @Override
    public void init(Context context, AdSourceConfig adSourceConfig) {
        if (context == null || adSourceConfig == null) {
            AdLogUtil.Log().d(PANGLE_TAG, "Pangle initialize exception");
            return;
        }
        f32516b = adSourceConfig.isDebug;
        f32515a = adSourceConfig.appIconId;
        AdLogUtil.Log().d(PANGLE_TAG, "Pangle initialize, appId = " + adSourceConfig.pangleAppId + ", isClosePangleWebFileLock = " + adSourceConfig.isClosePangleWebFileLock);
        if (adSourceConfig.isClosePangleWebFileLock) {
            AdLogUtil.Log().d(PANGLE_TAG, "close Pangle Web File Lock");
            PAGSdk.closeMultiWebViewFileLock();
        }
        if (TextUtils.isEmpty(adSourceConfig.pangleAppId)) {
            return;
        }
        AdLogUtil.Log().d(PANGLE_TAG, "init Pangle in advance, pangleAppID = " + adSourceConfig.pangleAppId);
        initAdSource(adSourceConfig.pangleAppId, null);
    }
}
