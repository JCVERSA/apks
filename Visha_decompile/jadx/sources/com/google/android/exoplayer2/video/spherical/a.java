package com.google.android.exoplayer2.video.spherical;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import defpackage.b64;

public final class a implements SensorEventListener {
    public final float[] a = new float[16];
    public final float[] b = new float[16];
    public final float[] c = new float[16];
    public final float[] d = new float[3];
    public final Display e;
    public final InterfaceC0087a[] f;
    public boolean g;

    public interface InterfaceC0087a {
        void onOrientationChange(float[] fArr, float f);
    }

    public a(Display display, InterfaceC0087a... interfaceC0087aArr) {
        this.e = display;
        this.f = interfaceC0087aArr;
    }

    public static void e(float[] fArr) {
        Matrix.rotateM(fArr, 0, 90.0f, 1.0f, 0.0f, 0.0f);
    }

    public final float a(float[] fArr) {
        SensorManager.remapCoordinateSystem(fArr, 1, 131, this.b);
        SensorManager.getOrientation(this.b, this.d);
        return this.d[2];
    }

    public final void b(float[] fArr, float f) {
        for (InterfaceC0087a interfaceC0087a : this.f) {
            interfaceC0087a.onOrientationChange(fArr, f);
        }
    }

    public final void c(float[] fArr) {
        if (!this.g) {
            b64.a(this.c, fArr);
            this.g = true;
        }
        float[] fArr2 = this.b;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        Matrix.multiplyMM(fArr, 0, this.b, 0, this.c, 0);
    }

    public final void d(float[] fArr, int i) {
        if (i != 0) {
            int i2 = 129;
            int i3 = 1;
            if (i == 1) {
                i3 = 129;
                i2 = 2;
            } else if (i == 2) {
                i3 = 130;
            } else {
                if (i != 3) {
                    throw new IllegalStateException();
                }
                i2 = 130;
            }
            float[] fArr2 = this.b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.b, i2, i3, fArr);
        }
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override
    public void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.a, sensorEvent.values);
        d(this.a, this.e.getRotation());
        float fA = a(this.a);
        e(this.a);
        c(this.a);
        b(this.a, fA);
    }
}
