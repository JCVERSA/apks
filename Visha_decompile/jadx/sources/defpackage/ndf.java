package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzv;

public final class ndf implements iue {
    public final Context b;
    public final Object c;
    public final String d;
    public boolean e;

    public ndf(Context context, String str) {
        this.b = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.d = str;
        this.e = false;
        this.c = new Object();
    }

    public final String a() {
        return this.d;
    }

    public final void b(boolean z) {
        rdf rdfVarZzo = zzv.zzo();
        Context context = this.b;
        if (rdfVarZzo.p(context)) {
            synchronized (this.c) {
                try {
                    if (this.e == z) {
                        return;
                    }
                    this.e = z;
                    String str = this.d;
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    if (this.e) {
                        zzv.zzo().f(context, str);
                    } else {
                        zzv.zzo().g(context, str);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override
    public final void zzdn(hue hueVar) {
        b(hueVar.j);
    }
}
