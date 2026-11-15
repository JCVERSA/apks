package com.transsion.vishaplayersdk.gsyplayer;

import android.content.res.Configuration;
import android.view.View;
import com.transsion.vishaplayersdk.gsyplayer.builder.GSYVideoOptionBuilder;
import com.transsion.vishaplayersdk.gsyplayer.listener.VishaPlayerCallBack;
import com.transsion.vishaplayersdk.gsyplayer.utils.OrientationUtils;
import com.transsion.vishaplayersdk.gsyplayer.video.GSYADVideoPlayer;
import com.transsion.vishaplayersdk.gsyplayer.video.StandardGSYVideoPlayer;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoPlayer;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoWndView;

public abstract class GSYBaseADActivityDetail<T extends GSYVideoWndView, R extends GSYADVideoPlayer> extends GSYBaseActivityDetail<T> {
    protected OrientationUtils mADOrientationUtils;

    @Override
    public void clickForFullScreen() {
    }

    public abstract GSYVideoOptionBuilder getGSYADVideoOptionBuilder();

    public abstract R getGSYADVideoPlayer();

    @Override
    public void initVideo() {
        super.initVideo();
        OrientationUtils orientationUtils = new OrientationUtils(this, getGSYADVideoPlayer());
        this.mADOrientationUtils = orientationUtils;
        orientationUtils.setEnable(false);
        if (getGSYADVideoPlayer().getFullscreenButton() != null) {
            getGSYADVideoPlayer().getFullscreenButton().setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    GSYBaseADActivityDetail.this.showADFull();
                    GSYBaseADActivityDetail.this.clickForFullScreen();
                }
            });
        }
    }

    @Override
    public void initVideoBuilderMode() {
        super.initVideoBuilderMode();
        getGSYADVideoOptionBuilder().setVideoAllCallBack(new VishaPlayerCallBack() {
            /* JADX WARN: Type inference failed for: r1v18, types: [com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoWndView] */
            /* JADX WARN: Type inference failed for: r1v23, types: [com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoWndView] */
            /* JADX WARN: Type inference failed for: r1v9, types: [com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoWndView] */
            @Override
            public void onAutoComplete(String str, Object... objArr) {
                GSYBaseADActivityDetail.this.getGSYADVideoPlayer().getCurrentPlayer().release();
                GSYBaseADActivityDetail.this.getGSYADVideoPlayer().onVideoReset();
                GSYBaseADActivityDetail.this.getGSYADVideoPlayer().setVisibility(8);
                GSYBaseADActivityDetail.this.getGSYVideoPlayer().getCurrentPlayer().startAfterPrepared();
                if (GSYBaseADActivityDetail.this.getGSYADVideoPlayer().getCurrentPlayer().isIfCurrentIsFullscreen()) {
                    GSYBaseADActivityDetail.this.getGSYADVideoPlayer().removeFullWindowViewOnly();
                    if (GSYBaseADActivityDetail.this.getGSYVideoPlayer().getCurrentPlayer().isIfCurrentIsFullscreen()) {
                        return;
                    }
                    GSYBaseADActivityDetail.this.showFull();
                    GSYBaseADActivityDetail.this.getGSYVideoPlayer().setSaveBeforeFullSystemUiVisibility(GSYBaseADActivityDetail.this.getGSYADVideoPlayer().getSaveBeforeFullSystemUiVisibility());
                }
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoWndView] */
            /* JADX WARN: Type inference failed for: r1v4, types: [com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoWndView] */
            @Override
            public void onQuitFullscreen(String str, Object... objArr) {
                OrientationUtils orientationUtils = GSYBaseADActivityDetail.this.mADOrientationUtils;
                if (orientationUtils != null) {
                    orientationUtils.backToProtVideo();
                }
                if (GSYBaseADActivityDetail.this.getGSYVideoPlayer().getCurrentPlayer().isIfCurrentIsFullscreen()) {
                    GSYBaseADActivityDetail.this.getGSYVideoPlayer().onBackFullscreen();
                }
            }

            @Override
            public void onStartPrepared(String str, Object... objArr) {
                super.onStartPrepared(str, objArr);
                GSYBaseADActivityDetail gSYBaseADActivityDetail = GSYBaseADActivityDetail.this;
                gSYBaseADActivityDetail.mADOrientationUtils.setEnable(gSYBaseADActivityDetail.getDetailOrientationRotateAuto());
            }
        }).build((StandardGSYVideoPlayer) getGSYADVideoPlayer());
    }

    public boolean isADStarted() {
        return (getGSYADVideoPlayer().getCurrentPlayer().getCurrentState() < 0 || getGSYADVideoPlayer().getCurrentPlayer().getCurrentState() == 0 || getGSYADVideoPlayer().getCurrentPlayer().getCurrentState() == 6) ? false : true;
    }

    public abstract boolean isNeedAdOnStart();

    @Override
    public void onBackPressed() {
        OrientationUtils orientationUtils = this.mADOrientationUtils;
        if (orientationUtils != null) {
            orientationUtils.backToProtVideo();
        }
        if (GSYVideoADManager.backFromWindowFull(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        boolean z = this.isPlay;
        if (!this.isPause && getGSYADVideoPlayer().getVisibility() == 0 && isADStarted()) {
            this.isPlay = false;
            getGSYADVideoPlayer().getCurrentPlayer().onConfigurationChanged(this, configuration, this.mADOrientationUtils, hideActionBarWhenFull(), hideStatusBarWhenFull());
        }
        super.onConfigurationChanged(configuration);
        this.isPlay = z;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        GSYVideoADManager.releaseAllVideos();
        OrientationUtils orientationUtils = this.mADOrientationUtils;
        if (orientationUtils != null) {
            orientationUtils.releaseListener();
        }
    }

    @Override
    public void onEnterFullscreen(String str, Object... objArr) {
        super.onEnterFullscreen(str, objArr);
        ((GSYVideoPlayer) objArr[1]).getBackButton().setVisibility(8);
    }

    @Override
    public void onPause() {
        super.onPause();
        GSYVideoADManager.onPause();
    }

    @Override
    public void onPrepared(String str, Object... objArr) {
        super.onPrepared(str, objArr);
        if (isNeedAdOnStart()) {
            startAdPlay();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        GSYVideoADManager.onResume();
    }

    @Override
    public void onStartPrepared(String str, Object... objArr) {
        super.onStartPrepared(str, objArr);
    }

    public void showADFull() {
        if (this.mADOrientationUtils.getIsLand() != 1) {
            this.mADOrientationUtils.resolveByClick();
        }
        getGSYADVideoPlayer().startWindowFullscreen(this, hideActionBarWhenFull(), hideStatusBarWhenFull());
    }

    @Override
    public void showFull() {
        if (this.orientationUtils.getIsLand() != 1) {
            this.orientationUtils.resolveByClick();
        }
        getGSYVideoPlayer().startWindowFullscreen(this, hideActionBarWhenFull(), hideStatusBarWhenFull());
    }

    public void startAdPlay() {
        getGSYADVideoPlayer().setVisibility(0);
        getGSYADVideoPlayer().startPlay();
        if (getGSYVideoPlayer().getCurrentPlayer().isIfCurrentIsFullscreen()) {
            showADFull();
            getGSYADVideoPlayer().setSaveBeforeFullSystemUiVisibility(getGSYVideoPlayer().getSaveBeforeFullSystemUiVisibility());
        }
    }
}
