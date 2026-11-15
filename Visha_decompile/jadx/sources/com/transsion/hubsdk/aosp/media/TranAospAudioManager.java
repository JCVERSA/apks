package com.transsion.hubsdk.aosp.media;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.util.ArrayMap;
import com.transsion.hubsdk.api.media.TranAudioManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.media.ITranAudioManagerAdapter;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

public class TranAospAudioManager implements ITranAudioManagerAdapter {
    private TranAospAudioManagerExt mAospAudioManagerExt;
    private AudioManager mAudioManager;
    private Context mContext;
    private ArrayMap<TranAudioManager.ITranVolumeGroupCallback, TranAospVolumeGroupCallback> mObserver = new ArrayMap<>();

    public class TranAospAudioModeChangeCallback implements TranAospAudioManagerExt.ITranAospAudioModeChangeCallbackExt {
        TranAudioManager.ITranAudioModeChangeListener mListener;

        public TranAospAudioModeChangeCallback(TranAudioManager.ITranAudioModeChangeListener iTranAudioModeChangeListener) {
            this.mListener = iTranAudioModeChangeListener;
        }

        @Override
        public void onAudioModeChange(int i, String str) {
            this.mListener.onAudioModeChange(i, str);
        }
    }

    public class TranAospVolumeGroupCallback implements TranAospAudioManagerExt.ITranAospVolumeGroupChangedCallback {
        TranAudioManager.ITranVolumeGroupCallback mCallback;

        public TranAospVolumeGroupCallback(TranAudioManager.ITranVolumeGroupCallback iTranVolumeGroupCallback) {
            this.mCallback = iTranVolumeGroupCallback;
        }

        @Override
        public void onAudioVolumeGroupChanged(int i, int i2) {
            this.mCallback.onAudioVolumeGroupChanged(i, i2);
        }
    }

    public TranAospAudioManager() {
        if (this.mAudioManager == null) {
            Context context = TranHubSdkManager.getContext();
            this.mContext = context;
            this.mAudioManager = (AudioManager) context.getSystemService("audio");
        }
    }

    private TranAospAudioManagerExt getTranAospAudioManagerExt() {
        if (this.mAospAudioManagerExt == null) {
            this.mAospAudioManagerExt = new TranAospAudioManagerExt(this.mContext);
        }
        return this.mAospAudioManagerExt;
    }

