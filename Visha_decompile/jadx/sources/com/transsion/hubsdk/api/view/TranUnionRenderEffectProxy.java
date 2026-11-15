package com.transsion.hubsdk.api.view;

import android.graphics.Bitmap;
import com.transsion.hubsdk.aosp.view.TranAospUnionRenderEffect;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubUnionRenderEffect;
import com.transsion.hubsdk.interfaces.view.ITranUnionRenderEffectAdapter;
import com.transsion.hubsdk.view.TranUnionRenderEffect;

public class TranUnionRenderEffectProxy {
    public static final int API_MODE_CANVAS_PAINT = 1;
    public static final int API_MODE_VIEW_BACKGROUND = 0;
    private static final String TAG = "TranUnionRenderEffectProxy";
    private TranAospUnionRenderEffect mAospService;
    private TranThubUnionRenderEffect mThubService;

    public enum TranBlendColor {
        NONE,
        G1,
        G2,
        G3,
        L1_LIGHT,
        L2_LIGHT,
        L3_LIGHT,
        L4_LIGHT,
        L1_DARK,
        L2_DARK,
        L3_DARK,
        L4_DARK,
        GT1_LIGHT,
        GT2_LIGHT,
        GT3_LIGHT,
        GT4_LIGHT,
        GT1_DARK,
        GT2_DARK,
        GT3_DARK,
        GT4_DARK
    }

    public TranUnionRenderEffectProxy() {
        getService(TranVersion.Core.VERSION_33411);
    }

    private TranUnionRenderEffect.TranBlendColor convertFrom(TranBlendColor tranBlendColor) {
        if (tranBlendColor == TranBlendColor.G1) {
            return TranUnionRenderEffect.TranBlendColor.MODE_G1;
        }
        if (tranBlendColor == TranBlendColor.G2) {
            return TranUnionRenderEffect.TranBlendColor.MODE_G2;
        }
        if (tranBlendColor == TranBlendColor.G3) {
            return TranUnionRenderEffect.TranBlendColor.MODE_G3;
        }
        if (tranBlendColor == TranBlendColor.L1_LIGHT) {
            return TranUnionRenderEffect.TranBlendColor.MODE_L1_LIGHT;
        }
        if (tranBlendColor == TranBlendColor.L2_LIGHT) {
            return TranUnionRenderEffect.TranBlendColor.MODE_L2_LIGHT;
        }
        if (tranBlendColor == TranBlendColor.L3_LIGHT) {
            return TranUnionRenderEffect.TranBlendColor.MODE_L3_LIGHT;
        }
        if (tranBlendColor == TranBlendColor.L4_LIGHT) {
            return TranUnionRenderEffect.TranBlendColor.MODE_L4_LIGHT;
        }
        if (tranBlendColor == TranBlendColor.L1_DARK) {
            return TranUnionRenderEffect.TranBlendColor.MODE_L1_DARK;
        }
        if (tranBlendColor == TranBlendColor.L2_DARK) {
            return TranUnionRenderEffect.TranBlendColor.MODE_L2_DARK;
        }
        if (tranBlendColor == TranBlendColor.L3_DARK) {
            return TranUnionRenderEffect.TranBlendColor.MODE_L3_DARK;
        }
        if (tranBlendColor == TranBlendColor.L4_DARK) {
            return TranUnionRenderEffect.TranBlendColor.MODE_L4_DARK;
        }
        if (tranBlendColor == TranBlendColor.GT1_LIGHT) {
            return TranUnionRenderEffect.TranBlendColor.MODE_GT1_LIGHT;
        }
        if (tranBlendColor == TranBlendColor.GT2_LIGHT) {
            return TranUnionRenderEffect.TranBlendColor.MODE_GT2_LIGHT;
        }
        if (tranBlendColor == TranBlendColor.GT3_LIGHT) {
            return TranUnionRenderEffect.TranBlendColor.MODE_GT3_LIGHT;
        }
        if (tranBlendColor == TranBlendColor.GT4_LIGHT) {
            return TranUnionRenderEffect.TranBlendColor.MODE_GT4_LIGHT;
        }
        if (tranBlendColor == TranBlendColor.GT1_DARK) {
            return TranUnionRenderEffect.TranBlendColor.MODE_GT1_DARK;
        }
        if (tranBlendColor == TranBlendColor.GT2_DARK) {
            return TranUnionRenderEffect.TranBlendColor.MODE_GT2_DARK;
        }
        if (tranBlendColor == TranBlendColor.GT3_DARK) {
            return TranUnionRenderEffect.TranBlendColor.MODE_GT3_DARK;
        }
        return tranBlendColor == TranBlendColor.GT4_DARK ? TranUnionRenderEffect.TranBlendColor.MODE_GT4_DARK : TranUnionRenderEffect.TranBlendColor.MODE_NONE;
    }

