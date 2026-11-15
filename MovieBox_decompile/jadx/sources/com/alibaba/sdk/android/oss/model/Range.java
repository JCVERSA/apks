package com.alibaba.sdk.android.oss.model;

public class Range {
    public static final long INFINITE = -1;
    private long begin;
    private long end;

    public Range(long j10, long j11) {
        setBegin(j10);
        setEnd(j11);
    }

    public boolean checkIsValid() {
        long j10 = this.begin;
        if (j10 >= -1) {
            long j11 = this.end;
            if (j11 >= -1) {
                return j10 < 0 || j11 < 0 || j10 <= j11;
            }
        }
        return false;
    }

    public long getBegin() {
        return this.begin;
    }

    public long getEnd() {
        return this.end;
    }

    public void setBegin(long j10) {
        this.begin = j10;
    }

    public void setEnd(long j10) {
        this.end = j10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("bytes=");
        long j10 = this.begin;
        sb2.append(j10 == -1 ? "" : String.valueOf(j10));
        sb2.append("-");
        long j11 = this.end;
        sb2.append(j11 != -1 ? String.valueOf(j11) : "");
        return sb2.toString();
    }
}
