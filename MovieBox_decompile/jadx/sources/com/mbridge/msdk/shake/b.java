package com.mbridge.msdk.shake;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

public abstract class b implements SensorEventListener {

    public long f36528a = 0;

    public float f36529b = 0.0f;

    public float f36530c = 0.0f;

    public float f36531d = 0.0f;

    private int f36532e;

    private int f36533f;

    public b(int i10, int i11) {
        this.f36532e = i10;
        this.f36533f = i11;
    }

    public abstract void a();

    @Override
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0048  */
    /* JADX WARN: Code duplicated, block: B:16:0x0057  */
    @Override
    public void onSensorChanged(SensorEvent sensorEvent) {
        long jCurrentTimeMillis;
        float[] fArr = sensorEvent.values;
        float f10 = -fArr[0];
        float f11 = -fArr[1];
        float f12 = -fArr[2];
        float f13 = this.f36529b;
        if (f13 == 0.0f || Math.abs(f10 - f13) <= this.f36532e) {
            float f14 = this.f36530c;
            if (f14 == 0.0f || Math.abs(f11 - f14) <= this.f36532e) {
                float f15 = this.f36531d;
                if (f15 != 0.0f && Math.abs(f12 - f15) > this.f36532e) {
                    jCurrentTimeMillis = System.currentTimeMillis();
                    if (jCurrentTimeMillis - this.f36528a > this.f36533f) {
                        this.f36528a = jCurrentTimeMillis;
                        a();
                    }
                }
            } else {
                jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.f36528a > this.f36533f) {
                    this.f36528a = jCurrentTimeMillis;
                    a();
                }
            }
        } else {
            jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f36528a > this.f36533f) {
                this.f36528a = jCurrentTimeMillis;
                a();
            }
        }
        this.f36529b = f10;
        this.f36530c = f11;
        this.f36531d = f12;
    }
}
