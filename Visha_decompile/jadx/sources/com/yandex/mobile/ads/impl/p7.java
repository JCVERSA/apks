package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.base.model.MediatedAdObjectInfo;
import com.monetization.ads.quality.base.result.AdQualityVerificationResult;

public interface p7 {
    Object a(Context context, Object obj, o8<?> o8Var, o3 o3Var, MediatedAdObjectInfo mediatedAdObjectInfo, defpackage.wh1<? super AdQualityVerificationResult> wh1Var);

    void onAdClicked();

    void onAdClosed();

    void onAdWillDisplay();

    void onInvalidated();
}
