package com.transsion.aicore.nexusflow.bean;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;

@Keep
public class SmartAnswerBean implements Cloneable {

    @SerializedName("botNickName")
    public String mBotNickName;

    @SerializedName("callerName")
    public String mCallerName;

    @SerializedName("communicationTimeout")
    public int mCommunicationTimeout;

    @SerializedName("googleVoice")
    public String mGoogleVoice;

    @SerializedName("language")
    public String mLanguage;

    @SerializedName("llmDisconnectTips")
    public String mLlmDisconnectTips;

    @SerializedName("masterNickName")
    public String mMasterNickName;

    @SerializedName("microsoftVoice")
    public String mMicrosoftVoice;

    @SerializedName("muteAnother")
    public boolean mMuteAnother;

    @SerializedName("offlinePresetContent")
    public String mOfflinePresetContent;

    @SerializedName("onlinePresetContent")
    public String mOnlinePresetContent;

    @SerializedName("saveRecordPath")
    public String mSaveRecordPath;

    @SerializedName("securityInterceptTips")
    public String mSecurityInterceptTips;

    @SerializedName("timeoutHangUpPrompt")
    public String mTimeoutHangUpPrompt;

    public SmartAnswerBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, int i, String str12, boolean z) {
        this.mCallerName = str;
        this.mMasterNickName = str2;
        this.mBotNickName = str3;
        this.mOnlinePresetContent = str4;
        this.mOfflinePresetContent = str5;
        this.mTimeoutHangUpPrompt = str6;
        this.mSecurityInterceptTips = str7;
        this.mLlmDisconnectTips = str8;
        this.mLanguage = str9;
        this.mGoogleVoice = str10;
        this.mMicrosoftVoice = str11;
        this.mCommunicationTimeout = i;
        this.mSaveRecordPath = str12;
        this.mMuteAnother = z;
    }

    public SmartAnswerBean m112clone() {
        try {
            return (SmartAnswerBean) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
