package com.aliyun.player;

import com.aliyun.player.source.LiveShift;

public interface AliLiveShiftPlayer extends IPlayer {

    public interface OnSeekLiveCompletionListener {
        void onSeekLiveCompletion(long j10);
    }

    public interface OnTimeShiftUpdaterListener {
        void onUpdater(long j10, long j11, long j12);
    }

    long getCurrentLiveTime();

    long getCurrentTime();

    void seekToLiveTime(long j10);

    void setDataSource(LiveShift liveShift);

    void setOnSeekLiveCompletionListener(OnSeekLiveCompletionListener onSeekLiveCompletionListener);

    void setOnTimeShiftUpdaterListener(OnTimeShiftUpdaterListener onTimeShiftUpdaterListener);
}
