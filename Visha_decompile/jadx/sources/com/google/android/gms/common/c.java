package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.util.Log;
import com.google.android.gms.internal.common.zzah;
import defpackage.die;
import defpackage.mij;
import defpackage.w8e;
import defpackage.wd8;
import defpackage.yb;
import java.util.Arrays;

public class c {
    public static c b;
    public final Context a;

    public c(Context context) {
        this.a = context.getApplicationContext();
    }

    public static c a(Context context) {
        wd8.l(context);
        synchronized (c.class) {
            try {
                if (b == null) {
                    e.a(context);
                    b = new c(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean c(PackageInfo packageInfo, boolean z) {
        zzah zzahVarZzj;
        if (packageInfo == null) {
            return false;
        }
        if (z && ("com.android.vending".equals(packageInfo.packageName) || "com.google.android.gms".equals(packageInfo.packageName))) {
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            z = (applicationInfo == null || (applicationInfo.flags & 129) == 0) ? false : true;
        }
        try {
            zzah zzahVar = z ? d.c : d.b;
            Object obj = yb.a;
            mij.a(true);
            SigningInfo signingInfo = packageInfo.signingInfo;
            if (signingInfo == null || signingInfo.hasMultipleSigners() || signingInfo.getSigningCertificateHistory() == null) {
                zzahVarZzj = zzah.zzj();
            } else {
                int i = zzah.zzd;
                w8e w8eVar = new w8e();
                for (Signature signature : signingInfo.getSigningCertificateHistory()) {
                    w8eVar.b(signature.toByteArray());
                }
                zzahVarZzj = w8eVar.d();
            }
            if (zzahVarZzj.isEmpty()) {
                throw new IllegalArgumentException("Unable to obtain package certificate history.");
            }
            zzah zzahVarZzh = zzahVarZzj.zzh();
            int size = zzahVarZzh.size();
            int i2 = 0;
            while (i2 < size) {
                byte[] bArr = (byte[]) zzahVarZzh.get(i2);
                die dieVarListIterator = zzahVar.listIterator(0);
                do {
                    int i3 = i2 + 1;
                    if (!dieVarListIterator.hasNext()) {
                        i2 = i3;
                    }
                } while (!Arrays.equals(bArr, (byte[]) dieVarListIterator.next()));
                return true;
            }
            return false;
        } catch (IllegalArgumentException unused) {
            Log.i("GoogleSignatureVerifier", "package info is not set correctly");
            return (z ? d(packageInfo, d.a) : d(packageInfo, d.a[0])) != null;
        }
    }

    public static zzj d(PackageInfo packageInfo, zzj... zzjVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null) {
            if (signatureArr.length != 1) {
                Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
                return null;
            }
            zzk zzkVar = new zzk(packageInfo.signatures[0].toByteArray());
            for (int i = 0; i < zzjVarArr.length; i++) {
                if (zzjVarArr[i].equals(zzkVar)) {
                    return zzjVarArr[i];
                }
            }
        }
        return null;
    }

    public boolean b(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (c(packageInfo, false)) {
            return true;
        }
        if (c(packageInfo, true)) {
            if (b.g(this.a)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        }
        return false;
    }
}
