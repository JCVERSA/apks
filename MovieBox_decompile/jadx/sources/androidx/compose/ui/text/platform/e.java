package androidx.compose.ui.text.platform;

import androidx.compose.ui.text.d0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public abstract class e {
    public static final androidx.compose.ui.text.l a(androidx.compose.ui.text.o oVar, int i10, boolean z10, long j10) {
        Intrinsics.f(oVar, "null cannot be cast to non-null type androidx.compose.ui.text.platform.AndroidParagraphIntrinsics");
        return new androidx.compose.ui.text.a((AndroidParagraphIntrinsics) oVar, i10, z10, j10, null);
    }

    public static final androidx.compose.ui.text.l b(String str, d0 d0Var, List list, List list2, int i10, boolean z10, long j10, o0.e eVar, androidx.compose.ui.text.font.h.b bVar) {
        return new androidx.compose.ui.text.a(new AndroidParagraphIntrinsics(str, d0Var, list, list2, bVar, eVar), i10, z10, j10, null);
    }
}
