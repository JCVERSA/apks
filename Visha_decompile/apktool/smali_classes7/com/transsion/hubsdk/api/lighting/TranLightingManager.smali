.class public Lcom/transsion/hubsdk/api/lighting/TranLightingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_COUNT_TIME:Ljava/lang/String; = "countTime"

.field private static final TAG:Ljava/lang/String; = "TranLightingManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/lighting/TranAospLightingManager;

.field private mThubService:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireBuffer(I)Landroid/os/SharedMemory;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->acquireBuffer(I)Landroid/os/SharedMemory;

    move-result-object p0

    return-object p0
.end method

.method public addEffect(IIILjava/lang/String;)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->addEffect(IIILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addEffect([IIIILjava/lang/String;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->addEffect([IIIILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bindSceneWithCustomEffect([II)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->bindSceneWithCustomEffect([II)V

    return-void
.end method

.method public delEffect(I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->delEffect(I)Z

    move-result p0

    return p0
.end method

.method public drawBuffer(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->drawBuffer(I)V

    return-void
.end method

.method public getAllCustomEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->getAllCustomEffects()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getColorIds()[I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->getColorIds()[I

    move-result-object p0

    return-object p0
.end method

.method public getCustomEffectById(I)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->getCustomEffectById(I)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;

    move-result-object p0

    return-object p0
.end method

.method public getEffectConfig(II)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->getEffectConfig(II)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;

    move-result-object p0

    return-object p0
.end method

.method public getEffectIdList()[I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->getEffectIdList()[I

    move-result-object p0

    return-object p0
.end method

.method public getLightingConfig()Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->getLightingConfig()Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;

    move-result-object p0

    return-object p0
.end method

.method public getPendingCustomEffectList()[I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->getPendingCustomEffectList()[I

    move-result-object p0

    return-object p0
.end method

.method public getSceneConfig(I)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->getSceneConfig(I)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->mThubService:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->mThubService:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    :cond_0
    return-object p1

    :cond_1
    const-string p1, "TranLightingManager"

    const-string v0, "TranAospLightingManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->mAospService:Lcom/transsion/hubsdk/aosp/lighting/TranAospLightingManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/lighting/TranAospLightingManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/lighting/TranAospLightingManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->mAospService:Lcom/transsion/hubsdk/aosp/lighting/TranAospLightingManager;

    :cond_2
    return-object p1
.end method

.method public lockLightingDisplay(I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->lockLightingDisplay(I)Z

    move-result p0

    return p0
.end method

.method public previewEffect(II)V
    .locals 7

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object v1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v2, -0x1

    move v3, p1

    move v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->previewEffectWithScene(IIIILandroid/os/Bundle;)V

    return-void
.end method

.method public previewEffectWithScene(IIIILandroid/os/Bundle;)V
    .locals 7

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->previewEffectWithScene(IIIILandroid/os/Bundle;)V

    return-void
.end method

.method public previewOff()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->previewOff()V

    return-void
.end method

.method public previewOffWithScene(ILandroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->previewOffWithScene(ILandroid/os/Bundle;)V

    return-void
.end method

.method public registerConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->registerConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V

    return-void
.end method

.method public setEffectConfig(IILcom/transsion/hubsdk/api/lighting/TranEffectConfig;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->setEffectConfig(IILcom/transsion/hubsdk/api/lighting/TranEffectConfig;)V

    return-void
.end method

.method public setLedMusicPlay(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->setLedMusicPlay(Z)V

    return-void
.end method

.method public setLightingConfig(Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->setLightingConfig(Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;)V

    return-void
.end method

.method public setSceneConfig(ILcom/transsion/hubsdk/api/lighting/TranSceneConfig;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->setSceneConfig(ILcom/transsion/hubsdk/api/lighting/TranSceneConfig;)V

    return-void
.end method

.method public setSceneParam(ILandroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->setSceneParam(ILandroid/os/Bundle;)V

    return-void
.end method

.method public startScene(IIIILandroid/os/Bundle;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->startScene(IIIILandroid/os/Bundle;)V

    return-void
.end method

.method public startScene(ILandroid/os/Bundle;)V
    .locals 7

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object v1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v3, -0x1

    move v2, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->startScene(IIIILandroid/os/Bundle;)V

    return-void
.end method

.method public stopScene(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->stopScene(I)V

    return-void
.end method

.method public triggerScene(IIIILandroid/os/Bundle;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->triggerScene(IIIILandroid/os/Bundle;)V

    return-void
.end method

.method public triggerScene(ILandroid/os/Bundle;)V
    .locals 7

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object v1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v3, -0x1

    move v2, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->triggerScene(IIIILandroid/os/Bundle;)V

    return-void
.end method

.method public unlockEffect()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->unlockEffect()V

    return-void
.end method

.method public unlockLightingDisplay(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->unlockLightingDisplay(I)V

    return-void
.end method

.method public unregisterConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;->unregisterConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V

    return-void
.end method
