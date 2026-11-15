package com.pgl.ssdk.ces.out;

import android.text.TextUtils;
import java.util.Map;

public final class PglSSConfig {
    public static final int COLLECT_MODE_DEFAULT = 0;
    public static final int COLLECT_MODE_ML_MINIMIZE = 1;
    public static final String CUSTOMINFO_KEY_ALLOWED_FIELDS = "fields_allowed";
    public static final String CUSTOMINFO_KEY_CHECKCLAZZ = "check_clz";
    public static final String CUSTOMINFO_KEY_IPV6 = "key_ipv6";
    public static final String CUSTOMINFO_KEY_SEC_CONFIG_STR = "sec_config";
    public static final String CUSTOMINFO_KEY_TARGET_IDC = "target-idc";
    public static final String CUSTOMINFO_KEY_TRANSFER_HOST = "key_transfer_host";
    public static final int OVREGION_TYPE_SG = 2;
    public static final int OVREGION_TYPE_UNKNOWN = -1;
    public static final int OVREGION_TYPE_VA = 1;

    private String f39284a;

    private final int f39285b;

    private final int f39286c;

    private String f39287d;

    private Map<String, Object> f39288e;

    public static class Builder {

        private String f39289a;

        private int f39290b = -1;

        private int f39291c = 0;

        private String f39292d;

        public PglSSConfig build() {
            if (TextUtils.isEmpty(this.f39289a)) {
                return null;
            }
            return new PglSSConfig(this.f39289a, this.f39290b, this.f39291c, this.f39292d);
        }

        public Builder setAdsdkVersion(String str) {
            this.f39292d = str;
            return this;
        }

        public Builder setAppId(String str) {
            this.f39289a = str;
            return this;
        }

        public Builder setCollectMode(int i10) {
            this.f39291c = i10;
            return this;
        }

        public Builder setOVRegionType(int i10) {
            this.f39290b = i10;
            return this;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public String getAdSdkVersion() {
        return this.f39287d;
    }

    public String getAppId() {
        return this.f39284a;
    }

    public int getCollectMode() {
        return this.f39286c;
    }

    public Map<String, Object> getCustomInfo() {
        return this.f39288e;
    }

    public int getOVRegionType() {
        return this.f39285b;
    }

    public void setCustomInfo(Map<String, Object> map) {
        this.f39288e = map;
    }

    private PglSSConfig(String str, int i10, int i11, String str2) {
        this.f39284a = str;
        this.f39285b = i10;
        this.f39286c = i11;
        this.f39287d = str2;
    }
}
