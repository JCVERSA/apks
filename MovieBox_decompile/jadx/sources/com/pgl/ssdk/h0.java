package com.pgl.ssdk;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import java.util.concurrent.atomic.AtomicReference;

public class h0 implements SensorEventListener {

    private static final float[] f39306a = {999999.0f, 999999.0f, 999999.0f};

    public static boolean f39307b = true;

    private static volatile h0 f39308c;

    private final Context f39314i;

    private Sensor f39309d = null;

    private Sensor f39310e = null;

    private Sensor f39311f = null;

    private volatile boolean f39312g = false;

    private volatile boolean f39313h = false;

    private AtomicReference<a> f39315j = new AtomicReference<>();

    private long f39316k = 999999;

    private static class a {

        public long f39317a;

        public float[] f39318b = null;

        public float[] f39319c = null;

        public float[] f39320d = null;

        public a(long j10) {
            this.f39317a = j10;
        }
    }

    private h0(Context context) {
        this.f39314i = context;
    }

    public static h0 a(Context context) {
        if (f39308c == null) {
            synchronized (h0.class) {
                try {
                    if (f39308c == null) {
                        f39308c = new h0(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        if (f39307b) {
            f39308c.c();
        }
        return f39308c;
    }

    private void c() {
        if (this.f39313h) {
            return;
        }
        try {
            SensorManager sensorManager = (SensorManager) this.f39314i.getApplicationContext().getSystemService("sensor");
            if (sensorManager != null) {
                this.f39309d = sensorManager.getDefaultSensor(1);
                this.f39310e = sensorManager.getDefaultSensor(2);
                this.f39311f = sensorManager.getDefaultSensor(4);
            }
        } catch (Exception unused) {
        }
        this.f39313h = true;
    }

    private void e() {
        this.f39316k = -1L;
        this.f39312g = false;
        try {
            SensorManager sensorManager = (SensorManager) this.f39314i.getApplicationContext().getSystemService("sensor");
            if (sensorManager != null) {
                sensorManager.unregisterListener(this);
            }
        } catch (Exception unused) {
        }
    }

    public Object[] b() {
        Object[] objArr = new Object[6];
        a aVar = this.f39315j.get();
        if (!f39307b || aVar == null) {
            a(objArr);
            return objArr;
        }
        int i10 = 0;
        do {
            if ((this.f39309d == null || aVar.f39318b != null) && ((this.f39310e == null || aVar.f39319c != null) && (this.f39311f == null || aVar.f39320d != null))) {
                break;
            }
            w0.a(50L);
            i10++;
        } while (i10 <= 20);
        e();
        this.f39312g = false;
        a(objArr, aVar);
        this.f39315j.set(null);
        return objArr;
    }

    public boolean d() {
        if (this.f39309d != null) {
            try {
                SensorManager sensorManager = (SensorManager) this.f39314i.getApplicationContext().getSystemService("sensor");
                if (sensorManager != null) {
                    boolean zRegisterListener = sensorManager.registerListener(this, this.f39309d, 1);
                    Sensor sensor = this.f39310e;
                    if (sensor != null) {
                        sensorManager.registerListener(this, sensor, 1);
                    }
                    Sensor sensor2 = this.f39311f;
                    if (sensor2 != null) {
                        sensorManager.registerListener(this, sensor2, 1);
                    }
                    if (zRegisterListener) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        this.f39316k = jCurrentTimeMillis;
                        this.f39315j.set(new a(jCurrentTimeMillis));
                        this.f39312g = true;
                    } else {
                        e();
                    }
                }
            } catch (Throwable unused) {
                e();
            }
        }
        return this.f39312g;
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }

    @Override
    public void onSensorChanged(SensorEvent sensorEvent) {
        a aVar = this.f39315j.get();
        if (aVar == null) {
            return;
        }
        int type = sensorEvent.sensor.getType();
        if (type == 1) {
            if (aVar.f39318b == null) {
                aVar.f39318b = sensorEvent.values;
            }
        } else if (type == 2) {
            if (aVar.f39319c == null) {
                aVar.f39319c = sensorEvent.values;
            }
        } else if (type == 4 && aVar.f39320d == null) {
            aVar.f39320d = sensorEvent.values;
        }
    }

    private static void a(Object[] objArr) {
        Float fValueOf = Float.valueOf(999999.0f);
        objArr[0] = fValueOf;
        objArr[1] = fValueOf;
        objArr[2] = fValueOf;
        objArr[3] = 999999L;
        float[] fArr = f39306a;
        objArr[4] = fArr;
        objArr[5] = fArr;
    }

    private static void a(Object[] objArr, a aVar) {
        float[] fArrA;
        float[] fArr = aVar.f39318b;
        if (fArr != null) {
            float[] fArr2 = aVar.f39319c;
            if (fArr2 != null) {
                fArrA = a(objArr, fArr, fArr2);
            } else {
                fArrA = a(objArr, fArr);
            }
            objArr[0] = Float.valueOf(fArrA[0]);
            objArr[1] = Float.valueOf(fArrA[1]);
            objArr[2] = Float.valueOf(fArrA[2]);
            objArr[4] = aVar.f39318b;
        } else {
            objArr[0] = Float.valueOf(999999.0f);
            objArr[1] = Float.valueOf(999999.0f);
            objArr[2] = Float.valueOf(999999.0f);
            objArr[4] = f39306a;
        }
        objArr[3] = Long.valueOf(aVar.f39317a);
        float[] fArr3 = aVar.f39320d;
        if (fArr3 != null) {
            objArr[5] = fArr3;
        } else {
            objArr[5] = f39306a;
        }
    }

    private static float[] a(Object[] objArr, float[] fArr, float[] fArr2) {
        float[] fArr3 = new float[9];
        float[] fArr4 = new float[3];
        SensorManager.getRotationMatrix(fArr3, new float[9], fArr, fArr2);
        SensorManager.getOrientation(fArr3, fArr4);
        return new float[]{(((float) Math.toDegrees(fArr4[0])) + 360.0f) % 360.0f, (((float) Math.toDegrees(fArr4[1])) + 360.0f) % 360.0f, (((float) Math.toDegrees(fArr4[2])) + 360.0f) % 360.0f};
    }

    private static float[] a(Object[] objArr, float[] fArr) {
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = fArr[2];
        float fSqrt = 1.0f / ((float) Math.sqrt(((f10 * f10) + (f11 * f11)) + (f12 * f12)));
        return new float[]{999999.0f, (((float) Math.toDegrees((float) Math.asin(-(f11 * fSqrt)))) + 360.0f) % 360.0f, (((float) Math.toDegrees((float) Math.atan2(-(f10 * fSqrt), f12 * fSqrt))) + 360.0f) % 360.0f};
    }

    public void a() {
        if (!f39307b || this.f39312g) {
            return;
        }
        d();
    }
}
