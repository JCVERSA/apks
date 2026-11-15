package com.transsion.vishaplayersdk.vishaplayer;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.blankj.utilcode.util.LogUtils;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;
import com.transsion.vishaplayersdk.gsyplayer.utils.CommonUtil;
import com.transsion.vishaplayersdk.gsyplayer.utils.Debuger;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoControlView;
import com.transsion.vishaplayersdk.gsyplayer.video.base.GSYVideoStateView;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.ClarityDialog;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.SubtitleDialog;
import com.transsion.vishaplayersdk.vishaplayer.VishaShortVideoPlayer;
import com.transsion.vishaplayersdk.widgets.ErrorRefreshLayer;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.wz5;
import java.util.Map;

public class VishaShortVideoPlayer extends VishaPlayer {
    private static final String TAG = "VishaShortVideoPlayer";
    private LinearLayout mLlPlayProgress;
    private OnProgressChangeListener mProgressChangeListener;

    public interface OnProgressChangeListener extends OSSeekbar.c {
        @Override
        void onProgressChanged(@Nullable OSSeekbar oSSeekbar, int i, float f, boolean z);

        @Override
        default void onStartTrackingTouch(@Nullable OSSeekbar oSSeekbar) {
        }

        @Override
        default void onStopTrackingTouch(@Nullable OSSeekbar oSSeekbar) {
        }
    }

