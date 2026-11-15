package com.aliyun.player;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.aliyun.liveshift.LiveTimeUpdater;
import com.aliyun.player.nativeclass.JniSaasPlayer;
import com.aliyun.player.nativeclass.NativePlayerBase;
import com.aliyun.player.source.LiveShift;
import com.aliyun.player.source.UrlSource;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.lang.ref.WeakReference;

class ApsaraLiveShiftPlayer extends AVPBase implements AliLiveShiftPlayer {
    public static final int SeekLive = 10;
    private IPlayer.OnLoadingStatusListener innerOnLoadingStatusListener;
    private IPlayer.OnStateChangedListener innerOnStateChangedListener;
    private long liveSeekOffset;
    private long liveSeekToTime;
    private LiveShift liveShiftSource;
    private LiveTimeUpdater liveTimeUpdater;
    private IPlayer.OnLoadingStatusListener mOnLoadingStatusListener;
    private IPlayer.OnPreparedListener mOnPreparedListener;
    private IPlayer.OnStateChangedListener mOnStateChangedListener;
    private AliLiveShiftPlayer.OnSeekLiveCompletionListener mOutSeekLiveCompletionListener;
    private AliLiveShiftPlayer.OnTimeShiftUpdaterListener mOutTimeShiftUpdaterListener;
    private int status;
    private int statusWhenSeek;
    private InnerTimeShiftUpdaterListener timeShiftUpdaterListener;

    private static class InnerOnLoadingStatusListener implements IPlayer.OnLoadingStatusListener {
        private WeakReference<ApsaraLiveShiftPlayer> playerWR;

        InnerOnLoadingStatusListener(ApsaraLiveShiftPlayer apsaraLiveShiftPlayer) {
            this.playerWR = new WeakReference<>(apsaraLiveShiftPlayer);
        }

        @Override
        public void onLoadingBegin() {
            ApsaraLiveShiftPlayer apsaraLiveShiftPlayer = this.playerWR.get();
            if (apsaraLiveShiftPlayer != null) {
                apsaraLiveShiftPlayer.onLoadingBegin();
            }
        }

        @Override
        public void onLoadingEnd() {
            ApsaraLiveShiftPlayer apsaraLiveShiftPlayer = this.playerWR.get();
            if (apsaraLiveShiftPlayer != null) {
                apsaraLiveShiftPlayer.onLoadingEnd();
            }
        }

        @Override
        public void onLoadingProgress(int i10, float f10) {
            ApsaraLiveShiftPlayer apsaraLiveShiftPlayer = this.playerWR.get();
            if (apsaraLiveShiftPlayer != null) {
                apsaraLiveShiftPlayer.onLoadingProgress(i10, f10);
            }
        }
    }

    private static class InnerPreparedListener implements IPlayer.OnPreparedListener {
        private WeakReference<ApsaraLiveShiftPlayer> playerWR;

        InnerPreparedListener(ApsaraLiveShiftPlayer apsaraLiveShiftPlayer) {
            this.playerWR = new WeakReference<>(apsaraLiveShiftPlayer);
        }

        @Override
        public void onPrepared() {
            ApsaraLiveShiftPlayer apsaraLiveShiftPlayer = this.playerWR.get();
            if (apsaraLiveShiftPlayer != null) {
                apsaraLiveShiftPlayer.onPrepared();
            }
        }
    }

    private static class InnerStateChangedListener implements IPlayer.OnStateChangedListener {
        private WeakReference<ApsaraLiveShiftPlayer> playerWR;

        InnerStateChangedListener(ApsaraLiveShiftPlayer apsaraLiveShiftPlayer) {
            this.playerWR = new WeakReference<>(apsaraLiveShiftPlayer);
        }

        @Override
        public void onStateChanged(int i10) {
            ApsaraLiveShiftPlayer apsaraLiveShiftPlayer = this.playerWR.get();
            if (apsaraLiveShiftPlayer != null) {
                apsaraLiveShiftPlayer.onStateChanged(i10);
            }
        }
    }

    private static class InnerTimeShiftUpdaterListener implements AliLiveShiftPlayer.OnTimeShiftUpdaterListener {
        private WeakReference<ApsaraLiveShiftPlayer> playerReference;

        public InnerTimeShiftUpdaterListener(ApsaraLiveShiftPlayer apsaraLiveShiftPlayer) {
            this.playerReference = new WeakReference<>(apsaraLiveShiftPlayer);
        }

