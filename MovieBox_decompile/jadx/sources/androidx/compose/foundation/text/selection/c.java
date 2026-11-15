package androidx.compose.foundation.text.selection;

import y.g;
import y.i;

public abstract class c {

    private static final i f3035a = new i(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);

    public static final boolean a(i iVar, long j10) {
        float f10 = iVar.f();
        float fG = iVar.g();
        float fM = g.m(j10);
        if (f10 <= fM && fM <= fG) {
            float fI = iVar.i();
            float fC = iVar.c();
            float fN = g.n(j10);
            if (fI <= fN && fN <= fC) {
                return true;
            }
        }
        return false;
    }
}
