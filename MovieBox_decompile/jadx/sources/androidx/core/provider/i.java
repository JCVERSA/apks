package androidx.core.provider;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.os.Build;
import androidx.collection.x0;
import androidx.collection.z;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

abstract class i {

    static final z f7888a = new z(16);

    private static final ExecutorService f7889b = RequestExecutor.a("fonts-androidx", 10, 10000);

    static final Object f7890c = new Object();

    static final x0 f7891d = new x0();

    class a implements Callable {

        final String f7892a;

        final Context f7893b;

        final androidx.core.provider.e f7894c;

        final int f7895d;

        a(String str, Context context, androidx.core.provider.e eVar, int i10) {
            this.f7892a = str;
            this.f7893b = context;
            this.f7894c = eVar;
            this.f7895d = i10;
        }

        @Override
        public e call() {
            return i.c(this.f7892a, this.f7893b, z0.h.a(new Object[]{this.f7894c}), this.f7895d);
        }
    }

    class b implements androidx.core.util.a {

        final CallbackWrapper f7896a;

        b(CallbackWrapper callbackWrapper) {
            this.f7896a = callbackWrapper;
        }

        @Override
        public void accept(e eVar) {
            if (eVar == null) {
                eVar = new e(-3);
            }
            this.f7896a.b(eVar);
        }
    }

    class c implements Callable {

        final String f7897a;

        final Context f7898b;

        final List f7899c;

        final int f7900d;

        c(String str, Context context, List list, int i10) {
            this.f7897a = str;
            this.f7898b = context;
            this.f7899c = list;
            this.f7900d = i10;
        }

        @Override
        public e call() {
            try {
                return i.c(this.f7897a, this.f7898b, this.f7899c, this.f7900d);
            } catch (Throwable unused) {
                return new e(-3);
            }
        }
    }

    class d implements androidx.core.util.a {

        final String f7901a;

        d(String str) {
            this.f7901a = str;
        }

        @Override
        public void accept(e eVar) {
            synchronized (i.f7890c) {
                try {
                    x0 x0Var = i.f7891d;
                    ArrayList arrayList = (ArrayList) x0Var.get(this.f7901a);
                    if (arrayList == null) {
                        return;
                    }
                    x0Var.remove(this.f7901a);
                    for (int i10 = 0; i10 < arrayList.size(); i10++) {
                        ((androidx.core.util.a) arrayList.get(i10)).accept(eVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private static String a(List list, int i10) {
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < list.size(); i11++) {
            sb2.append(((androidx.core.provider.e) list.get(i11)).d());
            sb2.append("-");
            sb2.append(i10);
            if (i11 < list.size() - 1) {
                sb2.append(";");
            }
        }
        return sb2.toString();
    }

    private static int b(k.a aVar) {
        int i10 = 1;
        if (aVar.e() != 0) {
            return aVar.e() != 1 ? -3 : -2;
        }
        k.b[] bVarArrC = aVar.c();
        if (bVarArrC != null && bVarArrC.length != 0) {
            i10 = 0;
            for (k.b bVar : bVarArrC) {
                int iB = bVar.b();
                if (iB != 0) {
                    if (iB < 0) {
                        return -3;
                    }
                    return iB;
                }
            }
        }
        return i10;
    }

    static e c(String str, Context context, List list, int i10) {
        e4.a.a("getFontSync");
        try {
            z zVar = f7888a;
            Typeface typeface = (Typeface) zVar.get(str);
            if (typeface != null) {
                e eVar = new e(typeface);
                e4.a.b();
                return eVar;
            }
            try {
                k.a aVarE = androidx.core.provider.d.e(context, list, null);
                int iB = b(aVarE);
                if (iB != 0) {
                    e eVar2 = new e(iB);
                    e4.a.b();
                    return eVar2;
                }
                Typeface typefaceB = (!aVarE.f() || Build.VERSION.SDK_INT < 29) ? z0.i.b(context, null, aVarE.c(), i10) : z0.i.c(context, null, aVarE.d(), i10);
                if (typefaceB == null) {
                    e eVar3 = new e(-3);
                    e4.a.b();
                    return eVar3;
                }
                zVar.put(str, typefaceB);
                e eVar4 = new e(typefaceB);
                e4.a.b();
                return eVar4;
            } catch (PackageManager.NameNotFoundException unused) {
                e eVar5 = new e(-1);
                e4.a.b();
                return eVar5;
            }
        } catch (Throwable th2) {
            e4.a.b();
            throw th2;
        }
    }

    static Typeface d(Context context, List list, int i10, Executor executor, CallbackWrapper callbackWrapper) {
        String strA = a(list, i10);
        Typeface typeface = (Typeface) f7888a.get(strA);
        if (typeface != null) {
            callbackWrapper.b(new e(typeface));
            return typeface;
        }
        b bVar = new b(callbackWrapper);
        synchronized (f7890c) {
            try {
                x0 x0Var = f7891d;
                ArrayList arrayList = (ArrayList) x0Var.get(strA);
                if (arrayList != null) {
                    arrayList.add(bVar);
                    return null;
                }
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(bVar);
                x0Var.put(strA, arrayList2);
                c cVar = new c(strA, context, list, i10);
                if (executor == null) {
                    executor = f7889b;
                }
                RequestExecutor.c(executor, cVar, new d(strA));
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    static Typeface e(Context context, androidx.core.provider.e eVar, CallbackWrapper callbackWrapper, int i10, int i11) {
        String strA = a(z0.h.a(new Object[]{eVar}), i10);
        Typeface typeface = (Typeface) f7888a.get(strA);
        if (typeface != null) {
            callbackWrapper.b(new e(typeface));
            return typeface;
        }
        if (i11 == -1) {
            e eVarC = c(strA, context, z0.h.a(new Object[]{eVar}), i10);
            callbackWrapper.b(eVarC);
            return eVarC.f7902a;
        }
        try {
            e eVar2 = (e) RequestExecutor.d(f7889b, new a(strA, context, eVar, i10), i11);
            callbackWrapper.b(eVar2);
            return eVar2.f7902a;
        } catch (InterruptedException unused) {
            callbackWrapper.b(new e(-3));
            return null;
        }
    }

    static final class e {

        final Typeface f7902a;

        final int f7903b;

        e(int i10) {
            this.f7902a = null;
            this.f7903b = i10;
        }

        boolean a() {
            return this.f7903b == 0;
        }

        e(Typeface typeface) {
            this.f7902a = typeface;
            this.f7903b = 0;
        }
    }
}
