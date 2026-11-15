package com.google.android.exoplayer2.video.spherical;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import com.vungle.ads.internal.protos.Sdk$SDKError;

final class b implements SensorEventListener {

    private final float[] f27074a = new float[16];

    private final float[] f27075b = new float[16];

    private final float[] f27076c = new float[16];

    private final float[] f27077d = new float[3];

    private final Display f27078e;

    private final a[] f27079f;

    private boolean f27080g;

    public interface a {
        void a(float[] fArr, float f10);
    }

    public b(Display display, a... aVarArr) {
        this.f27078e = display;
        this.f27079f = aVarArr;
    }

    private float a(float[] fArr) {
        SensorManager.remapCoordinateSystem(fArr, 1, Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, this.f27075b);
        SensorManager.getOrientation(this.f27075b, this.f27077d);
        return this.f27077d[2];
    }

    private void b(float[] fArr, float f10) {
        for (a aVar : this.f27079f) {
            aVar.a(fArr, f10);
        }
    }

    private void c(float[] fArr) {
        if (!this.f27080g) {
            com.google.android.exoplayer2.video.spherical.a.a(this.f27076c, fArr);
            this.f27080g = true;
        }
        float[] fArr2 = this.f27075b;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        Matrix.multiplyMM(fArr, 0, this.f27075b, 0, this.f27076c, 0);
    }

    private void d(float[] fArr, int i10) {
        if (i10 != 0) {
            int i11 = 129;
            int i12 = 1;
            if (i10 == 1) {
                i12 = 129;
                i11 = 2;
            } else if (i10 == 2) {
                i12 = 130;
            } else {
                if (i10 != 3) {
                    throw new IllegalStateException();
                }
                i11 = 130;
            }
            float[] fArr2 = this.f27075b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f27075b, i11, i12, fArr);
        }
    }

    private static void e(float[] fArr) {
        Matrix.rotateM(fArr, 0, 90.0f, 1.0f, 0.0f, 0.0f);
    }

    @Override
    public void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f27074a, sensorEvent.values);
        d(this.f27074a, this.f27078e.getRotation());
        float fA = a(this.f27074a);
        e(this.f27074a);
        c(this.f27074a);
        b(this.f27074a, fA);
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }
}
