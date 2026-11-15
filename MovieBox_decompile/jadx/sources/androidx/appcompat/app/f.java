package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.app.LocaleManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.util.AttributeSet;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.Executor;

public abstract class f {

    static c f852a = new c(new d());

    private static int f853b = -100;

    private static androidx.core.os.i f854c = null;

    private static androidx.core.os.i f855d = null;

    private static Boolean f856e = null;

    private static boolean f857f = false;

    private static final androidx.collection.b f858g = new androidx.collection.b();

    private static final Object f859h = new Object();

    private static final Object f860i = new Object();

    static class a {
        static LocaleList a(String str) {
            return LocaleList.forLanguageTags(str);
        }
    }

    static class b {
        static LocaleList a(Object obj) {
            return ((LocaleManager) obj).getApplicationLocales();
        }

        static void b(Object obj, LocaleList localeList) {
            ((LocaleManager) obj).setApplicationLocales(localeList);
        }
    }

    static class c implements Executor {

        private final Object f861a = new Object();

        final Queue f862b = new ArrayDeque();

        final Executor f863c;

        Runnable f864d;

        c(Executor executor) {
            this.f863c = executor;
        }

        public void b(Runnable runnable) {
            try {
                runnable.run();
            } finally {
                c();
            }
        }

        protected void c() {
            synchronized (this.f861a) {
                try {
                    Runnable runnable = (Runnable) this.f862b.poll();
                    this.f864d = runnable;
                    if (runnable != null) {
                        this.f863c.execute(runnable);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void execute(final Runnable runnable) {
            synchronized (this.f861a) {
                try {
                    this.f862b.add(new Runnable() {
                        @Override
                        public final void run() {
                            this.f865a.b(runnable);
                        }
                    });
                    if (this.f864d == null) {
                        c();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    static class d implements Executor {
        d() {
        }

        @Override
        public void execute(Runnable runnable) {
            new Thread(runnable).start();
        }
    }

    f() {
    }

    static void I(f fVar) {
        synchronized (f859h) {
            J(fVar);
        }
    }

    private static void J(f fVar) {
        synchronized (f859h) {
            try {
                Iterator it = f858g.iterator();
                while (it.hasNext()) {
                    f fVar2 = (f) ((WeakReference) it.next()).get();
                    if (fVar2 == fVar || fVar2 == null) {
                        it.remove();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void O(int i10) {
        if ((i10 == -1 || i10 == 0 || i10 == 1 || i10 == 2 || i10 == 3) && f853b != i10) {
            f853b = i10;
            g();
        }
    }

    static void U(Context context) {
        if (Build.VERSION.SDK_INT >= 33) {
            ComponentName componentName = new ComponentName(context, "androidx.appcompat.app.AppLocalesMetadataHolderService");
            if (context.getPackageManager().getComponentEnabledSetting(componentName) != 1) {
                if (n().f()) {
                    String strB = androidx.core.app.d.b(context);
                    Object systemService = context.getSystemService("locale");
                    if (systemService != null) {
                        b.b(systemService, a.a(strB));
                    }
                }
                context.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
            }
        }
    }

    static void V(final Context context) {
        if (y(context)) {
            if (Build.VERSION.SDK_INT >= 33) {
                if (f857f) {
                    return;
                }
                f852a.execute(new Runnable() {
                    @Override
                    public final void run() {
                        f.z(context);
                    }
                });
                return;
            }
            synchronized (f860i) {
                try {
                    androidx.core.os.i iVar = f854c;
                    if (iVar == null) {
                        if (f855d == null) {
                            f855d = androidx.core.os.i.c(androidx.core.app.d.b(context));
                        }
                        if (f855d.f()) {
                        } else {
                            f854c = f855d;
                        }
                    } else if (!iVar.equals(f855d)) {
                        androidx.core.os.i iVar2 = f854c;
                        f855d = iVar2;
                        androidx.core.app.d.a(context, iVar2.h());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    static void d(f fVar) {
        synchronized (f859h) {
            J(fVar);
            f858g.add(new WeakReference(fVar));
        }
    }

    private static void g() {
        synchronized (f859h) {
            try {
                Iterator it = f858g.iterator();
                while (it.hasNext()) {
                    f fVar = (f) ((WeakReference) it.next()).get();
                    if (fVar != null) {
                        fVar.f();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static f j(Activity activity, androidx.appcompat.app.d dVar) {
        return new AppCompatDelegateImpl(activity, dVar);
    }

    public static f k(Dialog dialog, androidx.appcompat.app.d dVar) {
        return new AppCompatDelegateImpl(dialog, dVar);
    }

    public static androidx.core.os.i n() {
        if (Build.VERSION.SDK_INT >= 33) {
            Object objS = s();
            if (objS != null) {
                return androidx.core.os.i.j(b.a(objS));
            }
        } else {
            androidx.core.os.i iVar = f854c;
            if (iVar != null) {
                return iVar;
            }
        }
        return androidx.core.os.i.e();
    }

    public static int p() {
        return f853b;
    }

    static Object s() {
        Context contextO;
        Iterator it = f858g.iterator();
        while (it.hasNext()) {
            f fVar = (f) ((WeakReference) it.next()).get();
            if (fVar != null && (contextO = fVar.o()) != null) {
                return contextO.getSystemService("locale");
            }
        }
        return null;
    }

    static androidx.core.os.i u() {
        return f854c;
    }

    static boolean y(Context context) {
        if (f856e == null) {
            try {
                Bundle bundle = AppLocalesMetadataHolderService.a(context).metaData;
                if (bundle != null) {
                    f856e = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                f856e = Boolean.FALSE;
            }
        }
        return f856e.booleanValue();
    }

    public static void z(Context context) {
        U(context);
        f857f = true;
    }

    public abstract void A(Configuration configuration);

    public abstract void B(Bundle bundle);

    public abstract void C();

    public abstract void D(Bundle bundle);

    public abstract void E();

    public abstract void F(Bundle bundle);

    public abstract void G();

    public abstract void H();

    public abstract boolean K(int i10);

    public abstract void L(int i10);

    public abstract void M(View view);

    public abstract void N(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void Q(Toolbar toolbar);

    public abstract void R(int i10);

    public abstract void S(CharSequence charSequence);

    public abstract androidx.appcompat.view.b T(androidx.appcompat.view.b.a aVar);

    public abstract void e(View view, ViewGroup.LayoutParams layoutParams);

    public abstract boolean f();

    public Context i(Context context) {
        h(context);
        return context;
    }

    public abstract View l(View view, String str, Context context, AttributeSet attributeSet);

    public abstract View m(int i10);

    public abstract Context o();

    public abstract androidx.appcompat.app.b q();

    public abstract int r();

    public abstract MenuInflater t();

    public abstract androidx.appcompat.app.a v();

    public abstract void w();

    public abstract void x();

    public void P(OnBackInvokedDispatcher onBackInvokedDispatcher) {
    }

    public void h(Context context) {
    }
}
