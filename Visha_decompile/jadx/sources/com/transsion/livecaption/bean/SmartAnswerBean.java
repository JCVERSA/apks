package com.transsion.livecaption.bean;

import androidx.annotation.Keep;

@Keep
public class SmartAnswerBean implements Cloneable {
    String botNickName;
    String callerName;
    int communicationTimeout;
    String googleVoice;
    String language;
    String llmDisconnectTips;
    String masterNickName;
    String microsoftVoice;
    String offlinePresetContent;
    String onlinePresetContent;
    String saveRecordPath;
    String securityInterceptTips;
    String timeoutHangUpPrompt;

    public SmartAnswerBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, int i, String str12) {
        this.callerName = str;
        this.masterNickName = str2;
        this.botNickName = str3;
        this.onlinePresetContent = str4;
        this.offlinePresetContent = str5;
        this.timeoutHangUpPrompt = str6;
        this.securityInterceptTips = str7;
        this.llmDisconnectTips = str8;
        this.language = str9;
        this.googleVoice = str10;
        this.microsoftVoice = str11;
        this.communicationTimeout = i;
        this.saveRecordPath = str12;
    }

    public String getBotNickName() {
        return this.botNickName;
    }

    public String getCallerName() {
        return this.callerName;
    }

    public int getCommunicationTimeout() {
        return this.communicationTimeout;
    }

    public String getGoogleVoice() {
        return this.googleVoice;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getLlmDisconnectTips() {
        return this.llmDisconnectTips;
    }

    public String getMasterNickName() {
        return this.masterNickName;
    }

    public String getMicrosoftVoice() {
        return this.microsoftVoice;
    }

    public String getOfflinePresetContent() {
        return this.offlinePresetContent;
    }

    public String getOnlinePresetContent() {
        return this.onlinePresetContent;
    }

    public String getSaveRecordPath() {
        return this.saveRecordPath;
    }

    public String getSecurityInterceptTips() {
        return this.securityInterceptTips;
    }

    public String getTimeoutHangUpPrompt() {
        return this.timeoutHangUpPrompt;
    }

    public void setBotNickName(String str) {
        this.botNickName = str;
    }

    public void setCallerName(String str) {
        this.callerName = str;
    }

    public void setCommunicationTimeout(int i) {
        this.communicationTimeout = i;
    }

    public void setGoogleVoice(String str) {
        this.googleVoice = str;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setLlmDisconnectTips(String str) {
        this.llmDisconnectTips = str;
    }

    public void setMasterNickName(String str) {
        this.masterNickName = str;
    }

    public void setMicrosoftVoice(String str) {
        this.microsoftVoice = str;
    }

    public void setOfflinePresetContent(String str) {
        this.offlinePresetContent = str;
    }

    public void setOnlinePresetContent(String str) {
        this.onlinePresetContent = str;
    }

    public void setSaveRecordPath(String str) {
        this.saveRecordPath = str;
    }

    public void setSecurityInterceptTips(String str) {
        this.securityInterceptTips = str;
    }

    public void setTimeoutHangUpPrompt(String str) {
        this.timeoutHangUpPrompt = str;
    }

    public SmartAnswerBean m122clone() {
        try {
            return (SmartAnswerBean) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
