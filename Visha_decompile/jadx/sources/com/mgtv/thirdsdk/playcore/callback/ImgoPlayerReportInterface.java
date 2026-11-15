package com.mgtv.thirdsdk.playcore.callback;

import com.hunantv.media.report.ReportParams;
import com.mgtv.thirdsdk.playcore.view.ImgoPlayerView;

public interface ImgoPlayerReportInterface {
    ImgoPlayerView.BufferingInfo getBufferingInfo();

    int getCurrentPosition();

    int getDataSourceType();

    int getDuration();

    String getErrorMsg();

    ImgoPlayerView.BufferTime getLastBufferTime();

    ImgoPlayerView.PerformanceInfo getPerformanceInfo();

    String getPlayerVersion();

    int getRenderType();

    ReportParams getReportParams();

    ImgoPlayerView.SeekingInfo getSeekingInfo();

    ImgoPlayerView.StreamInfo getStreamInfo();

    ImgoPlayerView.TimeCostInfo getTimeCostInfo();

    boolean isAccurateSeekEnable();

    boolean isBeforeFirstFrame();

    boolean isCompletion();

    boolean isHardware();

    boolean isImgoSourceModuleOpen();
}
