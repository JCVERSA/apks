package com.hisavana.common.interfacz;

import androidx.annotation.Nullable;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;

public abstract class TAdListener {
    public abstract void onClicked(int i10);

    public abstract void onClosed(int i10);

    public void onClosed(@Nullable TAdNativeInfo tAdNativeInfo) {
    }

    public abstract void onError(@Nullable TAdErrorCode tAdErrorCode);

    public void onLoad() {
    }

    public void onNativeFeedClicked(int i10, @Nullable TAdNativeInfo tAdNativeInfo) {
    }

    public void onNativeFeedShow(int i10, @Nullable TAdNativeInfo tAdNativeInfo) {
    }

    public void onRewarded() {
    }

    public abstract void onShow(int i10);

    public void onShowError(@Nullable TAdErrorCode tAdErrorCode) {
    }
}
