package com.transsion.hubsdk.core.media;

import android.media.AudioAttributes;
import android.os.RemoteException;
import android.util.ArrayMap;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.api.media.TranAudioManager;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.media.ITranAudioManagerAdapter;
import com.transsion.hubsdk.media.ITranAudioDynamicChangeListener;
import com.transsion.hubsdk.media.ITranAudioManager;
import com.transsion.hubsdk.media.ITranAudioModeChangeListener;
import com.transsion.hubsdk.media.ITranAudioVPEventListener;
import com.transsion.hubsdk.media.ITranVolumeGroupCallback;
import java.util.List;
import java.util.Map;

public class TranThubAudioManager implements ITranAudioManagerAdapter {
    private static final String TAG = "TranThubAudioManager";
    private TranAudioDynamicChangeListener mTranAudioDynamicChangeListener;
    private TranAudioModeChangeListener mTranAudioModeChangeListener;
    private TranAudioVPEventListener mTranAudioVPEventListener;
    private Map<TranAudioManager.ITranVolumeGroupCallback, ITranVolumeGroupCallback> mVolumeGroupMap = new ArrayMap();
    private ITranAudioManager mService = ITranAudioManager.Stub.asInterface(TranServiceManager.getServiceIBinder("audio_manager"));

    public class TranAudioDynamicChangeListener extends ITranAudioDynamicChangeListener.Stub {
        TranAudioManager.ITranAudioDynamicChangeListener mListener;

        public TranAudioDynamicChangeListener(TranAudioManager.ITranAudioDynamicChangeListener iTranAudioDynamicChangeListener) {
            this.mListener = iTranAudioDynamicChangeListener;
        }

        public void hideAudioDynamic() {
            this.mListener.hideAudioDynamic();
        }

        public boolean isAudioDynamicVisiable() {
            return this.mListener.isAudioDynamicVisiable();
        }

        public void showAudioDynamicBar(String[] strArr, String str, String str2, boolean z, String str3) throws RemoteException {
            this.mListener.showAudioDynamicBar(strArr, str, str2, z, str3);
        }
    }

    public class TranAudioModeChangeListener extends ITranAudioModeChangeListener.Stub {
        TranAudioManager.ITranAudioModeChangeListener mListener;

        public TranAudioModeChangeListener(TranAudioManager.ITranAudioModeChangeListener iTranAudioModeChangeListener) {
            this.mListener = iTranAudioModeChangeListener;
        }

        public void onAudioModeChange(int i, String str) throws RemoteException {
            this.mListener.onAudioModeChange(i, str);
        }
    }

    public class TranAudioVPEventListener extends ITranAudioVPEventListener.Stub {
        TranAudioManager.ITranAudioVPEventListener mListener;

        public TranAudioVPEventListener(TranAudioManager.ITranAudioVPEventListener iTranAudioVPEventListener) {
            this.mListener = iTranAudioVPEventListener;
        }

        public void onEvent(int i) throws RemoteException {
            this.mListener.onEvent(i);
        }
    }

    public class TranVolumeGroupCallback extends ITranVolumeGroupCallback.Stub {
        private TranAudioManager.ITranVolumeGroupCallback mTranVolumeGroupCallback;

        public TranVolumeGroupCallback(TranAudioManager.ITranVolumeGroupCallback iTranVolumeGroupCallback) {
            this.mTranVolumeGroupCallback = iTranVolumeGroupCallback;
        }

        public void onAudioVolumeGroupChanged(int i, int i2) {
            this.mTranVolumeGroupCallback.onAudioVolumeGroupChanged(i, i2);
        }
    }

