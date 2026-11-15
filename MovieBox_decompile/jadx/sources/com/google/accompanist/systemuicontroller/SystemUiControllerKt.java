package com.google.accompanist.systemuicontroller;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.window.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class SystemUiControllerKt {

    private static final long f23509a = w1.e(0.0f, 0.0f, 0.0f, 0.3f, null, 16, null);

    private static final Function1 f23510b = new Function1<u1, u1>() {
        @Override
        public Object invoke(Object obj) {
            return u1.g(m281invokel2rxGTc(((u1) obj).u()));
        }

        public final long m281invokel2rxGTc(long j10) {
            return w1.h(SystemUiControllerKt.f23509a, j10);
        }
    };

    private static final Window c(Context context) {
        while (!(context instanceof Activity)) {
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
            context = ((ContextWrapper) context).getBaseContext();
            Intrinsics.g(context, "getBaseContext(...)");
        }
        return ((Activity) context).getWindow();
    }

    private static final Window d(i iVar, int i10) {
        iVar.x(1009281237);
        if (k.H()) {
            k.Q(1009281237, i10, -1, "com.google.accompanist.systemuicontroller.findWindow (SystemUiController.kt:208)");
        }
        ViewParent parent = ((View) iVar.l(AndroidCompositionLocals_androidKt.j())).getParent();
        d dVar = parent instanceof d ? (d) parent : null;
        Window window = dVar != null ? dVar.getWindow() : null;
        if (window == null) {
            Context context = ((View) iVar.l(AndroidCompositionLocals_androidKt.j())).getContext();
            Intrinsics.g(context, "getContext(...)");
            window = c(context);
        }
        if (k.H()) {
            k.P();
        }
        iVar.N();
        return window;
    }

    public static final c e(Window window, i iVar, int i10, int i11) {
        iVar.x(-715745933);
        if ((i11 & 1) != 0) {
            window = d(iVar, 0);
        }
        if (k.H()) {
            k.Q(-715745933, i10, -1, "com.google.accompanist.systemuicontroller.rememberSystemUiController (SystemUiController.kt:201)");
        }
        View view = (View) iVar.l(AndroidCompositionLocals_androidKt.j());
        iVar.x(-1044852491);
        boolean zO = iVar.O(view) | iVar.O(window);
        Object objY = iVar.y();
        if (zO || objY == i.f3427a.a()) {
            objY = new a(view, window);
            iVar.p(objY);
        }
        a aVar = (a) objY;
        iVar.N();
        if (k.H()) {
            k.P();
        }
        iVar.N();
        return aVar;
    }
}
