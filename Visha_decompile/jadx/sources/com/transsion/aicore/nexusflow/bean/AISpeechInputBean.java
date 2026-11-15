package com.transsion.aicore.nexusflow.bean;

import androidx.annotation.Keep;

@Keep
public class AISpeechInputBean {
    boolean interruptSignal;
    String language;
    String outVoice;
    String requestID;
    String text;

    public AISpeechInputBean(String str, String str2, String str3, boolean z) {
        this.text = str;
        this.language = str2;
        this.outVoice = str3;
        this.interruptSignal = z;
    }

    public boolean getInterruptSignal() {
        return this.interruptSignal;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getOutVoice() {
        return this.outVoice;
    }

    public String getRequestID() {
        return this.requestID;
    }

    public String getText() {
        return this.text;
    }

    public void setInterruptSignal(boolean z) {
        this.interruptSignal = z;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setOutVoice(String str) {
        this.outVoice = str;
    }

    public void setRequestID(String str) {
        this.requestID = str;
    }

    public void setText(String str) {
        this.text = str;
    }
}
