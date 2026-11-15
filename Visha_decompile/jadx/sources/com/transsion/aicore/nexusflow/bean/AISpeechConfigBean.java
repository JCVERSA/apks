package com.transsion.aicore.nexusflow.bean;

import androidx.annotation.Keep;

@Keep
public class AISpeechConfigBean {
    String inLanguage;
    DataType inType;
    String inVoice;
    String outLanguage;
    float outSpeed;
    DataType outType;
    String outVoice;

    public enum DataType {
        TEXT,
        AUDIO
    }

    public AISpeechConfigBean(DataType dataType, DataType dataType2, String str, String str2, String str3, String str4, float f) {
        this.inType = dataType;
        this.outType = dataType2;
        this.inLanguage = str;
        this.outLanguage = str2;
        this.inVoice = str3;
        this.outVoice = str4;
        this.outSpeed = f;
    }

    public String getInLanguage() {
        return this.inLanguage;
    }

    public DataType getInType() {
        return this.inType;
    }

    public String getInVoice() {
        return this.inVoice;
    }

    public String getOutLanguage() {
        return this.outLanguage;
    }

    public float getOutSpeed() {
        return this.outSpeed;
    }

    public DataType getOutType() {
        return this.outType;
    }

    public String getOutVoice() {
        return this.outVoice;
    }

    public void setInLanguage(String str) {
        this.inLanguage = str;
    }

    public void setInType(DataType dataType) {
        this.inType = dataType;
    }

    public void setInVoice(String str) {
        this.inVoice = str;
    }

    public void setOutLanguage(String str) {
        this.outLanguage = str;
    }

    public void setOutSpeed(float f) {
        this.outSpeed = f;
    }

    public void setOutType(DataType dataType) {
        this.outType = dataType;
    }

    public void setOutVoice(String str) {
        this.outVoice = str;
    }
}
