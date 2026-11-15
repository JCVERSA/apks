package com.mgadplus.viewgroup.dynamicview;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import defpackage.mpd;
import java.lang.ref.WeakReference;

public class ScreenOrientationContainer extends FrameLayout {
    public static final int MSG_CHANGE_TO_SENSOR = 1;
    public static WeakReference w;
    public boolean b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public d i;
    public e j;
    public SensorManager k;
    public Sensor l;
    public boolean m;
    public boolean mFromUser;
    public boolean mScreenLocked;
    public boolean n;
    public int o;
    public c p;
    public boolean q;
    public int r;
    public boolean s;
    public boolean t;
    public int u;
    public ContentObserver v;

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override
        public void onGlobalLayout() {
            ScreenOrientationContainer.this.b = true;
            ScreenOrientationContainer screenOrientationContainer = ScreenOrientationContainer.this;
            screenOrientationContainer.d = screenOrientationContainer.getLayoutParams().width;
            ScreenOrientationContainer screenOrientationContainer2 = ScreenOrientationContainer.this;
            screenOrientationContainer2.c = screenOrientationContainer2.getLayoutParams().height;
            ScreenOrientationContainer.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }

    public class b implements ViewTreeObserver.OnGlobalLayoutListener {
        public b() {
        }

        @Override
        public void onGlobalLayout() {
            ScreenOrientationContainer.this.setLandScape();
            ((Activity) ScreenOrientationContainer.this.getContext()).setRequestedOrientation(0);
            ScreenOrientationContainer.this.unRegisterSensor();
            ScreenOrientationContainer.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }

    public interface c {
        void onScreenOrientationChange(int i);
    }

    public class d extends Handler {
        public WeakReference a;

        public d(ScreenOrientationContainer screenOrientationContainer) {
            this.a = new WeakReference(screenOrientationContainer);
        }

        @Override
        public void handleMessage(Message message) {
            ScreenOrientationContainer screenOrientationContainer;
            if (message.what == 1 && (screenOrientationContainer = (ScreenOrientationContainer) this.a.get()) != null) {
                screenOrientationContainer.mFromUser = false;
                ((Activity) screenOrientationContainer.getContext()).setRequestedOrientation(4);
            }
        }
    }

    public static class e implements SensorEventListener {
        public WeakReference a;

        public e(ScreenOrientationContainer screenOrientationContainer) {
            this.a = new WeakReference(screenOrientationContainer);
        }

        @Override
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override
        public void onSensorChanged(SensorEvent sensorEvent) {
            ScreenOrientationContainer screenOrientationContainer = (ScreenOrientationContainer) this.a.get();
            if (screenOrientationContainer == null || !(screenOrientationContainer.getContext() instanceof Activity) || screenOrientationContainer.mScreenLocked) {
                return;
            }
            float[] fArr = sensorEvent.values;
            float f = fArr[0];
            float f2 = fArr[1];
            int requestedOrientation = ((Activity) screenOrientationContainer.getContext()).getRequestedOrientation();
            if (requestedOrientation == 0 || requestedOrientation == 8 || requestedOrientation == 6 || requestedOrientation == 1 || requestedOrientation == 7) {
                if (f2 > 5.0f && f2 - f > 4.5f) {
                    if (requestedOrientation == 1 || requestedOrientation == 7) {
                        if (screenOrientationContainer.mFromUser) {
                            screenOrientationContainer.i.sendEmptyMessageDelayed(1, 300L);
                            return;
                        } else {
                            ((Activity) screenOrientationContainer.getContext()).setRequestedOrientation(4);
                            return;
                        }
                    }
                    return;
                }
                if ((f <= 5.0f || f - f2 <= 4.5f) && (f >= -5.0f || f2 - f <= 4.0f)) {
                    return;
                }
                if (requestedOrientation == 0 || requestedOrientation == 8 || requestedOrientation == 6) {
                    if (screenOrientationContainer.mFromUser) {
                        screenOrientationContainer.i.sendEmptyMessageDelayed(1, 300L);
                    } else {
                        ((Activity) screenOrientationContainer.getContext()).setRequestedOrientation(4);
                    }
                }
            }
        }
    }

    public class f extends ContentObserver {
        public f(Handler handler) {
            super(handler);
        }

        @Override
        public void onChange(boolean z) {
            super.onChange(z);
            ScreenOrientationContainer screenOrientationContainer = ScreenOrientationContainer.this;
            screenOrientationContainer.n = mpd.l(screenOrientationContainer.getContext());
            ScreenOrientationContainer.this.j();
        }
    }

    public ScreenOrientationContainer(Context context) {
        super(context);
        this.o = 1;
        this.q = false;
        this.r = 1;
        this.u = 1;
        k();
    }

    public void clickFullScreenView() {
        if (this.q) {
            return;
        }
        d dVar = this.i;
        if (dVar != null) {
            dVar.removeMessages(1);
        }
        this.mFromUser = true;
        if (getContext() instanceof Activity) {
            if (isFullScreen()) {
                setPortrait();
            } else {
                setLandScape();
            }
        }
    }

    public boolean contain(View view) {
        return indexOfChild(view) >= 0;
    }

    public void destroy() {
        getContext().getContentResolver().unregisterContentObserver(this.v);
        unRegisterSensor();
    }

    public Context getCurentActivity() {
        WeakReference weakReference = w;
        return (weakReference == null || weakReference.get() == null) ? getContext() : (Context) w.get();
    }

