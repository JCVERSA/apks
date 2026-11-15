package com.google.accompanist.systemuicontroller;

import androidx.compose.ui.graphics.w1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class b {
    public static void a(c cVar, long j10, boolean z10, boolean z11, Function1 transformColorForLightContent) {
        Intrinsics.h(transformColorForLightContent, "transformColorForLightContent");
        cVar.a(j10, z10, transformColorForLightContent);
        cVar.b(j10, z10, z11, transformColorForLightContent);
    }

    public static void b(c cVar, long j10, boolean z10, boolean z11, Function1 function1, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setSystemBarsColor-Iv8Zu3U");
        }
        if ((i10 & 2) != 0) {
            z10 = w1.i(j10) > 0.5f;
        }
        boolean z12 = z10;
        boolean z13 = (i10 & 4) != 0 ? true : z11;
        if ((i10 & 8) != 0) {
            function1 = SystemUiControllerKt.f23510b;
        }
        cVar.c(j10, z12, z13, function1);
    }
}
