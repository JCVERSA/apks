package com.transsion.dbdata.beans;

import androidx.annotation.NonNull;
import java.io.Serializable;

public class FolderLabelItem implements Serializable {
    private static final long serialVersionUID = -2968461504694220716L;
    public int folderIndex;
    public String folderName;
    public String labelSrc;
    public String matchName;
    public String matchPath;

    public int getFolderIndex() {
        return this.folderIndex;
    }

    public String getFolderName() {
        return this.folderName;
    }

    public String getLabelSrc() {
        return this.labelSrc;
    }

    public String getMatchName() {
        return this.matchName;
    }

    public String getMatchPath() {
        return this.matchPath;
    }

    public void setFolderIndex(int i) {
        this.folderIndex = i;
    }

    public void setFolderName(String str) {
        this.folderName = str;
    }

    public void setLabelSrc(String str) {
        this.labelSrc = str;
    }

    public void setMatchName(String str) {
        this.matchName = str;
    }

    public void setMatchPath(String str) {
        this.matchPath = str;
    }

    @NonNull
    public String toString() {
        return "VideoFolderLabel{folderIndex=" + this.folderIndex + ",folderName=" + this.folderName + ",labelSrc=" + this.labelSrc + ", matchName=" + this.matchName + ", matchPath=" + this.matchPath + '}';
    }
}
