package com.mgtv.ssp.feed.control;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgtv.ssp.R;
import com.mgtv.ssp.control.GestureVideoController;
import com.mgtv.ssp.utils.c;
import com.mgtv.ssp.widget.GestureView;
import com.mgtv.ssp.widget.ImmerBottomControlView;

public class ImmersionVideoController extends GestureVideoController implements View.OnClickListener {
    protected ImageView a;

    public ImmersionVideoController(@NonNull Context context) {
        super(context);
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
        setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                ImmersionVideoController.this.togglePlay();
            }
        });
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
            this.mControlWrapper.start();
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
                this.a.setVisibility(8);
                this.a.setSelected(false);
                return;
            } else if (i != 2 && i != 3 && i != 4) {
                return;
            }
        }
        this.a.setSelected(false);
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

    public ImmersionVideoController(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void a() {
        addControlComponent(new ImmerBottomControlView(getContext()));
        addControlComponent(new GestureView(getContext()));
    }

    public ImmersionVideoController(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