    public VishaShortVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
    }

    private void expandTouchArea() {
        final View view = (View) this.mLlPlayProgress.getParent();
        view.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$expandTouchArea$3(view);
            }
        });
    }

    private void initListener() {
        OSSeekbar oSSeekbar = this.mOsSeekbar;
        if (oSSeekbar != null) {
            oSSeekbar.setOnProgressChangedListener(new OSSeekbar.c() {
                @Override
                public void onProgressChanged(@Nullable OSSeekbar oSSeekbar2, int i, float f, boolean z) {
                    if (oSSeekbar2 == null) {
                        return;
                    }
                    if (VishaShortVideoPlayer.this.mProgressChangeListener != null) {
                        VishaShortVideoPlayer.this.mProgressChangeListener.onProgressChanged(oSSeekbar2, i, f, z);
                    }
                    String strStringForTime = CommonUtil.stringForTime((oSSeekbar2.getProgress() * VishaShortVideoPlayer.this.getDuration()) / 100);
                    if (((GSYVideoControlView) VishaShortVideoPlayer.this).mProgressTextView != null) {
                        ((GSYVideoControlView) VishaShortVideoPlayer.this).mProgressTextView.setText(strStringForTime);
                    }
                    if (((GSYVideoControlView) VishaShortVideoPlayer.this).mProgressDuration != null) {
                        ((GSYVideoControlView) VishaShortVideoPlayer.this).mProgressDuration.setText("/" + CommonUtil.stringForTime(VishaShortVideoPlayer.this.getDuration()));
                    }
                }

                @Override
                public void onStartTrackingTouch(@Nullable OSSeekbar oSSeekbar2) {
                    if (((GSYVideoControlView) VishaShortVideoPlayer.this).mProgressTimeDialog != null) {
                        ((GSYVideoControlView) VishaShortVideoPlayer.this).mProgressTimeDialog.setVisibility(0);
                    }
                    ((GSYVideoControlView) VishaShortVideoPlayer.this).mHadSeekTouch = true;
                    ((GSYVideoControlView) VishaShortVideoPlayer.this).mSeekProgress = oSSeekbar2.getProgress();
                    PlayHandler.getInstance().mProgressChange = true;
                }

                @Override
                public void onStopTrackingTouch(@Nullable OSSeekbar oSSeekbar2) {
                    if (((GSYVideoControlView) VishaShortVideoPlayer.this).mProgressTimeDialog != null) {
                        ((GSYVideoControlView) VishaShortVideoPlayer.this).mProgressTimeDialog.setVisibility(8);
                    }
                    ((GSYVideoControlView) VishaShortVideoPlayer.this).mHadSeekTouch = false;
                    if (((GSYVideoStateView) VishaShortVideoPlayer.this).mVideoAllCallBack != null && VishaShortVideoPlayer.this.isCurrentMediaListener()) {
                        if (VishaShortVideoPlayer.this.isIfCurrentIsFullscreen()) {
                            Debuger.printfLog("onClickSeekbarFullscreen");
                            ((GSYVideoStateView) VishaShortVideoPlayer.this).mVideoAllCallBack.onClickSeekbarFullscreen(((GSYVideoStateView) VishaShortVideoPlayer.this).mOriginUrl, ((GSYVideoStateView) VishaShortVideoPlayer.this).mTitle, this);
                        } else {
                            Debuger.printfLog("onClickSeekbar");
                            ((GSYVideoStateView) VishaShortVideoPlayer.this).mVideoAllCallBack.onClickSeekbar(((GSYVideoStateView) VishaShortVideoPlayer.this).mOriginUrl, ((GSYVideoStateView) VishaShortVideoPlayer.this).mTitle, this);
                        }
                    }
                    if (VishaShortVideoPlayer.this.getGSYVideoManager() != null && ((GSYVideoStateView) VishaShortVideoPlayer.this).mHadPlay) {
                        try {
                            int progress = (oSSeekbar2.getProgress() * VishaShortVideoPlayer.this.getDuration()) / 100;
                            ((GSYVideoControlView) VishaShortVideoPlayer.this).mProgressTimeDialog.setVisibility(8);
                            VishaShortVideoPlayer.this.seekTo(progress);
                        } catch (Exception e) {
                            Debuger.printfWarning(e.toString());
                        }
                    }
                    wz5.N("seekbar");
                    int progress2 = oSSeekbar2.getProgress() - ((GSYVideoControlView) VishaShortVideoPlayer.this).mSeekProgress;
                    wz5.W(progress2 > 0, Math.abs((progress2 * VishaShortVideoPlayer.this.getDuration()) / 100));
                    ((GSYVideoControlView) VishaShortVideoPlayer.this).mHadSeekTouch = false;
                }
            });
        }
    }

    public void lambda$expandTouchArea$3(View view) {
        int height = this.mOsSeekbar.getHeight();
        int height2 = this.mLlPlayProgress.getHeight();
        if (height > height2) {
            int i = (height - height2) / 2;
            Rect rect = new Rect();
            this.mLlPlayProgress.getHitRect(rect);
            rect.top -= i;
            rect.bottom += i;
            view.setTouchDelegate(new TouchDelegate(rect, this.mLlPlayProgress));
        }
    }

    public void lambda$initShortVideoControlViewListeners$0(View view) {
        wz5.g();
        ClarityDialog.newInstance().setCallback(new ClarityDialog.ClarityCallback() {
            @Override
            public final void switchResolution(VideoDefinition videoDefinition) {
                this.a.lambda$onClick$5(videoDefinition);
            }
        }).showListDialog(getActivityContext(), "clarity");
    }

    public void lambda$initShortVideoControlViewListeners$1(View view) {
        wz5.f0(PlayHandler.getInstance().mCureentSubTitle);
        wz5.d0(PlayHandler.getInstance().mCureentSubTitle);
        SubtitleDialog.newInstance().setCallback(new SubtitleDialog.SubtitleCallback() {
            @Override
            public final void update(String str) {
                this.a.appliedSubtitle(str);
            }
        }).showListDialog(getActivityContext(), AuthInfo.Component.CODE_SUBTITLE);
    }

    public static void lambda$initShortVideoControlViewListeners$2(View view) {
    }

    @Override
    public void changeUiToNormal() {
        super.changeUiToNormal();
        setViewShowState(this.mStartButton, 8);
    }

    @Override
    public void changeUiToPauseShow() {
        super.changeUiToPauseShow();
        setViewShowState(this.mStartButton, isNetworkBlockErrorShowing() ? 8 : 0);
    }

    @Override
    public void changeUiToPlayingBufferingClear() {
        super.changeUiToPlayingBufferingClear();
        setViewShowState(this.mStartButton, 8);
    }

    @Override
    public void changeUiToPlayingShow() {
        super.changeUiToPlayingShow();
        setViewShowState(this.mStartButton, 8);
    }

    @Override
    public void changeUiToPreparingShow() {
        super.changeUiToPreparingShow();
        setViewShowState(this.mStartButton, 8);
    }

    public ImageView getBottomGradientBg() {
        return this.mIvBottomGradientBg;
    }

    public ImageView getBottomTitleLeftTag() {
        return this.mIvBottomTitleLeftTag;
    }

    public ImageView getBottomTitleRightArrow() {
        return this.mIvBottomTitleRightArrow;
    }

    public ImageView getClarityImageView() {
        return this.mIvClarity;
    }

    public ImageView getLanguageImageView() {
        return this.mIvLanguage;
    }

    @Override
    public int getLayoutId() {
        return R.layout.layout_video_contoller_vertical;
    }

    public LinearLayout getLlBottomTitleLayout() {
        return this.mLlBottomTitle;
    }

    public OSSeekbar getSeekBar() {
        return this.mOsSeekbar;
    }

    public boolean hadPrepared() {
        return this.mHadPrepared;
    }

    @Override
    public void hideAllWidget() {
        LogUtils.j(TAG, "hideAllWidget:false");
    }

    @Override
    public void initShortVideoControlViewListeners() {
        initListener();
        ImageView imageView = this.mIvClarity;
        if (imageView != null) {
            imageView.setOnClickListener(this);
            this.mIvClarity.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.lambda$initShortVideoControlViewListeners$0(view);
                }
            });
        }
        ImageView imageView2 = this.mIvLanguage;
        if (imageView2 != null) {
            imageView2.setOnClickListener(this);
            this.mIvLanguage.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.lambda$initShortVideoControlViewListeners$1(view);
                }
            });
        }
        LinearLayout linearLayout = this.mLlBottomTitle;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    VishaShortVideoPlayer.lambda$initShortVideoControlViewListeners$2(view);
                }
            });
        }
    }

    @Override
    public void initShortVideoControlViews() {
        this.mLlPlayProgress = (LinearLayout) findViewById(R.id.play_progress_container);
        this.mIvClarity = (ImageView) findViewById(R.id.iv_clarity);
        this.mIvLanguage = (ImageView) findViewById(R.id.iv_language);
        this.mOsSeekbar = (OSSeekbar) findViewById(R.id.os_seekbar);
        this.mLlBottomTitle = (LinearLayout) findViewById(R.id.ll_bottom_title);
        this.mTvBottomTitle = (TextView) findViewById(R.id.tv_bottom_title);
        this.mIvBottomTitleLeftTag = (ImageView) findViewById(R.id.iv_bottom_title_left_tag);
        this.mIvBottomTitleRightArrow = (ImageView) findViewById(R.id.iv_bottom_title_right_arrow);
        expandTouchArea();
        this.mIvBottomGradientBg = (ImageView) findViewById(R.id.iv_bottom_gradient_bg);
    }

    public boolean isErrorShow() {
        ViewGroup viewGroup = this.mErrorContainer;
        if (viewGroup == null || viewGroup.getVisibility() != 0) {
            return false;
        }
        for (Map.Entry<Integer, ErrorRefreshLayer> entry : this.mErrorlayersMap.entrySet()) {
            int iIntValue = entry.getKey().intValue();
            ErrorRefreshLayer value = entry.getValue();
            if (iIntValue == 1000 || iIntValue == 1001) {
                if (value.getVisibility() == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isNetworkBlockErrorShow() {
        return isNetworkBlockErrorShowing();
    }

    public boolean isVipShow() {
        View view = this.mLoginOpenVipContainer;
        return view != null && view.getVisibility() == 0;
    }

    public void setBottomGradientBgVisibility(boolean z) {
        ImageView imageView = this.mIvBottomGradientBg;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    public void setBottomText(String str) {
        TextView textView = this.mTvBottomTitle;
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override
    public void setProgressAndTime(int i, int i2, int i3, int i4, boolean z) {
        super.setProgressAndTime(i, i2, i3, i4, z);
        OSSeekbar oSSeekbar = this.mOsSeekbar;
        if (oSSeekbar != null) {
            if (i != 0 || z) {
                oSSeekbar.setProgress(i);
            }
        }
    }

    public void setProgressChangeListener(OnProgressChangeListener onProgressChangeListener) {
        this.mProgressChangeListener = onProgressChangeListener;
    }

    @Override
    public void touchDoubleUp() {
        LogUtils.j(TAG, "touchDoubleUp");
    }

    public VishaShortVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VishaShortVideoPlayer(Context context) {
        super(context);
    }
}
