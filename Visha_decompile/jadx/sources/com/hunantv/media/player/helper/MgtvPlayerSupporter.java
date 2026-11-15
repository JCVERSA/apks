package com.hunantv.media.player.helper;

import com.hunantv.media.config.NetPlayConfig;
import com.hunantv.media.global.MgtvPlayerCapabilities;
import com.hunantv.media.player.pragma.DebugLog;

public class MgtvPlayerSupporter {
    private static final String DEFAULT_MAX_SPEED = "2.0";
    public static final float DEFAULT_MAX_SPEED_FLOAT = 2.0f;
    private static final String TAG = "MgtvPlayerSupporter";

    public enum CODECTYPE {
        HEVC,
        AVC,
        OTHER
    }

    private static String getDeviceSupportMaxSpeed() {
        if (!NetPlayConfig.isHightSpeedEnable()) {
            return DEFAULT_MAX_SPEED;
        }
        int hEVC1080PMaxFps = MgtvPlayerCapabilities.getHEVC1080PMaxFps();
        int i = hEVC1080PMaxFps / 25;
        DebugLog.i(TAG, "[getDeviceSupportMaxSpeed]: hevc_1080p_fps=" + hEVC1080PMaxFps + ", hevc_1080p_max_speed:" + i + ", NetPlayConfig.getPlayMaxSpeedType=" + NetPlayConfig.getPlayMaxSpeedType());
        if (i < 3) {
            return DEFAULT_MAX_SPEED;
        }
        int playMaxSpeedType = NetPlayConfig.getPlayMaxSpeedType();
        if (playMaxSpeedType != 1) {
            if (playMaxSpeedType != 2) {
                return DEFAULT_MAX_SPEED;
            }
            if (i >= 4) {
                return "4.0";
            }
        }
        return "3.0";
    }

    private static float getDeviceSupportMaxSpeedExt(int i, int i2, float f, CODECTYPE codectype, boolean z) {
        int hEVC1080PMaxFps;
        DebugLog.i(TAG, "[getDeviceSupportMaxSpeedExt]: videoWidth :" + i + " videoHeight:" + i2 + " vfps:" + f + " codectype:" + codectype + " isAudio:" + z + " NetPlayConfig.isHightSpeedEnable:" + NetPlayConfig.isHightSpeedEnable() + " NetPlayConfig.getPlayMaxSpeedType:" + NetPlayConfig.getPlayMaxSpeedType());
        if (!NetPlayConfig.isHightSpeedEnable()) {
            return 2.0f;
        }
        if (z) {
            int playMaxSpeedType = NetPlayConfig.getPlayMaxSpeedType();
            if (playMaxSpeedType != 1) {
                return playMaxSpeedType != 2 ? 2.0f : 4.0f;
            }
            return 3.0f;
        }
        if (f <= 0.0f) {
            return 2.0f;
        }
        CODECTYPE codectype2 = CODECTYPE.HEVC;
        if (codectype != codectype2 && codectype != CODECTYPE.AVC) {
            return 2.0f;
        }
        if (Math.min(i, i2) > 1080) {
            hEVC1080PMaxFps = codectype == codectype2 ? MgtvPlayerCapabilities.getHEVC4KMaxFps() : MgtvPlayerCapabilities.getAVC4KMaxFps();
        } else {
            hEVC1080PMaxFps = codectype == codectype2 ? MgtvPlayerCapabilities.getHEVC1080PMaxFps() : MgtvPlayerCapabilities.getAVC1080PMaxFps();
        }
        float f2 = hEVC1080PMaxFps / f;
        if (f2 < 3.0f) {
            return 2.0f;
        }
        int playMaxSpeedType2 = NetPlayConfig.getPlayMaxSpeedType();
        if (playMaxSpeedType2 != 1) {
            if (playMaxSpeedType2 != 2) {
                return 2.0f;
            }
            if (f2 >= 4.0f) {
                return 4.0f;
            }
        }
        return 3.0f;
    }

    public static String getMaxSpeed() {
        String deviceSupportMaxSpeed = getDeviceSupportMaxSpeed();
        DebugLog.i(TAG, "getMaxSpeed:" + deviceSupportMaxSpeed);
        return deviceSupportMaxSpeed;
    }

    public static float getMaxSpeedExt(int i, int i2, float f, CODECTYPE codectype, boolean z) {
        float deviceSupportMaxSpeedExt = getDeviceSupportMaxSpeedExt(i, i2, f, codectype, z);
        DebugLog.i(TAG, "chodison getMaxSpeedExt: maxSpeed :" + deviceSupportMaxSpeedExt);
        return deviceSupportMaxSpeedExt;
    }

    public static String getMinSpeed() {
        return "0.25";
    }
}
