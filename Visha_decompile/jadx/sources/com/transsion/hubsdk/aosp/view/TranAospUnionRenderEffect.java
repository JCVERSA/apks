package com.transsion.hubsdk.aosp.view;

import android.graphics.Bitmap;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.ITranUnionRenderEffectAdapter;
import com.transsion.hubsdk.view.TranUnionRenderEffect;

public class TranAospUnionRenderEffect implements ITranUnionRenderEffectAdapter {
    private static final String TAG = TranAospView.class.getSimpleName();

    @Override
    public void disableAutoInvalidateWhenCrossWindowUpdate() {
        TranSdkLog.e(TAG, "disableAutoInvalidateWhenCrossWindowUpdate not support");
    }

    @Override
    public void disableBackdropBlur() {
        TranSdkLog.e(TAG, "disableBackdropBlur not support");
    }

    @Override
    public void disableBlendColorDark() {
        TranSdkLog.e(TAG, "disableBlendColorDark not support");
    }

    @Override
    public void disableBlendColorLight() {
        TranSdkLog.e(TAG, "disableBlendColorLight not support");
    }

    @Override
    public void disableCrossWindowBlur() {
        TranSdkLog.e(TAG, "disableCrossWindowBlur not support");
    }

    @Override
    public void disableGlobalBlurRadius() {
        TranSdkLog.e(TAG, "disableGlobalBlurRadius not support");
    }

    @Override
    public void disableLocalBlurRadius() {
        TranSdkLog.e(TAG, "disableLocalBlurRadius not support");
    }

    @Override
    public void disableMaxCrossFadeRadius() {
        TranSdkLog.e(TAG, "disableMaxCrossFadeRadius not support");
    }

    @Override
    public void disableMirrorScale() {
        TranSdkLog.e(TAG, "disableMirrorScale not support");
    }

    @Override
    public void disableRoundCorner() {
        TranSdkLog.e(TAG, "disableRoundCorner not support");
    }

    @Override
    public void disableStaticBlur() {
        TranSdkLog.e(TAG, "disableStaticBlur not support");
    }

    @Override
    public void disableUnionBlur() {
        TranSdkLog.e(TAG, "disableUnionBlur not support");
    }

    @Override
    public void enableAutoInvalidateWhenCrossWindowUpdate() {
        TranSdkLog.e(TAG, "enableAutoInvalidateWhenCrossWindowUpdate not support");
    }

    @Override
    public void enableBackdropBlur() {
        TranSdkLog.e(TAG, "enableBackdropBlur not support");
    }

    @Override
    public void enableBlendColorDark(TranUnionRenderEffect.TranBlendColor tranBlendColor) {
        TranSdkLog.e(TAG, "enableBlendColorDark not support");
    }

    @Override
    public void enableBlendColorLight(TranUnionRenderEffect.TranBlendColor tranBlendColor) {
        TranSdkLog.e(TAG, "enableBlendColorLight not support");
    }

    @Override
    public void enableCrossWindowBlur() {
        TranSdkLog.e(TAG, "enableCrossWindowBlur not support");
    }

    @Override
    public void enableDynamicBlendColorDark(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        TranSdkLog.e(TAG, "enableDynamicBlendColorDark not support");
    }

    @Override
    public void enableDynamicBlendColorLight(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        TranSdkLog.e(TAG, "enableDynamicBlendColorLight not support");
    }

    @Override
    public void enableGlobalBlurRadius(float f) {
        TranSdkLog.e(TAG, "enableGlobalBlurRadius not support");
    }

    @Override
    public void enableLocalBlurRadius(float f) {
        TranSdkLog.e(TAG, "enableLocalBlurRadius not support");
    }

    @Override
    public void enableMaxCrossFadeRadius(float f) {
        TranSdkLog.e(TAG, "enableMaxCrossFadeRadius not support");
    }

    @Override
    public void enableMirrorScale(float f) {
        TranSdkLog.e(TAG, "enableMirrorScale not support");
    }

    @Override
    public void enableRoundCorner(float f, boolean z, float f2) {
        TranSdkLog.e(TAG, "enableRoundCorner not support");
    }

    @Override
    public void enableStaticBlur(Bitmap bitmap, boolean z, float f) {
        TranSdkLog.e(TAG, "enableStaticBlur not support");
    }

    @Override
    public void enableUnionBlur() {
        TranSdkLog.e(TAG, "enableUnionBlur not support");
    }

    @Override
    public TranUnionRenderEffect getRealObject() {
        TranSdkLog.e(TAG, "getRealObject not support");
        return null;
    }

    @Override
    public boolean isAutoInvalidate() {
        TranSdkLog.e(TAG, "isAutoInvalidate not support");
        return false;
    }

    @Override
    public boolean isBackdropBlur() {
        TranSdkLog.e(TAG, "isBackdropBlur not support");
        return false;
    }

    @Override
    public boolean isStaticBlur() {
        TranSdkLog.e(TAG, "isStaticBlur not support");
        return false;
    }

    @Override
    public boolean isUnionBlur() {
        TranSdkLog.e(TAG, "isUnionBlur not support");
        return false;
    }

    @Override
    public boolean requestFrameSpacing(int i) {
        TranSdkLog.e(TAG, "requestFrameSpacing not support");
        return false;
    }

    @Override
    public boolean requiresNoEffect() {
        TranSdkLog.e(TAG, "requiresNoEffect not support");
        return false;
    }

    @Override
    public void setApiMode(int i) {
        TranSdkLog.e(TAG, "setApiMode not support");
    }

    @Override
    public void setBlurAlgorithm(int i) {
        TranSdkLog.e(TAG, "setBlurAlgorithm not support");
    }

    @Override
    public void setCustomBlender(Object obj) {
        TranSdkLog.e(TAG, "setCustomBlender not support");
    }

    @Override
    public void setOffscreenRenderingOptimization(boolean z) {
        TranSdkLog.e(TAG, "setOffscreenRenderingOptimization not support");
    }

    @Override
    public void setRequestWindowType(int i) {
        TranSdkLog.e(TAG, "setRequestWindowType not support");
    }

    @Override
    public void enableBlendColorDark(int i, int i2, int i3, int i4, int i5, int i6) {
        TranSdkLog.e(TAG, "enableBlendColorDark not support");
    }

    @Override
    public void enableBlendColorLight(int i, int i2, int i3, int i4, int i5, int i6) {
        TranSdkLog.e(TAG, "enableBlendColorLight not support");
    }
}
