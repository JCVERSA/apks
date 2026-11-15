package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import defpackage.cye;
import defpackage.pog;
import defpackage.qxe;
import defpackage.szh;
import defpackage.zog;

public final class u4 extends szh {
    public final SensorManager a;
    public final Sensor b;
    public float c;
    public Float d;
    public long e;
    public int f;
    public boolean g;
    public boolean h;
    public pog i;
    public boolean j;

    public u4(Context context) {
        super("FlickDetector", "ads");
        this.c = 0.0f;
        this.d = Float.valueOf(0.0f);
        this.e = zzv.zzC().currentTimeMillis();
        this.f = 0;
        this.g = false;
        this.h = false;
        this.i = null;
        this.j = false;
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.a = sensorManager;
        if (sensorManager != null) {
            this.b = sensorManager.getDefaultSensor(4);
        } else {
            this.b = null;
        }
    }

    @Override
    public final void a(SensorEvent sensorEvent) {
        if (((Boolean) zzbd.zzc().b(cye.i9)).booleanValue()) {
            long jCurrentTimeMillis = zzv.zzC().currentTimeMillis();
            if (this.e + ((long) ((Integer) zzbd.zzc().b(cye.k9)).intValue()) < jCurrentTimeMillis) {
                this.f = 0;
                this.e = jCurrentTimeMillis;
                this.g = false;
                this.h = false;
                this.c = this.d.floatValue();
            }
            Float fValueOf = Float.valueOf(this.d.floatValue() + (sensorEvent.values[1] * 4.0f));
            this.d = fValueOf;
            float fFloatValue = fValueOf.floatValue();
            float f = this.c;
            qxe qxeVar = cye.j9;
            if (fFloatValue > f + ((Float) zzbd.zzc().b(qxeVar)).floatValue()) {
                this.c = this.d.floatValue();
                this.h = true;
            } else if (this.d.floatValue() < this.c - ((Float) zzbd.zzc().b(qxeVar)).floatValue()) {
                this.c = this.d.floatValue();
                this.g = true;
            }
            if (this.d.isInfinite()) {
                this.d = Float.valueOf(0.0f);
                this.c = 0.0f;
            }
            if (this.g && this.h) {
                zze.zza("Flick detected.");
                this.e = jCurrentTimeMillis;
                int i = this.f + 1;
                this.f = i;
                this.g = false;
                this.h = false;
                pog pogVar = this.i;
                if (pogVar != null) {
                    if (i == ((Integer) zzbd.zzc().b(cye.l9)).intValue()) {
                        zog zogVar = (zog) pogVar;
                        zogVar.i(new zzdub(zogVar), zzduc.GESTURE);
                    }
                }
            }
        }
    }

    public final void b() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            try {
                if (this.j && (sensorManager = this.a) != null && (sensor = this.b) != null) {
                    sensorManager.unregisterListener(this, sensor);
                    this.j = false;
                    zze.zza("Stopped listening for flick gestures.");
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
                if (((Boolean) zzbd.zzc().b(cye.i9)).booleanValue()) {
                    if (!this.j && (sensorManager = this.a) != null && (sensor = this.b) != null) {
                        sensorManager.registerListener(this, sensor, 2);
                        this.j = true;
                        zze.zza("Listening for flick gestures.");
                    }
                    if (this.a == null || this.b == null) {
                        int i = zze.zza;
                        zzo.zzj("Flick detection failed to initialize. Failed to obtain gyroscope.");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(pog pogVar) {
        this.i = pogVar;
    }
}
