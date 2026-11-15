package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;

public class ApplyTokenReq implements Serializable {
    private long applyTime;
    private String deviceId;
    private String pkgName;
    private String sign;

    public long getApplyTime() {
        return this.applyTime;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getPkgName() {
        return this.pkgName;
    }

    public String getSign() {
        return this.sign;
    }

    public void setApplyTime(long j) {
        this.applyTime = j;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public void setPkgName(String str) {
        this.pkgName = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }
}
