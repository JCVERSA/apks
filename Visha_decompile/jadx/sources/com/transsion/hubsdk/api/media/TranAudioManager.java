package com.transsion.hubsdk.api.media;

import android.content.Context;
import android.media.AudioAttributes;
import com.transsion.hubsdk.aosp.media.TranAospAudioManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.media.TranThubAudioManager;
import com.transsion.hubsdk.interfaces.media.ITranAudioManagerAdapter;
import java.util.List;

public class TranAudioManager {
    public static final String EXTRA_PREV_VOLUME_STREAM_VALUE = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE";
    public static final String EXTRA_VOLUME_STREAM_TYPE = "android.media.EXTRA_VOLUME_STREAM_TYPE";
    public static final String EXTRA_VOLUME_STREAM_TYPE_ALIAS = "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS";
    public static final String EXTRA_VOLUME_STREAM_VALUE = "android.media.EXTRA_VOLUME_STREAM_VALUE";
    public static final int STREAM_BLUETOOTH_SCO = 6;
    public static final String VIDEO_POWER_SAVE_APP_LIST = "getSmartEngineSupportPackage";
    public static final String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";
    private TranAospAudioManager mAospService;
    private TranThubAudioManager mThubService;

    public interface ITranAudioDynamicChangeListener {
        void hideAudioDynamic();

        boolean isAudioDynamicVisiable();

        void showAudioDynamicBar(String[] strArr, String str, String str2, boolean z, String str3);
    }

    public interface ITranAudioModeChangeListener {
        void onAudioModeChange(int i, String str);
    }

    public interface ITranAudioVPEventListener {
        void onEvent(int i);
    }

    public interface ITranVolumeGroupCallback {
        void onAudioVolumeGroupChanged(int i, int i2);
    }

    public boolean CurrentEnabledVPChange(String str) throws TranThubIncompatibleException {
        return getService(TranVersion.Core.VERSION_33431).CurrentEnabledVPChange(str);
    }

    public String VPEnroll(String str) throws TranThubIncompatibleException {
        return getService(TranVersion.Core.VERSION_33431).VPEnroll(str);
    }

    public List<String> VPEnrollInfoQuery() throws TranThubIncompatibleException {
        return getService(TranVersion.Core.VERSION_33431).VPEnrollInfoQuery();
    }

    public boolean VPNameChange(String str, String str2) throws TranThubIncompatibleException {
        return getService(TranVersion.Core.VERSION_33431).VPNameChange(str, str2);
    }

    public boolean VPTemplateDelete(String str) throws TranThubIncompatibleException {
        return getService(TranVersion.Core.VERSION_33431).VPTemplateDelete(str);
    }

    public AudioAttributes getAudioAttributesForLegacyStreamType(int i) {
        return getService(TranVersion.Core.VERSION_33281).getAudioAttributesForLegacyStreamType(i);
    }

    public boolean getBassEnhancerEnabled() {
        return getService(TranVersion.Core.VERSION_33241).getBassEnhancerEnabled();
    }

    public String getCurrentAudioFocusPackageName() {
        return getService(TranVersion.Core.VERSION_33181).getCurrentAudioFocusPackageName();
    }

    public String getCurrentEnabledVP() throws TranThubIncompatibleException {
        return getService(TranVersion.Core.VERSION_33431).getCurrentEnabledVP();
    }

    public boolean getDialogEnhancerEnabled() {
        return getService(TranVersion.Core.VERSION_33251).getDialogEnhancerEnabled();
    }

    public boolean getDsOn() {
        return getService(TranVersion.Core.VERSION_33241).getDsOn();
    }

    public int[] getGeqBandGains() {
        return getService(TranVersion.Core.VERSION_33241).getGeqBandGains();
    }

    public boolean getHeadphoneVirtualizerEnabled() {
        return getService(TranVersion.Core.VERSION_33251).getHeadphoneVirtualizerEnabled();
    }

    public int getIeqPreset() {
        return getService(TranVersion.Core.VERSION_33241).getIeqPreset();
    }

