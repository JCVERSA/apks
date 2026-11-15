package androidx.compose.ui.graphics;

public abstract class g4 {
    public static final e4 a(int i10, int i11, int i12, boolean z10, androidx.compose.ui.graphics.colorspace.c cVar) {
        return q0.a(i10, i11, i12, z10, cVar);
    }

    public static e4 b(int i10, int i11, int i12, boolean z10, androidx.compose.ui.graphics.colorspace.c cVar, int i13, Object obj) {
        if ((i13 & 4) != 0) {
            i12 = f4.f4130b.b();
        }
        if ((i13 & 8) != 0) {
            z10 = true;
        }
        if ((i13 & 16) != 0) {
            cVar = androidx.compose.ui.graphics.colorspace.g.f4044a.w();
        }
        return a(i10, i11, i12, z10, cVar);
    }
}