    public static final int getApiLevel() {
        return TranUnionRenderEffect.getApiLevel();
    }

    public static boolean isUnionRenderEffectSupport() {
        return TranUnionRenderEffect.isUnionRenderEffectSupport();
    }

    public void disableAutoInvalidateWhenCrossWindowUpdate() {
        getService(TranVersion.Core.VERSION_33411).disableAutoInvalidateWhenCrossWindowUpdate();
    }

    public void disableBackdropBlur() {
        getService(TranVersion.Core.VERSION_33411).disableBackdropBlur();
    }

    public void disableBlendColorDark() {
        getService(TranVersion.Core.VERSION_33411).disableBlendColorDark();
    }

    public void disableBlendColorLight() {
        getService(TranVersion.Core.VERSION_33411).disableBlendColorLight();
    }

    public void disableCrossWindowBlur() {
        getService(TranVersion.Core.VERSION_33411).disableCrossWindowBlur();
    }

    public void disableGlobalBlurRadius() {
        getService(TranVersion.Core.VERSION_33411).disableGlobalBlurRadius();
    }

    public void disableLocalBlurRadius() {
        getService(TranVersion.Core.VERSION_33411).disableLocalBlurRadius();
    }

    public void disableMaxCrossFadeRadius() {
        getService(TranVersion.Core.VERSION_33411).disableMaxCrossFadeRadius();
    }

    public void disableMirrorScale() {
        getService(TranVersion.Core.VERSION_33411).disableMirrorScale();
    }

    public void disableRoundCorner() {
        getService(TranVersion.Core.VERSION_33411).disableRoundCorner();
    }

    public void disableStaticBlur() {
        getService(TranVersion.Core.VERSION_33411).disableStaticBlur();
    }

    public void disableUnionBlur() {
        getService(TranVersion.Core.VERSION_33411).disableUnionBlur();
    }

    public void enableAutoInvalidateWhenCrossWindowUpdate() {
        getService(TranVersion.Core.VERSION_33411).enableAutoInvalidateWhenCrossWindowUpdate();
    }

    public void enableBackdropBlur() {
        getService(TranVersion.Core.VERSION_33411).enableBackdropBlur();
    }

    public void enableBlendColorDark(TranBlendColor tranBlendColor) {
        getService(TranVersion.Core.VERSION_33411).enableBlendColorDark(convertFrom(tranBlendColor));
    }

    public void enableBlendColorLight(int i, int i2, int i3, int i4, int i5, int i6) {
        getService(TranVersion.Core.VERSION_33411).enableBlendColorLight(i, i2, i3, i4, i5, i6);
    }

    public void enableCrossWindowBlur() {
        getService(TranVersion.Core.VERSION_33411).enableCrossWindowBlur();
    }

    public void enableDynamicBlendColorDark(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        getService(TranVersion.Core.VERSION_33431).enableDynamicBlendColorDark(i, i2, i3, i4, i5, i6, i7, i8, i9);
    }

    public void enableDynamicBlendColorLight(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        getService(TranVersion.Core.VERSION_33431).enableDynamicBlendColorLight(i, i2, i3, i4, i5, i6, i7, i8, i9);
    }

    public void enableGlobalBlurRadius(float f) {
        getService(TranVersion.Core.VERSION_33411).enableGlobalBlurRadius(f);
    }

    public void enableLocalBlurRadius(float f) {
        getService(TranVersion.Core.VERSION_33411).enableLocalBlurRadius(f);
    }

    public void enableMaxCrossFadeRadius(float f) {
        getService(TranVersion.Core.VERSION_33411).enableMaxCrossFadeRadius(f);
    }

    public void enableMirrorScale(float f) {
        getService(TranVersion.Core.VERSION_33411).enableMirrorScale(f);
    }

