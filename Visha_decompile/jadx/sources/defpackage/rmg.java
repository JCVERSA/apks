package defpackage;

import android.text.TextUtils;
import defpackage.rmg;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class rmg {
    public final Map a = new ConcurrentHashMap();
    public final smg b;

    public rmg(smg smgVar) {
        this.b = smgVar;
    }

    public static rmg a(rmg rmgVar) {
        rmgVar.a.putAll(rmgVar.b.c);
        return rmgVar;
    }

    public final rmg b(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            this.a.put(str, str2);
        }
        return this;
    }

    public final rmg c(hmh hmhVar) {
        b("aai", hmhVar.w);
        b("request_id", hmhVar.n0);
        b("ad_format", hmh.a(hmhVar.b));
        return this;
    }

    public final rmg d(kmh kmhVar) {
        b("gqi", kmhVar.b);
        return this;
    }

    public final String e() {
        return this.b.a.b(this.a);
    }

    public final void i() {
        this.b.b.execute(new Runnable() {
            @Override
            public final void run() {
                rmg rmgVar = this.zza;
                rmgVar.b.a.e(rmgVar.a);
            }
        });
    }

    public final void j() {
        this.b.b.execute(new Runnable() {
            @Override
            public final void run() {
                rmg rmgVar = this.zza;
                rmgVar.b.a.g(rmgVar.a);
            }
        });
    }

    public final void k() {
        this.b.b.execute(new Runnable() {
            @Override
            public final void run() {
                rmg rmgVar = this.zza;
                rmgVar.b.a.f(rmgVar.a);
            }
        });
    }
}
