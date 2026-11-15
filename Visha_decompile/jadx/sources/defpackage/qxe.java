package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;
import org.json.JSONObject;

public abstract class qxe {
    public final int a;
    public final String b;
    public final Object c;
    public final Object d;

    public qxe(int i, String str, Object obj, Object obj2, pxe pxeVar) {
        this.a = i;
        this.b = str;
        this.c = obj;
        this.d = obj2;
        zzbd.zza().d(this);
    }

    public static qxe f(int i, String str, float f, float f2) {
        return new nxe(1, str, Float.valueOf(f), Float.valueOf(f2));
    }

    public static qxe g(int i, String str, int i2, int i3) {
        return new lxe(1, str, Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public static qxe h(int i, String str, long j, long j2) {
        return new mxe(1, str, Long.valueOf(j), Long.valueOf(j2));
    }

    public static qxe i(int i, String str) {
        oxe oxeVar = new oxe(1, "gads:sdk_core_constants:experiment_id", null, null);
        zzbd.zza().c(oxeVar);
        return oxeVar;
    }

    public abstract Object a(JSONObject jSONObject);

    public abstract Object b(Bundle bundle);

    public abstract Object c(SharedPreferences sharedPreferences);

    public abstract void d(SharedPreferences.Editor editor, Object obj);

    public final int e() {
        return this.a;
    }

    public final Object j() {
        return zzbd.zzc().b(this);
    }

    public final Object k() {
        return zzbd.zzc().f() ? this.d : this.c;
    }

    public final String l() {
        return this.b;
    }
}
