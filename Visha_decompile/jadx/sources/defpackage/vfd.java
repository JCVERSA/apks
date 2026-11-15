package defpackage;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

public abstract class vfd {
    public final Rect a = new Rect();
    public String b = "";

    public static vfd b(b bVar) {
        if (bVar == null) {
            return null;
        }
        if (bVar.a > 0.0f) {
            return new ro0();
        }
        if (bVar.b > 0) {
            return new hp1();
        }
        return null;
    }

    public int a(b bVar, View view) {
        int iD;
        if (!e(view) || bVar == null || (iD = d(bVar, view)) == 0 || c(view)) {
            return 0;
        }
        return iD;
    }

    public final boolean c(View view) {
        if (view != null) {
            try {
                if (view.getParent() != null) {
                    ViewParent parent = view.getParent();
                    while (parent instanceof ViewGroup) {
                        ViewGroup viewGroup = (ViewGroup) parent;
                        if (viewGroup.getVisibility() != 0) {
                            return true;
                        }
                        parent = viewGroup.getParent();
                    }
                }
            } catch (Throwable th) {
                ikd.b().w("ssp", Log.getStackTraceString(th));
            }
        }
        return false;
    }

    public abstract int d(b bVar, View view);

    public final boolean e(View view) {
        return (view == null || view.getVisibility() != 0 || view.getAlpha() == 0.0f || !view.isAttachedToWindow() || view.getRootView() == null) ? false : true;
    }
}
