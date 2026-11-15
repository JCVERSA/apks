package com.mgtv.ssp.feed.control;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgtv.ssp.R;
import com.mgtv.ssp.control.BaseVideoController;
import com.mgtv.ssp.control.GestureVideoController;
import com.mgtv.ssp.utils.c;
import com.mgtv.thirdsdk.playcore.utils.f;

public class FeedVideoController extends OnVideoTouchController implements View.OnClickListener {
    protected ImageView a;
    protected ImageView b;
    protected ProgressBar c;

    public FeedVideoController(@NonNull Context context) {
        this(context, null);
    }

    @Override
    public int getLayoutId() {
        return R.layout.mgplayer_layout_standard_control_view;
    }

    @Override
    public void initView() {
        super.initView();
        ImageView imageView = (ImageView) findViewById(R.id.lock);
        this.a = imageView;
        imageView.setOnClickListener(this);
        this.c = (ProgressBar) findViewById(R.id.loading);
        ImageView imageView2 = (ImageView) findViewById(R.id.play_btn);
        this.b = imageView2;
        imageView2.setOnClickListener(this);
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
        if (id == R.id.lock) {
            this.mControlWrapper.b();
        } else if (id == R.id.play_btn) {
            this.mControlWrapper.togglePlay();
        }
    }

    @Override
    public void onLockStateChanged(boolean z) {
        if (z) {
            this.a.setSelected(true);
            Toast.makeText(getContext(), R.string.mgplayer_locked, 0).show();
        } else {
            this.a.setSelected(false);
            Toast.makeText(getContext(), R.string.mgplayer_unlocked, 0).show();
        }
    }

    @Override
    public void onPlayStateChanged(int i) {
        super.onPlayStateChanged(i);
        if (i != 0) {
            if (i == 11) {
                System.out.println("mLoadingProgress setVisibility(GONE)  playState =" + i);
                this.c.setVisibility(8);
                this.a.setVisibility(8);
                this.a.setSelected(false);
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
                        this.c.setVisibility(0);
                        return;
                    case 6:
                        break;
                    case 8:
                        this.b.setSelected(true);
                        break;
                    case 9:
                        this.b.setSelected(false);
                        System.out.println("mLoadingProgress setVisibility(GONE)  playState =" + i);
                        this.c.setVisibility(8);
                        return;
                    default:
                        return;
                }
            }
            this.b.setVisibility(8);
            System.out.println("mLoadingProgress setVisibility(GONE)  playState =" + i);
            this.c.setVisibility(8);
            return;
        }
        this.a.setSelected(false);
        System.out.println("mLoadingProgress setVisibility(GONE)  playState =" + i);
        this.c.setVisibility(8);
    }

    @Override
    public void onPlayerStateChanged(int i) {
        super.onPlayerStateChanged(i);
        if (i == 10) {
            setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.a.setVisibility(8);
        } else if (i == 11) {
            if (isShowing()) {
                this.a.setVisibility(0);
            } else {
                this.a.setVisibility(8);
            }
        }
        if (this.mActivity == null || !hasCutout()) {
            return;
        }
        int requestedOrientation = this.mActivity.getRequestedOrientation();
        int iA = c.a(getContext(), 24.0f);
        int cutoutHeight = getCutoutHeight();
        if (requestedOrientation == 1) {
            ((FrameLayout.LayoutParams) this.a.getLayoutParams()).setMargins(iA, 0, iA, 0);
            return;
        }
        if (requestedOrientation == 0) {
            int i2 = iA + cutoutHeight;
            ((FrameLayout.LayoutParams) this.a.getLayoutParams()).setMargins(i2, 0, i2, 0);
        } else if (requestedOrientation == 8) {
            ((FrameLayout.LayoutParams) this.a.getLayoutParams()).setMargins(iA, 0, iA, 0);
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
                if (((GestureVideoController) FeedVideoController.this).clickCount == 1) {
                    if (FeedVideoController.this.isInPlaybackState()) {
                        ((BaseVideoController) FeedVideoController.this).mControlWrapper.a();
                    }
                } else if (((GestureVideoController) FeedVideoController.this).clickCount == 2 && ((GestureVideoController) FeedVideoController.this).mIsDoubleTapTogglePlayEnabled && !FeedVideoController.this.isLocked() && FeedVideoController.this.isInPlaybackState()) {
                    FeedVideoController.this.togglePlay();
                }
                ((GestureVideoController) FeedVideoController.this).handler.removeCallbacksAndMessages(null);
                ((GestureVideoController) FeedVideoController.this).clickCount = 0;
            }
        }, GestureVideoController.timeout);
        return false;
    }

    @Override
    public void onVisibilityChanged(boolean z, Animation animation) {
        if (this.mControlWrapper.isFullScreen()) {
            if (!z) {
                this.a.setVisibility(8);
                if (animation != null) {
                    this.a.startAnimation(animation);
                    return;
                }
                return;
            }
            if (this.a.getVisibility() == 8) {
                this.a.setVisibility(0);
                if (animation != null) {
                    this.a.startAnimation(animation);
                }
            }
        }
    }

    @Override
    public void setLockButtonVisibility(int i) {
        f.a(this.a, i);
    }

    public FeedVideoController(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FeedVideoController(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
    }
}
