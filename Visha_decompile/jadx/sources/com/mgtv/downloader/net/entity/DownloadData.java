package com.mgtv.downloader.net.entity;

import com.mgtv.json.JsonInterface;
import java.io.Serializable;

public class DownloadData implements JsonInterface, Serializable {
    public int code;
    public String ext;
    public String idc;
    public String info;
    public String isothercdn;
    public String status;
    public int t;

    public int getCode() {
        return this.code;
    }

    public String getExt() {
        return this.ext;
    }

    public String getIdc() {
        return this.idc;
    }

    public String getInfo() {
        return this.info;
    }

    public String getIsothercdn() {
        return this.isothercdn;
    }

    public String getStatus() {
        return this.status;
    }

    public int getT() {
        return this.t;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public void setExt(String str) {
        this.ext = str;
    }

    public void setIdc(String str) {
        this.idc = str;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public void setIsothercdn(String str) {
        this.isothercdn = str;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public void setT(int i) {
        this.t = i;
    }

    public String toString() {
        return "DownloadData{status='" + this.status + "', info='" + this.info + "', t=" + this.t + ", isothercdn='" + this.isothercdn + "', idc='" + this.idc + "', code=" + this.code + ", ext='" + this.ext + "'}";
    }
}
