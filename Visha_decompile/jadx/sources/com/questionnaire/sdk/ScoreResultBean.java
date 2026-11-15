package com.questionnaire.sdk;

import java.io.Serializable;
import java.util.List;

public class ScoreResultBean implements Serializable {
    private String questionnaireId;
    private List<QuestionResult> questions;

    public static class QuestionInput implements Serializable {
        private String x;

        public String getInputX() {
            return this.x;
        }

        public void setInputX(String str) {
            this.x = str;
        }
    }

    public static class QuestionResult implements Serializable {
        private int index;
        private List<QuestionInput> userInput;

        public int getIndex() {
            return this.index;
        }

        public List<QuestionInput> getUserInput() {
            return this.userInput;
        }

        public void setIndex(int i) {
            this.index = i;
        }

        public void setUserInput(List<QuestionInput> list) {
            this.userInput = list;
        }
    }

    public String getQuestionnaireId() {
        return this.questionnaireId;
    }

    public List<QuestionResult> getQuestions() {
        return this.questions;
    }

    public void setQuestionnaireId(String str) {
        this.questionnaireId = str;
    }

    public void setQuestions(List<QuestionResult> list) {
        this.questions = list;
    }
}
