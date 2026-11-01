package com.wandoujia.download.rpc;

import android.net.Uri;
import o.g93;
import o.ir1;

public abstract class DownloadConstants {
    public static final String a = ir1.a;
    public static final String b = g93.e();

    public enum DownloadNetworkType {
        NO_NETWORK,
        MOBILE,
        WIFI,
        USB
    }

    public enum PauseReason {
        PAUSE_BY_APP(193),
        PAUSE_BY_WIFI(196),
        PAUSE_BY_MEDIA(197);

        private final int status;

        PauseReason(int i) {
            this.status = i;
        }

        public int getStatus() {
            return this.status;
        }
    }

    public enum ResourceType {
        APP,
        MUSIC,
        VIDEO,
        IMAGE,
        EBOOK,
        COMIC,
        PATCH,
        MISC,
        UNKNOWN,
        DATA_PACKET,
        PLUGIN,
        VIDEO_YOUTUBE,
        CAPTION,
        EXTENSION,
        LYRIC
    }

    public enum VerifyType {
        MD5,
        PF5
    }

    public static class a {
        public static final Uri a = Uri.parse("content://" + DownloadConstants.a + "/downloads");
    }
}
