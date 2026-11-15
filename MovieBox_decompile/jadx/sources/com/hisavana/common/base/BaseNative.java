package com.hisavana.common.base;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.cloud.hisavana.sdk.common.bean.SSPWebPageReqInfo;
import com.cloud.hisavana.sdk.common.bean.SSPWebRecommendInfo;
import com.cloud.sdk.commonutil.R$id;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.interfacz.IadNative;
import com.hisavana.common.utils.AdLogUtil;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseNative extends BaseAd implements IadNative {
    protected static final int FILTER_NONE = 0;
    private static final int defaultAdsCount = 1;
    private final String TAG;
    protected int mAdt;
    protected final List<TAdNativeInfo> mNatives;

    public BaseNative(Context context, Network network, int i10) {
        super(context, network);
        this.TAG = "BaseNative";
        this.mNatives = new ArrayList();
        this.mAdt = i10;
    }

    @Override
    public void adFailedToLoad(final TAdErrorCode tAdErrorCode) {
        Preconditions.d(new Preconditions.a() {
            @Override
            public void onRun() {
                BaseNative.super.adFailedToLoad(tAdErrorCode);
            }
        });
    }

    @Override
    public void adLoaded(final List<TAdNativeInfo> list) {
        Preconditions.d(new Preconditions.a() {
            @Override
            public void onRun() {
                BaseNative.super.adLoaded(list);
            }
        });
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        for (TAdNativeInfo tAdNativeInfo : this.mNatives) {
            if (tAdNativeInfo != null) {
                tAdNativeInfo.release();
            }
        }
        this.mNatives.clear();
    }

    public void destroySingleAd(TAdNativeInfo tAdNativeInfo) {
        List<TAdNativeInfo> list;
        if (tAdNativeInfo == null || (list = this.mNatives) == null || list.isEmpty() || !this.mNatives.contains(tAdNativeInfo)) {
            return;
        }
        AdLogUtil.Log().d("BaseNative", "remove tAdNativeInfo from mNatives，cutrrent ad id is " + tAdNativeInfo.getAdCreateId());
        this.mNatives.remove(tAdNativeInfo);
    }

    protected int filter(TAdNativeInfo tAdNativeInfo) {
        if (tAdNativeInfo == null) {
            return TAdErrorCode.CODE_UNKNOWN;
        }
        if (isNativeBanner()) {
            boolean zIsIconValid = tAdNativeInfo.isIconValid();
            AdLogUtil.Log().d("BaseNative", "ad nativebanner has icon:" + zIsIconValid);
            return zIsIconValid ? 0 : 30004;
        }
        boolean zIsMaterielValid = tAdNativeInfo.isMaterielValid();
        AdLogUtil.Log().d("BaseNative", "ad native has meteriel:" + zIsMaterielValid);
        return zIsMaterielValid ? 0 : 30004;
    }

    @Override
    public int getAdType() {
        return this.mAdt;
    }

    public String getTriggerId() {
        return this.mTriggerId;
    }

    protected abstract void initNative();

    protected boolean isNativeBanner() {
        return this.mAdt == 10;
    }

    @Override
    public boolean isOfflineAd() {
        return false;
    }

    @Override
    public void loadAd() {
        super.loadAd();
        this.mNatives.clear();
        initNative();
        onNativeAdStartLoad();
    }

    protected abstract void onNativeAdStartLoad();

    public void setAdCount(int i10) {
        if (i10 <= 0) {
            this.mAdCount = 1;
        } else {
            this.mAdCount = i10;
        }
    }

    public void setAdmobMediaAspectRatio(int i10) {
    }

    public void setChoicesPosition(int i10) {
    }

    protected void setNativeCloseListener(ViewGroup viewGroup, final AdNativeInfo adNativeInfo) {
        View viewFindViewById;
        if (viewGroup == null || (viewFindViewById = viewGroup.findViewById(R$id.native_close_view_id)) == null) {
            return;
        }
        viewFindViewById.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                BaseNative.this.adClosed(adNativeInfo);
            }
        });
    }

    public void setRecommendReqInfo(SSPWebPageReqInfo sSPWebPageReqInfo) {
    }

    public void trackRecommendClick(String str, String str2) {
    }

    public void trackRecommendShow(List<SSPWebRecommendInfo> list) {
    }
}
