package com.transsion.hubsdk.interfaces.lighting;

import android.os.Bundle;
import android.os.SharedMemory;
import com.transsion.hubsdk.api.lighting.LightingConfigChangeListener;
import com.transsion.hubsdk.api.lighting.TranEffectConfig;
import com.transsion.hubsdk.api.lighting.TranLightingConfig;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.util.List;

public interface ITranLightingManagerAdapter {
    SharedMemory acquireBuffer(int i);

    boolean addEffect(int i, int i2, int i3, String str);

    boolean addEffect(int[] iArr, int i, int i2, int i3, String str);

    void bindSceneWithCustomEffect(int[] iArr, int i);

    boolean delEffect(int i);

    void drawBuffer(int i);

    List<TranEffectConfig> getAllCustomEffects();

    int[] getColorIds();

    TranEffectConfig getCustomEffectById(int i);

    TranEffectConfig getEffectConfig(int i, int i2);

    int[] getEffectIdList();

    TranLightingConfig getLightingConfig();

    int[] getPendingCustomEffectList();

    TranSceneConfig getSceneConfig(int i);

    boolean lockLightingDisplay(int i);

    void previewEffectWithScene(int i, int i2, int i3, int i4, Bundle bundle);

    void previewOff();

    void previewOffWithScene(int i, Bundle bundle);

    void registerConfigChangeListener(LightingConfigChangeListener lightingConfigChangeListener);

    void setEffectConfig(int i, int i2, TranEffectConfig tranEffectConfig);

    void setLedMusicPlay(boolean z);

    void setLightingConfig(TranLightingConfig tranLightingConfig);

    void setSceneConfig(int i, TranSceneConfig tranSceneConfig);

    void setSceneParam(int i, Bundle bundle);

    void startScene(int i, int i2, int i3, int i4, Bundle bundle);

    void stopScene(int i);

    void triggerScene(int i, int i2, int i3, int i4, Bundle bundle);

    void unlockEffect();

    void unlockLightingDisplay(int i);

    void unregisterConfigChangeListener(LightingConfigChangeListener lightingConfigChangeListener);
}
