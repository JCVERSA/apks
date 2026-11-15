package com.mgtv.ssp.feed.control;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgtv.ssp.R;
import com.mgtv.ssp.control.BaseVideoController;
import com.mgtv.ssp.control.GestureVideoController;
import com.mgtv.ssp.control.a;
import com.mgtv.ssp.utils.c;
import com.mgtv.ssp.widget.GestureView;
import com.mgtv.ssp.widget.ImmerBottomControlView;
import com.mgtv.thirdsdk.playcore.utils.f;

public class StandardVideoController extends OnVideoTouchController implements View.OnClickListener {
    protected ProgressBar mLoadingProgress;
    protected ImageView mLockButton;
    protected ImageView mPlayBtn;
    protected LinearLayout mReplay;

    public StandardVideoController(@NonNull Context context) {
        this(context, null);
    }

    public void addDefaultControlComponent(String str, boolean z) {
    }

    public void addImmersionControlComponent() {
        addControlComponent(new ImmerBottomControlView(getContext()));
        addControlComponent(new GestureView(getContext()));
    }

    @Override
    public int getLayoutId() {
        return R.layout.mgplayer_layout_standard_control_view;
    }

    @Override
    public void initView() {
        super.initView();
        ImageView imageView = (ImageView) findViewById(R.id.lock);
        this.mLockButton = imageView;
        imageView.setOnClickListener(this);
        this.mLoadingProgress = (ProgressBar) findViewById(R.id.loading);
        ImageView imageView2 = (ImageView) findViewById(R.id.play_btn);
        this.mPlayBtn = imageView2;
        imageView2.setOnClickListener(this);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.lay_replay);
        this.mReplay = linearLayout;
        linearLayout.setOnClickListener(this);
    }

    @Override
    public boolean onBackPressed() {
        if (!isLocked()) {
            return this.mControlWrapper.isFullScreen() ? stopFullScreen() : super.onBackPressed();
        }
        show();
        Toast.makeText(getContext(), R.string.mgplayer_lock_tip, 0).show();
        return true;
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        a aVar = this.mControlWrapper;
        if (aVar != null) {
            if (id == R.id.lock) {
                aVar.b();
            } else if (id == R.id.play_btn) {
                aVar.togglePlay();
            } else if (id == R.id.lay_replay) {
                aVar.reStart();
            }
        }
    }

    @Override
    public void onLockStateChanged(boolean z) {
        if (z) {
            this.mLockButton.setSelected(true);
            Toast.makeText(getContext(), R.string.mgplayer_locked, 0).show();
        } else {
            this.mLockButton.setSelected(false);
            Toast.makeText(getContext(), R.string.mgplayer_unlocked, 0).show();
        }
    }

    @Override
    public void onPlayStateChanged(int i) {
        super.onPlayStateChanged(i);
        if (i != 0) {
            if (i == 11) {
                System.out.println("mLoadingProgress setVisibility(GONE)  playState =" + i);
                this.mLoadingProgress.setVisibility(8);
                this.mLockButton.setVisibility(8);
                this.mLockButton.setSelected(false);
                this.mPlayBtn.setVisibility(8);
                f.a(this.mReplay, 0);
                return;
            }
            if (i != 13) {
                switch (i) {
                    case 2:
                    case 3:
                    case 4:
                        break;
                    case 5:
                    case 7:
                        this.mLoadingProgress.setVisibility(8);
                        f.a(this.mReplay, 8);
                        return;
                    case 6:
                        break;
                    case 8:
                        this.mPlayBtn.setSelected(true);
                        break;
                    case 9:
                        this.mPlayBtn.setSelected(false);
                        System.out.println("mLoadingProgress setVisibility(GONE)  playState =" + i);
                        this.mLoadingProgress.setVisibility(8);
                        f.a(this.mReplay, 8);
                        return;
                    default:
                        return;
                }
            }
            this.mPlayBtn.setVisibility(8);
            System.out.println("mLoadingProgress setVisibility(GONE)  playState =" + i);
            this.mLoadingProgress.setVisibility(8);
            f.a(this.mReplay, 8);
            return;
        }
        this.mLockButton.setSelected(false);
        System.out.println("mLoadingProgress setVisibility(GONE)  playState =" + i);
        this.mLoadingProgress.setVisibility(8);
        f.a(this.mReplay, 8);
    }

    @Override
    public void onPlayerStateChanged(int i) {
        super.onPlayerStateChanged(i);
        if (i == 10) {
            setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.mLockButton.setVisibility(8);
        } else if (i == 11) {
            if (isShowing()) {
                this.mLockButton.setVisibility(0);
            } else {
                this.mLockButton.setVisibility(8);
            }
        }
        if (this.mActivity == null || !hasCutout()) {
            return;
        }
        int requestedOrientation = this.mActivity.getRequestedOrientation();
        int iA = c.a(getContext(), 24.0f);
        int cutoutHeight = getCutoutHeight();
        if (requestedOrientation == 1) {
            ((FrameLayout.LayoutParams) this.mLockButton.getLayoutParams()).setMargins(iA, 0, iA, 0);
            return;
        }
        if (requestedOrientation == 0) {
            int i2 = iA + cutoutHeight;
            ((FrameLayout.LayoutParams) this.mLockButton.getLayoutParams()).setMargins(i2, 0, i2, 0);
        } else if (requestedOrientation == 8) {
            ((FrameLayout.LayoutParams) this.mLockButton.getLayoutParams()).setMargins(iA, 0, iA, 0);
        }
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        this.clickCount++;
        this.handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                if (((GestureVideoController) StandardVideoController.this).clickCount == 1) {
                    if (StandardVideoController.this.isInPlaybackState()) {
                        ((BaseVideoController) StandardVideoController.this).mControlWrapper.a();
                    }
                } else if (((GestureVideoController) StandardVideoController.this).clickCount == 2 && ((GestureVideoController) StandardVideoController.this).mIsDoubleTapTogglePlayEnabled && !StandardVideoController.this.isLocked() && StandardVideoController.this.isInPlaybackState()) {
                    StandardVideoController.this.togglePlay();
                }
                ((GestureVideoController) StandardVideoController.this).handler.removeCallbacksAndMessages(null);
                ((GestureVideoController) StandardVideoController.this).clickCount = 0;
            }
        }, GestureVideoController.timeout);
        return false;
    }

    @Override
    public void onVisibilityChanged(boolean z, Animation animation) {
        if (this.mControlWrapper.isFullScreen()) {
            if (!z) {
                this.mLockButton.setVisibility(8);
                if (animation != null) {
                    this.mLockButton.startAnimation(animation);
                }
            } else if (this.mLockButton.getVisibility() == 8) {
                this.mLockButton.setVisibility(0);
                if (animation != null) {
                    this.mLockButton.startAnimation(animation);
                }
            }
        }
        this.mPlayBtn.setVisibility(8);
    }

    public StandardVideoController(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StandardVideoController(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
    }
}
