package com.transsion.sniffer_load.sniffservice;

import android.net.Uri;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.arch.threads.TaskExecutor;
import defpackage.r0a;

public class SniffYoutubeUtil {
    public static final String SNIFF_WEB_SITE_SAVEFROM = "savefrom.net";
    public static final String SNIFF_WEB_SITE_SSYOUTUBE = "ssyoutube.com";
    public static final String TAG = "visha_SniffYoutubeUtil";
    public static final String YOUTUBE_VIDEO_SOURCES_HOST = "googlevideo.com";
    public static final String YOUTUBE_VIDEO_SOURCES_HOST1 = "vkvd259.mycdn.me";
    public static final String YOUTUBE_VIDEO_SOURCES_URL_PARAM_EXPIRE = "expire";
    public static final String YOUTUBE_VIDEO_SOURCES_URL_PARAM_MIME = "mime";
    public static final String YOUTUBE_VIDEO_SOURCES_URL_PARAM_TITLE = "title";

    public interface ISniffUrlCallBack {
        void onSniffSuccess(String str, Object... objArr);
    }

    public static boolean isSSYoutubeSite(String str) {
        return !r0a.g(str) && str.contains(SNIFF_WEB_SITE_SSYOUTUBE);
    }

    private static boolean isSaveFromSite(String str) {
        return !r0a.g(str) && str.contains(SNIFF_WEB_SITE_SAVEFROM);
    }

    public static boolean isShouldSniffUrl(String str) {
        return isYoutubeVideoSource(str);
    }

    public static boolean isSniffWebSite(String str) {
        return isSSYoutubeSite(str) || isSaveFromSite(str);
    }

    public static boolean isYoutubeSite(String str) {
        return !r0a.g(str) && str.contains(".youtube.com");
    }

    private static boolean isYoutubeVideoSource(String str) {
        if (r0a.g(str) || !str.contains(YOUTUBE_VIDEO_SOURCES_HOST)) {
            return false;
        }
        LogUtils.j(TAG, "find youtube video url: " + str);
        return true;
    }

    public static boolean shouldIntercept(String str) {
        return !r0a.g(str) && str.contains(YOUTUBE_VIDEO_SOURCES_HOST1);
    }

    public static void sniff(final String str, final ISniffUrlCallBack iSniffUrlCallBack) {
        TaskExecutor.c(new Runnable() {
            @Override
            public void run() {
                ISniffUrlCallBack iSniffUrlCallBack2;
                LogUtils.j(SniffYoutubeUtil.TAG, "sniff url: " + str);
                if (!SniffYoutubeUtil.sniffYoutubeVideo(str) || (iSniffUrlCallBack2 = iSniffUrlCallBack) == null) {
                    return;
                }
                iSniffUrlCallBack2.onSniffSuccess(str, new Object[0]);
            }
        });
    }

    public static boolean sniffYoutubeVideo(String str) {
        if (!isYoutubeVideoSource(str)) {
            return false;
        }
        Uri uri = Uri.parse(str);
        uri.getQueryParameter(YOUTUBE_VIDEO_SOURCES_URL_PARAM_EXPIRE);
        Uri.decode(uri.getQueryParameter("mime"));
        Uri.decode(uri.getQueryParameter("title"));
        return true;
    }
}
