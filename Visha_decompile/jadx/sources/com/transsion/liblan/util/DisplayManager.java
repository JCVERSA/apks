package com.transsion.liblan.util;

import android.app.Activity;
import android.app.Presentation;
import android.content.Context;
import android.content.DialogInterface;
import android.media.MediaRouter;
import android.os.Bundle;
import android.os.Handler;
import android.view.Display;
import android.view.SurfaceView;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.Observer;
import com.transsion.liblan.R;
import com.transsion.liblan.RendererItem;

public class DisplayManager {
    private static final String TAG = "LAN/DisplayManager";
    private Activity mActivity;
    private DisplayType mDisplayType;
    private MediaRouter mMediaRouter;
    private MediaRouter.SimpleCallback mMediaRouterCallback;
    private SecondaryDisplay mPresentation;
    private RendererItem mRendererItem;
    private LiveData<RendererItem> mSelectedRenderer;
    private boolean mTextureView;
    private int mPresentationId = -1;
    private Observer<RendererItem> mRendererObs = new Observer<RendererItem>() {
        @Override
        public void onChanged(RendererItem rendererItem) {
            if (DisplayManager.this.mRendererItem != rendererItem) {
                DisplayManager.this.mRendererItem = rendererItem;
                DisplayManager.this.updateDisplayType();
            }
        }
    };
    private DialogInterface.OnDismissListener mOnDismissListener = new DialogInterface.OnDismissListener() {
        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            if (dialogInterface == DisplayManager.this.mPresentation) {
                DisplayManager.this.mPresentation = null;
                DisplayManager.this.mPresentationId = -1;
            }
        }
    };

    public enum DisplayType {
        PRIMARY,
        PRESENTATION,
        RENDERER
    }

    public DisplayManager(@NonNull Activity activity, @Nullable LiveData<RendererItem> liveData, boolean z, boolean z2, boolean z3) {
        this.mActivity = activity;
        this.mSelectedRenderer = liveData;
        this.mMediaRouter = (MediaRouter) ContextCompat.getSystemService(activity.getApplicationContext(), MediaRouter.class);
        this.mTextureView = z;
        this.mPresentation = (z2 || z3 || liveData == null || liveData.getValue() != null) ? null : createPresentation();
        LiveData<RendererItem> liveData2 = this.mSelectedRenderer;
        if (liveData2 != null) {
            this.mRendererItem = liveData2.getValue();
            this.mSelectedRenderer.observeForever(this.mRendererObs);
        }
        this.mDisplayType = z3 ? DisplayType.PRIMARY : getCurrentDisplayType();
    }

    private SecondaryDisplay createPresentation() {
        MediaRouter mediaRouter = this.mMediaRouter;
        if (mediaRouter == null) {
            return null;
        }
        MediaRouter.RouteInfo selectedRoute = mediaRouter.getSelectedRoute(2);
        Display presentationDisplay = selectedRoute != null ? selectedRoute.getPresentationDisplay() : null;
        if (presentationDisplay != null) {
            SecondaryDisplay secondaryDisplay = new SecondaryDisplay(this.mActivity, presentationDisplay);
            secondaryDisplay.setOnDismissListener(this.mOnDismissListener);
            try {
                secondaryDisplay.show();
                this.mPresentationId = presentationDisplay.getDisplayId();
                return secondaryDisplay;
            } catch (WindowManager.InvalidDisplayException unused) {
                this.mPresentationId = -1;
            }
        }
        return null;
    }

    private DisplayType getCurrentDisplayType() {
        if (this.mPresentationId != -1) {
            return DisplayType.PRESENTATION;
        }
        return this.mRendererItem != null ? DisplayType.RENDERER : DisplayType.PRIMARY;
    }

    public void removePresentation() {
        if (this.mMediaRouter == null) {
            return;
        }
        SecondaryDisplay secondaryDisplay = this.mPresentation;
        if (secondaryDisplay != null) {
            secondaryDisplay.dismiss();
            this.mPresentation = null;
        }
        updateDisplayType();
    }

    public void updateDisplayType() {
        if (this.mDisplayType != getCurrentDisplayType()) {
            new Handler().postDelayed(new Runnable() {
                @Override
                public void run() {
                    DisplayManager.this.mActivity.recreate();
                }
            }, 100L);
        }
    }

    @Nullable
    public DisplayType getDisplayType() {
        return this.mDisplayType;
    }

    @Nullable
    public SecondaryDisplay getPresentation() {
        return this.mPresentation;
    }

    public boolean isOnRenderer() {
        return this.mDisplayType == DisplayType.RENDERER;
    }

    public boolean isPrimary() {
        return this.mDisplayType == DisplayType.PRIMARY;
    }

    public boolean isSecondary() {
        return this.mDisplayType == DisplayType.PRESENTATION;
    }

    public void release() {
        SecondaryDisplay secondaryDisplay = this.mPresentation;
        if (secondaryDisplay != null) {
            secondaryDisplay.dismiss();
            this.mPresentation = null;
        }
        LiveData<RendererItem> liveData = this.mSelectedRenderer;
        if (liveData != null) {
            liveData.removeObserver(this.mRendererObs);
        }
    }

    public void removeMediaRouterCallback() {
        MediaRouter mediaRouter = this.mMediaRouter;
        if (mediaRouter != null) {
            mediaRouter.removeCallback(this.mMediaRouterCallback);
        }
        this.mMediaRouterCallback = null;
    }

    public boolean setMediaRouterCallback() {
        if (this.mMediaRouter == null || this.mMediaRouterCallback != null) {
            return false;
        }
        MediaRouter.SimpleCallback simpleCallback = new MediaRouter.SimpleCallback() {
            @Override
            public void onRoutePresentationDisplayChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
                int displayId = routeInfo.getPresentationDisplay() != null ? routeInfo.getPresentationDisplay().getDisplayId() : -1;
                if (displayId == DisplayManager.this.mPresentationId) {
                    return;
                }
                DisplayManager.this.mPresentationId = displayId;
                if (displayId == -1) {
                    DisplayManager.this.removePresentation();
                } else {
                    DisplayManager.this.updateDisplayType();
                }
            }
        };
        this.mMediaRouterCallback = simpleCallback;
        this.mMediaRouter.addCallback(2, simpleCallback);
        return true;
    }

    public class SecondaryDisplay extends Presentation {
        public static final String TAG = "LAN/SecondaryDisplay";
        private SurfaceView mSubtitlesSurfaceView;
        private FrameLayout mSurfaceFrame;
        private SurfaceView mSurfaceView;

        public SecondaryDisplay(Context context, Display display) {
            super(context, display);
        }

        public SurfaceView getSubtitlesSurfaceView() {
            return this.mSubtitlesSurfaceView;
        }

        public FrameLayout getSurfaceFrame() {
            return this.mSurfaceFrame;
        }

        public SurfaceView getSurfaceView() {
            return this.mSurfaceView;
        }

        @Override
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            setContentView(R.layout.player_remote);
            FrameLayout frameLayout = (FrameLayout) findViewById(R.id.remote_player_surface_frame);
            this.mSurfaceFrame = frameLayout;
            this.mSurfaceView = (SurfaceView) frameLayout.findViewById(R.id.remote_player_surface);
            SurfaceView surfaceView = (SurfaceView) this.mSurfaceFrame.findViewById(R.id.remote_subtitles_surface);
            this.mSubtitlesSurfaceView = surfaceView;
            surfaceView.setZOrderMediaOverlay(true);
            this.mSubtitlesSurfaceView.getHolder().setFormat(-3);
        }

        public SecondaryDisplay(Context context, Display display, int i) {
            super(context, display, i);
        }
    }
}
