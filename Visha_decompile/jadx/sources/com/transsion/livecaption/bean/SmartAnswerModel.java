package com.transsion.livecaption.bean;

import androidx.annotation.Keep;
import java.util.ArrayList;
import java.util.List;

@Keep
public class SmartAnswerModel {
    String botNickName;
    String callerName;
    List<Msg> dialogHistory = new ArrayList();
    String masterNickName;
    String presetContent;
    String query;

    public class Msg {
        String content;
        String role;

        public Msg(String str, String str2) {
            this.role = str;
            this.content = str2;
        }
    }

    public SmartAnswerModel(String str, String str2, String str3, String str4, String str5) {
        this.callerName = str;
        this.masterNickName = str2;
        this.botNickName = str3;
        this.presetContent = str4;
        this.query = str5;
    }

    public String getBotNickName() {
        return this.botNickName;
    }

    public String getCallerName() {
        return this.callerName;
    }

    public List<Msg> getDialogHistory() {
        return this.dialogHistory;
    }

    public String getMasterNickName() {
        return this.masterNickName;
    }

    public String getPresetContent() {
        return this.presetContent;
    }

    public String getQuery() {
        return this.query;
    }

    public void setBotNickName(String str) {
        this.botNickName = str;
    }

    public void setCallerName(String str) {
        this.callerName = str;
    }

    public void setDialogHistory(List<Msg> list) {
        this.dialogHistory = list;
    }

    public void setMasterNickName(String str) {
        this.masterNickName = str;
    }

    public void setPresetContent(String str) {
        this.presetContent = str;
    }

    public void setQuery(String str) {
        this.query = str;
    }

    public SmartAnswerModel(String str, String str2, String str3) {
        this.callerName = str;
        this.masterNickName = str2;
        this.botNickName = str3;
    }
}
