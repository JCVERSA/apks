package com.transsion.vishaplayersdk.gsyplayer;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.transsion.vishaplayersdk.gsyplayer.builder.GSYVideoOptionBuilder;
import com.transsion.vishaplayersdk.gsyplayer.listener.VideoAllCallBack;
import com.transsion.vishaplayersdk.gsyplayer.utils.OrientationUtils;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoWndView;

public abstract class GSYBaseActivityDetail<T extends GSYVideoWndView> extends AppCompatActivity implements VideoAllCallBack {
    protected boolean isPause;
    protected boolean isPlay;
    protected OrientationUtils orientationUtils;

    public abstract void clickForFullScreen();

    public abstract boolean getDetailOrientationRotateAuto();

    public abstract GSYVideoOptionBuilder getGSYVideoOptionBuilder();

    public abstract T getGSYVideoPlayer();

    public boolean hideActionBarWhenFull() {
        return true;
    }

    public boolean hideStatusBarWhenFull() {
        return true;
    }

    public void initVideo() {
        OrientationUtils orientationUtils = new OrientationUtils(this, getGSYVideoPlayer());
        this.orientationUtils = orientationUtils;
        orientationUtils.setEnable(false);
        if (getGSYVideoPlayer().getFullscreenButton() != null) {
            getGSYVideoPlayer().getFullscreenButton().setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    GSYBaseActivityDetail.this.showFull();
                    GSYBaseActivityDetail.this.clickForFullScreen();
                }
            });
        }
    }

    public void initVideoBuilderMode() {
        initVideo();
        getGSYVideoOptionBuilder().setVideoAllCallBack(this).build(getGSYVideoPlayer());
    }

    public boolean isAutoFullWithSize() {
        return false;
    }

    @Override
    public void onAutoComplete(String str, Object... objArr) {
    }

    @Override
    public void onBackPressed() {
        OrientationUtils orientationUtils = this.orientationUtils;
        if (orientationUtils != null) {
            orientationUtils.backToProtVideo();
        }
        if (GSYVideoADManager.backFromWindowFull(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override
    public void onClickBlank(String str, Object... objArr) {
    }

    @Override
    public void onClickBlankFullscreen(String str, Object... objArr) {
    }

    @Override
    public void onClickResume(String str, Object... objArr) {
    }

    @Override
    public void onClickResumeFullscreen(String str, Object... objArr) {
    }

    @Override
    public void onClickSeekbar(String str, Object... objArr) {
    }

    @Override
    public void onClickSeekbarFullscreen(String str, Object... objArr) {
    }

    @Override
    public void onClickStartError(String str, Object... objArr) {
    }

    @Override
    public void onClickStartIcon(String str, Object... objArr) {
    }

    @Override
    public void onClickStartThumb(String str, Object... objArr) {
    }

    @Override
    public void onClickStop(String str, Object... objArr) {
    }

    @Override
    public void onClickStopFullscreen(String str, Object... objArr) {
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!this.isPlay || this.isPause) {
            return;
        }
        getGSYVideoPlayer().onConfigurationChanged(this, configuration, this.orientationUtils, hideActionBarWhenFull(), hideStatusBarWhenFull());
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (this.isPlay) {
            getGSYVideoPlayer().getCurrentPlayer().release();
        }
        OrientationUtils orientationUtils = this.orientationUtils;
        if (orientationUtils != null) {
            orientationUtils.releaseListener();
        }
    }

    public void onEnterFullscreen(String str, Object... objArr) {
    }

    @Override
    public void onEnterSmallWidget(String str, Object... objArr) {
    }

    @Override
    public void onPause() {
        super.onPause();
        getGSYVideoPlayer().getCurrentPlayer().onVideoPause();
        OrientationUtils orientationUtils = this.orientationUtils;
        if (orientationUtils != null) {
            orientationUtils.setIsPause(true);
        }
        this.isPause = true;
    }

    @Override
    public void onPlayError(String str, Object... objArr) {
    }

    public void onPrepared(String str, Object... objArr) {
        OrientationUtils orientationUtils = this.orientationUtils;
        if (orientationUtils == null) {
            throw new NullPointerException("initVideo() or initVideoBuilderMode() first");
        }
        orientationUtils.setEnable(getDetailOrientationRotateAuto() && !isAutoFullWithSize());
        this.isPlay = true;
    }

    @Override
    public void onQuitFullscreen(String str, Object... objArr) {
        OrientationUtils orientationUtils = this.orientationUtils;
        if (orientationUtils != null) {
            orientationUtils.backToProtVideo();
        }
    }

    @Override
    public void onQuitSmallWidget(String str, Object... objArr) {
    }

    @Override
    public void onResume() {
        super.onResume();
        getGSYVideoPlayer().getCurrentPlayer().onVideoResume();
        OrientationUtils orientationUtils = this.orientationUtils;
        if (orientationUtils != null) {
            orientationUtils.setIsPause(false);
        }
        this.isPause = false;
    }

    public void onStartPrepared(String str, Object... objArr) {
    }

    @Override
    public void onTouchScreenSeekLight(String str, Object... objArr) {
    }

    @Override
    public void onTouchScreenSeekPosition(String str, Object... objArr) {
    }

    @Override
    public void onTouchScreenSeekVolume(String str, Object... objArr) {
    }

    public void showFull() {
        if (this.orientationUtils.getIsLand() != 1) {
            this.orientationUtils.resolveByClick();
        }
        getGSYVideoPlayer().startWindowFullscreen(this, hideActionBarWhenFull(), hideStatusBarWhenFull());
    }
}