    public String getIeqPresetName(int i) {
        return getService(TranVersion.Core.VERSION_33241).getIeqPresetName(i);
    }

    public int getNumOfIeqPresets() {
        return getService(TranVersion.Core.VERSION_33241).getNumOfIeqPresets();
    }

    public int getNumOfProfiles() {
        return getService(TranVersion.Core.VERSION_33251).getNumOfProfiles();
    }

    public int getProfile() {
        return getService(TranVersion.Core.VERSION_33251).getProfile();
    }

    public String getProfileName(int i) {
        return getService(TranVersion.Core.VERSION_33251).getProfileName(i);
    }

    public int getReverbReductionAmount() {
        return getService(TranVersion.Core.VERSION_33251).getReverbReductionAmount();
    }

    public boolean getReverbReductionEnabled() {
        return getService(TranVersion.Core.VERSION_33251).getReverbReductionEnabled();
    }

    public String getSelectedTuningDevice(int i) {
        return getService(TranVersion.Core.VERSION_33251).getSelectedTuningDevice(i);
    }

    public ITranAudioManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubAudioManager tranThubAudioManager = this.mThubService;
            if (tranThubAudioManager != null) {
                return tranThubAudioManager;
            }
            TranThubAudioManager tranThubAudioManager2 = new TranThubAudioManager();
            this.mThubService = tranThubAudioManager2;
            return tranThubAudioManager2;
        }
        TranAospAudioManager tranAospAudioManager = this.mAospService;
        if (tranAospAudioManager != null) {
            return tranAospAudioManager;
        }
        TranAospAudioManager tranAospAudioManager2 = new TranAospAudioManager();
        this.mAospService = tranAospAudioManager2;
        return tranAospAudioManager2;
    }

    public boolean getSpeakerVirtualizerEnabled() {
        return getService(TranVersion.Core.VERSION_33241).getSpeakerVirtualizerEnabled();
    }

    public int getStereoWideningAmount(int i) {
        return getService(TranVersion.Core.VERSION_33241).getStereoWideningAmount(i);
    }

    public String[] getTuningDevicesList(int i) {
        return getService(TranVersion.Core.VERSION_33251).getTuningDevicesList(i);
    }

    public int getVolumeGroupIdForLegacyStreamType(int i) {
        return getService(TranVersion.Core.VERSION_33281).getVolumeGroupIdForLegacyStreamType(i);
    }

    public int getVolumeLevelerAmount() {
        return getService(TranVersion.Core.VERSION_33241).getVolumeLevelerAmount();
    }

    public boolean hasControl() {
        return getService(TranVersion.Core.VERSION_33251).hasControl();
    }

    public boolean isDolbySupport() {
        return getService(TranVersion.Core.VERSION_33251).isDolbySupport();
    }

    public boolean isGeqEnabled(int i) {
        return getService(TranVersion.Core.VERSION_33251).isGeqEnabled(i);
    }

    public boolean isMonoSpeaker() {
        return getService(TranVersion.Core.VERSION_33251).isMonoSpeaker();
    }

    public boolean isStreamAffectedByRingerMode(int i) {
        if (i > Integer.MAX_VALUE || i < Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Parameter value overflow");
        }
        return getService(TranVersion.Core.VERSION_33271).isStreamAffectedByRingerMode(i);
    }

    public void registerAudioDynamicChangeListeners(ITranAudioDynamicChangeListener iTranAudioDynamicChangeListener) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33411).registerAudioDynamicChangeListeners(iTranAudioDynamicChangeListener);
    }

    public void registerAudioModeChangeListeners(String str, ITranAudioModeChangeListener iTranAudioModeChangeListener) {
        getService(TranVersion.Core.VERSION_33141).registerAudioModeChangeListeners(str, iTranAudioModeChangeListener);
    }

    public void registerAudioVPEventListeners(ITranAudioVPEventListener iTranAudioVPEventListener) throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33431).registerAudioVPEventListeners(iTranAudioVPEventListener);
    }

    public void registerVolumeGroupCallback(ITranVolumeGroupCallback iTranVolumeGroupCallback) {
        if (iTranVolumeGroupCallback == null) {
            throw new NullPointerException("registerVolumeGroupCallback callback cannot be null");
        }
        getService(TranVersion.Core.VERSION_33271).registerVolumeGroupCallback(iTranVolumeGroupCallback);
    }

    public void setBassEnhancerEnabled(boolean z) {
        getService(TranVersion.Core.VERSION_33241).setBassEnhancerEnabled(z);
    }

    public void setDialogEnhancerAmount(int i) {
        getService(TranVersion.Core.VERSION_33251).setDialogEnhancerAmount(i);
    }

    public void setDialogEnhancerEnabled(boolean z) {
        getService(TranVersion.Core.VERSION_33251).setDialogEnhancerEnabled(z);
    }

    public void setDsOn(boolean z) {
        getService(TranVersion.Core.VERSION_33241).setDsOn(z);
    }

    public void setGeqBandGains(int[] iArr) {
        if (iArr == null) {
            throw new NullPointerException("param gains cannot be null");
        }
        getService(TranVersion.Core.VERSION_33241).setGeqBandGains(iArr);
    }

    public void setHeadphoneVirtualizerEnabled(boolean z) {
        getService(TranVersion.Core.VERSION_33251).setHeadphoneVirtualizerEnabled(z);
    }

    public void setIeqPreset(int i) {
        getService(TranVersion.Core.VERSION_33241).setIeqPreset(i);
    }

    public void setProfile(int i) {
        getService(TranVersion.Core.VERSION_33251).setProfile(i);
    }

    public void setReverbReductionAmount(int i) {
        getService(TranVersion.Core.VERSION_33251).setReverbReductionAmount(i);
    }

    public void setReverbReductionEnabled(boolean z) {
        getService(TranVersion.Core.VERSION_33251).setReverbReductionEnabled(z);
    }

    public void setRingerModeInternal(Context context, int i) {
        getService(TranVersion.Core.VERSION_33151).setRingerModeInternal(context.getPackageName(), i);
    }

    public void setSpeakerVirtualizerEnabled(boolean z) {
        getService(TranVersion.Core.VERSION_33241).setSpeakerVirtualizerEnabled(z);
    }

    public void setStereoWideningAmount(int i, int i2) {
        getService(TranVersion.Core.VERSION_33241).setStereoWideningAmount(i, i2);
    }

    public void setVolumeLevelerAmount(int i) {
        getService(TranVersion.Core.VERSION_33241).setVolumeLevelerAmount(i);
    }

    public void setVolumeLevelerEnabled(boolean z) {
        getService(TranVersion.Core.VERSION_33241).setVolumeLevelerEnabled(z);
    }

    public void unregisterAudioDynamicChangeListeners() throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33411).unregisterAudioDynamicChangeListeners();
    }

    public void unregisterAudioModeChangeListeners(String str) {
        getService(TranVersion.Core.VERSION_33141).unregisterAudioModeChangeListeners(str);
    }

    public void unregisterAudioVPEventListeners() throws TranThubIncompatibleException {
        getService(TranVersion.Core.VERSION_33431).unregisterAudioVPEventListeners();
    }

    public void unregisterVolumeGroupCallback(ITranVolumeGroupCallback iTranVolumeGroupCallback) {
        if (iTranVolumeGroupCallback == null) {
            throw new NullPointerException("unregisterVolumeGroupCallback callback cannot be null");
        }
        getService(TranVersion.Core.VERSION_33271).unregisterVolumeGroupCallback(iTranVolumeGroupCallback);
    }

    public int getIeqPreset(int i) {
        return getService(TranVersion.Core.VERSION_33241).getIeqPreset(i);
    }

    public void setIeqPreset(int i, int i2) {
        getService(TranVersion.Core.VERSION_33241).setIeqPreset(i, i2);
    }
}
