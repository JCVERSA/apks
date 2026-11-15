package com.hisavana.common.interfacz;

import androidx.annotation.NonNull;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import java.util.List;

public class WrapTAdAllianceListener extends TInnerAdListener {
    protected TInnerAdListener adListenerAdapter;

    public TInnerAdListener getAdListener() {
        return this.adListenerAdapter;
    }

    @Override
    public void onAdActivate(@NonNull AdditionalInfo additionalInfo) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onAdActivate(additionalInfo);
        }
    }

    @Override
    public void onClosed(int i) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onClosed(i);
        }
    }

    @Override
    public void onError(TAdErrorCode tAdErrorCode) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onError(tAdErrorCode);
        }
    }

    public void onLoad(List<TAdNativeInfo> list) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onLoad();
        }
    }

    @Override
    public void onNativeFeedClicked(int i, TAdNativeInfo tAdNativeInfo, @NonNull AdditionalInfo additionalInfo) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onNativeFeedClicked(i, tAdNativeInfo, additionalInfo);
        }
    }

    @Override
    public void onNativeFeedShow(int i, TAdNativeInfo tAdNativeInfo, @NonNull AdditionalInfo additionalInfo) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onNativeFeedShow(i, tAdNativeInfo, additionalInfo);
        }
    }

    @Override
    public void onRewarded() {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onRewarded();
        }
    }

    @Override
    public void onShowError(TAdErrorCode tAdErrorCode) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onShowError(tAdErrorCode);
        }
    }

    @Override
    public void onShowed(@NonNull AdditionalInfo additionalInfo) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onShowed(additionalInfo);
        }
    }

    public void setAdListener(TInnerAdListener tInnerAdListener) {
        this.adListenerAdapter = tInnerAdListener;
    }

    @Override
    public void onClosed(TAdNativeInfo tAdNativeInfo) {
        TInnerAdListener tInnerAdListener = this.adListenerAdapter;
        if (tInnerAdListener != null) {
            tInnerAdListener.onClosed(tAdNativeInfo);
        }
    }
}
