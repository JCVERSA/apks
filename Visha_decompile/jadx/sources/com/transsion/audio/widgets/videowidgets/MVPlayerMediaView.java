package com.transsion.audio.widgets.videowidgets;

import android.content.Context;
import android.graphics.RectF;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.audio.R;
import com.transsion.utils.a;
import defpackage.fx5;

public class MVPlayerMediaView extends FrameLayout implements fx5 {
    private FrameLayout flPlayer;
    private Context mContext;
    private int mH;
    private boolean mIsSurfaceCRecreated;
    private boolean mIsVideoVisible;
    private SurfaceView mMVDisplaySurfaceView;
    private int mResizeMode;
    private final SurfaceHolder.Callback mSHCallback;
    private SurfaceHolder mSurfaceHolder;
    private SurfaceCallback mSurfaceListener;
    private int mVideoHeight;
    private final RectF mVideoRect;
    private int mVideoWidth;
    private int mW;

    public interface SurfaceCallback {
        default void onSurfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        }

        default void onSurfaceCreated(SurfaceHolder surfaceHolder) {
        }

        default void onSurfaceDestroyed(SurfaceHolder surfaceHolder) {
        }
    }

    public MVPlayerMediaView(@NonNull Context context) {
        this(context, null, 0);
    }

    private void init() {
        LayoutInflater.from(getContext()).inflate(R.layout.mv_surface_view, (ViewGroup) this, true);
        SurfaceView surfaceView = (SurfaceView) findViewById(R.id.mv_display_view);
        this.mMVDisplaySurfaceView = surfaceView;
        surfaceView.getHolder().addCallback(this.mSHCallback);
        this.flPlayer = (FrameLayout) findViewById(R.id.fl_player);
        this.mW = a.m(this.mContext);
        int iD = a.d(this.mContext, 257.0f);
        this.mH = iD;
        int i = this.mW;
        this.mVideoWidth = i;
        this.mVideoHeight = iD;
        this.mVideoRect.set(0.0f, 0.0f, i, iD);
    }

    public void lambda$setDisplaySurfaceView$0(boolean z) {
        this.mMVDisplaySurfaceView.setVisibility(z ? 0 : 8);
        if (z) {
            this.mMVDisplaySurfaceView.getHolder().addCallback(this.mSHCallback);
        }
    }

    public void changeVisible(int i, int i2) {
        FrameLayout frameLayout = this.flPlayer;
        if (frameLayout == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i2;
        this.flPlayer.setLayoutParams(layoutParams);
    }

    public void fixVideoSize(int i, int i2, int i3, int i4) {
        float f = (i * 1.0f) / i2;
        float f2 = i3;
        float f3 = i4;
        float f4 = (1.0f * f2) / f3;
        int i5 = this.mResizeMode;
        if (i5 == 0) {
            if (Float.compare(f, f4) == 1) {
                i4 = Math.round(f2 / f);
            } else {
                i3 = Math.round(f3 * f);
            }
            this.mVideoRect.set(0.0f, 0.0f, i3, i4);
            return;
        }
        if (4 != i5) {
            if (3 == i5) {
                this.mVideoRect.set(0.0f, 0.0f, f2, f3);
            }
        } else {
            if (Float.compare(f, f4) == 1) {
                i3 = Math.round(f3 * f);
            } else {
                i4 = Math.round(f2 / f);
            }
            this.mVideoRect.set(0.0f, 0.0f, i3, i4);
        }
    }

    public SurfaceHolder getHolder() {
        return this.mSurfaceHolder;
    }

    public void hideLayout() {
        if (this.mContext == null) {
            return;
        }
        this.mIsVideoVisible = false;
        changeVisible(1, 1);
    }

    @Override
    public boolean onInfo(int i, int i2) {
        return super.onInfo(i, i2);
    }

    @Override
    public void onMediaPlayerStateChange(int i) {
        super.onMediaPlayerStateChange(i);
    }

    @Override
    public void onShowError(Uri uri, int i) {
        super.onShowError(uri, i);
    }

    @Override
    public void onVideoSizeChanged(int i, int i2) {
        super.onVideoSizeChanged(i, i2);
    }

    public void reLayout(boolean z) {
        if (this.flPlayer == null) {
            return;
        }
        if (this.mVideoRect.width() == 0.0f || this.mVideoRect.height() == 0.0f) {
            this.mVideoRect.set(0.0f, 0.0f, this.mW, this.mH);
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.flPlayer.getLayoutParams();
        layoutParams.width = (int) this.mVideoRect.width();
        layoutParams.height = (int) this.mVideoRect.height();
        if (z) {
            this.flPlayer.setLayoutParams(layoutParams);
        }
    }

    public void setDisplaySurfaceView(final boolean z) {
        if (this.mMVDisplaySurfaceView != null) {
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$setDisplaySurfaceView$0(z);
                }
            });
        }
    }

    public void setResizeMode(int i) {
        this.mResizeMode = i;
        fixVideoSize(this.mVideoWidth, this.mVideoHeight, this.mW, this.mH);
    }

    public void setSurfaceListener(SurfaceCallback surfaceCallback) {
        this.mSurfaceListener = surfaceCallback;
    }

    public void setVideoViewSize(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        this.mVideoWidth = i;
        this.mVideoHeight = i2;
        setResizeMode(4);
    }

    public void showLayout() {
        if (this.mContext == null) {
            return;
        }
        this.mIsVideoVisible = true;
        reLayout(true);
    }

    public MVPlayerMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MVPlayerMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mVideoRect = new RectF(0.0f, 0.0f, 1080.0f, 1920.0f);
        this.mResizeMode = 4;
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        this.mW = 0;
        this.mH = 0;
        this.mIsVideoVisible = false;
        this.mSHCallback = new SurfaceHolder.Callback() {
            @Override
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
                if (MVPlayerMediaView.this.mSurfaceListener != null) {
                    MVPlayerMediaView.this.mSurfaceListener.onSurfaceChanged(surfaceHolder, i2, i3, i4);
                }
            }

            @Override
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                MVPlayerMediaView.this.mIsSurfaceCRecreated = true;
                MVPlayerMediaView.this.mSurfaceHolder = surfaceHolder;
                if (MVPlayerMediaView.this.mSurfaceListener != null) {
                    MVPlayerMediaView.this.mSurfaceListener.onSurfaceCreated(surfaceHolder);
                }
            }

            @Override
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                if (MVPlayerMediaView.this.mSurfaceListener != null) {
                    MVPlayerMediaView.this.mSurfaceListener.onSurfaceDestroyed(surfaceHolder);
                }
                MVPlayerMediaView.this.mSurfaceHolder = null;
                MVPlayerMediaView.this.mIsSurfaceCRecreated = false;
            }
        };
        this.mContext = context;
        init();
    }
}
