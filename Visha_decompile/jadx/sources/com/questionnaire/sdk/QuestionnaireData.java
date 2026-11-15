package com.questionnaire.sdk;

import android.os.Parcel;
import android.os.Parcelable;

public class QuestionnaireData implements Parcelable {
    public static final Parcelable.Creator<QuestionnaireData> CREATOR = new a();
    private String mQuestionnaire;
    private String mQuestionnaireId;
    private String mResult;
    private String mUrl;

    public class a implements Parcelable.Creator {
        @Override
        public QuestionnaireData createFromParcel(Parcel parcel) {
            return new QuestionnaireData(parcel);
        }

        @Override
        public QuestionnaireData[] newArray(int i) {
            return new QuestionnaireData[i];
        }
    }

    public QuestionnaireData() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getQuestionnaire() {
        return this.mQuestionnaire;
    }

    public String getQuestionnaireId() {
        return this.mQuestionnaireId;
    }

    public String getResult() {
        return this.mResult;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public void setQuestionnaire(String str) {
        this.mQuestionnaire = str;
    }

    public void setQuestionnaireId(String str) {
        this.mQuestionnaireId = str;
    }

    public void setResult(String str) {
        this.mResult = str;
    }

    public void setUrl(String str) {
        this.mUrl = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mQuestionnaireId);
        parcel.writeString(this.mQuestionnaire);
        parcel.writeString(this.mUrl);
        parcel.writeString(this.mResult);
    }

    public QuestionnaireData(Parcel parcel) {
        this.mQuestionnaireId = parcel.readString();
        this.mQuestionnaire = parcel.readString();
        this.mUrl = parcel.readString();
        this.mResult = parcel.readString();
    }
}