    public void enableRoundCorner(float f, boolean z, float f2) {
        getService(TranVersion.Core.VERSION_33411).enableRoundCorner(f, z, f2);
    }

    public void enableStaticBlur(Bitmap bitmap, boolean z, float f) {
        getService(TranVersion.Core.VERSION_33411).enableStaticBlur(bitmap, z, f);
    }

    public void enableUnionBlur() {
        getService(TranVersion.Core.VERSION_33411).enableUnionBlur();
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof TranUnionRenderEffectProxy) && ((TranUnionRenderEffectProxy) obj).getRealObject() == getRealObject();
    }

    public TranUnionRenderEffect getRealObject() {
        return getService(TranVersion.Core.VERSION_33411).getRealObject();
    }

    public ITranUnionRenderEffectAdapter getService(String str) {
        return getService(str, true);
    }

    public boolean isAutoInvalidate() {
        return getService(TranVersion.Core.VERSION_33411).isAutoInvalidate();
    }

    public boolean isBackdropBlur() {
        return getService(TranVersion.Core.VERSION_33411).isBackdropBlur();
    }

    public boolean isStaticBlur() {
        return getService(TranVersion.Core.VERSION_33411).isStaticBlur();
    }

    public boolean isUnionBlur() {
        return getService(TranVersion.Core.VERSION_33411).isUnionBlur();
    }

    public Object refRealObject() {
        return getService(TranVersion.Core.VERSION_33411).getRealObject();
    }

    public boolean requestFrameSpacing(int i) {
        return getService(TranVersion.Core.VERSION_33411).requestFrameSpacing(i);
    }

    public boolean requiresNoEffect() {
        return getService(TranVersion.Core.VERSION_33411).requiresNoEffect();
    }

    public void setApiMode(int i) {
        getService(TranVersion.Core.VERSION_33431).setApiMode(i);
    }

    public void setBlurAlgorithm(int i) {
        getService(TranVersion.Core.VERSION_33411).setBlurAlgorithm(i);
    }

    public void setCustomBlender(Object obj) {
        getService(TranVersion.Core.VERSION_33461).setCustomBlender(obj);
    }

    public void setOffscreenRenderingOptimization(boolean z) {
        getService(TranVersion.Core.VERSION_33461).setOffscreenRenderingOptimization(z);
    }

    public void setRequestWindowType(int i) {
        getService(TranVersion.Core.VERSION_33461).setRequestWindowType(i);
    }

    public void enableBlendColorDark(int i, int i2, int i3, int i4, int i5, int i6) {
        getService(TranVersion.Core.VERSION_33411).enableBlendColorDark(i, i2, i3, i4, i5, i6);
    }

    public void enableBlendColorLight(TranBlendColor tranBlendColor) {
        getService(TranVersion.Core.VERSION_33411).enableBlendColorLight(convertFrom(tranBlendColor));
    }

    public ITranUnionRenderEffectAdapter getService(String str, boolean z) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubUnionRenderEffect");
            TranThubUnionRenderEffect tranThubUnionRenderEffect = this.mThubService;
            if (tranThubUnionRenderEffect != null) {
                return tranThubUnionRenderEffect;
            }
            TranThubUnionRenderEffect tranThubUnionRenderEffect2 = new TranThubUnionRenderEffect(z);
            this.mThubService = tranThubUnionRenderEffect2;
            return tranThubUnionRenderEffect2;
        }
        TranSdkLog.i(TAG, "TranAospUnionRenderEffect");
        TranAospUnionRenderEffect tranAospUnionRenderEffect = this.mAospService;
        if (tranAospUnionRenderEffect != null) {
            return tranAospUnionRenderEffect;
        }
        TranAospUnionRenderEffect tranAospUnionRenderEffect2 = new TranAospUnionRenderEffect();
        this.mAospService = tranAospUnionRenderEffect2;
        return tranAospUnionRenderEffect2;
    }

    public TranUnionRenderEffectProxy(TranUnionRenderEffect tranUnionRenderEffect) {
        ITranUnionRenderEffectAdapter service = getService(TranVersion.Core.VERSION_33411, false);
        if (service instanceof TranThubUnionRenderEffect) {
            ((TranThubUnionRenderEffect) service).setRealObject(tranUnionRenderEffect);
        } else {
            TranSdkLog.e(TAG, "re-establish TranUnionRenderEffectProxy fail: mAospService not support.");
        }
    }
}
