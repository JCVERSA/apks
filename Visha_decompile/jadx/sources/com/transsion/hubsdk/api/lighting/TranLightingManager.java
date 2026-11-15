package com.transsion.hubsdk.api.lighting;

import android.os.Bundle;
import android.os.SharedMemory;
import com.transsion.hubsdk.aosp.lighting.TranAospLightingManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.lighting.TranThubLightingManager;
import com.transsion.hubsdk.interfaces.lighting.ITranLightingManagerAdapter;
import java.util.List;

public class TranLightingManager {
    public static final String KEY_COUNT_TIME = "countTime";
    private static final String TAG = "TranLightingManager";
    private TranAospLightingManager mAospService;
    private TranThubLightingManager mThubService;

    public SharedMemory acquireBuffer(int i) {
        return getService(TranVersion.Core.VERSION_33471).acquireBuffer(i);
    }

    public boolean addEffect(int[] iArr, int i, int i2, int i3, String str) {
        return getService(TranVersion.Core.VERSION_33471).addEffect(iArr, i, i2, i3, str);
    }

    public void bindSceneWithCustomEffect(int[] iArr, int i) {
        getService(TranVersion.Core.VERSION_33471).bindSceneWithCustomEffect(iArr, i);
    }

    public boolean delEffect(int i) {
        return getService(TranVersion.Core.VERSION_33471).delEffect(i);
    }

    public void drawBuffer(int i) {
        getService(TranVersion.Core.VERSION_33471).drawBuffer(i);
    }

    public List<TranEffectConfig> getAllCustomEffects() {
        return getService(TranVersion.Core.VERSION_33471).getAllCustomEffects();
    }

    public int[] getColorIds() {
        return getService(TranVersion.Core.VERSION_33471).getColorIds();
    }

    public TranEffectConfig getCustomEffectById(int i) {
        return getService(TranVersion.Core.VERSION_33471).getCustomEffectById(i);
    }

    public TranEffectConfig getEffectConfig(int i, int i2) {
        return getService(TranVersion.Core.VERSION_33471).getEffectConfig(i, i2);
    }

    public int[] getEffectIdList() {
        return getService(TranVersion.Core.VERSION_33471).getEffectIdList();
    }

    public TranLightingConfig getLightingConfig() {
        return getService(TranVersion.Core.VERSION_33471).getLightingConfig();
    }

    public int[] getPendingCustomEffectList() {
        return getService(TranVersion.Core.VERSION_33471).getPendingCustomEffectList();
    }

    public TranSceneConfig getSceneConfig(int i) {
        return getService(TranVersion.Core.VERSION_33471).getSceneConfig(i);
    }

    public ITranLightingManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubLightingManager tranThubLightingManager = this.mThubService;
            if (tranThubLightingManager != null) {
                return tranThubLightingManager;
            }
            TranThubLightingManager tranThubLightingManager2 = new TranThubLightingManager();
            this.mThubService = tranThubLightingManager2;
            return tranThubLightingManager2;
        }
        TranSdkLog.i(TAG, "TranAospLightingManager");
        TranAospLightingManager tranAospLightingManager = this.mAospService;
        if (tranAospLightingManager != null) {
            return tranAospLightingManager;
        }
        TranAospLightingManager tranAospLightingManager2 = new TranAospLightingManager();
        this.mAospService = tranAospLightingManager2;
        return tranAospLightingManager2;
    }

    public boolean lockLightingDisplay(int i) {
        return getService(TranVersion.Core.VERSION_33471).lockLightingDisplay(i);
    }

    public void previewEffect(int i, int i2) {
        getService(TranVersion.Core.VERSION_33471).previewEffectWithScene(-1, i, i2, -1, null);
    }

    public void previewEffectWithScene(int i, int i2, int i3, int i4, Bundle bundle) {
        getService(TranVersion.Core.VERSION_33471).previewEffectWithScene(i, i2, i3, i4, bundle);
    }

    public void previewOff() {
        getService(TranVersion.Core.VERSION_33471).previewOff();
    }

    public void previewOffWithScene(int i, Bundle bundle) {
        getService(TranVersion.Core.VERSION_33471).previewOffWithScene(i, bundle);
    }

    public void registerConfigChangeListener(LightingConfigChangeListener lightingConfigChangeListener) {
        getService(TranVersion.Core.VERSION_33471).registerConfigChangeListener(lightingConfigChangeListener);
    }

    public void setEffectConfig(int i, int i2, TranEffectConfig tranEffectConfig) {
        getService(TranVersion.Core.VERSION_33471).setEffectConfig(i, i2, tranEffectConfig);
    }

    public void setLedMusicPlay(boolean z) {
        getService(TranVersion.Core.VERSION_33471).setLedMusicPlay(z);
    }

    public void setLightingConfig(TranLightingConfig tranLightingConfig) {
        getService(TranVersion.Core.VERSION_33471).setLightingConfig(tranLightingConfig);
    }

    public void setSceneConfig(int i, TranSceneConfig tranSceneConfig) {
        getService(TranVersion.Core.VERSION_33471).setSceneConfig(i, tranSceneConfig);
    }

    public void setSceneParam(int i, Bundle bundle) {
        getService(TranVersion.Core.VERSION_33471).setSceneParam(i, bundle);
    }

    public void startScene(int i, int i2, int i3, int i4, Bundle bundle) {
        getService(TranVersion.Core.VERSION_33471).startScene(i, i2, i3, i4, bundle);
    }

    public void stopScene(int i) {
        getService(TranVersion.Core.VERSION_33471).stopScene(i);
    }

    public void triggerScene(int i, int i2, int i3, int i4, Bundle bundle) {
        getService(TranVersion.Core.VERSION_33471).triggerScene(i, i2, i3, i4, bundle);
    }

    public void unlockEffect() {
        getService(TranVersion.Core.VERSION_33471).unlockEffect();
    }

    public void unlockLightingDisplay(int i) {
        getService(TranVersion.Core.VERSION_33471).unlockLightingDisplay(i);
    }

    public void unregisterConfigChangeListener(LightingConfigChangeListener lightingConfigChangeListener) {
        getService(TranVersion.Core.VERSION_33471).unregisterConfigChangeListener(lightingConfigChangeListener);
    }

    public boolean addEffect(int i, int i2, int i3, String str) {
        return getService(TranVersion.Core.VERSION_33471).addEffect(i, i2, i3, str);
    }

    public void startScene(int i, Bundle bundle) {
        getService(TranVersion.Core.VERSION_33471).startScene(i, -1, -1, -1, bundle);
    }

    public void triggerScene(int i, Bundle bundle) {
        getService(TranVersion.Core.VERSION_33471).triggerScene(i, -1, -1, -1, bundle);
    }
}
