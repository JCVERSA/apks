package defpackage;

import android.util.Log;
import com.google.android.gms.common.internal.a;
import java.util.Objects;

public abstract class hgf {
    public Object a;
    public boolean b;
    public final a c;

    public hgf(a aVar, Object obj) {
        Objects.requireNonNull(aVar);
        this.c = aVar;
        this.a = obj;
        this.b = false;
    }

    public abstract void a(Object obj);

    public final void b() {
        Object obj;
        synchronized (this) {
            try {
                obj = this.a;
                if (this.b) {
                    String string = toString();
                    StringBuilder sb = new StringBuilder(string.length() + 47);
                    sb.append("Callback proxy ");
                    sb.append(string);
                    sb.append(" being reused. This is not safe.");
                    Log.w("GmsClient", sb.toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (obj != null) {
            a(obj);
        }
        synchronized (this) {
            this.b = true;
        }
        c();
    }

    public final void c() {
        d();
        a aVar = this.c;
        synchronized (aVar.B()) {
            aVar.B().remove(this);
        }
    }

    public final void d() {
        synchronized (this) {
            this.a = null;
        }
    }
}
