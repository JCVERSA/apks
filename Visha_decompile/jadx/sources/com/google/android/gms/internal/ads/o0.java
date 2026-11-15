package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import defpackage.cxe;
import defpackage.cye;
import defpackage.exe;
import defpackage.qyh;
import defpackage.ryh;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public final class o0 {
    public final exe a;
    public final i3 b;
    public final boolean c;

    public o0() {
        this.b = j3.v0();
        this.c = false;
        this.a = new exe();
    }

    public static o0 a() {
        return new o0();
    }

    public final synchronized void b(n0 n0Var) {
        if (this.c) {
            try {
                n0Var.a(this.b);
            } catch (NullPointerException e) {
                zzv.zzp().x(e, "AdMobClearcutLogger.modify");
            }
        }
    }

    public final synchronized void c(int i) {
        if (this.c) {
            if (((Boolean) zzbd.zzc().b(cye.h5)).booleanValue()) {
                e(i);
            } else {
                f(i);
            }
        }
    }

    public final synchronized String d(int i) {
        i3 i3Var;
        i3Var = this.b;
        return String.format("id=%s,timestamp=%s,event=%s,data=%s\n", i3Var.B(), Long.valueOf(zzv.zzC().elapsedRealtime()), Integer.valueOf(i - 1), Base64.encodeToString(((j3) i3Var.q()).l(), 3));
    }

    public final synchronized void e(int i) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(ryh.a(qyh.a(), externalStorageDirectory, "clearcut_events.txt")), true);
            try {
                fileOutputStream.write(d(i).getBytes());
            } catch (IOException unused) {
                zze.zza("Could not write Clearcut to file.");
            } finally {
                try {
                    fileOutputStream.close();
                } catch (IOException unused2) {
                    zze.zza("Could not close Clearcut output stream.");
                }
            }
        } catch (FileNotFoundException unused3) {
            zze.zza("Could not find file for Clearcut");
        }
    }

    public final synchronized void f(int i) {
        i3 i3Var = this.b;
        i3Var.G();
        i3Var.F(com.google.android.gms.ads.internal.util.zzs.zzd());
        cxe cxeVar = new cxe(this.a, ((j3) i3Var.q()).l(), null);
        int i2 = i - 1;
        cxeVar.a(i2);
        cxeVar.c();
        zze.zza("Logging Event with event code : ".concat(String.valueOf(Integer.toString(i2, 10))));
    }

    public o0(exe exeVar) {
        this.b = j3.v0();
        this.a = exeVar;
        this.c = ((Boolean) zzbd.zzc().b(cye.g5)).booleanValue();
    }
}
