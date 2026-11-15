package com.mgtv.downloader.dir;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Serializable;

public class DownloadDirInfo implements Serializable {
    public long availableSize;
    public String availableSizeDesc;
    public boolean internal;
    public String path;
    public int serialNo;
    public long totalSize;
    public String totalSizeDesc;

    public boolean equals(Object obj) {
        String str;
        if (obj == null || !(obj instanceof DownloadDirInfo) || (str = this.path) == null) {
            return false;
        }
        return str.equals(((DownloadDirInfo) obj).path);
    }

    @NonNull
    public String getDisplayName(@Nullable Context context) {
        if (context == null) {
            return "";
        }
        String str = this.internal ? "内部存储" : "外部存储";
        if (this.serialNo <= 0) {
            return str;
        }
        return str + this.serialNo;
    }

    public int hashCode() {
        if (TextUtils.isEmpty(this.path)) {
            return 0;
        }
        return this.path.hashCode();
    }

    public String toString() {
        return String.format("Internal[%s], SerialNo[%s] - Total[%s], Available[%s], Path[%s]", String.valueOf(this.internal), String.valueOf(this.serialNo), this.totalSizeDesc, this.availableSizeDesc, this.path);
    }
}
