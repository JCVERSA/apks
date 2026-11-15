package com.bykv.vk.openvk.preload.falconx.statistic;

import android.os.Build;
import com.bykv.vk.openvk.preload.a.a.b;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

public class Common {

    @b(a = "app_version")
    public String appVersion;

    @b(a = "device_id")
    public String deviceId;

    @b(a = TtmlNode.TAG_REGION)
    public String region;

    @b(a = "sdk_version")
    public String sdkVersion = "2.0.3-rc.9-pangle";

    @b(a = "device_model")
    public String deviceModel = Build.MODEL;

    @b(a = "os")
    public int f19954os = 0;
}
