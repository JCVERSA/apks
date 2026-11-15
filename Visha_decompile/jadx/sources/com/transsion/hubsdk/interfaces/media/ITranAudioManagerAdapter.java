package com.transsion.hubsdk.interfaces.media;

import android.media.AudioAttributes;
import com.transsion.hubsdk.api.media.TranAudioManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import java.util.List;

public interface ITranAudioManagerAdapter {
    boolean CurrentEnabledVPChange(String str) throws TranThubIncompatibleException;

    String VPEnroll(String str) throws TranThubIncompatibleException;

    List<String> VPEnrollInfoQuery() throws TranThubIncompatibleException;

    boolean VPNameChange(String str, String str2) throws TranThubIncompatibleException;

    boolean VPTemplateDelete(String str) throws TranThubIncompatibleException;

    AudioAttributes getAudioAttributesForLegacyStreamType(int i);

    boolean getBassEnhancerEnabled();

    String getCurrentAudioFocusPackageName();

    String getCurrentEnabledVP() throws TranThubIncompatibleException;

    boolean getDialogEnhancerEnabled();

    boolean getDsOn();

    int[] getGeqBandGains();

    boolean getHeadphoneVirtualizerEnabled();

    int getIeqPreset();

    int getIeqPreset(int i);

    String getIeqPresetName(int i);

    int getNumOfIeqPresets();

    int getNumOfProfiles();

    int getProfile();

    String getProfileName(int i);

    int getReverbReductionAmount();

    boolean getReverbReductionEnabled();

    String getSelectedTuningDevice(int i);

    boolean getSpeakerVirtualizerEnabled();

    int getStereoWideningAmount(int i);

    String[] getTuningDevicesList(int i);

    int getVolumeGroupIdForLegacyStreamType(int i);

    int getVolumeLevelerAmount();

    boolean hasControl();

    boolean isDolbySupport();

    boolean isGeqEnabled(int i);

    boolean isMonoSpeaker();

    boolean isStreamAffectedByRingerMode(int i);

    void registerAudioDynamicChangeListeners(TranAudioManager.ITranAudioDynamicChangeListener iTranAudioDynamicChangeListener) throws TranThubIncompatibleException;

    void registerAudioModeChangeListeners(String str, TranAudioManager.ITranAudioModeChangeListener iTranAudioModeChangeListener);

    void registerAudioVPEventListeners(TranAudioManager.ITranAudioVPEventListener iTranAudioVPEventListener) throws TranThubIncompatibleException;

    void registerVolumeGroupCallback(TranAudioManager.ITranVolumeGroupCallback iTranVolumeGroupCallback);

    void setBassEnhancerEnabled(boolean z);

    void setDialogEnhancerAmount(int i);

    void setDialogEnhancerEnabled(boolean z);

    void setDsOn(boolean z);

    void setGeqBandGains(int[] iArr);

    void setHeadphoneVirtualizerEnabled(boolean z);

    void setIeqPreset(int i);

    void setIeqPreset(int i, int i2);

    void setProfile(int i);

    void setReverbReductionAmount(int i);

    void setReverbReductionEnabled(boolean z);

    void setRingerModeInternal(String str, int i);

    void setSpeakerVirtualizerEnabled(boolean z);

    void setStereoWideningAmount(int i, int i2);

    void setVolumeLevelerAmount(int i);

    void setVolumeLevelerEnabled(boolean z);

    void unregisterAudioDynamicChangeListeners() throws TranThubIncompatibleException;

    void unregisterAudioModeChangeListeners(String str);

    void unregisterAudioVPEventListeners() throws TranThubIncompatibleException;

    void unregisterVolumeGroupCallback(TranAudioManager.ITranVolumeGroupCallback iTranVolumeGroupCallback);
}