    public Object lambda$CurrentEnabledVPChange$4(String str) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Boolean.valueOf(iTranAudioManager.CurrentEnabledVPChange(str));
        }
        return null;
    }

    public Object lambda$VPEnroll$0(String str) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return iTranAudioManager.VPEnroll(str);
        }
        return null;
    }

    public Object lambda$VPEnrollInfoQuery$2() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return iTranAudioManager.VPEnrollInfoQuery();
        }
        return null;
    }

    public Object lambda$VPNameChange$1(String str, String str2) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Boolean.valueOf(iTranAudioManager.VPNameChange(str, str2));
        }
        return null;
    }

    public Object lambda$VPTemplateDelete$3(String str) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Boolean.valueOf(iTranAudioManager.VPTemplateDelete(str));
        }
        return null;
    }

    public Object lambda$getAudioAttributesForLegacyStreamType$48(int i) throws RemoteException {
        try {
            ITranAudioManager iTranAudioManager = this.mService;
            if (iTranAudioManager != null) {
                return iTranAudioManager.getAudioAttributesForLegacyStreamType(i);
            }
            return null;
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getAudioAttributesForLegacyStreamType fail:" + e);
            return null;
        }
    }

    public Object lambda$getBassEnhancerEnabled$12() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Boolean.valueOf(iTranAudioManager.getBassEnhancerEnabled());
        }
        return null;
    }

    public Object lambda$getCurrentAudioFocusPackageName$6() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return iTranAudioManager.getCurrentAudioFocusPackageName();
        }
        return null;
    }

    public Object lambda$getCurrentEnabledVP$5() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return iTranAudioManager.getCurrentEnabledVP();
        }
        return null;
    }

    public Object lambda$getDialogEnhancerEnabled$42() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Boolean.valueOf(iTranAudioManager.getDialogEnhancerEnabled());
        }
        return null;
    }

    public Object lambda$getDsOn$8() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Boolean.valueOf(iTranAudioManager.getDsOn());
        }
        return null;
    }

    public Object lambda$getGeqBandGains$10() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return iTranAudioManager.getGeqBandGains();
        }
        return null;
    }

    public Object lambda$getHeadphoneVirtualizerEnabled$43() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Boolean.valueOf(iTranAudioManager.getHeadphoneVirtualizerEnabled());
        }
        return null;
    }

    public Object lambda$getIeqPreset$20() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Integer.valueOf(iTranAudioManager.getIeqPreset());
        }
        return null;
    }

    public Object lambda$getIeqPreset$21(int i) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Integer.valueOf(iTranAudioManager.getIeqPresetExt(i));
        }
        return null;
    }

    public Object lambda$getIeqPresetName$23(int i) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return iTranAudioManager.getIeqPresetName(i);
        }
        return null;
    }

    public Object lambda$getNumOfIeqPresets$22() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Integer.valueOf(iTranAudioManager.getNumOfIeqPresets());
        }
        return null;
    }

    public Object lambda$getNumOfProfiles$33() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Integer.valueOf(iTranAudioManager.getNumOfProfiles());
        }
        return null;
    }

    public Object lambda$getProfile$32() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Integer.valueOf(iTranAudioManager.getProfile());
        }
        return null;
    }

    public Object lambda$getProfileName$34(int i) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return iTranAudioManager.getProfileName(i);
        }
        return null;
    }

    public Object lambda$getReverbReductionAmount$29() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Integer.valueOf(iTranAudioManager.getReverbReductionAmount());
        }
        return null;
    }

    public Object lambda$getReverbReductionEnabled$27() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Boolean.valueOf(iTranAudioManager.getReverbReductionEnabled());
        }
        return null;
    }

    public Object lambda$getSelectedTuningDevice$37(int i) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return iTranAudioManager.getSelectedTuningDevice(i);
        }
        return null;
    }

    public Object lambda$getSpeakerVirtualizerEnabled$17() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Boolean.valueOf(iTranAudioManager.getSpeakerVirtualizerEnabled());
        }
        return null;
    }

    public Object lambda$getStereoWideningAmount$25(int i) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Integer.valueOf(iTranAudioManager.getStereoWideningAmount(i));
        }
        return null;
    }

    public Object lambda$getTuningDevicesList$36(int i) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return iTranAudioManager.getTuningDevicesList(i);
        }
        return null;
    }

    public Object lambda$getVolumeGroupIdForLegacyStreamType$49(int i) throws RemoteException {
        try {
            ITranAudioManager iTranAudioManager = this.mService;
            if (iTranAudioManager != null) {
                return Integer.valueOf(iTranAudioManager.getVolumeGroupIdForLegacyStreamType(i));
            }
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getVolumeGroupIdForLegacyStreamType fail:" + e);
        }
        return -1;
    }

    public Object lambda$getVolumeLevelerAmount$15() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Integer.valueOf(iTranAudioManager.getVolumeLevelerAmount());
        }
        return null;
    }

    public Object lambda$hasControl$39() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Boolean.valueOf(iTranAudioManager.hasControl());
        }
        return null;
    }

    public Object lambda$isDolbySupport$38() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Boolean.valueOf(iTranAudioManager.isDolbySupport());
        }
        return null;
    }

    public Object lambda$isGeqEnabled$30(int i) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Boolean.valueOf(iTranAudioManager.isGeqEnabled(i));
        }
        return null;
    }

    public Object lambda$isMonoSpeaker$35() throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Boolean.valueOf(iTranAudioManager.isMonoSpeaker());
        }
        return null;
    }

    public Object lambda$isStreamAffectedByRingerMode$45(int i) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager != null) {
            return Boolean.valueOf(iTranAudioManager.isStreamAffectedByRingerMode(i));
        }
        return null;
    }

    public Object lambda$registerVolumeGroupCallback$46(TranAudioManager.ITranVolumeGroupCallback iTranVolumeGroupCallback) throws RemoteException {
        if (this.mService == null) {
            return null;
        }
        ITranVolumeGroupCallback tranVolumeGroupCallback = new TranVolumeGroupCallback(iTranVolumeGroupCallback);
        this.mVolumeGroupMap.put(iTranVolumeGroupCallback, tranVolumeGroupCallback);
        this.mService.registerVolumeGroupCallback(tranVolumeGroupCallback);
        return null;
    }

    public Object lambda$setBassEnhancerEnabled$11(boolean z) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager == null) {
            return null;
        }
        iTranAudioManager.setBassEnhancerEnabled(z);
        return null;
    }

    public Object lambda$setDialogEnhancerAmount$41(int i) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager == null) {
            return null;
        }
        iTranAudioManager.setDialogEnhancerAmount(i);
        return null;
    }

    public Object lambda$setDialogEnhancerEnabled$40(boolean z) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager == null) {
            return null;
        }
        iTranAudioManager.setDialogEnhancerEnabled(z);
        return null;
    }

    public Object lambda$setDsOn$7(boolean z) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager == null) {
            return null;
        }
        iTranAudioManager.setDsOn(z);
        return null;
    }

    public Object lambda$setGeqBandGains$9(int[] iArr) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager == null) {
            return null;
        }
        iTranAudioManager.setGeqBandGains(iArr);
        return null;
    }

    public Object lambda$setHeadphoneVirtualizerEnabled$44(boolean z) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager == null) {
            return null;
        }
        iTranAudioManager.setHeadphoneVirtualizerEnabled(z);
        return null;
    }

    public Object lambda$setIeqPreset$18(int i) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager == null) {
            return null;
        }
        iTranAudioManager.setIeqPreset(i);
        return null;
    }

    public Object lambda$setIeqPreset$19(int i, int i2) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager == null) {
            return null;
        }
        iTranAudioManager.setIeqPresetExt(i, i2);
        return null;
    }

    public Object lambda$setProfile$31(int i) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager == null) {
            return null;
        }
        iTranAudioManager.setProfile(i);
        return null;
    }

    public Object lambda$setReverbReductionAmount$28(int i) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager == null) {
            return null;
        }
        iTranAudioManager.setReverbReductionAmount(i);
        return null;
    }

    public Object lambda$setReverbReductionEnabled$26(boolean z) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager == null) {
            return null;
        }
        iTranAudioManager.setReverbReductionEnabled(z);
        return null;
    }

    public Object lambda$setSpeakerVirtualizerEnabled$16(boolean z) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager == null) {
            return null;
        }
        iTranAudioManager.setSpeakerVirtualizerEnabled(z);
        return null;
    }

    public Object lambda$setStereoWideningAmount$24(int i, int i2) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager == null) {
            return null;
        }
        iTranAudioManager.setStereoWideningAmount(i, i2);
        return null;
    }

    public Object lambda$setVolumeLevelerAmount$14(int i) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager == null) {
            return null;
        }
        iTranAudioManager.setVolumeLevelerAmount(i);
        return null;
    }

    public Object lambda$setVolumeLevelerEnabled$13(boolean z) throws RemoteException {
        ITranAudioManager iTranAudioManager = this.mService;
        if (iTranAudioManager == null) {
            return null;
        }
        iTranAudioManager.setVolumeLevelerEnabled(z);
        return null;
    }

    public Object lambda$unregisterVolumeGroupCallback$47(TranAudioManager.ITranVolumeGroupCallback iTranVolumeGroupCallback) throws RemoteException {
        Map<TranAudioManager.ITranVolumeGroupCallback, ITranVolumeGroupCallback> map;
        ITranVolumeGroupCallback iTranVolumeGroupCallback2;
        if (this.mService == null || (map = this.mVolumeGroupMap) == null || (iTranVolumeGroupCallback2 = map.get(iTranVolumeGroupCallback)) == null) {
            return null;
        }
        this.mService.unregisterVolumeGroupCallback(iTranVolumeGroupCallback2);
        this.mVolumeGroupMap.remove(iTranVolumeGroupCallback);
        return null;
    }

    @Override
    public boolean CurrentEnabledVPChange(final String str) {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$CurrentEnabledVPChange$4(str);
            }
        }, "audio_manager")).booleanValue();
        TranSdkLog.d(TAG, "CurrentEnabledVPChange");
        return zBooleanValue;
    }

    @Override
    public String VPEnroll(final String str) {
        String str2 = (String) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$VPEnroll$0(str);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "VPEnroll");
        return str2;
    }

    @Override
    public List<String> VPEnrollInfoQuery() {
        List<String> list = (List) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$VPEnrollInfoQuery$2();
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "VPEnrollInfoQuery");
        return list;
    }

    @Override
    public boolean VPNameChange(final String str, final String str2) {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$VPNameChange$1(str, str2);
            }
        }, "audio_manager")).booleanValue();
        TranSdkLog.d(TAG, "VPNameChange");
        return zBooleanValue;
    }

    @Override
    public boolean VPTemplateDelete(final String str) {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$VPTemplateDelete$3(str);
            }
        }, "audio_manager")).booleanValue();
        TranSdkLog.d(TAG, "VPTemplateDelete");
        return zBooleanValue;
    }

    @Override
    public AudioAttributes getAudioAttributesForLegacyStreamType(final int i) {
        return (AudioAttributes) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getAudioAttributesForLegacyStreamType$48(i);
            }
        }, "audio_manager");
    }

    @Override
    public boolean getBassEnhancerEnabled() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getBassEnhancerEnabled$12();
            }
        }, "audio_manager")).booleanValue();
        TranSdkLog.d(TAG, "getBassEnhancerEnabled");
        return zBooleanValue;
    }

    @Override
    public String getCurrentAudioFocusPackageName() {
        String str = (String) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getCurrentAudioFocusPackageName$6();
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "getCurrentAudioFocusPackageName packageName:" + str);
        return str;
    }

    @Override
    public String getCurrentEnabledVP() {
        String str = (String) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getCurrentEnabledVP$5();
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "getCurrentEnabledVP");
        return str;
    }

    @Override
    public boolean getDialogEnhancerEnabled() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getDialogEnhancerEnabled$42();
            }
        }, "audio_manager")).booleanValue();
        TranSdkLog.d(TAG, "getDialogEnhancerEnabled");
        return zBooleanValue;
    }

    @Override
    public boolean getDsOn() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getDsOn$8();
            }
        }, "audio_manager")).booleanValue();
        TranSdkLog.d(TAG, "getDsOn");
        return zBooleanValue;
    }

    @Override
    public int[] getGeqBandGains() {
        int[] iArr = (int[]) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getGeqBandGains$10();
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "getGeqBandGains");
        return iArr;
    }

    @Override
    public boolean getHeadphoneVirtualizerEnabled() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getHeadphoneVirtualizerEnabled$43();
            }
        }, "audio_manager")).booleanValue();
        TranSdkLog.d(TAG, "getHeadphoneVirtualizerEnabled");
        return zBooleanValue;
    }

    @Override
    public int getIeqPreset() {
        int iIntValue = ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getIeqPreset$20();
            }
        }, "audio_manager")).intValue();
        TranSdkLog.d(TAG, "getIeqPreset");
        return iIntValue;
    }

    @Override
    public String getIeqPresetName(final int i) {
        String str = (String) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getIeqPresetName$23(i);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "getIeqPresetName");
        return str;
    }

    @Override
    public int getNumOfIeqPresets() {
        int iIntValue = ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getNumOfIeqPresets$22();
            }
        }, "audio_manager")).intValue();
        TranSdkLog.d(TAG, "getNumOfIeqPresets");
        return iIntValue;
    }

    @Override
    public int getNumOfProfiles() {
        int iIntValue = ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getNumOfProfiles$33();
            }
        }, "audio_manager")).intValue();
        TranSdkLog.d(TAG, "getNumOfProfiles");
        return iIntValue;
    }

    @Override
    public int getProfile() {
        int iIntValue = ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getProfile$32();
            }
        }, "audio_manager")).intValue();
        TranSdkLog.d(TAG, "getProfile");
        return iIntValue;
    }

    @Override
    public String getProfileName(final int i) {
        String str = (String) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getProfileName$34(i);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "getProfileName");
        return str;
    }

    @Override
    public int getReverbReductionAmount() {
        int iIntValue = ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getReverbReductionAmount$29();
            }
        }, "audio_manager")).intValue();
        TranSdkLog.d(TAG, "getReverbReductionAmount");
        return iIntValue;
    }

    @Override
    public boolean getReverbReductionEnabled() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getReverbReductionEnabled$27();
            }
        }, "audio_manager")).booleanValue();
        TranSdkLog.d(TAG, "getReverbReductionEnabled");
        return zBooleanValue;
    }

    @Override
    public String getSelectedTuningDevice(final int i) {
        String str = (String) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getSelectedTuningDevice$37(i);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "getSelectedTuningDevice");
        return str;
    }

    @Override
    public boolean getSpeakerVirtualizerEnabled() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getSpeakerVirtualizerEnabled$17();
            }
        }, "audio_manager")).booleanValue();
        TranSdkLog.d(TAG, "getSpeakerVirtualizerEnabled");
        return zBooleanValue;
    }

    @Override
    public int getStereoWideningAmount(final int i) {
        int iIntValue = ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getStereoWideningAmount$25(i);
            }
        }, "audio_manager")).intValue();
        TranSdkLog.d(TAG, "getStereoWideningAmount");
        return iIntValue;
    }

    @Override
    public String[] getTuningDevicesList(final int i) {
        String[] strArr = (String[]) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getTuningDevicesList$36(i);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "getTuningDevicesList");
        return strArr;
    }

    @Override
    public int getVolumeGroupIdForLegacyStreamType(final int i) {
        return ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getVolumeGroupIdForLegacyStreamType$49(i);
            }
        }, "audio_manager")).intValue();
    }

    @Override
    public int getVolumeLevelerAmount() {
        int iIntValue = ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getVolumeLevelerAmount$15();
            }
        }, "audio_manager")).intValue();
        TranSdkLog.d(TAG, "getVolumeLevelerAmount");
        return iIntValue;
    }

    @Override
    public boolean hasControl() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$hasControl$39();
            }
        }, "audio_manager")).booleanValue();
        TranSdkLog.d(TAG, "hasControl");
        return zBooleanValue;
    }

    @Override
    public boolean isDolbySupport() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$isDolbySupport$38();
            }
        }, "audio_manager")).booleanValue();
        TranSdkLog.d(TAG, "isDolbySupport");
        return zBooleanValue;
    }

    @Override
    public boolean isGeqEnabled(final int i) {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$isGeqEnabled$30(i);
            }
        }, "audio_manager")).booleanValue();
        TranSdkLog.d(TAG, "isGeqEnabled");
        return zBooleanValue;
    }

    @Override
    public boolean isMonoSpeaker() {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$isMonoSpeaker$35();
            }
        }, "audio_manager")).booleanValue();
        TranSdkLog.d(TAG, "isMonoSpeaker");
        return zBooleanValue;
    }

    @Override
    public boolean isStreamAffectedByRingerMode(final int i) {
        boolean zBooleanValue = ((Boolean) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$isStreamAffectedByRingerMode$45(i);
            }
        }, "audio_manager")).booleanValue();
        TranSdkLog.d(TAG, "isStreamAffectedByRingerMode");
        return zBooleanValue;
    }

    @Override
    public void registerAudioDynamicChangeListeners(TranAudioManager.ITranAudioDynamicChangeListener iTranAudioDynamicChangeListener) {
        try {
            TranAudioDynamicChangeListener tranAudioDynamicChangeListener = new TranAudioDynamicChangeListener(iTranAudioDynamicChangeListener);
            this.mTranAudioDynamicChangeListener = tranAudioDynamicChangeListener;
            this.mService.registerAudioDynamicChangeListeners(tranAudioDynamicChangeListener);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void registerAudioModeChangeListeners(String str, TranAudioManager.ITranAudioModeChangeListener iTranAudioModeChangeListener) {
        try {
            TranAudioModeChangeListener tranAudioModeChangeListener = new TranAudioModeChangeListener(iTranAudioModeChangeListener);
            this.mTranAudioModeChangeListener = tranAudioModeChangeListener;
            this.mService.registerAudioModeChangeListeners(str, tranAudioModeChangeListener);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void registerAudioVPEventListeners(TranAudioManager.ITranAudioVPEventListener iTranAudioVPEventListener) {
        try {
            TranAudioVPEventListener tranAudioVPEventListener = new TranAudioVPEventListener(iTranAudioVPEventListener);
            this.mTranAudioVPEventListener = tranAudioVPEventListener;
            this.mService.registerAudioVPEventListeners(tranAudioVPEventListener);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void registerVolumeGroupCallback(final TranAudioManager.ITranVolumeGroupCallback iTranVolumeGroupCallback) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$registerVolumeGroupCallback$46(iTranVolumeGroupCallback);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "registerVolumeGroupCallback");
    }

    @Override
    public void setBassEnhancerEnabled(final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setBassEnhancerEnabled$11(z);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "setBassEnhancerEnabled");
    }

    @Override
    public void setDialogEnhancerAmount(final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setDialogEnhancerAmount$41(i);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "setDialogEnhancerAmount");
    }

    @Override
    public void setDialogEnhancerEnabled(final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setDialogEnhancerEnabled$40(z);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "setDialogEnhancerEnabled");
    }

    @Override
    public void setDsOn(final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setDsOn$7(z);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "setDsOn");
    }

    @Override
    public void setGeqBandGains(final int[] iArr) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setGeqBandGains$9(iArr);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "setGeqBandGains");
    }

    @Override
    public void setHeadphoneVirtualizerEnabled(final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setHeadphoneVirtualizerEnabled$44(z);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "setHeadphoneVirtualizerEnabled");
    }

    @Override
    public void setIeqPreset(final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setIeqPreset$18(i);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "setIeqPreset preset: " + i);
    }

    @Override
    public void setProfile(final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setProfile$31(i);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "setProfile profile: " + i);
    }

    @Override
    public void setReverbReductionAmount(final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setReverbReductionAmount$28(i);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "setReverbReductionAmount amount: " + i);
    }

    @Override
    public void setReverbReductionEnabled(final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setReverbReductionEnabled$26(z);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "setReverbReductionEnabled enable: " + z);
    }

    @Override
    public void setRingerModeInternal(String str, int i) {
        try {
            this.mService.setRingerModeInternal(str, i);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @VisibleForTesting
    public void setService(ITranAudioManager iTranAudioManager) {
        this.mService = iTranAudioManager;
    }

    @Override
    public void setSpeakerVirtualizerEnabled(final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setSpeakerVirtualizerEnabled$16(z);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "setSpeakerVirtualizerEnabled");
    }

    @Override
    public void setStereoWideningAmount(final int i, final int i2) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setStereoWideningAmount$24(i, i2);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "setStereoWideningAmount amount: " + i + ",port: " + i2);
    }

    @Override
    public void setVolumeLevelerAmount(final int i) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setVolumeLevelerAmount$14(i);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "setVolumeLevelerAmount");
    }

    @Override
    public void setVolumeLevelerEnabled(final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setVolumeLevelerEnabled$13(z);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "setVolumeLevelerEnabled");
    }

    @Override
    public void unregisterAudioDynamicChangeListeners() {
        try {
            this.mService.unregisterAudioDynamicChangeListeners();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void unregisterAudioModeChangeListeners(String str) {
        try {
            this.mService.unregisterAudioModeChangeListeners(str);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void unregisterAudioVPEventListeners() {
        try {
            this.mService.unregisterAudioVPEventListeners();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void unregisterVolumeGroupCallback(final TranAudioManager.ITranVolumeGroupCallback iTranVolumeGroupCallback) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$unregisterVolumeGroupCallback$47(iTranVolumeGroupCallback);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "unregisterVolumeGroupCallback");
    }

    @Override
    public int getIeqPreset(final int i) {
        int iIntValue = ((Integer) new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$getIeqPreset$21(i);
            }
        }, "audio_manager")).intValue();
        TranSdkLog.d(TAG, "getIeqPreset port: " + i);
        return iIntValue;
    }

    @Override
    public void setIeqPreset(final int i, final int i2) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$setIeqPreset$19(i, i2);
            }
        }, "audio_manager");
        TranSdkLog.d(TAG, "setIeqPreset preset: " + i + ",port: " + i2);
    }
}
