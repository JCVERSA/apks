package defpackage;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.a0;
import com.google.android.gms.internal.ads.zzfom;
import com.google.android.gms.internal.ads.zzgwn;
import com.lzy.okgo.model.HttpHeaders;
import java.util.HashMap;
import java.util.Map;

public final class yxh implements uwh {
    public final Object a;
    public final zxh b;
    public final hyh c;
    public final rwh d;

    public yxh(Object obj, zxh zxhVar, hyh hyhVar, rwh rwhVar) {
        this.a = obj;
        this.b = zxhVar;
        this.c = hyhVar;
        this.d = rwhVar;
    }

    public static String i(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        rpe rpeVarB0 = a0.b0();
        rpeVarB0.x(5);
        rpeVarB0.v(zzgwn.zzv(bArr, 0, bArr.length));
        return Base64.encodeToString(((a0) rpeVarB0.q()).l(), 11);
    }

    @Override
    public final synchronized String a(Context context, String str) {
        Map mapZzb;
        mapZzb = this.c.zzb();
        mapZzb.put("f", "q");
        mapZzb.put("ctx", context);
        mapZzb.put("aid", null);
        return i(j(null, mapZzb));
    }

    @Override
    public final synchronized void b(String str, MotionEvent motionEvent) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            HashMap map = new HashMap();
            map.put("t", new Throwable());
            map.put("aid", null);
            map.put("evt", motionEvent);
            Object obj = this.a;
            obj.getClass().getDeclaredMethod("he", Map.class).invoke(obj, map);
            this.d.d(3003, System.currentTimeMillis() - jCurrentTimeMillis);
        } catch (Exception e) {
            throw new zzfom(2005, e);
        }
    }

    @Override
    public final synchronized String c(Context context, String str, View view, Activity activity) {
        Map mapZzc;
        mapZzc = this.c.zzc();
        mapZzc.put("f", "v");
        mapZzc.put("ctx", context);
        mapZzc.put("aid", null);
        mapZzc.put("view", view);
        mapZzc.put("act", activity);
        return i(j(null, mapZzc));
    }

    @Override
    public final synchronized String d(Context context, String str, String str2, View view, Activity activity) {
        Map mapZza;
        mapZza = this.c.zza();
        mapZza.put("f", "c");
        mapZza.put("ctx", context);
        mapZza.put("cs", str2);
        mapZza.put("aid", null);
        mapZza.put("view", view);
        mapZza.put("act", activity);
        return i(j(null, mapZza));
    }

    public final synchronized int e() {
        Object obj;
        try {
            obj = this.a;
        } catch (Exception e) {
            throw new zzfom(2006, e);
        }
        return ((Integer) obj.getClass().getDeclaredMethod("lcs", null).invoke(obj, null)).intValue();
    }

    public final zxh f() {
        return this.b;
    }

    public final synchronized void g() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Object obj = this.a;
            obj.getClass().getDeclaredMethod(HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, null).invoke(obj, null);
            this.d.d(3001, System.currentTimeMillis() - jCurrentTimeMillis);
        } catch (Exception e) {
            throw new zzfom(2003, e);
        }
    }

    public final synchronized boolean h() {
        Object obj;
        try {
            obj = this.a;
        } catch (Exception e) {
            throw new zzfom(2001, e);
        }
        return ((Boolean) obj.getClass().getDeclaredMethod("init", null).invoke(obj, null)).booleanValue();
    }

    public final synchronized byte[] j(Map map, Map map2) {
        Object obj;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            obj = this.a;
        } catch (Exception e) {
            this.d.c(2007, System.currentTimeMillis() - jCurrentTimeMillis, e);
            return null;
        }
        return (byte[]) obj.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(obj, null, map2);
    }
}
