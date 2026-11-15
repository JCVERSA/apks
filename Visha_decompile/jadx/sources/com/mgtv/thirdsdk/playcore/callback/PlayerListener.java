package com.mgtv.thirdsdk.playcore.callback;

import com.hunantv.media.player.subtitle.SubtitleSource;

public interface PlayerListener {
    public static final int IMGOMEDIA_ERROR_500005 = 500005;
    public static final int MEDIA_ERROR_ASYNC_INVALID_FORMAT_SOURCE = 7000013;
    public static final int MEDIA_ERROR_INVALID_URL = 7000011;
    public static final int MEDIA_INFO_BUFFERING_END = 702;
    public static final int MEDIA_INFO_BUFFERING_START = 701;
    public static final int MEDIA_INFO_DECODER_TYPE_CHANGED = 5;
    public static final int MEDIA_INFO_DOWNLOAD_SPEED = 700001;
    public static final int MEDIA_INFO_INNER_BASE = 700000;
    public static final int MEDIA_INFO_RENDERING_START = 900;
    public static final int MEDIA_WARNING_HW_DECODE_FAILED = 80000001;
    public static final int MEDIA_WARNING_UNSUPPORT_HW_RENDER_FAILED = 80000002;
    public static final int MEDIA_WARNING_UNSUPPORT_HW_RENDER_FAILED_THEN_SUCCESS = 80000003;
    public static final int MSG_SWITCH_VQ_COMPLETE_OK = 0;
    public static final int MSG_SWITCH_VQ_INFO_DATA_PREPARED = 2;
    public static final int P2P_WARNING_TASK_NOT_EXIST = 60000001;

    public interface OnBufferListener {
        void onBufferUpdate(String str);

        void onBuffering(int i);

        void onEndBuffer(int i);

        void onStartBuffer(int i);
    }

    public interface OnChangeSourceListener {
        void onChangeSourceFailed(String str, int i, int i2);

        void onChangeSourceInfo(String str, int i, int i2);

        void onChangeSourceSuccess(String str, int i, int i2);
    }

    public interface OnCompletionListener {
        void onCompletion(int i, int i2);
    }

    public interface OnErrorListener {
        boolean onError(int i, int i2);
    }

    public interface OnInfoListener {
        boolean onInfo(int i, int i2);
    }

    public interface OnLongPressListener {
        void onLongPressDown();

        void onLongPressUp();
    }

    public interface OnPauseListener {
        void onPause();
    }

    public interface OnPreparedListener {
        void onPrepared();
    }

    public interface OnProgressChangeListener {
        void onChangeEnd(boolean z);

        void onChangeStart(boolean z);

        void onChanging(boolean z, int i);
    }

    public interface OnSeekCompleteListener {
        void onSeekComplete();
    }

    public interface OnStartListener {
        void onStart();
    }

    public interface OnSubtitleCallback {
        void onError(SubtitleSource subtitleSource);

        void onSuccess(SubtitleSource subtitleSource);
    }

    public interface OnTickListener {
        void onTick(int i, int i2, int i3);
    }

    public interface OnUpdateStatusListener {
        void onUpdateStatus(boolean z, boolean z2, boolean z3);
    }

    public interface OnVideoSizeChangedListener {
        void onVideoSizeChanged(int i, int i2);
    }

    public interface OnWarningListener {
        void onTsSkip(String str, int i, int i2);

        void onWarning(int i, String str, String str2);
    }

    public interface onEventInfoListener {
        void onInfo(int i, int i2);
    }

    int getCurrentPosition();

    int getDuration();

    String getErrorMsg();

    String getPlayerVersion();

    boolean isCompletion();

    boolean isPlaying();

    boolean isPrepared();

    void pause();

    void release();

    void reset();

    void resume();

    void seekTo(int i);

    void start();

    void stop();
}
