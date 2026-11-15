package com.transsion.videodownloader.model;

import java.util.Objects;

public class VideoRange {
    private long mEnd;
    private long mStart;

    public VideoRange(long j, long j2) {
        this.mStart = j;
        this.mEnd = j2;
    }

    public boolean contains(long j) {
        return this.mStart <= j && j <= this.mEnd;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoRange)) {
            return false;
        }
        VideoRange videoRange = (VideoRange) obj;
        return this.mStart == videoRange.mStart && this.mEnd == videoRange.mEnd;
    }

    public long getEnd() {
        return this.mEnd;
    }

    public long getStart() {
        return this.mStart;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.mStart), Long.valueOf(this.mEnd));
    }

    public String toString() {
        return "VideoRange[start=" + this.mStart + ", end=" + this.mEnd + "]";
    }
}
