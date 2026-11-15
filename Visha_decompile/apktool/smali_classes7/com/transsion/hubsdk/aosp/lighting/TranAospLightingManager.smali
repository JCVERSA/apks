.class public Lcom/transsion/hubsdk/aosp/lighting/TranAospLightingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireBuffer(I)Landroid/os/SharedMemory;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public addEffect(IIILjava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public addEffect([IIIILjava/lang/String;)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public bindSceneWithCustomEffect([II)V
    .locals 0

    return-void
.end method

.method public delEffect(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public drawBuffer(I)V
    .locals 0

    return-void
.end method

.method public getAllCustomEffects()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getColorIds()[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCustomEffectById(I)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEffectConfig(II)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEffectIdList()[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLightingConfig()Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPendingCustomEffectList()[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSceneConfig(I)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public lockLightingDisplay(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public previewEffectWithScene(IIIILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public previewOff()V
    .locals 0

    return-void
.end method

.method public previewOffWithScene(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public registerConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V
    .locals 0

    return-void
.end method

.method public setEffectConfig(IILcom/transsion/hubsdk/api/lighting/TranEffectConfig;)V
    .locals 0

    return-void
.end method

.method public setLedMusicPlay(Z)V
    .locals 0

    return-void
.end method

.method public setLightingConfig(Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;)V
    .locals 0

    return-void
.end method

.method public setSceneConfig(ILcom/transsion/hubsdk/api/lighting/TranSceneConfig;)V
    .locals 0

    return-void
.end method

.method public setSceneParam(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public startScene(IIIILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public stopScene(I)V
    .locals 0

    return-void
.end method

.method public triggerScene(IIIILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public unlockEffect()V
    .locals 0

    return-void
.end method

.method public unlockLightingDisplay(I)V
    .locals 0

    return-void
.end method

.method public unregisterConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V
    .locals 0

    return-void
.end method
