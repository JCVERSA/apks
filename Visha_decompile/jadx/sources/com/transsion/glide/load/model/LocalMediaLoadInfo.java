package com.transsion.glide.load.model;

import android.net.Uri;
import androidx.annotation.NonNull;
import java.io.Serializable;
import java.util.Objects;

public final class LocalMediaLoadInfo implements Serializable {
    private long dateModified;
    private String displayName;
    private int height;
    private boolean isVideoFile;
    private int mediaId;
    private String mineType;
    private int orientation;
    private Uri uri;
    private int width;

    public LocalMediaLoadInfo(Uri uri, String str, int i, long j) {
        this.isVideoFile = true;
        this.uri = uri;
        this.mineType = str;
        this.orientation = i;
        this.dateModified = j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LocalMediaLoadInfo.class != obj.getClass()) {
            return false;
        }
        LocalMediaLoadInfo localMediaLoadInfo = (LocalMediaLoadInfo) obj;
        return this.width == localMediaLoadInfo.width && this.height == localMediaLoadInfo.height && this.orientation == localMediaLoadInfo.orientation && this.dateModified == localMediaLoadInfo.dateModified && Objects.equals(this.uri, localMediaLoadInfo.uri) && Objects.equals(this.mineType, localMediaLoadInfo.mineType);
    }

    public long getDateModified() {
        return this.dateModified;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public int getHeight() {
        return this.height;
    }

    public int getMediaId() {
        return this.mediaId;
    }

    public String getMineType() {
        return this.mineType;
    }

    public int getOrientation() {
        return this.orientation;
    }

    public Uri getUri() {
        return this.uri;
    }

    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return Objects.hash(this.uri, this.mineType, Integer.valueOf(this.width), Integer.valueOf(this.height), Integer.valueOf(this.orientation), Long.valueOf(this.dateModified));
    }

    public boolean isVideoFile() {
        return this.isVideoFile;
    }

    public LocalMediaLoadInfo setDateModified(long j) {
        this.dateModified = j;
        return this;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public LocalMediaLoadInfo setHeight(int i) {
        this.height = i;
        return this;
    }

    public void setMediaId(int i) {
        this.mediaId = i;
    }

    public LocalMediaLoadInfo setMineType(String str) {
        this.mineType = str;
        return this;
    }

    public LocalMediaLoadInfo setOrientation(int i) {
        this.orientation = i;
        return this;
    }

    public LocalMediaLoadInfo setUri(Uri uri) {
        this.uri = uri;
        return this;
    }

    public void setVideoFile(boolean z) {
        this.isVideoFile = z;
    }

    public LocalMediaLoadInfo setWidth(int i) {
        this.width = i;
        return this;
    }

    @NonNull
    public String toString() {
        return "LocalVideoLoadInfo{uri=" + this.uri + ", mineType='" + this.mineType + "', width=" + this.width + ", height=" + this.height + ", orientation=" + this.orientation + ", dateModified=" + this.dateModified + '}';
    }

    public LocalMediaLoadInfo(int i, Uri uri, String str, int i2, long j, String str2, boolean z) {
        this.mediaId = i;
        this.uri = uri;
        this.mineType = str;
        this.orientation = i2;
        this.dateModified = j;
        this.displayName = str2;
        this.isVideoFile = z;
    }

    public LocalMediaLoadInfo(Uri uri, String str, int i, int i2, int i3, long j) {
        this.isVideoFile = true;
        this.uri = uri;
        this.mineType = str;
        this.width = i;
        this.height = i2;
        this.orientation = i3;
        this.dateModified = j;
    }
}