    public int getDisplayRotation() {
        Context context = getContext();
        if (context != null && (context instanceof Activity)) {
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
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public final void i() {
        if (isFullScreen()) {
            if (getDisplayRotation() == 270) {
                ((Activity) getContext()).setRequestedOrientation(8);
                return;
            } else {
                ((Activity) getContext()).setRequestedOrientation(0);
                return;
            }
        }
        if (getDisplayRotation() == 180) {
            ((Activity) getContext()).setRequestedOrientation(9);
        } else {
            ((Activity) getContext()).setRequestedOrientation(1);
        }
    }

    public boolean isFullScreen() {
        return this.m;
    }

    public boolean isOritationLocked() {
        return this.q;
    }

    public boolean isScreenLocked() {
        return this.mScreenLocked;
    }

    public final void j() {
        if (this.mScreenLocked) {
            return;
        }
        this.mFromUser = false;
        if (this.n) {
            i();
            unRegisterSensor();
        } else {
            if (this.o == 1) {
                ((Activity) getContext()).setRequestedOrientation(4);
            }
            registerSensor();
        }
    }

    public final void k() {
        if (isInEditMode()) {
            return;
        }
        this.i = new d(this);
        this.j = new e(this);
        SensorManager sensorManager = (SensorManager) getContext().getSystemService("sensor");
        this.k = sensorManager;
        this.l = sensorManager.getDefaultSensor(1);
        this.v = new f(this.i);
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    public void l() {
    }

    public void lockToLandScape() {
        this.q = true;
        getViewTreeObserver().addOnGlobalLayoutListener(new b());
    }

    public void m() {
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration == null || !this.b || this.mFromUser || this.mScreenLocked || this.n) {
            return;
        }
        if (configuration.screenWidthDp > configuration.screenHeightDp) {
            setLandScape();
        } else {
            setPortrait();
        }
    }

    public void pause() {
        this.r = ((Activity) getContext()).getRequestedOrientation();
        if (isFullScreen()) {
            ((Activity) getContext()).setRequestedOrientation(0);
        } else {
            ((Activity) getContext()).setRequestedOrientation(1);
        }
        if (this.s) {
            this.t = true;
            unRegisterSensor();
        }
    }

    public void registerSensor() {
        this.s = true;
        this.k.registerListener(this.j, this.l, 3);
    }

    @Override
    public void removeView(View view) {
        if (contain(view)) {
            super.removeView(view);
        }
    }

    public void resume() {
        ((Activity) getContext()).setRequestedOrientation(this.r);
        if (this.t) {
            this.t = false;
            registerSensor();
        }
    }

    public void setCurentActivity(Activity activity) {
        w = new WeakReference(activity);
    }

    public void setLandScape() {
        if (!this.mScreenLocked && (getContext() instanceof Activity)) {
            this.m = true;
            if (this.n) {
                ((Activity) getContext()).setRequestedOrientation(0);
            } else {
                ((Activity) getContext()).setRequestedOrientation(6);
            }
            ((Activity) getContext()).getWindow().setFlags(1024, 1024);
            this.c = getLayoutParams().height;
            this.d = getLayoutParams().width;
            if ((getParent() instanceof LinearLayout) || (getParent() instanceof RelativeLayout)) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
                this.e = marginLayoutParams.leftMargin;
                this.f = marginLayoutParams.topMargin;
                this.g = marginLayoutParams.rightMargin;
                this.h = marginLayoutParams.bottomMargin;
                marginLayoutParams.bottomMargin = 0;
                marginLayoutParams.rightMargin = 0;
                marginLayoutParams.topMargin = 0;
                marginLayoutParams.leftMargin = 0;
                marginLayoutParams.height = -1;
                marginLayoutParams.width = -1;
                setLayoutParams(marginLayoutParams);
                l();
                c cVar = this.p;
                if (cVar != null) {
                    cVar.onScreenOrientationChange(1);
                }
            }
        }
    }

    public void setOnScreenOrientationChangeListener(c cVar) {
        this.p = cVar;
    }

    public void setPortrait() {
        if (!this.mScreenLocked && (getContext() instanceof Activity)) {
            this.m = false;
            if (this.n) {
                ((Activity) getContext()).setRequestedOrientation(1);
            } else {
                ((Activity) getContext()).setRequestedOrientation(7);
            }
            ((Activity) getContext()).getWindow().setFlags(2048, 1024);
            getLayoutParams().height = this.c;
            getLayoutParams().width = this.d;
            if ((getParent() instanceof LinearLayout) || (getParent() instanceof RelativeLayout)) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
                marginLayoutParams.leftMargin = this.e;
                marginLayoutParams.topMargin = this.f;
                marginLayoutParams.rightMargin = this.g;
                marginLayoutParams.bottomMargin = this.h;
                setLayoutParams(marginLayoutParams);
                m();
                c cVar = this.p;
                if (cVar != null) {
                    cVar.onScreenOrientationChange(0);
                }
            }
        }
    }

    public void unRegisterSensor() {
        this.s = false;
        this.k.unregisterListener(this.j);
    }

    public ScreenOrientationContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.o = 1;
        this.q = false;
        this.r = 1;
        this.u = 1;
        k();
    }

    public ScreenOrientationContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.o = 1;
        this.q = false;
        this.r = 1;
        this.u = 1;
        k();
    }
}
