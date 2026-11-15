package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import defpackage.cqg;
import defpackage.cye;
import defpackage.szh;
import defpackage.zog;

public final class w4 extends szh {
    public final Context a;
    public SensorManager b;
    public Sensor c;
    public long d;
    public int e;
    public cqg f;
    public boolean g;

    public w4(Context context) {
        super("ShakeDetector", "ads");
        this.a = context;
    }

    @Override
    public final void a(SensorEvent sensorEvent) {
        if (((Boolean) zzbd.zzc().b(cye.d9)).booleanValue()) {
            float[] fArr = sensorEvent.values;
            float f = fArr[0] / 9.80665f;
            float f2 = fArr[1] / 9.80665f;
            float f3 = fArr[2] / 9.80665f;
            if (((float) Math.sqrt((f * f) + (f2 * f2) + (f3 * f3))) >= ((Float) zzbd.zzc().b(cye.e9)).floatValue()) {
                long jCurrentTimeMillis = zzv.zzC().currentTimeMillis();
                if (this.d + ((long) ((Integer) zzbd.zzc().b(cye.f9)).intValue()) <= jCurrentTimeMillis) {
                    if (this.d + ((long) ((Integer) zzbd.zzc().b(cye.g9)).intValue()) < jCurrentTimeMillis) {
                        this.e = 0;
                    }
                    zze.zza("Shake detected.");
                    this.d = jCurrentTimeMillis;
                    int i = this.e + 1;
                    this.e = i;
                    cqg cqgVar = this.f;
                    if (cqgVar != null) {
                        if (i == ((Integer) zzbd.zzc().b(cye.h9)).intValue()) {
                            zog zogVar = (zog) cqgVar;
                            zogVar.i(new zzdua(zogVar), zzduc.GESTURE);
                        }
                    }
                }
            }
        }
    }

    public final void b() {
        synchronized (this) {
            try {
                if (this.g) {
                    SensorManager sensorManager = this.b;
                    if (sensorManager != null) {
                        sensorManager.unregisterListener(this, this.c);
                        zze.zza("Stopped listening for shake gestures.");
                    }
                    this.g = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            try {
                if (((Boolean) zzbd.zzc().b(cye.d9)).booleanValue()) {
                    if (this.b == null) {
                        SensorManager sensorManager2 = (SensorManager) this.a.getSystemService("sensor");
                        this.b = sensorManager2;
                        if (sensorManager2 == null) {
                            int i = zze.zza;
                            zzo.zzj("Shake detection failed to initialize. Failed to obtain accelerometer.");
                            return;
                        }
                        this.c = sensorManager2.getDefaultSensor(1);
                    }
                    if (!this.g && (sensorManager = this.b) != null && (sensor = this.c) != null) {
                        sensorManager.registerListener(this, sensor, 2);
                        this.d = zzv.zzC().currentTimeMillis() - ((long) ((Integer) zzbd.zzc().b(cye.f9)).intValue());
                        this.g = true;
                        zze.zza("Listening for shake gestures.");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(cqg cqgVar) {
        this.f = cqgVar;
    }
}
