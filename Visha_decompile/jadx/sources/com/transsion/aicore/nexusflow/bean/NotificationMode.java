package com.transsion.aicore.nexusflow.bean;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.transsion.livecaption.constant.ICode;

@Keep
public class NotificationMode extends LLMBean {

    @SerializedName(ICode.CALL.CALL_KEY_CONTENT)
    private String[] mContent;

    @SerializedName("groupKey")
    private String mGroupKey;

    @SerializedName("notiKey")
    private String mNotiKey;

    @SerializedName("packageName")
    private String mPackageName;

    @SerializedName("summary")
    private String mSummary;

    @SerializedName("title")
    private String mTitle;

    public String[] getmContent() {
        return this.mContent;
    }

    public String getmGroupKey() {
        return this.mGroupKey;
    }

    public String getmNotiKey() {
        return this.mNotiKey;
    }

    public String getmPackageName() {
        return this.mPackageName;
    }

    public String getmSummary() {
        return this.mSummary;
    }

    public String getmTitle() {
        return this.mTitle;
    }

    public void setmContent(String[] strArr) {
        this.mContent = strArr;
    }

    public void setmGroupKey(String str) {
        this.mGroupKey = str;
    }

    public void setmNotiKey(String str) {
        this.mNotiKey = str;
    }

    public void setmPackageName(String str) {
        this.mPackageName = str;
    }

    public void setmSummary(String str) {
        this.mSummary = str;
    }

    public void setmTitle(String str) {
        this.mTitle = str;
    }

    public String toString() {
        return "NotificationMode{notiKey='" + this.mNotiKey + "', groupKey='" + this.mGroupKey + "', title='" + this.mTitle + "', content='" + this.mContent + "', summary='" + this.mSummary + "', packageName='" + this.mPackageName + "', taskId='" + this.mTaskId + "'}";
    }
}