        @Override
        public void onUpdater(long j10, long j11, long j12) {
            ApsaraLiveShiftPlayer apsaraLiveShiftPlayer = this.playerReference.get();
            if (apsaraLiveShiftPlayer != null) {
                apsaraLiveShiftPlayer.onUpdater(j10, j11, j12);
            }
        }
    }

    ApsaraLiveShiftPlayer(Context context, String str) {
        super(context, str);
        this.liveSeekToTime = -1L;
        this.liveSeekOffset = -1L;
        this.liveShiftSource = null;
        this.liveTimeUpdater = null;
        this.timeShiftUpdaterListener = null;
        this.mOutSeekLiveCompletionListener = null;
        this.mOnPreparedListener = null;
        this.mOnStateChangedListener = null;
        this.innerOnStateChangedListener = new InnerStateChangedListener(this);
        this.mOnLoadingStatusListener = null;
        this.innerOnLoadingStatusListener = new InnerOnLoadingStatusListener(this);
        this.mOutTimeShiftUpdaterListener = null;
        this.timeShiftUpdaterListener = new InnerTimeShiftUpdaterListener(this);
    }

    public void onLoadingBegin() {
        LiveTimeUpdater liveTimeUpdater = this.liveTimeUpdater;
        if (liveTimeUpdater != null) {
            liveTimeUpdater.pauseUpdater();
        }
        IPlayer.OnLoadingStatusListener onLoadingStatusListener = this.mOnLoadingStatusListener;
        if (onLoadingStatusListener != null) {
            onLoadingStatusListener.onLoadingBegin();
        }
    }

    public void onLoadingEnd() {
        LiveTimeUpdater liveTimeUpdater = this.liveTimeUpdater;
        if (liveTimeUpdater != null) {
            liveTimeUpdater.resumeUpdater();
        }
        IPlayer.OnLoadingStatusListener onLoadingStatusListener = this.mOnLoadingStatusListener;
        if (onLoadingStatusListener != null) {
            onLoadingStatusListener.onLoadingEnd();
        }
    }

    public void onLoadingProgress(int i10, float f10) {
        IPlayer.OnLoadingStatusListener onLoadingStatusListener = this.mOnLoadingStatusListener;
        if (onLoadingStatusListener != null) {
            onLoadingStatusListener.onLoadingProgress(i10, f10);
        }
    }

    public void onPrepared() {
        LiveTimeUpdater liveTimeUpdater = this.liveTimeUpdater;
        if (liveTimeUpdater != null) {
            liveTimeUpdater.stopUpdater();
        } else {
            LiveTimeUpdater liveTimeUpdater2 = new LiveTimeUpdater(this.mContext, this.liveShiftSource);
            this.liveTimeUpdater = liveTimeUpdater2;
            liveTimeUpdater2.setUpdaterListener(this.timeShiftUpdaterListener);
        }
        this.liveTimeUpdater.setConfig(getConfig());
        this.liveTimeUpdater.setStartPlayTime(this.liveSeekToTime);
        this.liveTimeUpdater.startUpdater();
        if (this.status != 10) {
            this.status = 2;
            IPlayer.OnPreparedListener onPreparedListener = this.mOnPreparedListener;
            if (onPreparedListener != null) {
                onPreparedListener.onPrepared();
                return;
            }
            return;
        }
        this.status = 2;
        if (this.statusWhenSeek == 3) {
            start();
        } else if (isAutoPlay()) {
            this.liveTimeUpdater.resumeUpdater();
        } else {
            this.liveTimeUpdater.pauseUpdater();
        }
        AliLiveShiftPlayer.OnSeekLiveCompletionListener onSeekLiveCompletionListener = this.mOutSeekLiveCompletionListener;
        if (onSeekLiveCompletionListener != null) {
            onSeekLiveCompletionListener.onSeekLiveCompletion(this.liveSeekToTime);
        }
        this.liveSeekToTime = -1L;
    }

    public void onStateChanged(int i10) {
        if (i10 > 2) {
            this.status = i10;
        }
        IPlayer.OnStateChangedListener onStateChangedListener = this.mOnStateChangedListener;
        if (onStateChangedListener != null) {
            onStateChangedListener.onStateChanged(i10);
        }
    }

    public void onUpdater(long j10, long j11, long j12) {
        AliLiveShiftPlayer.OnTimeShiftUpdaterListener onTimeShiftUpdaterListener = this.mOutTimeShiftUpdaterListener;
        if (onTimeShiftUpdaterListener != null) {
            onTimeShiftUpdaterListener.onUpdater(j10, j11, j12);
        }
    }

    @Override
    protected NativePlayerBase createAlivcMediaPlayer(Context context) {
        return new JniSaasPlayer(context);
    }

