package com.mgmi.ads.api.e;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.hunantv.media.drm.IDrmManager;
import com.mgmi.model.VASTChannelAd;
import java.util.List;

public class a {
    public static boolean a(VASTChannelAd vASTChannelAd) {
        if (vASTChannelAd == null || vASTChannelAd.getCurrentStaticResource() == null || TextUtils.isEmpty(vASTChannelAd.getCurrentStaticResource().getStyle())) {
            return false;
        }
        return "17".equals(vASTChannelAd.getCurrentStaticResource().getStyle()) || "12".equals(vASTChannelAd.getCurrentStaticResource().getStyle());
    }

    public static boolean b(VASTChannelAd vASTChannelAd) {
        if (vASTChannelAd == null || vASTChannelAd.getCurrentStaticResource() == null || TextUtils.isEmpty(vASTChannelAd.getCurrentStaticResource().getStyle())) {
            return false;
        }
        return "7".equals(vASTChannelAd.getCurrentStaticResource().getStyle()) || "9".equals(vASTChannelAd.getCurrentStaticResource().getStyle()) || "6".equals(vASTChannelAd.getCurrentStaticResource().getStyle()) || IDrmManager.SessionConfig.STR_DRM_TYPE_AUDIO_MAES.equals(vASTChannelAd.getCurrentStaticResource().getStyle());
    }

    public static boolean a(@NonNull List<VASTChannelAd> list) {
        return (list == null || list.size() <= 0 || list.get(0) == null || list.get(0).getCurrentStaticResource() == null || TextUtils.isEmpty(list.get(0).getCurrentStaticResource().getStyle()) || !"6".equals(list.get(0).getCurrentStaticResource().getStyle())) ? false : true;
    }
}
