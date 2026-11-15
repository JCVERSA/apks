package com.questionnaire.sdk;

import java.io.Serializable;
import java.util.List;

public class QuestionTitleBean implements Serializable {
    private String appName;
    private String id;
    private int maxShow;
    private List<QuestionDetailBean> questions;
    private String submitFailTip;
    private String submitSuccTip;
    private String triggerCond;
    private int type;

    public String getAppName() {
        return this.appName;
    }

    public String getId() {
        return this.id;
    }

    public int getMaxShow() {
        return this.maxShow;
    }

    public List<QuestionDetailBean> getQuestions() {
        return this.questions;
    }

    public String getSubmitFailTip() {
        return this.submitFailTip;
    }

    public String getSubmitSuccTip() {
        return this.submitSuccTip;
    }

    public String getTriggerCond() {
        return this.triggerCond;
    }

    public int getType() {
        return this.type;
    }

    public void setAppName(String str) {
        this.appName = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setMxShow(int i) {
        this.maxShow = i;
    }

    public void setQuestions(List<QuestionDetailBean> list) {
        this.questions = list;
    }

    public void setSubmitFailTip(String str) {
        this.submitFailTip = str;
    }

    public void setSubmitSuccTip(String str) {
        this.submitSuccTip = str;
    }

    public void setTriggerCond(String str) {
        this.triggerCond = str;
    }

    public void setType(int i) {
        this.type = i;
    }
}
