package androidx.compose.ui.focus;

import androidx.collection.n0;
import androidx.collection.v0;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function0;

public final class v {

    private final n0 f3944a = v0.d();

    private final androidx.compose.runtime.collection.b f3945b = new androidx.compose.runtime.collection.b(new Function0[16], 0);

    private boolean f3946c;

    public final void f() {
        this.f3946c = true;
    }

    public final void g() {
        this.f3944a.h();
        int i10 = 0;
        this.f3946c = false;
        androidx.compose.runtime.collection.b bVar = this.f3945b;
        int iN = bVar.n();
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            do {
                ((Function0) objArrM[i10]).invoke();
                i10++;
            } while (i10 < iN);
        }
        this.f3945b.h();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0042 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:15:0x0044 A[LOOP:0: B:5:0x000d->B:15:0x0044, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:19:0x0047 A[EDGE_INSN: B:19:0x0047->B:16:0x0047 BREAK  A[LOOP:0: B:5:0x000d->B:15:0x0044], SYNTHETIC] */
    public final void h() {
        n0 n0Var = this.f3944a;
        Object[] objArr = n0Var.f2036b;
        long[] jArr = n0Var.f2035a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i10 != length) {
                        break;
                        break;
                    }
                    i10++;
                } else {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            ((FocusTargetNode) objArr[(i10 << 3) + i12]).G1();
                        }
                        j10 >>= 8;
                    }
                    if (i11 != 8) {
                        break;
                    } else if (i10 != length) {
                        break;
                    } else {
                        i10++;
                    }
                }
            }
        }
        this.f3944a.h();
        this.f3946c = false;
        this.f3945b.h();
    }

    public final FocusStateImpl i(FocusTargetNode focusTargetNode) {
        return (FocusStateImpl) this.f3944a.b(focusTargetNode);
    }

    public final void j(FocusTargetNode focusTargetNode, FocusStateImpl focusStateImpl) {
        n0 n0Var = this.f3944a;
        if (focusStateImpl != null) {
            n0Var.r(focusTargetNode, focusStateImpl);
        } else {
            g0.a.c("requires a non-null focus state");
            throw new KotlinNothingValueException();
        }
    }
}
