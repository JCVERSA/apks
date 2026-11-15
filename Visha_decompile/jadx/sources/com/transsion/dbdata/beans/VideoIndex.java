package com.transsion.dbdata.beans;

import com.transsion.dbdata.beans.onlinevideo.TypeBean;

public class VideoIndex extends TypeBean {
    int pos;
    long videoID;

    public VideoIndex(int i, long j) {
        this.pos = i;
        this.videoID = j;
    }

    public int getPos() {
        return this.pos;
    }

    public long getVideoID() {
        return this.videoID;
    }

    public void setPos(int i) {
        this.pos = i;
    }

    public void setVideoID(long j) {
        this.videoID = j;
    }
}
