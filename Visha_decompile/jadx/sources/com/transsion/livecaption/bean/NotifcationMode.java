package com.transsion.livecaption.bean;

import androidx.annotation.Keep;

@Keep
public class NotifcationMode extends LLMBean {
    private String[] content;
    private String groupKey;
    private String notiKey;
    private String packageName;
    private String summary;
    private String title;

    public String[] getContent() {
        return this.content;
    }

    public String getGroupKey() {
        return this.groupKey;
    }

    public String getNotiKey() {
        return this.notiKey;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getSummary() {
        return this.summary;
    }

    public String getTitle() {
        return this.title;
    }

    public void setContent(String[] strArr) {
        this.content = strArr;
    }

    public void setGroupKey(String str) {
        this.groupKey = str;
    }

    public void setNotiKey(String str) {
        this.notiKey = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setSummary(String str) {
        this.summary = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "NotifcationMode{notiKey='" + this.notiKey + "', groupKey='" + this.groupKey + "', title='" + this.title + "', content='" + this.content + "', summary='" + this.summary + "', packageName='" + this.packageName + "', taskId='" + getTaskId() + "'}";
    }
}
