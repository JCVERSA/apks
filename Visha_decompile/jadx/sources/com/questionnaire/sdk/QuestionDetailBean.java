package com.questionnaire.sdk;

import java.io.Serializable;
import java.util.List;

public class QuestionDetailBean implements Serializable {
    private List<String> answers;
    private ScoreDescBean scoreDesc;
    private String title;

    public List<String> getAnswers() {
        return this.answers;
    }

    public ScoreDescBean getScoreDesc() {
        return this.scoreDesc;
    }

    public String getTitle() {
        return this.title;
    }

    public void setAnswers(List<String> list) {
        this.answers = list;
    }

    public void setScoreDesc(ScoreDescBean scoreDescBean) {
        this.scoreDesc = scoreDescBean;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
