package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import defpackage.ahf;
import defpackage.pzh;
import defpackage.szh;

public final class x3 extends szh {
    public final SensorManager a;
    public final Object b;
    public final Display c;
    public final float[] d;
    public final float[] e;
    public float[] f;
    public Handler g;
    public ahf h;

    public x3(Context context) {
        super("OrientationMonitor", "ads");
        this.a = (SensorManager) context.getSystemService("sensor");
        this.c = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        this.d = new float[9];
        this.e = new float[9];
        this.b = new Object();
    }

    @Override
    public final void a(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] == 0.0f && fArr[1] == 0.0f && fArr[2] == 0.0f) {
            return;
        }
        synchronized (this.b) {
            try {
                if (this.f == null) {
                    this.f = new float[9];
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        float[] fArr2 = this.d;
        SensorManager.getRotationMatrixFromVector(fArr2, fArr);
        int rotation = this.c.getRotation();
        if (rotation == 1) {
            SensorManager.remapCoordinateSystem(fArr2, 2, 129, this.e);
        } else if (rotation == 2) {
            SensorManager.remapCoordinateSystem(fArr2, 129, 130, this.e);
        } else if (rotation != 3) {
            System.arraycopy(fArr2, 0, this.e, 0, 9);
        } else {
            SensorManager.remapCoordinateSystem(fArr2, 130, 1, this.e);
        }
        float[] fArr3 = this.e;
        float f = fArr3[1];
        fArr3[1] = fArr3[3];
        fArr3[3] = f;
        float f2 = fArr3[2];
        fArr3[2] = fArr3[6];
        fArr3[6] = f2;
        float f3 = fArr3[5];
        fArr3[5] = fArr3[7];
        fArr3[7] = f3;
        synchronized (this.b) {
            System.arraycopy(fArr3, 0, this.f, 0, 9);
        }
        ahf ahfVar = this.h;
        if (ahfVar != null) {
            ahfVar.zza();
        }
    }

    public final void b(ahf ahfVar) {
        this.h = ahfVar;
    }

    public final void c() {
        if (this.g != null) {
            return;
        }
        SensorManager sensorManager = this.a;
        Sensor defaultSensor = sensorManager.getDefaultSensor(11);
        if (defaultSensor == null) {
            int i = zze.zza;
            zzo.zzg("No Sensor of TYPE_ROTATION_VECTOR");
            return;
        }
        HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
        handlerThread.start();
        pzh pzhVar = new pzh(handlerThread.getLooper());
        this.g = pzhVar;
        if (sensorManager.registerListener(this, defaultSensor, 0, pzhVar)) {
            return;
        }
        int i2 = zze.zza;
        zzo.zzg("SensorManager.registerListener failed.");
        d();
    }

    public final void d() {
        if (this.g == null) {
            return;
        }
        this.a.unregisterListener(this);
        this.g.post(new zzcbb(this));
        this.g = null;
    }

    public final boolean e(float[] fArr) {
        synchronized (this.b) {
            try {
                float[] fArr2 = this.f;
                if (fArr2 == null) {
                    return false;
                }
                System.arraycopy(fArr2, 0, fArr, 0, 9);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
