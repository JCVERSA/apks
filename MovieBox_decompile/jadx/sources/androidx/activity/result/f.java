package androidx.activity.result;

import f.g;
import kotlin.jvm.internal.Intrinsics;

public abstract class f {
    public static final e a(g.f mediaType, int i10, boolean z10, g.b defaultTab) {
        Intrinsics.h(mediaType, "mediaType");
        Intrinsics.h(defaultTab, "defaultTab");
        return new e.a().d(mediaType).c(i10).e(z10).b(defaultTab).a();
    }

    public static e b(g.f fVar, int i10, boolean z10, g.b bVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            fVar = g.c.f59871a;
        }
        if ((i11 & 2) != 0) {
            i10 = f.e.f59866b.a();
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        if ((i11 & 8) != 0) {
            bVar = g.b.a.f59869a;
        }
        return a(fVar, i10, z10, bVar);
    }
}
