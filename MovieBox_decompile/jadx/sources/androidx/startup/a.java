package androidx.startup;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class a {

    private static volatile a f14574d;

    private static final Object f14575e = new Object();

    final Context f14578c;

    final Set f14577b = new HashSet();

    final Map f14576a = new HashMap();

    a(Context context) {
        this.f14578c = context.getApplicationContext();
    }

    private Object d(Class cls, Set set) {
        Object objB;
        if (e4.a.d()) {
            try {
                e4.a.a(cls.getSimpleName());
            } catch (Throwable th2) {
                e4.a.b();
                throw th2;
            }
        }
        if (set.contains(cls)) {
            throw new IllegalStateException(String.format("Cannot initialize %s. Cycle detected.", cls.getName()));
        }
        if (this.f14576a.containsKey(cls)) {
            objB = this.f14576a.get(cls);
        } else {
            set.add(cls);
            try {
                d4.a aVar = (d4.a) cls.getDeclaredConstructor(null).newInstance(null);
                List<Class> listA = aVar.a();
                if (!listA.isEmpty()) {
                    for (Class cls2 : listA) {
                        if (!this.f14576a.containsKey(cls2)) {
                            d(cls2, set);
                        }
                    }
                }
                objB = aVar.b(this.f14578c);
                set.remove(cls);
                this.f14576a.put(cls, objB);
            } catch (Throwable th3) {
                throw new StartupException(th3);
            }
        }
        e4.a.b();
        return objB;
    }

    public static a e(Context context) {
        if (f14574d == null) {
            synchronized (f14575e) {
                try {
                    if (f14574d == null) {
                        f14574d = new a(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f14574d;
    }

    void a() {
        try {
            try {
                e4.a.a("Startup");
                b(this.f14578c.getPackageManager().getProviderInfo(new ComponentName(this.f14578c.getPackageName(), InitializationProvider.class.getName()), 128).metaData);
                e4.a.b();
            } catch (PackageManager.NameNotFoundException e10) {
                throw new StartupException(e10);
            }
        } catch (Throwable th2) {
            e4.a.b();
            throw th2;
        }
    }

    void b(Bundle bundle) {
        String string = this.f14578c.getString(R$string.androidx_startup);
        if (bundle != null) {
            try {
                HashSet hashSet = new HashSet();
                for (String str : bundle.keySet()) {
                    if (string.equals(bundle.getString(str, null))) {
                        Class<?> cls = Class.forName(str);
                        if (d4.a.class.isAssignableFrom(cls)) {
                            this.f14577b.add(cls);
                        }
                    }
                }
                Iterator it = this.f14577b.iterator();
                while (it.hasNext()) {
                    d((Class) it.next(), hashSet);
                }
            } catch (ClassNotFoundException e10) {
                throw new StartupException(e10);
            }
        }
    }

    Object c(Class cls) {
        Object objD;
        synchronized (f14575e) {
            try {
                objD = this.f14576a.get(cls);
                if (objD == null) {
                    objD = d(cls, new HashSet());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return objD;
    }

    public Object f(Class cls) {
        return c(cls);
    }

    public boolean g(Class cls) {
        return this.f14577b.contains(cls);
    }
}
