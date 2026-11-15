package com.transsion.playercommon.activities;

import android.content.res.Configuration;
import android.graphics.Point;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.WindowMetrics;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.ViewModel;
import androidx.p004lifecycle.ViewModelProvider;
import com.transsion.WindowInfoViewModel;
import com.transsion.hubsdk.api.app.TranWindowConfiguration;
import com.transsion.playercommon.core.MainApp;
import com.transsion.utils.BaseConstant;
import com.trello.rxlifecycle3.components.support.RxAppCompatActivity;
import defpackage.a39;
import defpackage.b39;
import defpackage.f39;
import defpackage.pp3;
import defpackage.se;
import defpackage.t81;
import defpackage.u15;
import defpackage.woc;
import defpackage.ydc;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class BaseFoldActivity extends RxAppCompatActivity {
    static final String TAG = "BaseFoldActivity";
    private Sensor mAngleSensor;
    protected Configuration mCurrentConfiguration;
    protected int mCurrentHingeAngle;
    private final u15 mHalfOpenRange;
    private boolean mIsFirstAngleReception;
    protected boolean mIsInMultiWindowMode;
    protected boolean mIsLargeScreen;
    private boolean mIsPCMode;
    protected boolean mIsScreenLandscape;
    private boolean mIsTabletDevice;
    protected int mLastHingeAngle;
    protected int mScreenHeightDp;
    protected int mScreenLayout;
    protected BaseConstant.SCREEN_TYPE mScreenRealType;
    protected BaseConstant.SCREEN_TYPE mScreenType;
    protected int mScreenWidthDp;
    private SensorEventListener mSensorEventListener;
    private SensorManager mSensorManager;
    public WindowInfoViewModel mWindowInfoViewModel;
    private final int[] mWindowSize;
    private final Map<Object, a39> screenTypeChangeListeners;

    public class a implements SensorEventListener {
        public a() {
        }

        @Override
        public void onAccuracyChanged(Sensor sensor, int i) {
            Log.i("AngelSensor", "AngelSensor " + sensor.getStringType());
        }

        @Override
        public void onSensorChanged(SensorEvent sensorEvent) {
            BaseFoldActivity baseFoldActivity = BaseFoldActivity.this;
            baseFoldActivity.mLastHingeAngle = baseFoldActivity.mCurrentHingeAngle;
            baseFoldActivity.mCurrentHingeAngle = (int) sensorEvent.values[0];
            if (!baseFoldActivity.isInSameState()) {
                BaseFoldActivity baseFoldActivity2 = BaseFoldActivity.this;
                if (baseFoldActivity2.mCurrentConfiguration == null) {
                    baseFoldActivity2.mCurrentConfiguration = baseFoldActivity2.getResources().getConfiguration();
                }
                BaseFoldActivity baseFoldActivity3 = BaseFoldActivity.this;
                baseFoldActivity3.initWindowOptions(baseFoldActivity3.mCurrentHingeAngle, baseFoldActivity3.mCurrentConfiguration);
            }
            BaseFoldActivity.this.mIsFirstAngleReception = false;
            Log.i("AngelSensor", "AngelSensor " + String.format("铰链角度=%s", Float.valueOf(sensorEvent.values[0])));
        }
    }

    public BaseFoldActivity() {
        BaseConstant.SCREEN_TYPE screen_type = BaseConstant.l;
        this.mScreenType = screen_type;
        this.mScreenRealType = screen_type;
        this.mCurrentHingeAngle = 180;
        this.mCurrentConfiguration = null;
        this.mLastHingeAngle = 180;
        this.mWindowSize = new int[2];
        this.mIsFirstAngleReception = true;
        this.screenTypeChangeListeners = new HashMap();
        this.mHalfOpenRange = new u15(5, 150);
    }

    public final SensorEventListener D() {
        if (this.mSensorEventListener == null) {
            this.mSensorEventListener = new a();
        }
        return this.mSensorEventListener;
    }

    public final boolean E() {
        return new TranWindowConfiguration().isThunderbackWindow(getResources().getConfiguration());
    }

    public final void F() {
        Log.i(TAG, "notifyScreenType isInMultiWindowMode():" + isInMultiWindowMode());
        Log.i(TAG, "notifyScreenType isInThunderBackWindowMode():" + E());
        if (this.mIsTabletDevice || this.mIsPCMode) {
            this.mIsLargeScreen = true;
        }
        if (ydc.g() || this.mIsTabletDevice || this.mIsPCMode) {
            if (this.mIsTabletDevice && isInMultiWindowMode()) {
                this.mIsLargeScreen = false;
            }
            if (this.mIsTabletDevice && E()) {
                this.mIsLargeScreen = false;
            }
            Log.e(TAG, "notifyScreenType mIsLargeScreen:" + this.mIsLargeScreen);
            BaseConstant.SCREEN_TYPE screenType = getScreenType();
            if (this.mScreenType != screenType) {
                Log.e(TAG, "notifyScreenType " + screenType);
                this.mScreenType = screenType;
                onScreenTypeChange(screenType);
                Map<Object, a39> map = this.screenTypeChangeListeners;
                if (map == null || map.isEmpty()) {
                    return;
                }
                Iterator<Object> it = this.screenTypeChangeListeners.keySet().iterator();
                while (it.hasNext()) {
                    a39 a39Var = this.screenTypeChangeListeners.get(it.next());
                    if (a39Var != null) {
                        a39Var.a(screenType);
                    }
                }
            }
        }
    }

    public final void G() {
        if (!isNeedAngelSensor() || this.mAngleSensor == null) {
            return;
        }
        this.mSensorManager.registerListener(D(), this.mAngleSensor, 0);
    }

    public final void H() {
        SensorManager sensorManager;
        SensorEventListener sensorEventListener;
        if (!isNeedAngelSensor() || (sensorManager = this.mSensorManager) == null || (sensorEventListener = this.mSensorEventListener) == null) {
            return;
        }
        sensorManager.unregisterListener(sensorEventListener);
    }

    public void addOnScreenTypeListener(Object obj, a39 a39Var) {
        addOnScreenTypeListener(obj, true, a39Var);
    }

    public void changeThemeWindowBackground() {
    }

    public BaseConstant.SCREEN_TYPE getScreenType() {
        if ((this.mIsTabletDevice || this.mIsPCMode) && this.mIsLargeScreen) {
            return BaseConstant.SCREEN_TYPE.TABLE;
        }
        if (ydc.g() && this.mIsLargeScreen) {
            return this.mIsScreenLandscape ? BaseConstant.SCREEN_TYPE.OPEN_LAND : BaseConstant.SCREEN_TYPE.OPEN_PORT;
        }
        return BaseConstant.SCREEN_TYPE.FOLD;
    }

    public ViewModel getViewModel(Class cls) {
        return new ViewModelProvider(this).get(cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void initWindowOptions(int i, Configuration configuration) {
        woc wocVar;
        if (!MainApp.D) {
            i = 180;
        }
        woc wocVar2 = new woc();
        try {
            wocVar2.f = new TranWindowConfiguration().isThunderbackWindow(configuration);
        } catch (Exception e) {
            Log.e(TAG, "TranWindowConfiguration exception:" + e);
        }
        wocVar2.k = i;
        wocVar2.h = isInPictureInPictureMode();
        wocVar2.c = !wocVar2.f && isInSplitScreen(true);
        wocVar2.d = !wocVar2.f && isSmallSplitScreen(true);
        wocVar2.i = configuration.screenWidthDp;
        wocVar2.j = configuration.screenHeightDp;
        if (wocVar2.f) {
            wocVar2.g = getResources().getConfiguration().orientation == 2;
        } else {
            wocVar2.g = com.transsion.utils.a.l(this) < com.transsion.utils.a.m(this);
        }
        Point pointJ = com.transsion.utils.a.j();
        int i2 = pointJ.x;
        int i3 = pointJ.y;
        wocVar2.n = i2;
        wocVar2.o = i3;
        if (wocVar2.c) {
            boolean z = wocVar2.g;
            if (!z) {
                i2 = i3;
            }
            wocVar2.e = ((z ? wocVar2.i : wocVar2.j) * f39.b()) / i2;
        } else {
            wocVar2.e = 1.0f;
        }
        if ((this.mScreenType != BaseConstant.SCREEN_TYPE.FOLD || (pp3.l() && !wocVar2.c)) && i <= 150 && i >= 5) {
            if (wocVar2.c) {
                if (wocVar2.a()) {
                    wocVar2.a = 1;
                } else if (com.transsion.utils.a.w(configuration) || com.transsion.utils.a.x(configuration)) {
                    wocVar2.a = 3;
                } else {
                    wocVar2.a = 1;
                }
            } else if (com.transsion.utils.a.w(configuration)) {
                wocVar2.a = 3;
            } else {
                wocVar2.a = 1;
            }
        } else if (i < 5) {
            wocVar2.a = 0;
        } else if (wocVar2.c) {
            if (wocVar2.a()) {
                wocVar2.a = 0;
            } else if (ydc.g()) {
                if (com.transsion.utils.a.w(configuration) || com.transsion.utils.a.x(configuration)) {
                    wocVar2.a = 2;
                } else {
                    wocVar2.a = 0;
                }
            }
        } else if (com.transsion.utils.a.w(configuration)) {
            wocVar2.a = 2;
        } else {
            wocVar2.a = 0;
        }
        if (wocVar2.f) {
            wocVar2.a = 0;
        }
        woc wocVar3 = (woc) this.mWindowInfoViewModel.a.getValue();
        if (wocVar3 != null && (wocVar = wocVar3.m) != null) {
            boolean z2 = wocVar.h;
            boolean z3 = wocVar2.h;
            if (z2 != z3 && z3) {
                wocVar2.c = true;
            }
        }
        if (wocVar3 == null) {
            this.mWindowInfoViewModel.j.setValue(0);
            this.mWindowInfoViewModel.c(wocVar2);
        } else {
            if (wocVar3.equals(wocVar2)) {
                this.mWindowInfoViewModel.h.setValue(Integer.valueOf(this.mCurrentHingeAngle));
                return;
            }
            wocVar2.b = wocVar3.a;
            wocVar2.m = wocVar3;
            this.mWindowInfoViewModel.j.setValue(Integer.valueOf(((Integer) this.mWindowInfoViewModel.j.getValue()).intValue() + 1));
            this.mWindowInfoViewModel.c(wocVar2);
        }
    }

    public boolean isExtendAngelMonitorTime() {
        return false;
    }

    public boolean isInSameState() {
        int i = this.mCurrentHingeAngle;
        return (i < 5 && this.mLastHingeAngle < 5) || (this.mHalfOpenRange.m(i) && this.mHalfOpenRange.m(this.mLastHingeAngle)) || (this.mCurrentHingeAngle > 150 && this.mLastHingeAngle > 150);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isInSplitScreen(boolean z) {
        WindowInfoViewModel windowInfoViewModel;
        if (!z && (windowInfoViewModel = this.mWindowInfoViewModel) != null && windowInfoViewModel.a.getValue() != 0) {
            return ((woc) this.mWindowInfoViewModel.a.getValue()).c;
        }
        if (Build.VERSION.SDK_INT < 30) {
            return isInMultiWindowMode();
        }
        WindowMetrics currentWindowMetrics = getWindowManager().getCurrentWindowMetrics();
        WindowMetrics maximumWindowMetrics = getWindowManager().getMaximumWindowMetrics();
        return ((currentWindowMetrics.getBounds().width() == maximumWindowMetrics.getBounds().width() && currentWindowMetrics.getBounds().height() == maximumWindowMetrics.getBounds().height()) || (currentWindowMetrics.getBounds().width() == maximumWindowMetrics.getBounds().height() && currentWindowMetrics.getBounds().height() == maximumWindowMetrics.getBounds().width())) ? false : true;
    }

    public boolean isInitWindowOptions() {
        return true;
    }

    public boolean isIsFirstAngleReception() {
        return this.mIsFirstAngleReception;
    }

    public boolean isNeedAngelSensor() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isSmallSplitScreen(boolean z) {
        WindowInfoViewModel windowInfoViewModel;
        if (!z && (windowInfoViewModel = this.mWindowInfoViewModel) != null && windowInfoViewModel.a.getValue() != 0) {
            return ((woc) this.mWindowInfoViewModel.a.getValue()).d;
        }
        if (Math.min(f39.c(), f39.d()) > BaseConstant.n.floatValue()) {
            return false;
        }
        return isInSplitScreen(z);
    }

    @Override
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        boolean z;
        if (com.transsion.utils.a.D(this)) {
            F();
        }
        super.onConfigurationChanged(configuration);
        Log.d(TAG, "onConfigurationChanged:" + configuration);
        this.mCurrentConfiguration = configuration;
        int i = this.mScreenLayout;
        int i2 = configuration.screenLayout;
        if (i != i2) {
            this.mScreenLayout = i2;
            this.mIsLargeScreen = com.transsion.utils.a.w(configuration);
            z = true;
        } else {
            z = false;
        }
        boolean z2 = configuration.orientation == 2;
        if (z2 != this.mIsScreenLandscape) {
            this.mIsScreenLandscape = z2;
            z = true;
        }
        if (com.transsion.utils.a.D(this)) {
            int i3 = this.mScreenWidthDp;
            int i4 = configuration.screenWidthDp;
            if (i3 != i4) {
                this.mScreenWidthDp = i4;
                z = true;
            }
            int i5 = this.mScreenHeightDp;
            int i6 = configuration.screenHeightDp;
            if (i5 != i6) {
                this.mScreenHeightDp = i6;
                z = true;
            }
        }
        if (z) {
            F();
            changeThemeWindowBackground();
        }
        Log.d(TAG, "onConfigurationChanged screenChange:" + z + StringUtils.COMMA + com.transsion.utils.a.w(configuration) + StringUtils.COMMA + this);
        int[] iArr = this.mWindowSize;
        int i7 = iArr[0];
        int i8 = configuration.screenWidthDp;
        if (i7 == i8 && iArr[1] == configuration.screenHeightDp) {
            return;
        }
        iArr[0] = i8;
        iArr[1] = configuration.screenHeightDp;
        initWindowOptions(this.mCurrentHingeAngle, this.mCurrentConfiguration);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onCreate(Bundle bundle) {
        com.transsion.utils.a.b(this);
        super.onCreate(bundle);
        t81.a(this);
        this.mIsInMultiWindowMode = isInMultiWindowMode();
        this.mCurrentConfiguration = getResources().getConfiguration();
        this.mScreenRealType = com.transsion.utils.a.k(this);
        this.mIsLargeScreen = com.transsion.utils.a.w(this.mCurrentConfiguration);
        this.mIsTabletDevice = com.transsion.utils.a.A();
        this.mIsPCMode = com.transsion.utils.a.u(this);
        this.mIsScreenLandscape = getResources().getConfiguration().orientation == 2;
        F();
        if (isNeedAngelSensor()) {
            this.mSensorManager = (SensorManager) se.a().getSystemService(SensorManager.class);
            Sensor sensorU = u("android.sensor.hinge", "hinge");
            this.mAngleSensor = sensorU;
            if (sensorU == null && Build.VERSION.SDK_INT >= 30) {
                this.mAngleSensor = this.mSensorManager.getDefaultSensor(36);
            }
        }
        this.mWindowSize[0] = getResources().getConfiguration().screenWidthDp;
        this.mWindowSize[1] = getResources().getConfiguration().screenHeightDp;
        this.mWindowInfoViewModel = (WindowInfoViewModel) getViewModel(WindowInfoViewModel.class);
        if (isInitWindowOptions()) {
            WindowInfoViewModel windowInfoViewModel = this.mWindowInfoViewModel;
            if (windowInfoViewModel != null && windowInfoViewModel.a.getValue() != 0) {
                this.mCurrentHingeAngle = ((woc) this.mWindowInfoViewModel.a.getValue()).k;
            }
            initWindowOptions(this.mCurrentHingeAngle, this.mCurrentConfiguration);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.screenTypeChangeListeners.clear();
    }

    @Override
    public void onPause() {
        super.onPause();
        if (isExtendAngelMonitorTime()) {
            return;
        }
        H();
    }

    @Override
    public void onResume() {
        super.onResume();
        if (!isExtendAngelMonitorTime()) {
            G();
        }
        MainApp.y(this, getPackageName());
        boolean z = this.mIsPCMode;
        boolean zU = com.transsion.utils.a.u(this);
        this.mIsPCMode = zU;
        if (z != zU) {
            F();
        }
        if (this.mIsPCMode) {
            com.transsion.utils.a.c(this);
        }
    }

    public void onScreenTypeChange(BaseConstant.SCREEN_TYPE screen_type) {
        Log.e(TAG, "onScreenTypeChange " + screen_type + StringUtils.COMMA + this);
        if (isInSplitScreen(true) || !b39.b(this) || this.mIsTabletDevice || this.mIsPCMode || com.transsion.utils.a.v(this)) {
            setRequestedOrientation(10);
        } else {
            setRequestedOrientation(1);
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        if (isExtendAngelMonitorTime()) {
            G();
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        if (isExtendAngelMonitorTime()) {
            H();
        }
        Log.d(TAG, "onStop():" + this);
    }

    public void removeScreenTypeListener(Object obj) {
        Map<Object, a39> map;
        if ((!ydc.g() && !com.transsion.utils.a.D(this)) || (map = this.screenTypeChangeListeners) == null || map.isEmpty()) {
            return;
        }
        this.screenTypeChangeListeners.remove(obj);
    }

    public final Sensor u(String str, String str2) {
        List<Sensor> sensorList = ((SensorManager) se.a().getSystemService(SensorManager.class)).getSensorList(-1);
        for (int i = 0; i < sensorList.size(); i++) {
            Sensor sensor = sensorList.get(i);
            String stringType = sensor.getStringType();
            String name = sensor.getName();
            if (stringType != null && name != null && stringType.equals(str) && name.equalsIgnoreCase(str2)) {
                return sensor;
            }
        }
        return null;
    }

    public void addOnScreenTypeListener(Object obj, boolean z, a39 a39Var) {
        Map<Object, a39> map;
        if ((ydc.g() || com.transsion.utils.a.D(this)) && (map = this.screenTypeChangeListeners) != null) {
            map.put(obj, a39Var);
            if (z) {
                a39Var.a(this.mScreenType);
            }
        }
    }
}
