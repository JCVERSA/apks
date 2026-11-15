package com.mgtv.thirdsdk.playcore.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hunantv.imgo.util.b;
import com.hunantv.imgo.util.h;
import com.hunantv.imgo.util.t;
import java.lang.ref.WeakReference;

public class ScreenOrientationContainer extends FrameLayout {
    private static final String TAG = "ScreenOrientationContainer";
    public static boolean isIgnoreScreenChange;
    private boolean canChangeOrientation;
    public int currentOrientation;
    public boolean isAppLocked;
    private boolean isChaosPortrait;
    private boolean isInChaosMode;
    private boolean isSystemLocked;
    protected int mCurrentRotation;
    int mMarginBottom;
    int mMarginLeft;
    int mMarginRight;
    int mMarginTop;
    private OnScreenOrientationChangeListener mOrientationChangeListener;
    protected OrientationEventListener mOrientationEventListener;
    private boolean needChangeScreenMode;
    private final InnerContentObserver observer;

    public static class InnerContentObserver extends ContentObserver {
        private final WeakReference<ScreenOrientationContainer> mWeakReference;

        public InnerContentObserver(ScreenOrientationContainer screenOrientationContainer, Handler handler) {
            super(handler);
            this.mWeakReference = new WeakReference<>(screenOrientationContainer);
        }

        @Override
        public void onChange(boolean z) {
            super.onChange(z);
            ScreenOrientationContainer screenOrientationContainer = this.mWeakReference.get();
            if (screenOrientationContainer != null) {
                screenOrientationContainer.handleChange();
            }
        }
    }

    public interface OnScreenOrientationChangeListener {
        void onScreenOrientationChange(int i);
    }

    public ScreenOrientationContainer(Context context) {
        super(context);
        this.observer = new InnerContentObserver(this, null);
        this.currentOrientation = 1;
        this.mCurrentRotation = 0;
        this.canChangeOrientation = true;
        this.needChangeScreenMode = true;
        init(context);
    }

    private void autoFixedOrientation() {
        if (isFullScreen()) {
            setOrientation(getContext(), 6);
        } else {
            setOrientation(getContext(), 1);
        }
    }

    private boolean canChangeOrientation() {
        return this.canChangeOrientation;
    }

    private boolean contain(View view) {
        return indexOfChild(view) >= 0;
    }

    public void handleChange() {
        post(new Runnable() {
            @Override
            public void run() {
                ScreenOrientationContainer.this.setScreenOrientationAutoMode();
            }
        });
    }

    private void init(Context context) {
        if (isInEditMode()) {
            return;
        }
        if ((context instanceof Activity) && ((Activity) context).getRequestedOrientation() == 0) {
            this.currentOrientation = 2;
        }
        this.mCurrentRotation = getDisplayRotation();
        post(new Runnable() {
            @Override
            public void run() {
                ScreenOrientationContainer.this.setScreenOrientationAutoMode();
                ScreenOrientationContainer.this.getContext().getContentResolver().registerContentObserver(Settings.System.getUriFor("accelerometer_rotation"), true, ScreenOrientationContainer.this.observer);
            }
        });
        this.mOrientationEventListener = new OrientationEventListener(getContext()) {
            @Override
            public void onOrientationChanged(int i) {
                if (ScreenOrientationContainer.this.isInChaosMode) {
                    if (Math.abs(i - 90) < 45 || Math.abs(i - 270) < 45) {
                        if (ScreenOrientationContainer.this.isChaosPortrait) {
                            return;
                        }
                        if (!h.a(ScreenOrientationContainer.this.getContext()) || !h.b() || !h.b(ScreenOrientationContainer.this.getContext())) {
                            ScreenOrientationContainer.this.postDelayed(new Runnable() {
                                @Override
                                public void run() {
                                    ScreenOrientationContainer screenOrientationContainer = ScreenOrientationContainer.this;
                                    screenOrientationContainer.setOrientation(screenOrientationContainer.getContext(), 4);
                                }
                            }, 1000L);
                        }
                        ScreenOrientationContainer.this.isInChaosMode = false;
                        ScreenOrientationContainer.this.mOrientationEventListener.disable();
                        return;
                    }
                    if ((i < 45 || i > 315) && ScreenOrientationContainer.this.isChaosPortrait) {
                        if (!h.a(ScreenOrientationContainer.this.getContext()) || !h.b() || !h.b(ScreenOrientationContainer.this.getContext())) {
                            ScreenOrientationContainer.this.postDelayed(new Runnable() {
                                @Override
                                public void run() {
                                    ScreenOrientationContainer screenOrientationContainer = ScreenOrientationContainer.this;
                                    screenOrientationContainer.setOrientation(screenOrientationContainer.getContext(), 4);
                                }
                            }, 1000L);
                        }
                        ScreenOrientationContainer.this.isInChaosMode = false;
                        ScreenOrientationContainer.this.mOrientationEventListener.disable();
                    }
                }
            }
        };
    }

