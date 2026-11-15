package com.transsion.hubsdk.aosp.lighting;

import android.os.Bundle;
import android.os.SharedMemory;
import com.transsion.hubsdk.api.lighting.LightingConfigChangeListener;
import com.transsion.hubsdk.api.lighting.TranEffectConfig;
import com.transsion.hubsdk.api.lighting.TranLightingConfig;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.hubsdk.interfaces.lighting.ITranLightingManagerAdapter;
import java.util.List;

public class TranAospLightingManager implements ITranLightingManagerAdapter {
    @Override
    public SharedMemory acquireBuffer(int i) {
        return null;
    }

    @Override
    public boolean addEffect(int i, int i2, int i3, String str) {
        return false;
    }

    @Override
    public void bindSceneWithCustomEffect(int[] iArr, int i) {
    }

    @Override
    public boolean delEffect(int i) {
        return false;
    }

    @Override
    public void drawBuffer(int i) {
    }

    @Override
    public List<TranEffectConfig> getAllCustomEffects() {
        return null;
    }

    @Override
    public int[] getColorIds() {
        return null;
    }

    @Override
    public TranEffectConfig getCustomEffectById(int i) {
        return null;
    }

    @Override
    public TranEffectConfig getEffectConfig(int i, int i2) {
        return null;
    }

    @Override
    public int[] getEffectIdList() {
        return null;
    }

    @Override
    public TranLightingConfig getLightingConfig() {
        return null;
    }

    @Override
    public int[] getPendingCustomEffectList() {
        return null;
    }

    @Override
    public TranSceneConfig getSceneConfig(int i) {
        return null;
    }

    @Override
    public boolean lockLightingDisplay(int i) {
        return false;
    }

    @Override
    public void previewEffectWithScene(int i, int i2, int i3, int i4, Bundle bundle) {
    }

    @Override
    public void previewOff() {
    }

    @Override
    public void previewOffWithScene(int i, Bundle bundle) {
    }

    @Override
    public void registerConfigChangeListener(LightingConfigChangeListener lightingConfigChangeListener) {
    }

    @Override
    public void setEffectConfig(int i, int i2, TranEffectConfig tranEffectConfig) {
    }

    @Override
    public void setLedMusicPlay(boolean z) {
    }

    @Override
    public void setLightingConfig(TranLightingConfig tranLightingConfig) {
    }

    @Override
    public void setSceneConfig(int i, TranSceneConfig tranSceneConfig) {
    }

    @Override
    public void setSceneParam(int i, Bundle bundle) {
    }

    @Override
    public void startScene(int i, int i2, int i3, int i4, Bundle bundle) {
    }

    @Override
    public void stopScene(int i) {
    }

    @Override
    public void triggerScene(int i, int i2, int i3, int i4, Bundle bundle) {
    }

    @Override
    public void unlockEffect() {
    }

    @Override
    public void unlockLightingDisplay(int i) {
    }

    @Override
    public void unregisterConfigChangeListener(LightingConfigChangeListener lightingConfigChangeListener) {
    }

    @Override
    public boolean addEffect(int[] iArr, int i, int i2, int i3, String str) {
        return false;
    }
}
