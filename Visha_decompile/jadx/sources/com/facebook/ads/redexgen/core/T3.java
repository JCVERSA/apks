package com.facebook.ads.redexgen.core;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

public class T3 implements SensorEventListener {
    public T3() {
    }

    @Override
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override
    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] unused = T5.A0A = sensorEvent.values;
        T5.A06();
    }
}
