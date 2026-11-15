package com.questionnaire.sdk.dao;

import java.io.Serializable;

public class QuestionClientData implements Serializable {
    private String failTip;
    private String maxDesc;
    private int maxScore;
    private int maxShow;
    private String minDesc;
    private String questionnaireId;
    private int showCount;
    private long showTimestamp;
    private String successTip;
    private String title;
    private String triggerCond;
    private int type;
    private String url;

    public String getFailTip() {
        return this.failTip;
    }

    public String getMaxDesc() {
        return this.maxDesc;
    }

    public int getMaxScore() {
        return this.maxScore;
    }

    public int getMaxShow() {
        return this.maxShow;
    }

    public String getMinDesc() {
        return this.minDesc;
    }

    public String getQuestionnaireId() {
        return this.questionnaireId;
    }

    public int getShowCount() {
        return this.showCount;
    }

    public long getShowTimestamp() {
        return this.showTimestamp;
    }

    public String getSuccessTip() {
        return this.successTip;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTriggerCond() {
        return this.triggerCond;
    }

    public int getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public void setFailTip(String str) {
        this.failTip = str;
    }

    public void setMaxDesc(String str) {
        this.maxDesc = str;
    }

    public void setMaxScore(int i) {
        this.maxScore = i;
    }

    public void setMinDesc(String str) {
        this.minDesc = str;
    }

    public void setMxShow(int i) {
        this.maxShow = i;
    }

    public void setQuestionnaireId(String str) {
        this.questionnaireId = str;
    }

    public void setShowCount(int i) {
        this.showCount = i;
    }

    public void setShowTimestamp(long j) {
        this.showTimestamp = j;
    }

    public void setSuccessTip(String str) {
        this.successTip = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTriggerCond(String str) {
        this.triggerCond = str;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
