package defpackage;

import android.content.Context;
import android.renderscript.RenderScript;
import android.view.ContextThemeWrapper;
import com.yandex.div.core.DivPreloader;
import com.yandex.div.core.a;
import com.yandex.div.core.d;
import com.yandex.div.core.resources.ContextThemeWrapperWithResourceCache;
import com.yandex.div.internal.viewpool.ViewCreator;
import com.yandex.div.internal.viewpool.ViewPoolProfiler;

public abstract class hd2 {
    public static DivPreloader a(yk2 yk2Var, a aVar, mo2 mo2Var, vi2 vi2Var) {
        return new DivPreloader(yk2Var, aVar, vi2Var, mo2Var, DivPreloader.c.b);
    }

    public static d b(yk2 yk2Var, a aVar, mo2 mo2Var, vi2 vi2Var) {
        return new d(yk2Var, aVar, vi2Var, mo2Var, DivPreloader.c.b);
    }

    public static RenderScript c(Context context) {
        return RenderScript.createMultiContext(context, RenderScript.ContextType.NORMAL, 0, context.getApplicationInfo().targetSdkVersion);
    }

    public static fda d(bu2 bu2Var) {
        return new fda(bu2Var);
    }

    public static Context e(ContextThemeWrapper contextThemeWrapper, int i, boolean z) {
        return z ? new ContextThemeWrapperWithResourceCache(contextThemeWrapper, i) : new ContextThemeWrapper(contextThemeWrapper, i);
    }

    public static cdc f(boolean z, jk3 jk3Var, r08 r08Var, ViewCreator viewCreator) {
        return z ? new com.yandex.div.internal.viewpool.a((ViewPoolProfiler) jk3Var.b().d(), r08Var, viewCreator) : new gk8();
    }

    public static jk3 g(boolean z, ViewPoolProfiler.a aVar) {
        return z ? jk3.c(new ViewPoolProfiler(aVar)) : jk3.a();
    }
}
