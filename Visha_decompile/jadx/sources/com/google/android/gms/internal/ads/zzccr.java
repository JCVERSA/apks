package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import java.util.HashMap;
import org.mozilla.classfile.ByteCode;

final class zzccr implements Runnable {
    final String zza;
    final String zzb;
    final String zzc;
    final String zzd;
    final z3 zze;

    public zzccr(z3 z3Var, String str, String str2, String str3, String str4) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
        this.zze = z3Var;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:44:0x00a9  */
    @Override
    public final void run() {
        byte b;
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_EVENT, "precacheCanceled");
        map.put("src", this.zza);
        String str = this.zzb;
        if (!TextUtils.isEmpty(str)) {
            map.put("cachedSrc", str);
        }
        String str2 = this.zzc;
        switch (str2) {
            case "interrupted":
                b = 3;
                break;
            case "badUrl":
                b = 8;
                break;
            case "inProgress":
                b = 2;
                break;
            case "downloadTimeout":
                b = 9;
                break;
            case "contentLengthMissing":
                b = 0;
                break;
            case "playerFailed":
                b = 5;
                break;
            case "sizeExceeded":
                b = ByteCode.T_LONG;
                break;
            case "externalAbort":
                b = 10;
                break;
            case "noop":
                b = 4;
                break;
            case "error":
                b = 1;
                break;
            case "expireFailed":
                b = 6;
                break;
            case "noCacheDir":
                b = 7;
                break;
            default:
                b = -1;
                break;
        }
        String str3 = "internal";
        switch (b) {
            case 6:
            case 7:
                str3 = "io";
                break;
            case 8:
            case 9:
                str3 = "network";
                break;
            case 10:
            case 11:
                str3 = "policy";
                break;
        }
        map.put("type", str3);
        map.put("reason", str2);
        String str4 = this.zzd;
        if (!TextUtils.isEmpty(str4)) {
            map.put("message", str4);
        }
        z3.a(this.zze, "onPrecacheEvent", map);
    }
}