    public void notifyListener() {
        Log.i("onConfigurationChanged", "onConfigurationChanged 33 " + this.mCurrentRotation + " " + this.currentOrientation);
        OnScreenOrientationChangeListener onScreenOrientationChangeListener = this.mOrientationChangeListener;
        if (onScreenOrientationChangeListener != null) {
            onScreenOrientationChangeListener.onScreenOrientationChange(this.currentOrientation);
        }
    }

    public void setOrientation(Context context, int i) {
        if ((context instanceof Activity) && canChangeOrientation()) {
            ((Activity) context).setRequestedOrientation(i);
        }
    }

    public void changeFullScreenState() {
        if (this.isAppLocked || !canChangeOrientation()) {
            return;
        }
        if (isFullScreen()) {
            setPortrait();
        } else {
            setLandScape();
        }
    }

    public void destroy() {
        getContext().getContentResolver().unregisterContentObserver(this.observer);
    }

    public int getDisplayRotation() {
        Context context = getContext();
        if (context instanceof Activity) {
            try {
                int rotation = ((Activity) context).getWindowManager().getDefaultDisplay().getRotation();
                if (rotation == 1) {
                    return 90;
                }
                if (rotation == 2) {
                    return 180;
                }
                if (rotation == 3) {
                    return 270;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return 0;
    }

    public boolean isFullScreen() {
        return this.currentOrientation == 2;
    }

    public void lockScreen() {
        if (this.isAppLocked) {
            return;
        }
        this.isAppLocked = true;
        autoFixedOrientation();
        if (this.isInChaosMode) {
            this.mOrientationEventListener.disable();
        }
    }

    @Override
    public void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.isAppLocked) {
            return;
        }
        Log.i("onConfigurationChanged", "onConfigurationChanged " + configuration.orientation);
        post(new Runnable() {
            @Override
            public void run() {
                Log.i("onConfigurationChanged", "onConfigurationChanged 11 " + configuration.orientation);
                ScreenOrientationContainer.this.postOnConfigurationChanged(configuration);
            }
        });
    }

    public void onConfigurationChangedCompat(final Configuration configuration) {
        if (this.isAppLocked) {
            return;
        }
        post(new Runnable() {
            @Override
            public void run() {
                ScreenOrientationContainer.this.postOnConfigurationChanged(configuration);
            }
        });
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mOrientationEventListener.disable();
    }

    public void pause() {
        if (this.isInChaosMode) {
            this.mOrientationEventListener.disable();
        }
    }

    public void postOnConfigurationChanged(Configuration configuration) {
        boolean z = h.c() && (h.c(getContext()) || h.d(getContext()));
        int displayRotation = getDisplayRotation();
        if (!z && configuration.orientation == this.currentOrientation && this.mCurrentRotation == displayRotation) {
            return;
        }
        int i = configuration.orientation;
        this.currentOrientation = i;
        this.mCurrentRotation = displayRotation;
        b.f(i == 2);
        Log.i("onConfigurationChanged", "onConfigurationChanged 22 " + configuration.orientation + " " + this.currentOrientation);
        if (h.a(getContext()) && h.b()) {
            post(new Runnable() {
                @Override
                public void run() {
                    ScreenOrientationContainer.this.refreshLayoutForOrientation();
                }
            });
        } else {
            refreshLayoutForOrientation();
        }
    }

    public void refreshLayoutForOrientation() {
        if (isIgnoreScreenChange) {
            return;
        }
        try {
            if (this.currentOrientation != 2) {
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginLayoutParams.leftMargin = this.mMarginLeft;
                    marginLayoutParams.topMargin = this.mMarginTop;
                    marginLayoutParams.rightMargin = this.mMarginRight;
                    marginLayoutParams.bottomMargin = this.mMarginBottom;
                }
                if (layoutParams != null) {
                    layoutParams.height = -1;
                    layoutParams.width = -1;
                    Log.i("onConfigurationChanged", " RESULT width " + layoutParams.width + "+height " + layoutParams.height);
                    setLayoutParams(layoutParams);
                    if (this.needChangeScreenMode && (getContext() instanceof Activity)) {
                        t.a((Activity) getContext(), false);
                    }
                    Object parent = getParent();
                    if (parent instanceof View) {
                        ((View) parent).postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                ScreenOrientationContainer.this.notifyListener();
                            }
                        }, 50L);
                        return;
                    }
                    return;
                }
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = getLayoutParams();
            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                this.mMarginLeft = marginLayoutParams2.leftMargin;
                this.mMarginTop = marginLayoutParams2.topMargin;
                this.mMarginRight = marginLayoutParams2.rightMargin;
                this.mMarginBottom = marginLayoutParams2.bottomMargin;
                marginLayoutParams2.bottomMargin = 0;
                marginLayoutParams2.rightMargin = 0;
                marginLayoutParams2.topMargin = 0;
                marginLayoutParams2.leftMargin = 0;
            }
            if (layoutParams2 != null) {
                layoutParams2.height = -1;
                layoutParams2.width = -1;
                setLayoutParams(layoutParams2);
                Log.i("onConfigurationChanged", " LANDSCAPE width " + layoutParams2.width + "+height " + layoutParams2.height);
            }
            if (this.needChangeScreenMode && (getContext() instanceof Activity)) {
                t.a((Activity) getContext(), true);
            }
            Object parent2 = getParent();
            if (parent2 instanceof View) {
                ((View) parent2).postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        ScreenOrientationContainer.this.notifyListener();
                    }
                }, 50L);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override
    public void removeView(View view) {
        if (contain(view)) {
            super.removeView(view);
        }
    }

    public void resume() {
        if (this.isInChaosMode) {
            this.mOrientationEventListener.enable();
        }
    }

    public void setLandScape() {
        if (this.isSystemLocked) {
            setOrientation(getContext(), 6);
            return;
        }
        this.isInChaosMode = true;
        this.isChaosPortrait = false;
        setOrientation(getContext(), 0);
        this.mOrientationEventListener.enable();
    }

    public void setNeedChangeScreenMode(boolean z) {
        this.needChangeScreenMode = z;
    }

    public void setOrientationChangeListener(OnScreenOrientationChangeListener onScreenOrientationChangeListener) {
        this.mOrientationChangeListener = onScreenOrientationChangeListener;
    }

    public void setPortrait() {
        if (this.isSystemLocked) {
            setOrientation(getContext(), 1);
            return;
        }
        this.isInChaosMode = true;
        this.isChaosPortrait = true;
        setOrientation(getContext(), 1);
        this.mOrientationEventListener.enable();
    }

    public void setScreenOrientationAutoMode() {
        if ((getContext() instanceof Activity) && !this.isAppLocked && canChangeOrientation()) {
            boolean zC = t.c(getContext());
            this.isSystemLocked = zC;
            if (zC) {
                autoFixedOrientation();
            } else {
                setOrientation(getContext(), 4);
            }
        }
    }

    public void setSupportChangeOrientation(boolean z) {
        this.canChangeOrientation = z;
    }

    public void stop() {
        this.isInChaosMode = false;
    }

    public void unlockScreen() {
        if (this.isAppLocked) {
            this.isAppLocked = false;
            if (this.isInChaosMode) {
                this.mOrientationEventListener.enable();
            } else {
                if (this.isSystemLocked) {
                    return;
                }
                setOrientation(getContext(), 4);
            }
        }
    }

    public ScreenOrientationContainer(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.observer = new InnerContentObserver(this, null);
        this.currentOrientation = 1;
        this.mCurrentRotation = 0;
        this.canChangeOrientation = true;
        this.needChangeScreenMode = true;
        init(context);
    }
}
