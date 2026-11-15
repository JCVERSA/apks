package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class g0 extends ContextWrapper {

    private static final Object f1719c = new Object();

    private static ArrayList f1720d;

    private final Resources f1721a;

    private final Resources.Theme f1722b;

    private g0(Context context) {
        super(context);
        if (!t0.c()) {
            this.f1721a = new i0(this, context.getResources());
            this.f1722b = null;
            return;
        }
        t0 t0Var = new t0(this, context.getResources());
        this.f1721a = t0Var;
        Resources.Theme themeNewTheme = t0Var.newTheme();
        this.f1722b = themeNewTheme;
        themeNewTheme.setTo(context.getTheme());
    }

    private static boolean a(Context context) {
        if ((context instanceof g0) || (context.getResources() instanceof i0) || (context.getResources() instanceof t0)) {
            return false;
        }
        return t0.c();
    }

    public static Context b(Context context) {
        if (!a(context)) {
            return context;
        }
        synchronized (f1719c) {
            try {
                ArrayList arrayList = f1720d;
                if (arrayList == null) {
                    f1720d = new ArrayList();
                } else {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        WeakReference weakReference = (WeakReference) f1720d.get(size);
                        if (weakReference == null || weakReference.get() == null) {
                            f1720d.remove(size);
                        }
                    }
                    for (int size2 = f1720d.size() - 1; size2 >= 0; size2--) {
                        WeakReference weakReference2 = (WeakReference) f1720d.get(size2);
                        g0 g0Var = weakReference2 != null ? (g0) weakReference2.get() : null;
                        if (g0Var != null && g0Var.getBaseContext() == context) {
                            return g0Var;
                        }
                    }
                }
                g0 g0Var2 = new g0(context);
                f1720d.add(new WeakReference(g0Var2));
                return g0Var2;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public AssetManager getAssets() {
        return this.f1721a.getAssets();
    }

    @Override
    public Resources getResources() {
        return this.f1721a;
    }

    @Override
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f1722b;
        return theme == null ? super.getTheme() : theme;
    }

    @Override
    public void setTheme(int i10) {
        Resources.Theme theme = this.f1722b;
        if (theme == null) {
            super.setTheme(i10);
        } else {
            theme.applyStyle(i10, true);
        }
    }
}
