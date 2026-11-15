package com.mgtv.downloader.util;

import java.io.Serializable;

public class ConfigJson implements Serializable {
    public Data data = null;

    public static class CdnJson implements Serializable {
        public int playertimeout = 0;
        public int timeout = 0;
    }

    public static class CdnModule implements Serializable {
        public int hlsconfig = 0;
        public int useMGHttpDns = 0;
        public int videoDownloadType = 0;
        public int offlineMaxHttpSpeedKB = 0;
    }

    public static class Data implements Serializable {
        public CdnJson cdn = null;
        public CdnModule cdnModule = null;
    }
}
