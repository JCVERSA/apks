.class public Lcom/transsion/hubsdk/api/media/TranAudioManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioModeChangeListener;,
        Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioDynamicChangeListener;,
        Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioVPEventListener;,
        Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;
    }
.end annotation


# static fields
.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_TYPE_ALIAS:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final VIDEO_POWER_SAVE_APP_LIST:Ljava/lang/String; = "getSmartEngineSupportPackage"

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager;

.field private mThubService:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CurrentEnabledVPChange(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->CurrentEnabledVPChange(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public VPEnroll(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->VPEnroll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public VPEnrollInfoQuery()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->VPEnrollInfoQuery()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public VPNameChange(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->VPNameChange(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public VPTemplateDelete(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->VPTemplateDelete(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getBassEnhancerEnabled()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getBassEnhancerEnabled()Z

    move-result p0

    return p0
.end method

.method public getCurrentAudioFocusPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentEnabledVP()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getCurrentEnabledVP()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDialogEnhancerEnabled()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getDialogEnhancerEnabled()Z

    move-result p0

    return p0
.end method

.method public getDsOn()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getDsOn()Z

    move-result p0

    return p0
.end method

.method public getGeqBandGains()[I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getGeqBandGains()[I

    move-result-object p0

    return-object p0
.end method

.method public getHeadphoneVirtualizerEnabled()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getHeadphoneVirtualizerEnabled()Z

    move-result p0

    return p0
.end method

.method public getIeqPreset()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getIeqPreset()I

    move-result p0

    return p0
.end method

.method public getIeqPreset(I)I
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getIeqPreset(I)I

    move-result p0

    return p0
.end method

.method public getIeqPresetName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getIeqPresetName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNumOfIeqPresets()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getNumOfIeqPresets()I

    move-result p0

    return p0
.end method

.method public getNumOfProfiles()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getNumOfProfiles()I

    move-result p0

    return p0
.end method

.method public getProfile()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getProfile()I

    move-result p0

    return p0
.end method

.method public getProfileName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getProfileName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReverbReductionAmount()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getReverbReductionAmount()I

    move-result p0

    return p0
.end method

.method public getReverbReductionEnabled()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getReverbReductionEnabled()Z

    move-result p0

    return p0
.end method

.method public getSelectedTuningDevice(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getSelectedTuningDevice(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/media/TranAudioManager;->mThubService:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/media/TranAudioManager;->mThubService:Lcom/transsion/hubsdk/core/media/TranThubAudioManager;

    :cond_0
    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/transsion/hubsdk/api/media/TranAudioManager;->mAospService:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/media/TranAudioManager;->mAospService:Lcom/transsion/hubsdk/aosp/media/TranAospAudioManager;

    :cond_2
    return-object p1
.end method

.method public getSpeakerVirtualizerEnabled()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getSpeakerVirtualizerEnabled()Z

    move-result p0

    return p0
.end method

.method public getStereoWideningAmount(I)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getStereoWideningAmount(I)I

    move-result p0

    return p0
.end method

.method public getTuningDevicesList(I)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getTuningDevicesList(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVolumeGroupIdForLegacyStreamType(I)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getVolumeGroupIdForLegacyStreamType(I)I

    move-result p0

    return p0
.end method

.method public getVolumeLevelerAmount()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->getVolumeLevelerAmount()I

    move-result p0

    return p0
.end method

.method public hasControl()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->hasControl()Z

    move-result p0

    return p0
.end method

.method public isDolbySupport()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->isDolbySupport()Z

    move-result p0

    return p0
.end method

.method public isGeqEnabled(I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->isGeqEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isMonoSpeaker()Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->isMonoSpeaker()Z

    move-result p0

    return p0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 1

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_0

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->isStreamAffectedByRingerMode(I)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter value overflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerAudioDynamicChangeListeners(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioDynamicChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->registerAudioDynamicChangeListeners(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioDynamicChangeListener;)V

    return-void
.end method

.method public registerAudioModeChangeListeners(Ljava/lang/String;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioModeChangeListener;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->registerAudioModeChangeListeners(Ljava/lang/String;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioModeChangeListener;)V

    return-void
.end method

.method public registerAudioVPEventListeners(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioVPEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->registerAudioVPEventListeners(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioVPEventListener;)V

    return-void
.end method

.method public registerVolumeGroupCallback(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->registerVolumeGroupCallback(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "registerVolumeGroupCallback callback cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBassEnhancerEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->setBassEnhancerEnabled(Z)V

    return-void
.end method

.method public setDialogEnhancerAmount(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->setDialogEnhancerAmount(I)V

    return-void
.end method

.method public setDialogEnhancerEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->setDialogEnhancerEnabled(Z)V

    return-void
.end method

.method public setDsOn(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->setDsOn(Z)V

    return-void
.end method

.method public setGeqBandGains([I)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->setGeqBandGains([I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "param gains cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHeadphoneVirtualizerEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->setHeadphoneVirtualizerEnabled(Z)V

    return-void
.end method

.method public setIeqPreset(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->setIeqPreset(I)V

    return-void
.end method

.method public setIeqPreset(II)V
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->setIeqPreset(II)V

    return-void
.end method

.method public setProfile(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->setProfile(I)V

    return-void
.end method

.method public setReverbReductionAmount(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->setReverbReductionAmount(I)V

    return-void
.end method

.method public setReverbReductionEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->setReverbReductionEnabled(Z)V

    return-void
.end method

.method public setRingerModeInternal(Landroid/content/Context;I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->setRingerModeInternal(Ljava/lang/String;I)V

    return-void
.end method

.method public setSpeakerVirtualizerEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->setSpeakerVirtualizerEnabled(Z)V

    return-void
.end method

.method public setStereoWideningAmount(II)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->setStereoWideningAmount(II)V

    return-void
.end method

.method public setVolumeLevelerAmount(I)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->setVolumeLevelerAmount(I)V

    return-void
.end method

.method public setVolumeLevelerEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33241:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->setVolumeLevelerEnabled(Z)V

    return-void
.end method

.method public unregisterAudioDynamicChangeListeners()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->unregisterAudioDynamicChangeListeners()V

    return-void
.end method

.method public unregisterAudioModeChangeListeners(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->unregisterAudioModeChangeListeners(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterAudioVPEventListeners()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->unregisterAudioVPEventListeners()V

    return-void
.end method

.method public unregisterVolumeGroupCallback(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;->unregisterVolumeGroupCallback(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unregisterVolumeGroupCallback callback cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
