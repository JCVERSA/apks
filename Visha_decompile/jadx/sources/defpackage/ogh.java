package defpackage;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbuy;
import java.util.List;

public final class ogh {
    public final zzbuy a;
    public final int b;

    public ogh(zzbuy zzbuyVar, int i) {
        this.a = zzbuyVar;
        this.b = i;
    }

    public final int a() {
        return this.b;
    }

    public final int b() {
        Bundle bundle = this.a.zza.getBundle("extras");
        if (bundle == null || bundle.isEmpty()) {
            return -1;
        }
        switch (bundle.getString("query_info_type", "")) {
            case "requester_type_0":
                return 0;
            case "requester_type_1":
                return 1;
            case "requester_type_2":
                return 2;
            case "requester_type_3":
                return 3;
            case "requester_type_4":
                return 4;
            case "requester_type_5":
                return 5;
            case "requester_type_6":
                return 6;
            case "requester_type_7":
                return 7;
            case "requester_type_8":
                return 8;
            default:
                return -1;
        }
    }

    public final int c() {
        return this.a.zzo;
    }

    public final PackageInfo d() {
        return this.a.zzf;
    }

    public final String e() {
        return this.a.zzd;
    }

    public final String f() {
        return j3i.c(this.a.zza.getString("ms"));
    }

    public final String g() {
        return this.a.zzh;
    }

    public final List h() {
        return this.a.zze;
    }

    public final boolean i() {
        return this.a.zzl;
    }

    public final boolean j() {
        return this.a.zza.getBoolean("is_gbid");
    }

    public final boolean k() {
        return this.a.zzk;
    }
}
