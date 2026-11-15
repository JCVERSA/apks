package com.transsion.aicore.nexusflow.bean;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.transsion.livecaption.constant.ICode;
import java.util.ArrayList;
import java.util.List;

@Keep
public class SmartAnswerModel {

    @SerializedName("botNickName")
    public String mBotNickName;

    @SerializedName("callerName")
    public String mCallerName;

    @SerializedName("dialogHistory")
    public List<Msg> mDialogHistory = new ArrayList();

    @SerializedName("masterNickName")
    public String mMasterNickName;

    @SerializedName("presetContent")
    public String mPresetContent;

    @SerializedName("query")
    public String mQuery;

    public class Msg {

        @SerializedName(ICode.CALL.CALL_KEY_CONTENT)
        String mContent;

        @SerializedName("role")
        String mRole;

        public Msg(String str, String str2) {
            this.mRole = str;
            this.mContent = str2;
        }
    }

    public SmartAnswerModel(String str, String str2, String str3, String str4, String str5) {
        this.mCallerName = str;
        this.mMasterNickName = str2;
        this.mBotNickName = str3;
        this.mPresetContent = str4;
        this.mQuery = str5;
    }

    public SmartAnswerModel(String str, String str2, String str3) {
        this.mCallerName = str;
        this.mMasterNickName = str2;
        this.mBotNickName = str3;
    }
}
