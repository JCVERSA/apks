package com.questionnaire.sdk;

import java.io.Serializable;

public class ScoreDescBean implements Serializable {
    private String maxDesc;
    private String minDesc;

    public String getMaxDesc() {
        return this.maxDesc;
    }

    public String getMinDesc() {
        return this.minDesc;
    }

    public void setMaxDesc(String str) {
        this.maxDesc = str;
    }

    public void setMinDesc(String str) {
        this.minDesc = str;
    }
}
