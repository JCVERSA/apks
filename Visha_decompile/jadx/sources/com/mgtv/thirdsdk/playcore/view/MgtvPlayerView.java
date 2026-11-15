package com.mgtv.thirdsdk.playcore.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.hunantv.imgo.util.q;
import com.mgtv.thirdsdk.playcore.utils.c;

public class MgtvPlayerView extends FrameLayout {
    private static final String TAG = "MgtvPlayerView";
    public String from;
    private FrameLayout mAdControlFrameLayout;
    private FrameLayout mAdFrameLayout;
    private FrameLayout mControlFrameLayout;
    private ImgoPlayerView mVideoPlayer;

    public MgtvPlayerView(Context context) {
        this(context, null, 0);
    }

    public void addFullView(View view) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        removeView(view);
        addView(view, layoutParams);
    }

    public void configPlayer() {
        this.mVideoPlayer.setPlayerHardwareMode(true);
        this.mVideoPlayer.setNetConfig(c.a());
        this.mVideoPlayer.setAccurateSeekEnable(false);
        int iA = q.a(c.f(), -1) * 1000;
        int iA2 = q.a(c.g(), -1) * 1000;
        int iA3 = q.a(c.h(), -1) * 1000;
        if (iA < 0) {
            this.mVideoPlayer.setNetWorkConnectTimeout(10000);
        }
        if (iA2 < 0) {
            this.mVideoPlayer.setDataReceiveTimeout(10000);
        }
        if (iA3 < 0) {
            this.mVideoPlayer.setBufferTimeout(180000);
        }
    }

    public void destory() {
        ImgoPlayerView imgoPlayerView = this.mVideoPlayer;
        if (imgoPlayerView != null) {
            imgoPlayerView.cleanUp();
            this.mVideoPlayer = null;
        }
        if (this.mAdFrameLayout != null) {
            this.mAdFrameLayout = null;
        }
        if (this.mAdControlFrameLayout != null) {
            this.mAdControlFrameLayout = null;
        }
        if (this.mControlFrameLayout != null) {
            this.mControlFrameLayout = null;
        }
    }

    public FrameLayout getAdControlFrameLayout() {
        return this.mAdControlFrameLayout;
    }

    public FrameLayout getAdLayout() {
        return this.mAdFrameLayout;
    }

    public FrameLayout getControlLayout() {
        return this.mControlFrameLayout;
    }

    public ImgoPlayerView getVideoPlayer() {
        return this.mVideoPlayer;
    }

    public void hideRenderView() {
        ImgoPlayerView imgoPlayerView = this.mVideoPlayer;
        if (imgoPlayerView == null) {
            return;
        }
        imgoPlayerView.setVisibility(8);
        this.mVideoPlayer.setAlpha(0.0f);
    }

    public void init() {
        initView();
    }

    public void initAdVideoView() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.mAdFrameLayout = frameLayout;
        addFullView(frameLayout);
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        this.mAdControlFrameLayout = frameLayout2;
        addFullView(frameLayout2);
    }

    public void initControlView() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.mControlFrameLayout = frameLayout;
        addFullView(frameLayout);
    }

    public void initVideoView() {
        this.mVideoPlayer = new ImgoPlayerView(getContext(), c.b(), false);
        configPlayer();
        addFullView(this.mVideoPlayer);
    }

    public void initView() {
        initVideoView();
        initControlView();
        initAdVideoView();
    }

    public void removeSubtitleSource() {
        ImgoPlayerView imgoPlayerView = this.mVideoPlayer;
        if (imgoPlayerView != null) {
            imgoPlayerView.removeSubtitle();
        }
    }

    public void setFrom(String str) {
        this.from = str;
    }

    public void setSubtitleSource(byte[] bArr) {
        ImgoPlayerView imgoPlayerView = this.mVideoPlayer;
        if (imgoPlayerView == null) {
            return;
        }
        imgoPlayerView.setSubtitleSource(bArr);
    }

    public void showRenderView() {
        ImgoPlayerView imgoPlayerView = this.mVideoPlayer;
        if (imgoPlayerView == null) {
            return;
        }
        imgoPlayerView.setVisibility(0);
        this.mVideoPlayer.setAlpha(1.0f);
    }

    public MgtvPlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MgtvPlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
