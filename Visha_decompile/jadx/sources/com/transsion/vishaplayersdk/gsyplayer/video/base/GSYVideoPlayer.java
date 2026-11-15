package com.transsion.vishaplayersdk.gsyplayer.video.base;

import android.content.Context;
import android.util.AttributeSet;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoViewBridge;

public abstract class GSYVideoPlayer extends GSYVideoWndView {
    public GSYVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
    }

    @Override
    public boolean backFromFull(Context context) {
        return GSYVideoManager.backFromWindowFull(context);
    }

    @Override
    public int getFullId() {
        return GSYVideoManager.FULLSCREEN_ID;
    }

    @Override
    public GSYVideoViewBridge getGSYVideoManager() {
        GSYVideoManager.instance().initContext(getContext().getApplicationContext());
        return GSYVideoManager.instance();
    }

    @Override
    public int getSmallId() {
        return GSYVideoManager.SMALL_ID;
    }

    @Override
    public void releaseVideos() {
        GSYVideoManager.releaseAllVideos();
    }

    public GSYVideoPlayer(Context context) {
        super(context);
    }

    public GSYVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GSYVideoPlayer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
