.class public interface abstract Lcom/transsion/hubsdk/interfaces/media/ITranAudioManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract CurrentEnabledVPChange(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract VPEnroll(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract VPEnrollInfoQuery()Ljava/util/List;
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
.end method

.method public abstract VPNameChange(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract VPTemplateDelete(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;
.end method

.method public abstract getBassEnhancerEnabled()Z
.end method

.method public abstract getCurrentAudioFocusPackageName()Ljava/lang/String;
.end method

.method public abstract getCurrentEnabledVP()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract getDialogEnhancerEnabled()Z
.end method

.method public abstract getDsOn()Z
.end method

.method public abstract getGeqBandGains()[I
.end method

.method public abstract getHeadphoneVirtualizerEnabled()Z
.end method

.method public abstract getIeqPreset()I
.end method

.method public abstract getIeqPreset(I)I
.end method

.method public abstract getIeqPresetName(I)Ljava/lang/String;
.end method

.method public abstract getNumOfIeqPresets()I
.end method

.method public abstract getNumOfProfiles()I
.end method

.method public abstract getProfile()I
.end method

.method public abstract getProfileName(I)Ljava/lang/String;
.end method

.method public abstract getReverbReductionAmount()I
.end method

.method public abstract getReverbReductionEnabled()Z
.end method

.method public abstract getSelectedTuningDevice(I)Ljava/lang/String;
.end method

.method public abstract getSpeakerVirtualizerEnabled()Z
.end method

.method public abstract getStereoWideningAmount(I)I
.end method

.method public abstract getTuningDevicesList(I)[Ljava/lang/String;
.end method

.method public abstract getVolumeGroupIdForLegacyStreamType(I)I
.end method

.method public abstract getVolumeLevelerAmount()I
.end method

.method public abstract hasControl()Z
.end method

.method public abstract isDolbySupport()Z
.end method

.method public abstract isGeqEnabled(I)Z
.end method

.method public abstract isMonoSpeaker()Z
.end method

.method public abstract isStreamAffectedByRingerMode(I)Z
.end method

.method public abstract registerAudioDynamicChangeListeners(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioDynamicChangeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract registerAudioModeChangeListeners(Ljava/lang/String;Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioModeChangeListener;)V
.end method

.method public abstract registerAudioVPEventListeners(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranAudioVPEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract registerVolumeGroupCallback(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)V
.end method

.method public abstract setBassEnhancerEnabled(Z)V
.end method

.method public abstract setDialogEnhancerAmount(I)V
.end method

.method public abstract setDialogEnhancerEnabled(Z)V
.end method

.method public abstract setDsOn(Z)V
.end method

.method public abstract setGeqBandGains([I)V
.end method

.method public abstract setHeadphoneVirtualizerEnabled(Z)V
.end method

.method public abstract setIeqPreset(I)V
.end method

.method public abstract setIeqPreset(II)V
.end method

.method public abstract setProfile(I)V
.end method

.method public abstract setReverbReductionAmount(I)V
.end method

.method public abstract setReverbReductionEnabled(Z)V
.end method

.method public abstract setRingerModeInternal(Ljava/lang/String;I)V
.end method

.method public abstract setSpeakerVirtualizerEnabled(Z)V
.end method

.method public abstract setStereoWideningAmount(II)V
.end method

.method public abstract setVolumeLevelerAmount(I)V
.end method

.method public abstract setVolumeLevelerEnabled(Z)V
.end method

.method public abstract unregisterAudioDynamicChangeListeners()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract unregisterAudioModeChangeListeners(Ljava/lang/String;)V
.end method

.method public abstract unregisterAudioVPEventListeners()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation
.end method

.method public abstract unregisterVolumeGroupCallback(Lcom/transsion/hubsdk/api/media/TranAudioManager$ITranVolumeGroupCallback;)V
.end method
