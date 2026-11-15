package com.transsion.hubsdk.api.lighting;

public interface LightingConfigChangeListener {
    void onCustomEffectAdded(int i);

    void onLightingConfigChanged(TranLightingConfig tranLightingConfig);

    void onSceneConfigChanged(int i, TranSceneConfig tranSceneConfig);

    void onServiceDied();
}
