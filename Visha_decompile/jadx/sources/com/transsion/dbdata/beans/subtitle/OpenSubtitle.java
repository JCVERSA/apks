package com.transsion.dbdata.beans.subtitle;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.Objects;

public class OpenSubtitle implements ISubtitleState {
    private String languageCode;
    private String languageName;
    private String movieName;
    private String path;
    private Double score;
    private String subDownloadLink;
    private int subDownloadsCnt;
    private String subFileName;
    private String subId;

    @Deprecated
    private String subLanguageID;
    private String subSize;
    private int subtitleDownState;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OpenSubtitle)) {
            return false;
        }
        OpenSubtitle openSubtitle = (OpenSubtitle) obj;
        return TextUtils.equals(this.subFileName, openSubtitle.subFileName) || TextUtils.equals(this.subId, openSubtitle.subId);
    }

    public String getLanguageCode() {
        return this.languageCode;
    }

    public String getLanguageName() {
        return this.languageName;
    }

    public String getMovieName() {
        return this.movieName;
    }

    public String getPath() {
        return this.path;
    }

    public Double getScore() {
        return this.score;
    }

    public String getSubDownloadLink() {
        return this.subDownloadLink;
    }

    public int getSubDownloadsCnt() {
        return this.subDownloadsCnt;
    }

    public String getSubFileName() {
        return this.subFileName;
    }

    public String getSubId() {
        return this.subId;
    }

    public String getSubLanguageID() {
        return this.subLanguageID;
    }

    public String getSubSize() {
        return this.subSize;
    }

    public int getSubtitleDownState() {
        return this.subtitleDownState;
    }

    @Override
    public int getSubtitleState() {
        return this.subtitleDownState;
    }

    public int hashCode() {
        return Objects.hash(this.subFileName);
    }

    public void setLanguageCode(String str) {
        this.languageCode = str;
    }

    public void setLanguageName(String str) {
        this.languageName = str;
    }

    public void setMovieName(String str) {
        this.movieName = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setScore(Double d) {
        this.score = d;
    }

    public void setSubDownloadLink(String str) {
        this.subDownloadLink = str;
    }

    public void setSubDownloadsCnt(int i) {
        this.subDownloadsCnt = i;
    }

    public void setSubFileName(String str) {
        this.subFileName = str;
    }

    public void setSubId(String str) {
        this.subId = str;
    }

    public void setSubLanguageID(String str) {
        this.subLanguageID = str;
    }

    public void setSubSize(String str) {
        this.subSize = str;
    }

    public void setSubtitleDownState(int i) {
        this.subtitleDownState = i;
    }

    @NonNull
    public String toString() {
        return "openSubtitle{languageCode:" + getLanguageCode() + "\nlanguageName:" + getLanguageName() + "\n}";
    }
}
