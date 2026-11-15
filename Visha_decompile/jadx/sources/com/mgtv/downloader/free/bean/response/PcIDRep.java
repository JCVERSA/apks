package com.mgtv.downloader.free.bean.response;

import com.mgtv.json.JsonInterface;
import java.io.Serializable;

public class PcIDRep implements JsonInterface, Serializable {
    private String desc;
    private String expandParams;
    private String message;
    private String msgId;
    private String orderStatus;
    private String pcId;
    private String resultcode;
    private String systemTime;

    public String getDec() {
        return this.desc;
    }

    public String getExpandParams() {
        return this.expandParams;
    }

    public String getMessage() {
        return this.message;
    }

    public String getMsgId() {
        return this.msgId;
    }

    public String getOrderStatus() {
        return this.orderStatus;
    }

    public String getPcId() {
        return this.pcId;
    }

    public String getResultCode() {
        return this.resultcode;
    }

    public String getSystemTime() {
        return this.systemTime;
    }

    public void setDec(String str) {
        this.desc = str;
    }

    public void setExpandParams(String str) {
        this.expandParams = str;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setMsgId(String str) {
        this.msgId = str;
    }

    public void setOrderStatus(String str) {
        this.orderStatus = str;
    }

    public void setPcId(String str) {
        this.pcId = str;
    }

    public void setResultCode(String str) {
        this.resultcode = str;
    }

    public void setSystemTime(String str) {
        this.systemTime = str;
    }

    public String toString() {
        return "{\"msgId\":\"" + this.msgId + "\", \"systemTime\":\"" + this.systemTime + "\", \"message\":\"" + this.message + "', \"expandParams\":\"" + this.expandParams + "\", \"resultcode\":\"" + this.resultcode + "\", \"desc\":\"" + this.desc + "\", \"orderStatus\":\"" + this.orderStatus + "\", \"pcId\":\"" + this.pcId + "\"}";
    }
}
