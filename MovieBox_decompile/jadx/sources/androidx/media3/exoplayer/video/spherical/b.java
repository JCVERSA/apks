package androidx.media3.exoplayer.video.spherical;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import com.vungle.ads.internal.protos.Sdk$SDKError;

final class b implements SensorEventListener {

    private final float[] f12937a = new float[16];

    private final float[] f12938b = new float[16];

    private final float[] f12939c = new float[16];

    private final float[] f12940d = new float[3];

    private final Display f12941e;

    private final a[] f12942f;

    private boolean f12943g;

    public interface a {
        void a(float[] fArr, float f10);
    }

    public b(Display display, a... aVarArr) {
        this.f12941e = display;
        this.f12942f = aVarArr;
    }

    private float a(float[] fArr) {
        SensorManager.remapCoordinateSystem(fArr, 1, Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, this.f12938b);
        SensorManager.getOrientation(this.f12938b, this.f12940d);
        return this.f12940d[2];
    }

    private void b(float[] fArr, float f10) {
        for (a aVar : this.f12942f) {
            aVar.a(fArr, f10);
        }
    }

    private void c(float[] fArr) {
        if (!this.f12943g) {
            androidx.media3.exoplayer.video.spherical.a.a(this.f12939c, fArr);
            this.f12943g = true;
        }
        float[] fArr2 = this.f12938b;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        Matrix.multiplyMM(fArr, 0, this.f12938b, 0, this.f12939c, 0);
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
            float[] fArr2 = this.f12938b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f12938b, i11, i12, fArr);
        }
    }

    private static void e(float[] fArr) {
        Matrix.rotateM(fArr, 0, 90.0f, 1.0f, 0.0f, 0.0f);
    }

    @Override
    public void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f12937a, sensorEvent.values);
        d(this.f12937a, this.f12941e.getRotation());
        float fA = a(this.f12937a);
        e(this.f12937a);
        c(this.f12937a);
        b(this.f12937a, fA);
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }
}