    @Override
    public long getCurrentLiveTime() {
        LiveTimeUpdater liveTimeUpdater = this.liveTimeUpdater;
        if (liveTimeUpdater != null) {
            return liveTimeUpdater.getLiveTime();
        }
        return 0L;
    }

    @Override
    public long getCurrentTime() {
        LiveTimeUpdater liveTimeUpdater = this.liveTimeUpdater;
        if (liveTimeUpdater != null) {
            return liveTimeUpdater.getPlayTime();
        }
        return 0L;
    }

    @Override
    public void pause() {
        super.pause();
        LiveTimeUpdater liveTimeUpdater = this.liveTimeUpdater;
        if (liveTimeUpdater != null) {
            liveTimeUpdater.pauseUpdater();
        }
    }

    @Override
    public void seekToLiveTime(long j10) {
        int i10 = this.status;
        if (i10 == 10 || this.liveShiftSource == null) {
            return;
        }
        this.statusWhenSeek = i10;
        this.status = 10;
        this.liveSeekToTime = j10;
        long currentLiveTime = getCurrentLiveTime() - this.liveSeekToTime;
        this.liveSeekOffset = currentLiveTime;
        if (currentLiveTime < 0) {
            this.liveSeekOffset = 0L;
            this.liveSeekToTime = getCurrentLiveTime();
        }
        String url = this.liveShiftSource.getUrl();
        if (this.liveSeekToTime > 0 && this.liveSeekOffset > 0) {
            String query = Uri.parse(url).getQuery();
            if (url.endsWith(UrlUtils.QUESTION_MARK) || url.endsWith(UrlUtils.AND_MARK)) {
                url = url + "lhs_offset_unix_s_0=" + this.liveSeekOffset + "&lhs_start=1&aliyunols=on";
            } else if (TextUtils.isEmpty(query)) {
                url = url + "?lhs_offset_unix_s_0=" + this.liveSeekOffset + "&lhs_start=1&aliyunols=on";
            } else {
                url = url + "&lhs_offset_unix_s_0=" + this.liveSeekOffset + "&lhs_start=1&aliyunols=on";
            }
        }
        UrlSource urlSource = new UrlSource();
        urlSource.setUri(url);
        NativePlayerBase corePlayer = getCorePlayer();
        if (corePlayer instanceof JniSaasPlayer) {
            ((JniSaasPlayer) corePlayer).setDataSource(urlSource);
            corePlayer.prepare();
        }
    }

    @Override
    public void setDataSource(LiveShift liveShift) {
        this.liveShiftSource = liveShift;
        UrlSource urlSource = new UrlSource();
        urlSource.setUri(liveShift.getUrl());
        NativePlayerBase corePlayer = getCorePlayer();
        if (corePlayer instanceof JniSaasPlayer) {
            ((JniSaasPlayer) corePlayer).setDataSource(urlSource);
        }
    }

    @Override
    public void setOnLoadingStatusListener(IPlayer.OnLoadingStatusListener onLoadingStatusListener) {
        this.mOnLoadingStatusListener = onLoadingStatusListener;
        super.setOnLoadingStatusListener(this.innerOnLoadingStatusListener);
    }

    @Override
    public void setOnPreparedListener(IPlayer.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
        super.setOnPreparedListener(new InnerPreparedListener(this));
    }

    @Override
    public void setOnSeekLiveCompletionListener(AliLiveShiftPlayer.OnSeekLiveCompletionListener onSeekLiveCompletionListener) {
        this.mOutSeekLiveCompletionListener = onSeekLiveCompletionListener;
    }

    @Override
    public void setOnStateChangedListener(IPlayer.OnStateChangedListener onStateChangedListener) {
        this.mOnStateChangedListener = onStateChangedListener;
        super.setOnStateChangedListener(this.innerOnStateChangedListener);
    }

    @Override
    public void setOnTimeShiftUpdaterListener(AliLiveShiftPlayer.OnTimeShiftUpdaterListener onTimeShiftUpdaterListener) {
        this.mOutTimeShiftUpdaterListener = onTimeShiftUpdaterListener;
    }

    @Override
    public void start() {
        super.start();
        LiveTimeUpdater liveTimeUpdater = this.liveTimeUpdater;
        if (liveTimeUpdater != null) {
            liveTimeUpdater.resumeUpdater();
        }
    }

    @Override
    public void stop() {
        super.stop();
        LiveTimeUpdater liveTimeUpdater = this.liveTimeUpdater;
        if (liveTimeUpdater != null) {
            liveTimeUpdater.stopUpdater();
        }
    }
}
