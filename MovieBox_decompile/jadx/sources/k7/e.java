package k7;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.cloud.tmc.integration.params.TmcStartParams;
import java.util.concurrent.atomic.AtomicBoolean;

public class e implements SensorEventListener {

    private final SensorManager f63790a;

    private float[] f63791b;

    private float f63792c;

    private float[] f63793d;

    private float f63794e;

    private float f63795f;

    private float[] f63796g;

    private float f63797h;

    private float[] f63798i;

    private float[] f63799j;

    private final AtomicBoolean f63800k;

    private static class b {

        private static final e f63801a = new e();
    }

    public static e e() {
        return b.f63801a;
    }

    public static Bundle k() {
        Bundle bundle = new Bundle();
        try {
            bundle.putFloatArray("ots", e().h());
            bundle.putFloat(TmcStartParams.KEY_LANDSCAPE_SHORT, e().f());
            bundle.putFloatArray("ms", e().g());
            bundle.putFloat("pxs", e().j());
            bundle.putFloat("tps", e().l());
            bundle.putFloatArray("gs", e().d());
            bundle.putFloat("pss", e().i());
            bundle.putFloatArray("gvs", e().c());
            bundle.putFloatArray("ams", e().b());
        } catch (Exception e10) {
            k7.a.r0(Log.getStackTraceString(e10));
        }
        return bundle;
    }

    public void n() {
        this.f63800k.set(true);
        this.f63790a.unregisterListener(this);
    }

    public static void q() {
        try {
            try {
                try {
                    e().o();
                    e().p();
                } catch (Exception e10) {
                    k7.a.r0(Log.getStackTraceString(e10));
                    e().p();
                }
            } catch (Exception e11) {
                k7.a.r0(Log.getStackTraceString(e11));
            }
        } catch (Throwable th2) {
            try {
                e().p();
            } catch (Exception e12) {
                k7.a.r0(Log.getStackTraceString(e12));
            }
            throw th2;
        }
    }

    public float[] b() {
        return this.f63799j;
    }

    public float[] c() {
        return this.f63798i;
    }

    public float[] d() {
        return this.f63796g;
    }

    public float f() {
        return this.f63792c;
    }

    public float[] g() {
        return this.f63793d;
    }

    public float[] h() {
        return this.f63791b;
    }

    public float i() {
        return this.f63797h;
    }

    public float j() {
        return this.f63794e;
    }

    public float l() {
        return this.f63795f;
    }

    public boolean m() {
        return this.f63800k.get();
    }

    public void o() {
        SensorManager sensorManager = this.f63790a;
        sensorManager.registerListener(this, sensorManager.getDefaultSensor(3), 3);
        SensorManager sensorManager2 = this.f63790a;
        sensorManager2.registerListener(this, sensorManager2.getDefaultSensor(4), 3);
        SensorManager sensorManager3 = this.f63790a;
        sensorManager3.registerListener(this, sensorManager3.getDefaultSensor(9), 3);
        SensorManager sensorManager4 = this.f63790a;
        sensorManager4.registerListener(this, sensorManager4.getDefaultSensor(1), 3);
    }

    @Override
    public void onSensorChanged(SensorEvent sensorEvent) {
        Sensor sensor;
        float[] fArr;
        if (sensorEvent == null || (sensor = sensorEvent.sensor) == null || (fArr = sensorEvent.values) == null || fArr.length < 1) {
            return;
        }
        switch (sensor.getType()) {
            case 1:
                this.f63799j = sensorEvent.values;
                break;
            case 2:
                this.f63793d = sensorEvent.values;
                break;
            case 3:
                this.f63791b = sensorEvent.values;
                break;
            case 4:
                this.f63796g = sensorEvent.values;
                break;
            case 5:
                this.f63792c = sensorEvent.values[0];
                break;
            case 6:
                this.f63797h = sensorEvent.values[0];
                break;
            case 7:
                this.f63795f = sensorEvent.values[0];
                break;
            case 8:
                this.f63794e = sensorEvent.values[0];
                break;
            case 9:
                this.f63798i = sensorEvent.values;
                break;
        }
    }

    public void p() {
        if (Looper.myLooper() == null) {
            return;
        }
        new Handler(Looper.myLooper()).postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.f63789a.n();
            }
        }, 1000L);
    }

    private e() {
        this.f63791b = new float[0];
        this.f63793d = new float[0];
        this.f63796g = new float[0];
        this.f63798i = new float[0];
        this.f63799j = new float[0];
        this.f63800k = new AtomicBoolean(false);
        this.f63790a = (SensorManager) com.cloud.sdk.commonutil.util.e.a().getSystemService("sensor");
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }
}
