.class public Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubLightingManager"

.field private static mToken:Landroid/os/IBinder;


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;",
            "Lcom/transsion/hubsdk/lighting/ITranLightingConfigChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mListenerMap:Ljava/util/Map;

    new-instance v0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$1;-><init>(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const-string v1, "tran_lighting"

    invoke-static {v1}, Lcom/transsion/hubsdk/transs/TranSystemServerServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mBinder:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to register DeathRecipient for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TranThubLightingManager"

    invoke-static {v1, p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;Lcom/transsion/hubsdk/lighting/TranLightingConfig;)Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertLighting(Lcom/transsion/hubsdk/lighting/TranLightingConfig;)Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;Lcom/transsion/hubsdk/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertScene(Lcom/transsion/hubsdk/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;

    move-result-object p0

    return-object p0
.end method

.method private convertEffect(Lcom/transsion/hubsdk/lighting/TranEffectConfig;)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
    .locals 12

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p0, Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :cond_1
    move-object v11, p0

    new-instance p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getEffectId()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getColor()I

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->isSupportColor()Z

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getEffectParameter()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->isUnlocked()Z

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->isHidden()Z

    move-result v7

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->isPrebuilt()Z

    move-result v8

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getCreatedTime()J

    move-result-wide v9

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;-><init>(IIZIZZZJLandroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getCustomFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->setCustomFilePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getPlayTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->setPlayTime(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->setType(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getPara()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->setPara(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getPara1()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->setPara1(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getPara2()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->setPara2(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getPara3()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->setPara3(I)V

    return-object p0
.end method

.method private convertLighting(Lcom/transsion/hubsdk/lighting/TranLightingConfig;)Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getSceneConfigs()Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/hubsdk/lighting/TranSceneConfig;

    invoke-direct {p0, v5}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertScene(Lcom/transsion/hubsdk/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :cond_3
    move-object v10, v0

    new-instance p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getMinBrightness()I

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getMaxBrightness()I

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getDefaultBrightness()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getStartHour()I

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getStartMinute()I

    move-result v7

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getEndHour()I

    move-result v8

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getEndMinute()I

    move-result v9

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;-><init>(Landroid/util/SparseArray;IIIIIIILandroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->isEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setEnable(Z)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->isLowBattery()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mLowBattery:Z

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->isDoNotDisturb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mDoNotDisturb:Z

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->isSatelliteMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSatelliteMode:Z

    iget v0, p1, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->mCustomEffectVersion:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEffectVersion:I

    iget v0, p1, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->mConfigVersion:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mConfigVersion:I

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getPara()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setPara(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getPara1()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setPara1(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getPara2()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setPara2(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getPara3()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setPara3(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getTimeMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setTimeMode(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getCustomStartHour()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setCustomStartHour(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getCustomStartMinute()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setCustomStartMinute(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getCustomEndHour()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setCustomEndHour(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getCustomEndMinute()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setCustomEndMinute(I)V

    return-object p0
.end method

.method private convertScene(Lcom/transsion/hubsdk/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->getSupportEffects()Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/hubsdk/lighting/TranEffectConfig;

    invoke-direct {p0, v5}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertEffect(Lcom/transsion/hubsdk/lighting/TranEffectConfig;)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :cond_3
    move-object v9, v0

    new-instance p0, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->getSceneId()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->getEnable()Z

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->getChooseEffect()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->getPriority()I

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->isSupportBrightness()Z

    move-result v7

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->isMainUser()Z

    move-result v8

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;-><init>(IZLandroid/util/SparseArray;IIZZLandroid/os/Bundle;)V

    iget v0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mEffectSelectionMode:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mEffectSelectionMode:I

    iget v0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mEffectType:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mEffectType:I

    iget v0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mConstantEffectId:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mConstantEffectId:I

    iget v0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mIntermittentEffectId:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mIntermittentEffectId:I

    iget v0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mFixedEffectId:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mFixedEffectId:I

    iget v0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mRandomEffectId:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mRandomEffectId:I

    iget-boolean v0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mIsAffectedByGlobalSwitch:Z

    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mIsAffectedByGlobalSwitch:Z

    iget-boolean v0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mSupportCustomEffect:Z

    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mSupportCustomEffect:Z

    iget-boolean v0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mSupportColor:Z

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setSupportColor(Z)V

    iget-boolean v0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mSupportLightingDisplay:Z

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setSupportLightingDisplay(Z)V

    iget v0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mFft:I

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setFft(I)V

    iget v0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mLoop:I

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setLoop(I)V

    iget-object v0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mLedModeName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setLedModeName(Ljava/lang/String;)V

    iget v0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mPara1:I

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setPara1(I)V

    iget v0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mPara2:I

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setPara2(I)V

    iget v0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mPara3:I

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setPara3(I)V

    iget p1, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mSubPriority:I

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setSubPriority(I)V

    return-object p0
.end method

.method private convertToCommonEffect(Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;)Lcom/transsion/hubsdk/lighting/TranEffectConfig;
    .locals 11

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getExtraData()Landroid/os/Bundle;

    move-result-object v10

    new-instance p0, Lcom/transsion/hubsdk/lighting/TranEffectConfig;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getEffectId()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getColor()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->isSupportColor()Z

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getEffectParameter()I

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->isUnlocked()Z

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->isHidden()Z

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->isPrebuilt()Z

    move-result v7

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getCreatedTime()J

    move-result-wide v8

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;-><init>(IIZIZZZJLandroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getCustomFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->setCustomFilePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getPlayTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->setPlayTime(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->setType(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getPara()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->setPara(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getPara1()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->setPara1(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getPara2()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->setPara2(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getPara3()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->setPara3(I)V

    return-object p0
.end method

.method private convertToCommonLighting(Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;)Lcom/transsion/hubsdk/lighting/TranLightingConfig;
    .locals 10

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getBundle()Landroid/os/Bundle;

    move-result-object v9

    new-instance p0, Lcom/transsion/hubsdk/lighting/TranLightingConfig;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getMinBrightness()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getMaxBrightness()I

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getBrightness()I

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getStartHour()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getStartMinute()I

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getEndHour()I

    move-result v7

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getEndMinute()I

    move-result v8

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;-><init>(Landroid/util/SparseArray;IIIIIIILandroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->isEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setEnable(Z)V

    iget-boolean v0, p1, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mLowBattery:Z

    iput-boolean v0, p0, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->mLowBattery:Z

    iget-boolean v0, p1, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mDoNotDisturb:Z

    iput-boolean v0, p0, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->mDoNotDisturb:Z

    iget-boolean v0, p1, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSatelliteMode:Z

    iput-boolean v0, p0, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->mSatelliteMode:Z

    iget v0, p1, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEffectVersion:I

    iput v0, p0, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->mCustomEffectVersion:I

    iget v0, p1, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mConfigVersion:I

    iput v0, p0, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->mConfigVersion:I

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getPara()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setPara(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getPara1()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setPara1(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getPara2()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setPara2(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getPara3()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setPara3(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getTimeMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setTimeMode(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getCustomStartHour()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setCustomStartHour(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getCustomStartMinute()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setCustomStartMinute(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getCustomEndHour()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setCustomEndHour(I)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getCustomEndMinute()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setCustomEndMinute(I)V

    return-object p0
.end method

.method private convertToCommonScene(Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/lighting/TranSceneConfig;
    .locals 9

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getExtraData()Landroid/os/Bundle;

    move-result-object v8

    new-instance p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getSceneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getEnable()Z

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getChooseEffect()I

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getPriority()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->isSupportBrightness()Z

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->isMainUser()Z

    move-result v7

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;-><init>(IZLandroid/util/SparseArray;IIZZLandroid/os/Bundle;)V

    iget v0, p1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mEffectSelectionMode:I

    iput v0, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mEffectSelectionMode:I

    iget v0, p1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mEffectType:I

    iput v0, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mEffectType:I

    iget v0, p1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mConstantEffectId:I

    iput v0, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mConstantEffectId:I

    iget v0, p1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mIntermittentEffectId:I

    iput v0, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mIntermittentEffectId:I

    iget v0, p1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mFixedEffectId:I

    iput v0, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mFixedEffectId:I

    iget v0, p1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mRandomEffectId:I

    iput v0, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mRandomEffectId:I

    iget-boolean v0, p1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mIsAffectedByGlobalSwitch:Z

    iput-boolean v0, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mIsAffectedByGlobalSwitch:Z

    iget-boolean v0, p1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mSupportCustomEffect:Z

    iput-boolean v0, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mSupportCustomEffect:Z

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->isSupportColor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mSupportColor:Z

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->isSupportLightingDisplay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mSupportLightingDisplay:Z

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getFft()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mFft:I

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getLoop()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mLoop:I

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getLedModeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mLedModeName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getPara1()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mPara1:I

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getPara2()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mPara2:I

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getPara3()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mPara3:I

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getSubPriority()I

    move-result p1

    iput p1, p0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mSubPriority:I

    return-object p0
.end method


# virtual methods
.method public acquireBuffer(I)Landroid/os/SharedMemory;
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->acquireBuffer(I)Lcom/transsion/hubsdk/lighting/TranSharedBufferHandle;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/lighting/TranSharedBufferHandle;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt p1, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/lighting/TranSharedBufferHandle;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p0}, Lr3b;->a(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCustomEffectById: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    return-object v0
.end method

.method public addEffect(IIILjava/lang/String;)Z
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_0

    .line 6
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->addEffect2(IIILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addEffect2: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addEffect([IIIILjava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->addEffect([IIIILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addEffect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bindSceneWithCustomEffect([II)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->bindSceneWithCustomEffect([II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bindSceneWithCustomEffect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public delEffect(I)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->delEffect(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delEffect: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public drawBuffer(I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->drawBuffer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCustomEffectById: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public getAllCustomEffects()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->getAllCustomEffects()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/hubsdk/lighting/TranEffectConfig;

    invoke-direct {p0, v3}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertEffect(Lcom/transsion/hubsdk/lighting/TranEffectConfig;)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    return-object v1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllCustomEffects: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubLightingManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_4
    return-object v1
.end method

.method public getColorIds()[I
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->getColorIds()[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getColorIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubLightingManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCustomEffectById(I)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->getCustomEffectById(I)Lcom/transsion/hubsdk/lighting/TranEffectConfig;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertEffect(Lcom/transsion/hubsdk/lighting/TranEffectConfig;)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCustomEffectById: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    return-object v1
.end method

.method public getEffectConfig(II)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->getEffectConfig(II)Lcom/transsion/hubsdk/lighting/TranEffectConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertEffect(Lcom/transsion/hubsdk/lighting/TranEffectConfig;)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getEffectConfig: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEffectIdList()[I
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->getEffectIdList()[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEffectIdList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubLightingManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLightingConfig()Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->getLightingConfig()Lcom/transsion/hubsdk/lighting/TranLightingConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertLighting(Lcom/transsion/hubsdk/lighting/TranLightingConfig;)Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLightingConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubLightingManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPendingCustomEffectList()[I
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->getPendingCustomEffectList()[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllCustomEffects: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubLightingManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSceneConfig(I)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->getSceneConfig(I)Lcom/transsion/hubsdk/lighting/TranSceneConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertScene(Lcom/transsion/hubsdk/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSceneConfig: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public lockLightingDisplay(I)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mToken:Landroid/os/IBinder;

    invoke-interface {p0, p1, v0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->lockLightingDisplay(ILandroid/os/IBinder;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCustomEffectById: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public previewEffectWithScene(IIIILandroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->previewEffectWithScene(IIIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startEffect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public previewOff()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->previewOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubLightingManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public previewOffWithScene(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->previewOffWithScene(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startEffect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public registerConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "TranThubLightingManager"

    const-string p1, "registerConfigChangeListener: listener is null"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-nez v0, :cond_1

    const-string p0, "TranThubLightingManager"

    const-string p1, "registerConfigChangeListener: service is null"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;-><init>(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "TranThubLightingManager"

    const-string v0, "registerConfigChangeListener: listener already registered"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    invoke-interface {v1, v0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->registerConfigChangeListener(Lcom/transsion/hubsdk/lighting/ITranLightingConfigChangeListener;)V

    const-string v0, "TranThubLightingManager"

    const-string v1, "registerConfigChangeListener: success"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "TranThubLightingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerConfigChangeListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public setEffectConfig(IILcom/transsion/hubsdk/api/lighting/TranEffectConfig;)V
    .locals 2

    const-string v0, "TranThubLightingManager"

    iget-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-direct {p0, p3}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertToCommonEffect(Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;)Lcom/transsion/hubsdk/lighting/TranEffectConfig;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p0, "setEffectConfig: config is null"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->setEffectConfig(IILcom/transsion/hubsdk/lighting/TranEffectConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setEffectConfig: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public setLedMusicPlay(Z)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->setLedMusicPlay(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLedMusicPlay: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public setLightingConfig(Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;)V
    .locals 2

    const-string v0, "TranThubLightingManager"

    iget-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertToCommonLighting(Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;)Lcom/transsion/hubsdk/lighting/TranLightingConfig;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "setConfig: config is null"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->setLightingConfig(Lcom/transsion/hubsdk/lighting/TranLightingConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public setSceneConfig(ILcom/transsion/hubsdk/api/lighting/TranSceneConfig;)V
    .locals 2

    const-string v0, "TranThubLightingManager"

    iget-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-direct {p0, p2}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertToCommonScene(Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/lighting/TranSceneConfig;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p0, "setSceneConfig: config is null"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->setSceneConfig(ILcom/transsion/hubsdk/lighting/TranSceneConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setEffectConfig: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public setSceneParam(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->setSceneParam(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSceneParam: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public startScene(IIIILandroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v6, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mToken:Landroid/os/IBinder;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->startScene(IIIILandroid/os/Bundle;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startEffect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public stopScene(I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->stopScene(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopEffect: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public triggerScene(IIIILandroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->triggerScene(IIIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSceneParam: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public unlockEffect()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->unlockEffect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unlockEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubLightingManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public unlockLightingDisplay(I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->unlockLightingDisplay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCustomEffectById: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "TranThubLightingManager"

    const-string p1, "unregisterConfigChangeListener: listener is null"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-nez v0, :cond_1

    const-string p0, "TranThubLightingManager"

    const-string p1, "unregisterConfigChangeListener: service is null"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/lighting/ITranLightingConfigChangeListener;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    const-string p0, "TranThubLightingManager"

    const-string p1, "unregisterConfigChangeListener: listener not found"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->unregisterConfigChangeListener(Lcom/transsion/hubsdk/lighting/ITranLightingConfigChangeListener;)V

    const-string p0, "TranThubLightingManager"

    const-string p1, "unregisterConfigChangeListener: success"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "TranThubLightingManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterConfigChangeListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lo2b;->a(Landroid/os/RemoteException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
