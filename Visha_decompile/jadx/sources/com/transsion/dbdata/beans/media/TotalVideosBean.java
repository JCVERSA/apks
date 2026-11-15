package com.transsion.dbdata.beans.media;

public class TotalVideosBean {
    public int totalCount;
    public String totalCountStr;
    public long totalSize;
    public String totalSizeStr;

    public int getTotalCount() {
        return this.totalCount;
    }

    public String getTotalCountStr() {
        return this.totalCountStr;
    }

    public long getTotalSize() {
        return this.totalSize;
    }

    public String getTotalSizeStr() {
        return this.totalSizeStr;
    }

    public void setTotalCount(int i) {
        this.totalCount = i;
    }

    public void setTotalCountStr(String str) {
        this.totalCountStr = str;
    }

    public void setTotalSize(long j) {
        this.totalSize = j;
    }

    public void setTotalSizeStr(String str) {
        this.totalSizeStr = str;
    }

    public String toString() {
        return "TotalVideosBean{totalCount='" + this.totalCount + "', totalSize='" + this.totalSize + "'}";
    }
}
