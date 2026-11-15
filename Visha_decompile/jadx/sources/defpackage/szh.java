package defpackage;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

public abstract class szh implements SensorEventListener {
    public szh(String str, String str2) {
        rzh.a();
        qzh.a();
    }

    public abstract void a(SensorEvent sensorEvent);

    @Override
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override
    public final void onSensorChanged(SensorEvent sensorEvent) {
        a(sensorEvent);
    }
}
