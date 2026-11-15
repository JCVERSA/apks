package com.hunantv.media.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.hunantv.media.p2p.IP2pTask;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.pragma.DebugLog;

public class MgtvNoSeekLoopVideoView extends MgtvLoopVideoView {
    public MgtvNoSeekLoopVideoView(Context context) {
        super(context, new IVideoView.Configuration().setLoopMode(true));
        init();
    }

    private void init() {
        this.mTargetIsLoopMode = true;
        this.mIsLoopMode = true;
    }

    @Override
    public void resetVideoPathLoopImpl(String str, IP2pTask iP2pTask, String str2) throws Throwable {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer == null) {
            DebugLog.e(getLogTag(), "resetVideoPathLoopImpl mMediaPlayer == null return");
            return;
        }
        mgtvMediaPlayer.setReportParams(this.mReportParams);
        this.mFromSurfaceDestroyToPlay = false;
        this.mHasSurfaceHolderDestroy = false;
        this.mMediaPlayer.resetLoopPlay();
        resumeLoadData();
        configImgoPlayer();
        if (this.mSurfaceHolder == null && (!this.mEnableTexture || !isTextureView())) {
            DebugLog.i(getLogTag(), "resetVideoPathLoopImpl mSurfaceHolder == null wait surface attach to window");
            this.mNeedResetLoopPlay = true;
            return;
        }
        int i = this.mStartPosMs;
        if (i <= 0) {
            this.mMediaPlayer.switchLoopSource(this.mReadDataSourceTypeConfig, str, iP2pTask, str2, 0);
        } else {
            this.mMediaPlayer.switchLoopSource(this.mReadDataSourceTypeConfig, str, iP2pTask, str2, i);
            this.mStartPosMs = 0;
        }
    }

    @Override
    public void seekTo(int i) {
    }

    @Override
    public void setStartPosMs(int i) {
    }

    public MgtvNoSeekLoopVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    @Override
    public void seekTo(int i, boolean z) {
    }

    public MgtvNoSeekLoopVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public MgtvNoSeekLoopVideoView(Context context, IVideoView.Configuration configuration) {
        super(context, configuration);
        init();
    }
}
