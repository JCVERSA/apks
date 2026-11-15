package com.hunantv.media.config;

import androidx.core.app.NotificationCompat;
import com.hunantv.media.player.helper.MediaCodecHelp;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.report.c.h;

public class NetPlayConfigHelper {
    public static String getApiVersion() {
        return "v3";
    }

    public static String getCputy() {
        try {
            return StringUtil.removeSpace(StringUtil.safeToLowerCase(h.h()));
        } catch (Exception e) {
            e.printStackTrace();
            return NotificationCompat.CATEGORY_ERROR;
        }
    }

    public static String getMod() {
        try {
            return StringUtil.removeSpace(h.e());
        } catch (Exception e) {
            e.printStackTrace();
            return NotificationCompat.CATEGORY_ERROR;
        }
    }

    public static String getOmxcn() {
        try {
            return StringUtil.removeSpace(MediaCodecHelp.getH265Decoder());
        } catch (Exception e) {
            e.printStackTrace();
            return NotificationCompat.CATEGORY_ERROR;
        }
    }
}