    @Override
    public boolean CurrentEnabledVPChange(String str) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("Non-native interface, please implement it yourself");
    }

    @Override
    public String VPEnroll(String str) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("Non-native interface, please implement it yourself");
    }

    @Override
    public List<String> VPEnrollInfoQuery() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("Non-native interface, please implement it yourself");
    }

    @Override
    public boolean VPNameChange(String str, String str2) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("Non-native interface, please implement it yourself");
    }

    @Override
    public boolean VPTemplateDelete(String str) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("Non-native interface, please implement it yourself");
    }

    @Override
    public AudioAttributes getAudioAttributesForLegacyStreamType(int i) {
        List list;
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getAudioProductStrategies", new Class[0]);
        Method method2 = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getAudioAttributesForLegacyStreamType", Integer.TYPE);
        if (method != null && method2 != null && (list = (List) TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0])) != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AudioAttributes audioAttributes = (AudioAttributes) TranDoorMan.invokeMethod(method2, it.next(), Integer.valueOf(i));
                if (audioAttributes != null) {
                    return audioAttributes;
                }
            }
        }
        return null;
    }

    @Override
    public boolean getBassEnhancerEnabled() {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getBassEnhancerEnabled", new Class[0]);
        if (method != null) {
            return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0]));
        }
        return false;
    }

    @Override
    public String getCurrentAudioFocusPackageName() {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mAudioManager.getClass(), "getCurrentAudioFocusPackageName", new Class[0]), this.mAudioManager, new Object[0]);
        if (objInvokeMethod instanceof String) {
            return (String) objInvokeMethod;
        }
        return null;
    }

    @Override
    public String getCurrentEnabledVP() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("Non-native interface, please implement it yourself");
    }

    @Override
    public boolean getDialogEnhancerEnabled() {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getDialogEnhancerEnabled", new Class[0]);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0])).booleanValue();
        }
        return false;
    }

    @Override
    public boolean getDsOn() {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getDsOn", new Class[0]);
        if (method != null) {
            return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0]));
        }
        return false;
    }

    @Override
    public int[] getGeqBandGains() {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getGeqBandGains", new Class[0]);
        if (method != null) {
            return (int[]) TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0]);
        }
        return null;
    }

    @Override
    public boolean getHeadphoneVirtualizerEnabled() {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getHeadphoneVirtualizerEnabled", new Class[0]);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0])).booleanValue();
        }
        return false;
    }

    @Override
    public int getIeqPreset() {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getIeqPreset", new Class[0]);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0])).intValue();
        }
        return 0;
    }

    @Override
    public String getIeqPresetName(int i) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getIeqPresetName", Integer.TYPE);
        if (method != null) {
            return (String) TranDoorMan.invokeMethod(method, this.mAudioManager, Integer.valueOf(i));
        }
        return null;
    }

    @Override
    public int getNumOfIeqPresets() {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getNumOfIeqPresets", new Class[0]);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0])).intValue();
        }
        return 0;
    }

    @Override
    public int getNumOfProfiles() {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getNumOfProfiles", new Class[0]);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0])).intValue();
        }
        return 0;
    }

    @Override
    public int getProfile() {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getProfile", new Class[0]);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0])).intValue();
        }
        return 0;
    }

    @Override
    public String getProfileName(int i) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getProfileName", Integer.TYPE);
        if (method != null) {
            return (String) TranDoorMan.invokeMethod(method, this.mAudioManager, Integer.valueOf(i));
        }
        return null;
    }

    @Override
    public int getReverbReductionAmount() {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getReverbReductionAmount", new Class[0]);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0])).intValue();
        }
        return 0;
    }

    @Override
    public boolean getReverbReductionEnabled() {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getReverbReductionEnabled", new Class[0]);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0])).booleanValue();
        }
        return false;
    }

    @Override
    public String getSelectedTuningDevice(int i) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getSelectedTuningDevice", Integer.TYPE);
        if (method != null) {
            return (String) TranDoorMan.invokeMethod(method, this.mAudioManager, Integer.valueOf(i));
        }
        return null;
    }

    @Override
    public boolean getSpeakerVirtualizerEnabled() {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getSpeakerVirtualizerEnabled", new Class[0]);
        if (method != null) {
            return Boolean.TRUE.equals(TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0]));
        }
        return false;
    }

    @Override
    public int getStereoWideningAmount(int i) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getStereoWideningAmount", Integer.TYPE);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, this.mAudioManager, Integer.valueOf(i))).intValue();
        }
        return 0;
    }

    @Override
    public String[] getTuningDevicesList(int i) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getTuningDevicesList", Integer.TYPE);
        return method != null ? (String[]) TranDoorMan.invokeMethod(method, this.mAudioManager, Integer.valueOf(i)) : new String[0];
    }

    @Override
    public int getVolumeGroupIdForLegacyStreamType(int i) {
        List list;
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getAudioProductStrategies", new Class[0]);
        Method method2 = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getVolumeGroupIdForLegacyStreamType", Integer.TYPE);
        if (method != null && method2 != null && (list = (List) TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0])) != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Object objInvokeMethod = TranDoorMan.invokeMethod(method2, it.next(), Integer.valueOf(i));
                int iIntValue = objInvokeMethod == null ? -1 : ((Integer) objInvokeMethod).intValue();
                if (iIntValue != -1) {
                    return iIntValue;
                }
            }
        }
        return -1;
    }

    @Override
    public int getVolumeLevelerAmount() {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getVolumeLevelerAmount", new Class[0]);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0])).intValue();
        }
        return 0;
    }

    @Override
    public boolean hasControl() {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "hasControl", new Class[0]);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0])).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isDolbySupport() {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "isDolbySupport", new Class[0]);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0])).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isGeqEnabled(int i) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "isGeqEnabled", Integer.TYPE);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, this.mAudioManager, Integer.valueOf(i))).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isMonoSpeaker() {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "isMonoSpeaker", new Class[0]);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, this.mAudioManager, new Object[0])).booleanValue();
        }
        return false;
    }

    @Override
    public boolean isStreamAffectedByRingerMode(int i) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "isStreamAffectedByRingerMode", Integer.TYPE);
        if (method != null) {
            return ((Boolean) TranDoorMan.invokeMethod(method, this.mAudioManager, Integer.valueOf(i))).booleanValue();
        }
        return false;
    }

    @Override
    public void registerAudioDynamicChangeListeners(TranAudioManager.ITranAudioDynamicChangeListener iTranAudioDynamicChangeListener) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("Non-native interface, please implement it yourself");
    }

    @Override
    public void registerAudioModeChangeListeners(String str, TranAudioManager.ITranAudioModeChangeListener iTranAudioModeChangeListener) {
        getTranAospAudioManagerExt().registerAudioModeChangeListeners(str, new TranAospAudioModeChangeCallback(iTranAudioModeChangeListener));
    }

    @Override
    public void registerAudioVPEventListeners(TranAudioManager.ITranAudioVPEventListener iTranAudioVPEventListener) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("Non-native interface, please implement it yourself");
    }

    @Override
    public void registerVolumeGroupCallback(TranAudioManager.ITranVolumeGroupCallback iTranVolumeGroupCallback) {
        TranAospVolumeGroupCallback tranAospVolumeGroupCallback = new TranAospVolumeGroupCallback(iTranVolumeGroupCallback);
        this.mObserver.put(iTranVolumeGroupCallback, tranAospVolumeGroupCallback);
        getTranAospAudioManagerExt().registerVolumeGroupCallback(tranAospVolumeGroupCallback);
    }

    @Override
    public void setBassEnhancerEnabled(boolean z) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "setBassEnhancerEnabled", Boolean.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mAudioManager, Boolean.valueOf(z));
        }
    }

    @Override
    public void setDialogEnhancerAmount(int i) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "setDialogEnhancerAmount", Integer.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mAudioManager, Integer.valueOf(i));
        }
    }

    @Override
    public void setDialogEnhancerEnabled(boolean z) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "setDialogEnhancerEnabled", Boolean.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mAudioManager, Boolean.valueOf(z));
        }
    }

    @Override
    public void setDsOn(boolean z) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "setDsOn", Boolean.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mAudioManager, Boolean.valueOf(z));
        }
    }

    @Override
    public void setGeqBandGains(int[] iArr) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "setGeqBandGains", int[].class);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mAudioManager, iArr);
        }
    }

    @Override
    public void setHeadphoneVirtualizerEnabled(boolean z) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "setHeadphoneVirtualizerEnabled", Boolean.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mAudioManager, Boolean.valueOf(z));
        }
    }

    @Override
    public void setIeqPreset(int i) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "setIeqPreset", Integer.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mAudioManager, Integer.valueOf(i));
        }
    }

    @Override
    public void setProfile(int i) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "setProfile", Integer.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mAudioManager, Integer.valueOf(i));
        }
    }

    @Override
    public void setReverbReductionAmount(int i) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "setReverbReductionAmount", Integer.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mAudioManager, Integer.valueOf(i));
        }
    }

    @Override
    public void setReverbReductionEnabled(boolean z) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "setReverbReductionEnabled", Boolean.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mAudioManager, Boolean.valueOf(z));
        }
    }

    @Override
    public void setRingerModeInternal(String str, int i) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mAudioManager.getClass(), "setRingerModeInternal", Integer.TYPE), this.mAudioManager, Integer.valueOf(i));
    }

    @Override
    public void setSpeakerVirtualizerEnabled(boolean z) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "setSpeakerVirtualizerEnabled", Boolean.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mAudioManager, Boolean.valueOf(z));
        }
    }

    @Override
    public void setStereoWideningAmount(int i, int i2) {
        Class<?> cls = this.mAudioManager.getClass();
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "setStereoWideningAmount", cls2, cls2);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mAudioManager, Integer.valueOf(i), Integer.valueOf(i2));
        }
    }

    @Override
    public void setVolumeLevelerAmount(int i) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "setVolumeLevelerAmount", Integer.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mAudioManager, Integer.valueOf(i));
        }
    }

    @Override
    public void setVolumeLevelerEnabled(boolean z) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "setVolumeLevelerEnabled", Boolean.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mAudioManager, Boolean.valueOf(z));
        }
    }

    @Override
    public void unregisterAudioDynamicChangeListeners() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("Non-native interface, please implement it yourself");
    }

    @Override
    public void unregisterAudioModeChangeListeners(String str) {
        getTranAospAudioManagerExt().unregisterAudioModeChangeListeners(str);
    }

    @Override
    public void unregisterAudioVPEventListeners() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("Non-native interface, please implement it yourself");
    }

    @Override
    public void unregisterVolumeGroupCallback(TranAudioManager.ITranVolumeGroupCallback iTranVolumeGroupCallback) {
        getTranAospAudioManagerExt().unregisterVolumeGroupCallback(this.mObserver.get(iTranVolumeGroupCallback));
    }

    @Override
    public int getIeqPreset(int i) {
        Method method = TranDoorMan.getMethod(this.mAudioManager.getClass(), "getIeqPreset", Integer.TYPE);
        if (method != null) {
            return ((Integer) TranDoorMan.invokeMethod(method, this.mAudioManager, Integer.valueOf(i))).intValue();
        }
        return 0;
    }

    @Override
    public void setIeqPreset(int i, int i2) {
        Class<?> cls = this.mAudioManager.getClass();
        Class cls2 = Integer.TYPE;
        Method method = TranDoorMan.getMethod(cls, "setIeqPreset", cls2, cls2);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mAudioManager, Integer.valueOf(i), Integer.valueOf(i2));
        }
    }
}
