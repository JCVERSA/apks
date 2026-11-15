package com.transsion.vishaplayersdk.playertest;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.widget.NestedScrollView;
import com.hunantv.imgo.net.ImgoErrorStatisticsData;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.transsion.vishaplayersdk.gsyplayer.builder.GSYVideoOptionBuilder;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYVideoProgressListener;
import com.transsion.vishaplayersdk.gsyplayer.listener.LockClickListener;
import com.transsion.vishaplayersdk.gsyplayer.listener.VishaPlayerCallBack;
import com.transsion.vishaplayersdk.gsyplayer.utils.Debuger;
import com.transsion.vishaplayersdk.gsyplayer.utils.OrientationUtils;
import com.transsion.vishaplayersdk.gsyplayer.video.StandardGSYVideoPlayer;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoPlayer;
import com.transsion.vishaplayersdk.playertest.DetailPlayerActivity;
import com.transsion.vishaplayersdk.vishaplayer.VishaPlayer;
import java.util.HashMap;
import org.apache.commons.lang3.BooleanUtils;

public class DetailPlayerActivity extends AppCompatActivity {
    VishaPlayer detailPlayer;
    private boolean isPause;
    private boolean isPlay;
    private OrientationUtils orientationUtils;
    NestedScrollView postDetailNestedScroll;

    private GSYVideoPlayer getCurPlay() {
        return this.detailPlayer.getFullWindowPlayer() != null ? this.detailPlayer.getFullWindowPlayer() : this.detailPlayer;
    }

    private String getUrl() {
        return "MRmRym.Qtcmtyyc.a6509247eea53877";
    }

    public void lambda$onCreate$0(View view, boolean z) {
        OrientationUtils orientationUtils = this.orientationUtils;
        if (orientationUtils != null) {
            orientationUtils.setEnable(!z);
        }
    }

    public static void lambda$onCreate$1(int i, int i2, int i3, int i4) {
    }

    public void lambda$onCreate$2(View view) {
        this.orientationUtils.resolveByClick();
        this.detailPlayer.startWindowFullscreen(this, true, true);
    }

    private void resolveNormalVideoUI() {
        this.detailPlayer.getTitleTextView().setVisibility(8);
        this.detailPlayer.getBackButton().setVisibility(8);
    }

    @Override
    public void onBackPressed() {
        OrientationUtils orientationUtils = this.orientationUtils;
        if (orientationUtils != null) {
            orientationUtils.backToProtVideo();
        }
        if (GSYVideoManager.backFromWindowFull(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!this.isPlay || this.isPause) {
            return;
        }
        this.detailPlayer.onConfigurationChanged(this, configuration, this.orientationUtils, true, true);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_detail_player);
        this.detailPlayer = (VishaPlayer) findViewById(R.id.detail_player);
        this.postDetailNestedScroll = (NestedScrollView) findViewById(R.id.post_detail_nested_scroll);
        String url = getUrl();
        resolveNormalVideoUI();
        OrientationUtils orientationUtils = new OrientationUtils(this, this.detailPlayer);
        this.orientationUtils = orientationUtils;
        orientationUtils.setEnable(false);
        HashMap map = new HashMap();
        map.put("ee", ImgoErrorStatisticsData.C_CRASH);
        map.put("allowCrossProtocolRedirects", BooleanUtils.TRUE);
        new GSYVideoOptionBuilder().setIsTouchWiget(true).setRotateViewAuto(false).setLockLand(false).setAutoFullWithSize(false).setShowFullAnimation(false).setNeedLockFull(true).setUrl(url).setMapHeadData(map).setCacheWithPlay(false).setVideoTitle("测试视频").setPlayPosition(1000).setSeekOnStart(120000L).setVideoAllCallBack(new VishaPlayerCallBack() {
            @Override
            public void onAutoComplete(String str, Object... objArr) {
                super.onAutoComplete(str, objArr);
            }

            @Override
            public void onClickStartError(String str, Object... objArr) {
                super.onClickStartError(str, objArr);
            }

            @Override
            public void onEnterFullscreen(String str, Object... objArr) {
                super.onEnterFullscreen(str, objArr);
                Debuger.printfError("***** onEnterFullscreen **** " + objArr[0]);
                Debuger.printfError("***** onEnterFullscreen **** " + objArr[1]);
            }

            @Override
            public void onPrepared(String str, Object... objArr) {
                Debuger.printfError("***** onPrepared **** " + objArr[0]);
                Debuger.printfError("***** onPrepared **** " + objArr[1]);
                super.onPrepared(str, objArr);
                DetailPlayerActivity.this.orientationUtils.setEnable(true);
                DetailPlayerActivity.this.isPlay = true;
            }

            @Override
            public void onQuitFullscreen(String str, Object... objArr) {
                super.onQuitFullscreen(str, objArr);
                Debuger.printfError("***** onQuitFullscreen **** " + objArr[0]);
                Debuger.printfError("***** onQuitFullscreen **** " + objArr[1]);
                if (DetailPlayerActivity.this.orientationUtils != null) {
                    DetailPlayerActivity.this.orientationUtils.backToProtVideo();
                }
            }
        }).setLockClickListener(new LockClickListener() {
            @Override
            public final void onClick(View view, boolean z) {
                this.a.lambda$onCreate$0(view, z);
            }
        }).setGSYVideoProgressListener(new GSYVideoProgressListener() {
            @Override
            public final void onProgress(int i, int i2, int i3, int i4) {
                DetailPlayerActivity.lambda$onCreate$1(i, i2, i3, i4);
            }
        }).build((StandardGSYVideoPlayer) this.detailPlayer);
        this.detailPlayer.getFullscreenButton().setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.lambda$onCreate$2(view);
            }
        });
        this.detailPlayer.autoPlay();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (this.isPlay) {
            getCurPlay().release();
        }
        OrientationUtils orientationUtils = this.orientationUtils;
        if (orientationUtils != null) {
            orientationUtils.releaseListener();
        }
    }

    @Override
    public void onPause() {
        getCurPlay().onVideoPause();
        super.onPause();
        this.isPause = true;
    }

    @Override
    public void onResume() {
        getCurPlay().onVideoResume(false);
        super.onResume();
        this.isPause = false;
    }
}
