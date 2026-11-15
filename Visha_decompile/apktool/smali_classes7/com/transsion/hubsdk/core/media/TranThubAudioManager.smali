.class public Lcom/transsion/hubsdk/core/media/TranThubAudioManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioModeChangeListener;,
        Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioDynamicChangeListener;,
        Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioVPEventListener;,
        Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranVolumeGroupCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubAudioManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

.field private mTranAudioDynamicChangeListener:Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioDynamicChangeListener;

.field private mTranAudioModeChangeListener:Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioModeChangeListener;

.field private mTranAudioVPEventListener:Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioVPEventListener;

.field private mVolumeGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;",
            "Lcom/transsion/hubsdk/media/ITranVolumeGroupCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mVolumeGroupMap:Ljava/util/Map;

    const-string v0, "audio_manager"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/media/ITranAudioManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/media/ITranAudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    return-void
.end method

.method public static synthetic A(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getBassEnhancerEnabled$12()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getVolumeGroupIdForLegacyStreamType$49(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$setVolumeLevelerAmount$14(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getCurrentAudioFocusPackageName$6()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$setHeadphoneVirtualizerEnabled$44(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$setDsOn$7(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getCurrentEnabledVP$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getStereoWideningAmount$25(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$VPTemplateDelete$3(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$VPNameChange$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$CurrentEnabledVPChange$4(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$setBassEnhancerEnabled$11(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$isStreamAffectedByRingerMode$45(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getVolumeLevelerAmount$15()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getIeqPreset$21(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$setVolumeLevelerEnabled$13(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$VPEnroll$0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getDialogEnhancerEnabled$42()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$setDialogEnhancerAmount$41(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$hasControl$39()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getReverbReductionAmount$29()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$unregisterVolumeGroupCallback$47(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getReverbReductionEnabled$27()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$VPEnrollInfoQuery$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;[I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$setGeqBandGains$9([I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$setDialogEnhancerEnabled$40(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;II)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$setStereoWideningAmount$24(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getGeqBandGains$10()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getDsOn$8()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getProfile$32()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$isGeqEnabled$30(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getSpeakerVirtualizerEnabled$17()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$setSpeakerVirtualizerEnabled$16(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getTuningDevicesList$36(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$isMonoSpeaker$35()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$setReverbReductionAmount$28(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$CurrentEnabledVPChange$4(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->CurrentEnabledVPChange(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$VPEnroll$0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->VPEnroll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$VPEnrollInfoQuery$2()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->VPEnrollInfoQuery()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$VPNameChange$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/media/ITranAudioManager;->VPNameChange(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$VPTemplateDelete$3(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->VPTemplateDelete(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getAudioAttributesForLegacyStreamType$48(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAudioAttributesForLegacyStreamType fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getBassEnhancerEnabled$12()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getBassEnhancerEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getCurrentAudioFocusPackageName$6()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getCurrentEnabledVP$5()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getCurrentEnabledVP()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getDialogEnhancerEnabled$42()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getDialogEnhancerEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getDsOn$8()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getDsOn()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getGeqBandGains$10()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getGeqBandGains()[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getHeadphoneVirtualizerEnabled$43()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getHeadphoneVirtualizerEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getIeqPreset$20()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getIeqPreset()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getIeqPreset$21(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getIeqPresetExt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getIeqPresetName$23(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getIeqPresetName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getNumOfIeqPresets$22()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getNumOfIeqPresets()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getNumOfProfiles$33()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getNumOfProfiles()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getProfile$32()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getProfile()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getProfileName$34(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getProfileName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getReverbReductionAmount$29()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getReverbReductionAmount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getReverbReductionEnabled$27()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getReverbReductionEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getSelectedTuningDevice$37(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getSelectedTuningDevice(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getSpeakerVirtualizerEnabled$17()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getSpeakerVirtualizerEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getStereoWideningAmount$25(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getStereoWideningAmount(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getTuningDevicesList$36(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getTuningDevicesList(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getVolumeGroupIdForLegacyStreamType$49(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getVolumeGroupIdForLegacyStreamType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVolumeGroupIdForLegacyStreamType fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getVolumeLevelerAmount$15()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->getVolumeLevelerAmount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$hasControl$39()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->hasControl()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isDolbySupport$38()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->isDolbySupport()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isGeqEnabled$30(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->isGeqEnabled(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isMonoSpeaker$35()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->isMonoSpeaker()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isStreamAffectedByRingerMode$45(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$registerVolumeGroupCallback$46(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranVolumeGroupCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranVolumeGroupCallback;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)V

    iget-object v1, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mVolumeGroupMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->registerVolumeGroupCallback(Lcom/transsion/hubsdk/media/ITranVolumeGroupCallback;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setBassEnhancerEnabled$11(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->setBassEnhancerEnabled(Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setDialogEnhancerAmount$41(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->setDialogEnhancerAmount(I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setDialogEnhancerEnabled$40(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->setDialogEnhancerEnabled(Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setDsOn$7(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->setDsOn(Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setGeqBandGains$9([I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->setGeqBandGains([I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setHeadphoneVirtualizerEnabled$44(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->setHeadphoneVirtualizerEnabled(Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setIeqPreset$18(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->setIeqPreset(I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setIeqPreset$19(II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/media/ITranAudioManager;->setIeqPresetExt(II)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setProfile$31(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->setProfile(I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setReverbReductionAmount$28(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->setReverbReductionAmount(I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setReverbReductionEnabled$26(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->setReverbReductionEnabled(Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setSpeakerVirtualizerEnabled$16(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->setSpeakerVirtualizerEnabled(Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setStereoWideningAmount$24(II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/media/ITranAudioManager;->setStereoWideningAmount(II)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setVolumeLevelerAmount$14(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->setVolumeLevelerAmount(I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setVolumeLevelerEnabled$13(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->setVolumeLevelerEnabled(Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$unregisterVolumeGroupCallback$47(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mVolumeGroupMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/media/ITranVolumeGroupCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    invoke-interface {v1, v0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->unregisterVolumeGroupCallback(Lcom/transsion/hubsdk/media/ITranVolumeGroupCallback;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mVolumeGroupMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic m(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getHeadphoneVirtualizerEnabled$43()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getAudioAttributesForLegacyStreamType$48(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$setProfile$31(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$setIeqPreset$18(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getIeqPresetName$23(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getProfileName$34(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$isDolbySupport$38()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getIeqPreset$20()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getNumOfProfiles$33()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Z)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$setReverbReductionEnabled$26(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getSelectedTuningDevice$37(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$registerVolumeGroupCallback$46(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$getNumOfIeqPresets$22()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;II)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->lambda$setIeqPreset$19(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public CurrentEnabledVPChange(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lv0b;

    invoke-direct {v1, p0, p1}, Lv0b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Ljava/lang/String;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v0, "CurrentEnabledVPChange"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public VPEnroll(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ly0b;

    invoke-direct {v1, p0, p1}, Ly0b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Ljava/lang/String;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object p1, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v0, "VPEnroll"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public VPEnrollInfoQuery()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lf2b;

    invoke-direct {v1, p0}, Lf2b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "VPEnrollInfoQuery"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public VPNameChange(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lm0b;

    invoke-direct {v1, p0, p1, p2}, Lm0b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string p2, "VPNameChange"

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public VPTemplateDelete(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lq0b;

    invoke-direct {v1, p0, p1}, Lq0b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Ljava/lang/String;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v0, "VPTemplateDelete"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lt1b;

    invoke-direct {v1, p0, p1}, Lt1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public getBassEnhancerEnabled()Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lg2b;

    invoke-direct {v1, p0}, Lg2b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "getBassEnhancerEnabled"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getCurrentAudioFocusPackageName()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ll0b;

    invoke-direct {v1, p0}, Ll0b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentAudioFocusPackageName packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getCurrentEnabledVP()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Le2b;

    invoke-direct {v1, p0}, Le2b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentEnabledVP"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getDialogEnhancerEnabled()Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lz0b;

    invoke-direct {v1, p0}, Lz0b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "getDialogEnhancerEnabled"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getDsOn()Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lh1b;

    invoke-direct {v1, p0}, Lh1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "getDsOn"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getGeqBandGains()[I
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, La2b;

    invoke-direct {v1, p0}, La2b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "getGeqBandGains"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getHeadphoneVirtualizerEnabled()Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ll1b;

    invoke-direct {v1, p0}, Ll1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "getHeadphoneVirtualizerEnabled"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getIeqPreset()I
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lm1b;

    invoke-direct {v1, p0}, Lm1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "getIeqPreset"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getIeqPreset(I)I
    .locals 3

    .line 3
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lb2b;

    invoke-direct {v1, p0, p1}, Lb2b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 4
    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIeqPreset port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getIeqPresetName(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lq1b;

    invoke-direct {v1, p0, p1}, Lq1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object p1, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v0, "getIeqPresetName"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getNumOfIeqPresets()I
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lw0b;

    invoke-direct {v1, p0}, Lw0b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "getNumOfIeqPresets"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getNumOfProfiles()I
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lb1b;

    invoke-direct {v1, p0}, Lb1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "getNumOfProfiles"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getProfile()I
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, La1b;

    invoke-direct {v1, p0}, La1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "getProfile"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getProfileName(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lj1b;

    invoke-direct {v1, p0, p1}, Lj1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object p1, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v0, "getProfileName"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getReverbReductionAmount()I
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lz1b;

    invoke-direct {v1, p0}, Lz1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "getReverbReductionAmount"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getReverbReductionEnabled()Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ln0b;

    invoke-direct {v1, p0}, Ln0b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "getReverbReductionEnabled"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getSelectedTuningDevice(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lk1b;

    invoke-direct {v1, p0, p1}, Lk1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object p1, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v0, "getSelectedTuningDevice"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getSpeakerVirtualizerEnabled()Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lc2b;

    invoke-direct {v1, p0}, Lc2b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "getSpeakerVirtualizerEnabled"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getStereoWideningAmount(I)I
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lh2b;

    invoke-direct {v1, p0, p1}, Lh2b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p1, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v0, "getStereoWideningAmount"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getTuningDevicesList(I)[Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Li1b;

    invoke-direct {v1, p0, p1}, Li1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    sget-object p1, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v0, "getTuningDevicesList"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getVolumeGroupIdForLegacyStreamType(I)I
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Le1b;

    invoke-direct {v1, p0, p1}, Le1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getVolumeLevelerAmount()I
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lc1b;

    invoke-direct {v1, p0}, Lc1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "getVolumeLevelerAmount"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public hasControl()Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lo1b;

    invoke-direct {v1, p0}, Lo1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "hasControl"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isDolbySupport()Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ld2b;

    invoke-direct {v1, p0}, Ld2b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "isDolbySupport"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isGeqEnabled(I)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lp1b;

    invoke-direct {v1, p0, p1}, Lp1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v0, "isGeqEnabled"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isMonoSpeaker()Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lo0b;

    invoke-direct {v1, p0}, Lo0b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v1, "isMonoSpeaker"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ls1b;

    invoke-direct {v1, p0, p1}, Ls1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string v0, "isStreamAffectedByRingerMode"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public registerAudioDynamicChangeListeners(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioDynamicChangeListener;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioDynamicChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioDynamicChangeListener;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioDynamicChangeListener;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mTranAudioDynamicChangeListener:Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioDynamicChangeListener;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->registerAudioDynamicChangeListeners(Lcom/transsion/hubsdk/media/ITranAudioDynamicChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerAudioModeChangeListeners(Ljava/lang/String;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioModeChangeListener;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioModeChangeListener;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioModeChangeListener;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioModeChangeListener;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mTranAudioModeChangeListener:Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioModeChangeListener;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    invoke-interface {p0, p1, v0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->registerAudioModeChangeListeners(Ljava/lang/String;Lcom/transsion/hubsdk/media/ITranAudioModeChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerAudioVPEventListeners(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioVPEventListener;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioVPEventListener;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioVPEventListener;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioVPEventListener;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mTranAudioVPEventListener:Lcom/transsion/hubsdk/core/media/TranThubAudioManager$TranAudioVPEventListener;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->registerAudioVPEventListeners(Lcom/transsion/hubsdk/media/ITranAudioVPEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerVolumeGroupCallback(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lp0b;

    invoke-direct {v1, p0, p1}, Lp0b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string p1, "registerVolumeGroupCallback"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBassEnhancerEnabled(Z)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lv1b;

    invoke-direct {v1, p0, p1}, Lv1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Z)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string p1, "setBassEnhancerEnabled"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDialogEnhancerAmount(I)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lk0b;

    invoke-direct {v1, p0, p1}, Lk0b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string p1, "setDialogEnhancerAmount"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDialogEnhancerEnabled(Z)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lf1b;

    invoke-direct {v1, p0, p1}, Lf1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Z)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string p1, "setDialogEnhancerEnabled"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDsOn(Z)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ly1b;

    invoke-direct {v1, p0, p1}, Ly1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Z)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string p1, "setDsOn"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setGeqBandGains([I)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lu0b;

    invoke-direct {v1, p0, p1}, Lu0b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;[I)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string p1, "setGeqBandGains"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHeadphoneVirtualizerEnabled(Z)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lw1b;

    invoke-direct {v1, p0, p1}, Lw1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Z)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string p1, "setHeadphoneVirtualizerEnabled"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIeqPreset(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ln1b;

    invoke-direct {v1, p0, p1}, Ln1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIeqPreset preset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIeqPreset(II)V
    .locals 2

    .line 3
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lg1b;

    invoke-direct {v1, p0, p1, p2}, Lg1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;II)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIeqPreset preset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",port: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setProfile(I)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lx0b;

    invoke-direct {v1, p0, p1}, Lx0b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProfile profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setReverbReductionAmount(I)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lt0b;

    invoke-direct {v1, p0, p1}, Lt0b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReverbReductionAmount amount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setReverbReductionEnabled(Z)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lr0b;

    invoke-direct {v1, p0, p1}, Lr0b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Z)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReverbReductionEnabled enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRingerModeInternal(Ljava/lang/String;I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/media/ITranAudioManager;->setRingerModeInternal(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setService(Lcom/transsion/hubsdk/media/ITranAudioManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    return-void
.end method

.method public setSpeakerVirtualizerEnabled(Z)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ld1b;

    invoke-direct {v1, p0, p1}, Ld1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Z)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string p1, "setSpeakerVirtualizerEnabled"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStereoWideningAmount(II)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lx1b;

    invoke-direct {v1, p0, p1, p2}, Lx1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;II)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStereoWideningAmount amount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",port: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVolumeLevelerAmount(I)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lu1b;

    invoke-direct {v1, p0, p1}, Lu1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;I)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string p1, "setVolumeLevelerAmount"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVolumeLevelerEnabled(Z)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lr1b;

    invoke-direct {v1, p0, p1}, Lr1b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Z)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string p1, "setVolumeLevelerEnabled"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterAudioDynamicChangeListeners()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->unregisterAudioDynamicChangeListeners()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterAudioModeChangeListeners(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioManager;->unregisterAudioModeChangeListeners(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterAudioVPEventListeners()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->mService:Lcom/transsion/hubsdk/media/ITranAudioManager;

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioManager;->unregisterAudioVPEventListeners()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterVolumeGroupCallback(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Ls0b;

    invoke-direct {v1, p0, p1}, Ls0b;-><init>(Lcom/transsion/hubsdk/core/media/TranThubAudioManager;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)V

    const-string p0, "audio_manager"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;->TAG:Ljava/lang/String;

    const-string p1, "unregisterVolumeGroupCallback"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
