package com.hunantv.media.drm;

import com.hunantv.media.config.NetPlayConfig;
import com.hunantv.media.drm.cbcs.CbcsDrmStrategy;
import com.hunantv.media.drm.cenc.CencDrmStrategy;

public class MgtvDrmParams {
    private static int drmType;

    public static class DrmInfo {
        public String drmCid;
        public String drmFirm;
        public String drmSolution;
        public String drmToken;
        public String drmType;
        public String licenseUrl;

        public DrmInfo() {
        }

        public DrmInfo setDrmType(String str) {
            this.drmType = str;
            return this;
        }

        public String toString() {
            return "DrmInfo{drmFirm='" + this.drmFirm + "', drmSolution='" + this.drmSolution + "', licenseUrl='" + this.licenseUrl + "', drmCid='" + this.drmCid + "', drmToken='" + this.drmToken + "', drmType='" + this.drmType + "'}";
        }

        public DrmInfo(String str, String str2, String str3) {
            this.drmFirm = str;
            this.drmSolution = str2;
            this.licenseUrl = str3;
        }

        public DrmInfo(String str, String str2, String str3, String str4) {
            this.drmFirm = str;
            this.drmSolution = str2;
            this.licenseUrl = str3;
            this.drmType = str4;
        }

        public DrmInfo(String str, String str2, String str3, String str4, String str5) {
            this.drmFirm = str;
            this.drmSolution = str2;
            this.licenseUrl = str3;
            this.drmCid = str4;
            this.drmToken = str5;
        }
    }

    public static String getDrmType() {
        if ((CbcsDrmStrategy.isCbcsSupported() && NetPlayConfig.getPreferDrmType() == 6) || (CencDrmStrategy.isCencSupported() && !NetPlayConfig.isDrmProxyEnable() && (NetPlayConfig.getPreferDrmType() == 4 || NetPlayConfig.getPreferDrmType() == 5))) {
            drmType = NetPlayConfig.getPreferDrmType();
        } else {
            drmType = 0;
        }
        return drmType + "";
    }
}
