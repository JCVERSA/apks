package com.mgtv.downloader.statistics.data;

import com.hunantv.imgo.util.b;
import com.hunantv.imgo.util.d;
import com.hunantv.imgo.util.p;
import com.mgtv.json.JsonInterface;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;

public class ImgoBaseStatisticsData implements JsonInterface {
    public static final String DT_DEVICE = "device";
    public static final String DT_ERROR = "error";
    public static final String DT_LIVE = "live";
    public static final String DT_ONLINE = "online";
    public static final String DT_VOD = "vod";
    private String apk_version;
    private String data_type;
    private String network;
    private String os;
    private String platform;
    private String system_version;
    private String user_account;
    private int user_id;
    private String manufacturers = ConstantDeviceInfo.APP_PLATFORM;
    private String mac = b.t();
    private String model = b.p();

    public ImgoBaseStatisticsData() {
        String str;
        if (d.a) {
            str = "imgoTV_aPhone_" + b.e() + ".1";
        } else {
            str = "imgoTV_aPhone_" + b.e();
        }
        this.apk_version = str;
        this.system_version = b.q();
        this.network = p.c();
        this.user_account = b.o();
        this.user_id = b.m();
        this.platform = "mobile";
        this.os = ConstantDeviceInfo.APP_PLATFORM;
    }

    public String getApk_version() {
        return this.apk_version;
    }

    public String getData_type() {
        return this.data_type;
    }

    public String getMac() {
        return this.mac;
    }

    public String getManufacturers() {
        return this.manufacturers;
    }

    public String getModel() {
        return this.model;
    }

    public String getNetwork() {
        return this.network;
    }

    public String getOs() {
        return this.os;
    }

    public String getPlatform() {
        return this.platform;
    }

    public String getSystem_version() {
        return this.system_version;
    }

    public String getUser_account() {
        return this.user_account;
    }

    public int getUser_id() {
        return this.user_id;
    }

    public void setApk_version(String str) {
        this.apk_version = str;
    }

    public void setData_type(String str) {
        this.data_type = str;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setManufacturers(String str) {
        this.manufacturers = str;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public void setNetwork(String str) {
        this.network = str;
    }

    public void setOs(String str) {
        this.os = str;
    }

    public void setPlatform(String str) {
        this.platform = str;
    }

    public void setSystem_version(String str) {
        this.system_version = str;
    }

    public void setUser_account(String str) {
        this.user_account = str;
    }

    public void setUser_id(int i) {
        this.user_id = i;
    }
}
