package com.transsion.magicvideo.data;

import com.transsion.dbdata.beans.SubtitleHistory;

public class SubtitleOptStatus {
    private boolean optSuccess;
    private SubtitleHistory subtitleHistory;

    public SubtitleOptStatus(SubtitleHistory subtitleHistory, boolean z) {
        this.subtitleHistory = subtitleHistory;
        this.optSuccess = z;
    }

    public SubtitleHistory getSubtitleHistory() {
        return this.subtitleHistory;
    }

    public boolean isOptSuccess() {
        return this.optSuccess;
    }
}
