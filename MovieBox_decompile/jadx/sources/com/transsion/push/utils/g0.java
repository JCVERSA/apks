package com.transsion.push.utils;

import com.google.android.gms.location.DeviceOrientationRequest;
import com.transsion.push.PushConstants;
import com.transsion.push.bean.ConfigInfo;
import com.transsion.push.config.PushRepository;

public final class g0 {
    public static int a() {
        int i10;
        ConfigInfo.Config config = PushRepository.getInstance().getConfig();
        if (config == null || (i10 = config.version) <= 0) {
            return 0;
        }
        return i10;
    }

    public static long b() {
        int iIntValue;
        if (o.c()) {
            ConfigInfo.Config config = PushRepository.getInstance().getConfig();
            if ((config == null || (iIntValue = config.uploadInterval) <= 0) && (iIntValue = ((Integer) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_APP_UPLOAD_INTERVAL, -1)).intValue()) <= 0) {
                return 14400000L;
            }
        } else {
            ConfigInfo.Config config2 = PushRepository.getInstance().getConfig();
            if ((config2 == null || (iIntValue = config2.mobileUploadInterval) <= 0) && (iIntValue = ((Integer) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_APP_MOBILE_UPLOAD_INTERVAL, -1)).intValue()) <= 0) {
                return 14400000L;
            }
        }
        return iIntValue * 1000;
    }

    public static int c() {
        int i10;
        ConfigInfo.Config config = PushRepository.getInstance().getConfig();
        if (config == null || (i10 = config.retryCount) <= 0) {
            return 2;
        }
        return i10;
    }

    public static long d() {
        int i10;
        ConfigInfo.Config config = PushRepository.getInstance().getConfig();
        return (config == null || (i10 = config.retryInterval) <= 0) ? DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT : i10 * 1000;
    }

    public static long e() {
        return ((Integer) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_SELF_DESTROYING_INTERVAL, 86400)).intValue() * 1000;
    }

    public static long f() {
        return Math.min(86400000L, Math.max(900000L, ((Long) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_TRACKER_REPORT_INTERVAL, -1L)).longValue()));
    }

    public static boolean g() {
        return ((Boolean) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_IMMEDIATELY_TRACK, Boolean.FALSE)).booleanValue();
    }

    public static boolean h() {
        return 2 == ((Integer) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_SELF_DESTROYING, 1)).intValue();
    }
}
