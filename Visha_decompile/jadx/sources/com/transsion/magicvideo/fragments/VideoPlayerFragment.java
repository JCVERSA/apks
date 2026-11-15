package com.transsion.magicvideo.fragments;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.p003activity.result.ActivityResult;
import androidx.p003activity.result.ActivityResultCallback;
import androidx.p003activity.result.ActivityResultLauncher;
import androidx.p003activity.result.contract.ActivityResultContracts;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.MediaTimerDialogSheetActivity;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.magicvideo.widgets.VideoPlayerContentView;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.activities.MediaOperateMenuDialogActivity;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.utils.ToastUtils;
import defpackage.af9;
import defpackage.h27;
import defpackage.hb0;
import defpackage.o06;
import defpackage.qz5;
import defpackage.tpb;

public class VideoPlayerFragment extends BaseFragment {
    public VideoPlayerContentView m;
    public PlayVideoData l = new PlayVideoData();
    public ActivityResultLauncher n = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() {
        @Override
        public final void onActivityResult(Object obj) {
            this.a.a0((ActivityResult) obj);
        }
    });

    public class a implements FileOperateUtils.k {
        public a() {
        }

        @Override
        public void d() {
        }

        @Override
        public void g(String str, String str2) {
            hb0.markTrackTwo("vd_vmore_rename_pop_save", "songname", str, "from", "playshow");
        }
    }

    public void T() {
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.resumeCheckData();
        }
    }

    public final void U() {
        boolean zIsInMultiWindowMode = this.mActivity.isInMultiWindowMode();
        boolean zIsInPictureInPictureMode = this.mActivity.isInPictureInPictureMode();
        Log.d("VideoPlayerFragment", "checkMultiWindowMode multiWindow=" + zIsInMultiWindowMode + ", pip=" + zIsInPictureInPictureMode);
        if (zIsInMultiWindowMode && !zIsInPictureInPictureMode) {
            this.mActivity.requestedChangeOrientation(-1);
        }
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.multiWindowModeChanged(zIsInMultiWindowMode);
        }
    }

    public void V() {
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.doAudioBecomingNoisy();
        }
    }

    public void W(int i, KeyEvent keyEvent) {
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView == null) {
            return;
        }
        videoPlayerContentView.doHeadsetsKeyUp(i, keyEvent);
    }

    public void X() {
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.exitVideoPlayView();
        }
    }

    public boolean Y() {
        VideoPlayerContentView videoPlayerContentView = this.m;
        return videoPlayerContentView != null && videoPlayerContentView.hasClickRotate();
    }

    public boolean Z() {
        VideoPlayerContentView videoPlayerContentView = this.m;
        return videoPlayerContentView != null && videoPlayerContentView.isVideoOrientationLocked();
    }

    public final void a0(ActivityResult activityResult) {
        Intent data;
        int resultCode = activityResult.getResultCode();
        if (resultCode == -2) {
            Intent data2 = activityResult.getData();
            if (data2 != null && data2.getIntExtra("click_flag", 0) == 1) {
                this.m.showInfo();
                return;
            }
            return;
        }
        if (resultCode != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        int intExtra = data.getIntExtra("action_flag", 0);
        MediaItem mediaItem = (MediaItem) data.getParcelableExtra(SheetDialogParamsConstant.OUT_PARAM_DATA);
        if (intExtra == 1) {
            MediaTimerDialogSheetActivity.A0(this.mContext);
            return;
        }
        if (intExtra == 3) {
            this.m.deleteVideo((MediaItem) data.getParcelableExtra(SheetDialogParamsConstant.OUT_PARAM_DATA));
            return;
        }
        if (intExtra == 5) {
            this.m.showInfo();
            return;
        }
        if (intExtra == 7) {
            this.m.showEq();
            return;
        }
        if (intExtra == 8) {
            this.m.onSpeedClicked();
            return;
        }
        if (intExtra == 11) {
            MediaOperateMenuDialogActivity.J0(this.mContext);
        } else {
            if (intExtra != 12) {
                return;
            }
            FileOperateUtils fileOperateUtils = new FileOperateUtils(getContext(), mediaItem);
            fileOperateUtils.e0(false);
            fileOperateUtils.f0(new a());
            fileOperateUtils.Y(true, true);
        }
    }

    public final void b0(long j) {
        if (!isAdded() || this.m == null) {
            return;
        }
        if (j > 0) {
            this.l.playPosition = j;
            Log.d("VideoPlayerFragment", "onViewCreated restored playPosition from DB: " + j);
        }
        this.m.setDataDelay(this.l, true);
    }

    public final void c0() {
        final long jL0 = tpb.j0().l0(this.l, null);
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                this.b.b0(jL0);
            }
        });
    }

    public void d0(int i, int i2, Intent intent) {
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.onCallActivityResult(i, i2, intent);
        }
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        super.didReceivedNotification(i, objArr);
        if (i == 1053) {
            VideoPlayerContentView videoPlayerContentView = this.m;
            if (videoPlayerContentView != null) {
                videoPlayerContentView.refrashFar();
                return;
            }
            return;
        }
        if (i != 1056) {
            if (i != 1149) {
                return;
            }
            g0();
        } else {
            VideoPlayerContentView videoPlayerContentView2 = this.m;
            if (videoPlayerContentView2 != null) {
                videoPlayerContentView2.hideLoadingView();
            }
        }
    }

    public void e0() {
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.onClosePictureInPictureMode();
        }
    }

    public void f0(boolean z, Configuration configuration) {
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.onPictureInPictureModeChanged(z, configuration);
        }
    }

    public final void g0() {
        if (this.m != null) {
            LogUtils.w("VideoPlayerFragment", "onPlayListEmpty");
            this.m.exitVideo();
            VideoPlayManager.X().L1();
        }
    }

    public void h0() {
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView == null || videoPlayerContentView.getVisibility() != 0) {
            return;
        }
        this.m.onSystemUiVisibilityChange();
    }

    public void i0() {
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.onUserLeaveHint();
        }
    }

    public void j0() {
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.onVolumeChange();
        }
    }

    public void k0() {
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.onWindowAnimationReady();
        }
    }

    @Override
    public VideoPlayerFragment setBaseActivity(BaseActivity baseActivity) {
        super.setBaseActivity(baseActivity);
        return this;
    }

    public void m0() {
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.setStatusPlayUiShow();
        }
    }

    public void n0() {
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.updateSubtitleVisibility();
        }
    }

    public void o0(boolean z) {
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.updateKeyguardState(z);
        }
    }

    @Override
    public boolean onBackPressed() {
        VideoPlayerContentView videoPlayerContentView = this.m;
        return videoPlayerContentView != null && videoPlayerContentView.onBackPressed();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (bundle != null) {
            try {
                this.l = (PlayVideoData) bundle.getParcelable("video_play_fragment_bean");
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        if (getArguments() != null) {
            this.l = (PlayVideoData) getArguments().getParcelable("video_play_fragment_bean");
        }
        return layoutInflater.inflate(R.layout.fragment_video, viewGroup, false);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.onDestroy();
        }
    }

    @Override
    public void onFinishRequestPermission(int i, boolean z) {
        super.onFinishRequestPermission(i, z);
        if (z) {
            if (i == 1239) {
                qz5.c("allow", "videoplay", 1);
            }
        } else {
            if (i == 1239) {
                qz5.c("deny", "videoplay", 1);
            }
            if (i == 1238 || i == 1239) {
                ToastUtils.s(com.transsion.playercommon.R.string.operation_fail);
            }
        }
    }

    @Override
    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        U();
    }

    @Override
    public void onPause() {
        super.onPause();
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.onPause();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        if (!af9.b) {
            T();
        }
        af9.b = false;
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.onResume();
        }
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            this.l.playPosition = videoPlayerContentView.getPlayPosition();
        }
        bundle.putParcelable("video_play_fragment_bean", this.l);
    }

    @Override
    public void onStart() {
        super.onStart();
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.onStart();
        }
        if (this.mIsAutoRecover) {
            MediaItem mediaItemC0 = VideoPlayManager.X().c0();
            if (mediaItemC0 == null || (mediaItemC0.uri == null && TextUtils.isEmpty(mediaItemC0.data))) {
                Log.w("VideoPlayerFragment", "finish myself");
                this.mActivity.finish();
            }
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        VideoPlayerContentView videoPlayerContentView = this.m;
        if (videoPlayerContentView != null) {
            videoPlayerContentView.onStop();
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) throws Throwable {
        super.onViewCreated(view, bundle);
        o06.f();
        VideoPlayerContentView videoPlayerContentView = (VideoPlayerContentView) view.findViewById(R.id.video_content_view);
        this.m = videoPlayerContentView;
        videoPlayerContentView.setBaseActivity(this.mActivity);
        this.m.setActivityResultLauncher(this.n);
        Log.d("VideoPlayerFragment", "onViewCreated " + this.l);
        if (this.mIsAutoRecover) {
            Log.w("VideoPlayerFragment", "isAutoRecover,not need reset data");
            this.m.setDataDelay(this.l, false);
        } else {
            PlayVideoData playVideoData = this.l;
            if (playVideoData.playPosition != 0 || playVideoData.isPlayComplete || (playVideoData.mediaId <= 0 && TextUtils.isEmpty(playVideoData.path) && TextUtils.isEmpty(this.l.mYoutubeId))) {
                this.m.setDataDelay(this.l, true);
            } else {
                ThreadUtils.l().execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.c0();
                    }
                });
            }
        }
        view.post(new Runnable() {
            @Override
            public final void run() {
                this.b.U();
            }
        });
    }

    @Override
    public void registerPalmIdListeners() {
        super.registerPalmIdListeners();
        h27.c().b(this, 1056);
        h27.c().b(this, 1053);
        h27.c().b(this, 1149);
    }

    @Override
    public void unRegisterPalmIdListeners() {
        super.unRegisterPalmIdListeners();
        h27.c().b(this, 1056);
        h27.c().b(this, 1053);
        h27.c().b(this, 1149);
    }
}
