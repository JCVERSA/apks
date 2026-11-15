package com.mgmi.model;

import java.io.Serializable;

public class f implements Serializable {
    private static final long serialVersionUID = -8165435570812305824L;
    private CharSequence detailText;
    public String downloadUrl;
    private int mIsDownloading = 4;
    private int progress;

    public CharSequence getDetailText() {
        return this.detailText;
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public int getIsDownloading() {
        return this.mIsDownloading;
    }

    public int getProgress() {
        return this.progress;
    }

    public void setDetailText(CharSequence charSequence) {
        this.detailText = charSequence;
    }

    public void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public void setIsDownloading(int i) {
        this.mIsDownloading = i;
    }

    public void setProgress(int i) {
        this.progress = i;
    }
}
