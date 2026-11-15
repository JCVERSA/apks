package com.transsion.dbdata.beans.subtitle;

import android.text.TextUtils;
import defpackage.gw4;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.slf4j.Marker;

public class SubtitleLanguage implements gw4 {
    private boolean isCheck;
    private boolean isGroupLanguage;
    private String languageCode;
    private String languageName;
    private String languageStandardCode;
    private List<SubtitleLanguage> subLanguages;

    public SubtitleLanguage(String str, String str2, String str3) {
        this.languageCode = str2;
        this.languageStandardCode = str3;
        this.languageName = str;
    }

    @Override
    public String displayText() {
        if (!this.isGroupLanguage) {
            return this.languageName;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<SubtitleLanguage> it = getSubLanguages().iterator();
        while (it.hasNext()) {
            sb.append(it.next().languageName + Marker.ANY_NON_NULL_MARKER);
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString().trim();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SubtitleLanguage subtitleLanguage = (SubtitleLanguage) obj;
        return Objects.equals(this.languageCode, subtitleLanguage.languageCode) || Objects.equals(this.languageStandardCode, subtitleLanguage.languageStandardCode);
    }

    public int getIndex() {
        if (this.isGroupLanguage) {
            return 0;
        }
        if (TextUtils.equals(Locale.getDefault().getLanguage(), this.languageStandardCode)) {
            return 1;
        }
        return TextUtils.equals("en", this.languageStandardCode) ? 2 : 3;
    }

    public String getLanguageCode() {
        return this.languageCode;
    }

    public String getLanguageName() {
        return this.languageName;
    }

    public String getLanguageStandardCode() {
        return this.languageStandardCode;
    }

    public List<SubtitleLanguage> getSubLanguages() {
        return this.subLanguages;
    }

    public int hashCode() {
        return Objects.hash(this.languageStandardCode);
    }

    @Override
    public boolean isCheck() {
        return this.isCheck;
    }

    public boolean isGroupLanguage() {
        return this.isGroupLanguage;
    }

    @Override
    public void setCheck(boolean z) {
        this.isCheck = z;
    }

    public void setLanguageCode(String str) {
        this.languageCode = str;
    }

    public void setLanguageName(String str) {
        this.languageName = str;
    }

    public void setLanguageStandardCode(String str) {
        this.languageStandardCode = str;
    }

    public void setSubLanguages(List<SubtitleLanguage> list) {
        this.subLanguages = list;
    }

    public SubtitleLanguage(List<SubtitleLanguage> list) {
        this.subLanguages = list;
        this.isGroupLanguage = true;
    }
}
