package androidx.compose.ui.input.pointer;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    private final androidx.compose.ui.layout.l f4676a;

    private final m f4677b = new m();

    private final androidx.collection.h0 f4678c = new androidx.collection.h0(10);

    public f(androidx.compose.ui.layout.l lVar) {
        this.f4676a = lVar;
    }

    private final void f(long j10, androidx.collection.l0 l0Var) {
        this.f4677b.i(j10, l0Var);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0080  */
    /* JADX WARN: Code duplicated, block: B:25:0x008a  */
    public final void a(long j10, List list, boolean z10) {
        androidx.collection.h0 h0Var;
        Object objB;
        Object obj;
        m mVar = this.f4677b;
        this.f4678c.g();
        int size = list.size();
        boolean z11 = true;
        for (int i10 = 0; i10 < size; i10++) {
            androidx.compose.ui.f.c cVar = (androidx.compose.ui.f.c) list.get(i10);
            if (z11) {
                androidx.compose.runtime.collection.b bVarG = mVar.g();
                int iN = bVarG.n();
                if (iN <= 0) {
                    obj = null;
                    break;
                }
                Object[] objArrM = bVarG.m();
                int i11 = 0;
                while (true) {
                    obj = objArrM[i11];
                    if (Intrinsics.c(((l) obj).k(), cVar)) {
                        break;
                    }
                    i11++;
                    if (i11 >= iN) {
                        obj = null;
                        break;
                    }
                }
                l lVar = (l) obj;
                if (lVar != null) {
                    lVar.n();
                    lVar.l().b(j10);
                    androidx.collection.h0 h0Var2 = this.f4678c;
                    Object objB2 = h0Var2.b(j10);
                    if (objB2 == null) {
                        objB2 = new androidx.collection.l0(0, 1, null);
                        h0Var2.o(j10, objB2);
                    }
                    ((androidx.collection.l0) objB2).e(lVar);
                    mVar = lVar;
                } else {
                    z11 = false;
                    l lVar2 = new l(cVar);
                    lVar2.l().b(j10);
                    h0Var = this.f4678c;
                    objB = h0Var.b(j10);
                    if (objB == null) {
                        objB = new androidx.collection.l0(0, 1, null);
                        h0Var.o(j10, objB);
                    }
                    ((androidx.collection.l0) objB).e(lVar2);
                    mVar.g().b(lVar2);
                    mVar = lVar2;
                }
            } else {
                l lVar3 = new l(cVar);
                lVar3.l().b(j10);
                h0Var = this.f4678c;
                objB = h0Var.b(j10);
                if (objB == null) {
                    objB = new androidx.collection.l0(0, 1, null);
                    h0Var.o(j10, objB);
                }
                ((androidx.collection.l0) objB).e(lVar3);
                mVar.g().b(lVar3);
                mVar = lVar3;
            }
        }
        if (!z10) {
            return;
        }
        androidx.collection.h0 h0Var3 = this.f4678c;
        long[] jArr = h0Var3.f2031b;
        Object[] objArr = h0Var3.f2032c;
        long[] jArr2 = h0Var3.f2030a;
        int length = jArr2.length - 2;
        if (length < 0) {
            return;
        }
        int i12 = 0;
        while (true) {
            long j11 = jArr2[i12];
            if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i13 = 8 - ((~(i12 - length)) >>> 31);
                for (int i14 = 0; i14 < i13; i14++) {
                    if ((255 & j11) < 128) {
                        int i15 = (i12 << 3) + i14;
                        f(jArr[i15], (androidx.collection.l0) objArr[i15]);
                    }
                    j11 >>= 8;
                }
                if (i13 != 8) {
                    return;
                }
            }
            if (i12 == length) {
                return;
            } else {
                i12++;
            }
        }
    }

    public final void b() {
        this.f4677b.c();
    }

    public final boolean c(g gVar, boolean z10) {
        if (this.f4677b.a(gVar.b(), this.f4676a, gVar, z10)) {
            return this.f4677b.e(gVar) || this.f4677b.f(gVar.b(), this.f4676a, gVar, z10);
        }
        return false;
    }

    public final void d() {
        this.f4677b.d();
        b();
    }

    public final void e() {
        this.f4677b.h();
    }
}
