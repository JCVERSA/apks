package com.transsion.hubsdk.api.media;

import com.transsion.hubsdk.aosp.media.TranAospAudioSystem;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.media.TranThubAudioSystem;
import com.transsion.hubsdk.interfaces.media.ITranAudioSystemAdapter;

public class TranAudioSystem {
    public static final int DEVICE_BIT_DEFAULT = 1073741824;
    public static final int DEVICE_BIT_IN = Integer.MIN_VALUE;
    public static final int DEVICE_IN_FM_TUNER = -2147475456;
    public static final int DEVICE_OUT_AUX_DIGITAL = 1024;
    public static final int DEVICE_OUT_BLUETOOTH_A2DP = 128;
    public static final int DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES = 256;
    public static final int DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER = 512;
    public static final int DEVICE_OUT_BLUETOOTH_SCO = 16;
    public static final int DEVICE_OUT_BLUETOOTH_SCO_CARKIT = 64;
    public static final int DEVICE_OUT_BLUETOOTH_SCO_HEADSET = 32;
    public static final int DEVICE_OUT_EARPIECE = 1;
    public static final int DEVICE_OUT_HDMI = 1024;
    public static final int DEVICE_OUT_REMOTE_SUBMIX = 32768;
    public static final int DEVICE_OUT_SPEAKER = 2;
    public static final int DEVICE_OUT_USB_ACCESSORY = 8192;
    public static final int DEVICE_OUT_USB_DEVICE = 16384;
    public static final int DEVICE_OUT_USB_HEADSET = 67108864;
    public static final int DEVICE_OUT_WIRED_HEADPHONE = 8;
    public static final int DEVICE_OUT_WIRED_HEADSET = 4;
    public static final int DEVICE_STATE_AVAILABLE = 1;
    public static final int DEVICE_STATE_UNAVAILABLE = 0;
    public static final int FORCE_NONE = 0;
    public static final int FORCE_SPEAKER = 1;
    public static final int MODE_IN_COMMUNICATION = 3;
    public static final int MODE_NORMAL = 0;
    private TranAospAudioSystem mAospService;
    private TranThubAudioSystem mThubService;

    public int getForceUse(int i) {
        return getService(TranVersion.Core.VERSION_33181).getForceUse(i);
    }

    public String getOutputDeviceName(int i) {
        return getService(TranVersion.Core.VERSION_33161).getOutputDeviceName(i);
    }

    public ITranAudioSystemAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubAudioSystem tranThubAudioSystem = this.mThubService;
            if (tranThubAudioSystem != null) {
                return tranThubAudioSystem;
            }
            TranThubAudioSystem tranThubAudioSystem2 = new TranThubAudioSystem();
            this.mThubService = tranThubAudioSystem2;
            return tranThubAudioSystem2;
        }
        TranAospAudioSystem tranAospAudioSystem = this.mAospService;
        if (tranAospAudioSystem != null) {
            return tranAospAudioSystem;
        }
        TranAospAudioSystem tranAospAudioSystem2 = new TranAospAudioSystem();
        this.mAospService = tranAospAudioSystem2;
        return tranAospAudioSystem2;
    }

    public boolean isSourceActive(int i) {
        return getService(TranVersion.Core.VERSION_33161).isSourceActive(i);
    }

    public int newAudioSessionId() {
        return getService(TranVersion.Core.VERSION_33181).newAudioSessionId();
    }

    public int setForceUse(int i, int i2) {
        return getService(TranVersion.Core.VERSION_33181).setForceUse(i, i2);
    }
}
