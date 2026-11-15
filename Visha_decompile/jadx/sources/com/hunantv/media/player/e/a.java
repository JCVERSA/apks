package com.hunantv.media.player.e;

import android.annotation.SuppressLint;
import android.content.Context;
import com.hunantv.media.player.libnative.FFmpegApi;
import com.hunantv.media.player.loader.ImgoLibLoader;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.pragma.PlayerConfig;
import com.hunantv.media.player.utils.StringUtil;
import com.mgtv.irouting.okhttp.HttpDnsException;

public class a {
    public static int a(Context context, String str, int i, int i2, int i3, int i4, int i5, String str2) {
        if (!a()) {
            return HttpDnsException.ERROR_OBJECT_NULL;
        }
        String strRemoveSpace = StringUtil.removeSpace(PlayerConfig.getGifUserAgent(context));
        String str3 = "ffmpeg -ss " + i + " -t " + i2 + " -accurate_seek -user_agent " + strRemoveSpace + " -i " + str + " -framerate " + i5 + " " + str2;
        if (i3 > 0 && i4 > 0) {
            str3 = "ffmpeg -ss " + i + " -t " + i2 + " -accurate_seek -user_agent " + strRemoveSpace + " -i " + str + " -framerate " + i5 + " -s " + i3 + "x" + i4 + " " + str2;
        }
        DebugLog.i("FFtoolProcess", "vGenerateGif: " + str3);
        return FFmpegApi.fftool_process(str3.replace("#", "%").split(" "));
    }

    public static boolean b() {
        return a() && FFmpegApi.fftool_is_supported();
    }

    @SuppressLint({"DefaultLocale"})
    public static int a(String str, String str2, int i) {
        return !a() ? HttpDnsException.ERROR_OBJECT_NULL : FFmpegApi.fftool_process(String.format("ffmpeg -f image2 -framerate %d -i %s %s", Integer.valueOf(i), str, str2).replace("#", "%").split(" "));
    }

    @SuppressLint({"DefaultLocale"})
    public static int a(String str, String str2, String str3, int i) {
        return !a() ? HttpDnsException.ERROR_OBJECT_NULL : FFmpegApi.fftool_process(String.format("ffmpeg -f image2 -framerate %d -i %s -s %s %s", Integer.valueOf(i), str, str3, str2).replace("#", "%").split(" "));
    }

    public static boolean a() {
        return ImgoLibLoader.getInstance().isFFmpegLibLoaded() && ImgoLibLoader.getInstance().isPlayerLibLoaded();
    }
}
