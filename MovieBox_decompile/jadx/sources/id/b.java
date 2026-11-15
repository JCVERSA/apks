package id;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import com.journeyapps.barcodescanner.camera.CameraSettings;

public final class b implements SensorEventListener {

    private com.journeyapps.barcodescanner.camera.h f62046a;

    private CameraSettings f62047b;

    private Sensor f62048c;

    private Context f62049d;

    private Handler f62050e = new Handler();

    public b(Context context, com.journeyapps.barcodescanner.camera.h hVar, CameraSettings cameraSettings) {
        this.f62049d = context;
        this.f62046a = hVar;
        this.f62047b = cameraSettings;
    }

    public void b(boolean z10) {
        this.f62046a.u(z10);
    }

    private void c(final boolean z10) {
        this.f62050e.post(new Runnable() {
            @Override
            public final void run() {
                this.f62044a.b(z10);
            }
        });
    }

    public void d() {
        if (this.f62047b.d()) {
            SensorManager sensorManager = (SensorManager) this.f62049d.getSystemService("sensor");
            Sensor defaultSensor = sensorManager.getDefaultSensor(5);
            this.f62048c = defaultSensor;
            if (defaultSensor != null) {
                sensorManager.registerListener(this, defaultSensor, 3);
            }
        }
    }

    public void e() {
        if (this.f62048c != null) {
            ((SensorManager) this.f62049d.getSystemService("sensor")).unregisterListener(this);
            this.f62048c = null;
        }
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int i10) {
    }

    @Override
    public void onSensorChanged(SensorEvent sensorEvent) {
        float f10 = sensorEvent.values[0];
        if (this.f62046a != null) {
            if (f10 <= 45.0f) {
                c(true);
            } else if (f10 >= 450.0f) {
                c(false);
            }
        }
    }
}
