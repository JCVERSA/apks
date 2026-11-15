.class public interface abstract Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract acquireBuffer(I)Landroid/os/SharedMemory;
.end method

.method public abstract addEffect(IIILjava/lang/String;)Z
.end method

.method public abstract addEffect([IIIILjava/lang/String;)Z
.end method

.method public abstract bindSceneWithCustomEffect([II)V
.end method

.method public abstract delEffect(I)Z
.end method

.method public abstract drawBuffer(I)V
.end method

.method public abstract getAllCustomEffects()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getColorIds()[I
.end method

.method public abstract getCustomEffectById(I)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
.end method

.method public abstract getEffectConfig(II)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
.end method

.method public abstract getEffectIdList()[I
.end method

.method public abstract getLightingConfig()Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;
.end method

.method public abstract getPendingCustomEffectList()[I
.end method

.method public abstract getSceneConfig(I)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;
.end method

.method public abstract lockLightingDisplay(I)Z
.end method

.method public abstract previewEffectWithScene(IIIILandroid/os/Bundle;)V
.end method

.method public abstract previewOff()V
.end method

.method public abstract previewOffWithScene(ILandroid/os/Bundle;)V
.end method

.method public abstract registerConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V
.end method

.method public abstract setEffectConfig(IILcom/transsion/hubsdk/api/lighting/TranEffectConfig;)V
.end method

.method public abstract setLedMusicPlay(Z)V
.end method

.method public abstract setLightingConfig(Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;)V
.end method

.method public abstract setSceneConfig(ILcom/transsion/hubsdk/api/lighting/TranSceneConfig;)V
.end method

.method public abstract setSceneParam(ILandroid/os/Bundle;)V
.end method

.method public abstract startScene(IIIILandroid/os/Bundle;)V
.end method

.method public abstract stopScene(I)V
.end method

.method public abstract triggerScene(IIIILandroid/os/Bundle;)V
.end method

.method public abstract unlockEffect()V
.end method

.method public abstract unlockLightingDisplay(I)V
.end method

.method public abstract unregisterConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V
.end method
