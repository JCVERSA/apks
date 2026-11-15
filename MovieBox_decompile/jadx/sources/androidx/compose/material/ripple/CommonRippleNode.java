package androidx.compose.material.ripple;

import androidx.collection.n0;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.x1;
import androidx.compose.ui.node.o;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class CommonRippleNode extends RippleNode {

    private final n0 f3132y;

    public CommonRippleNode(p.g gVar, boolean z10, float f10, x1 x1Var, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, z10, f10, x1Var, function0);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x004c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:15:0x004e A[LOOP:0: B:5:0x0013->B:15:0x004e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:23:0x0051 A[EDGE_INSN: B:23:0x0051->B:16:0x0051 BREAK  A[LOOP:0: B:5:0x0013->B:15:0x004e], SYNTHETIC] */
    @Override
    public void H1(p.k.b bVar, long j10, float f10) {
        n0 n0Var = this.f3132y;
        Object[] objArr = n0Var.f2036b;
        Object[] objArr2 = n0Var.f2037c;
        long[] jArr = n0Var.f2035a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j11 = jArr[i10];
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i10 != length) {
                        break;
                        break;
                    }
                    i10++;
                } else {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j11) < 128) {
                            int i13 = (i10 << 3) + i12;
                            ((RippleAnimation) objArr2[i13]).h();
                        }
                        j11 >>= 8;
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
        RippleAnimation rippleAnimation = new RippleAnimation(J1() ? y.g.d(bVar.a()) : null, f10, J1(), null);
        this.f3132y.r(bVar, rippleAnimation);
        kotlinx.coroutines.k.d(c1(), null, null, new CommonRippleNode$addRipple$2(rippleAnimation, this, bVar, null), 3, null);
        o.a(this);
    }

    @Override
    public void I1(z.g gVar) {
        float f10;
        float fD = ((c) K1().invoke()).d();
        if (fD == 0.0f) {
            return;
        }
        n0 n0Var = this.f3132y;
        Object[] objArr = n0Var.f2036b;
        Object[] objArr2 = n0Var.f2037c;
        long[] jArr = n0Var.f2035a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            long j10 = jArr[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8;
                int i12 = 8 - ((~(i10 - length)) >>> 31);
                long j11 = j10;
                int i13 = 0;
                while (i13 < i12) {
                    if ((j11 & 255) < 128) {
                        int i14 = (i10 << 3) + i13;
                        ((RippleAnimation) objArr2[i14]).e(gVar, u1.k(L1(), fD, 0.0f, 0.0f, 0.0f, 14, null));
                    }
                    j11 >>= i11;
                    i13++;
                    i11 = i11;
                    fD = fD;
                    i12 = i12;
                }
                f10 = fD;
                if (i12 != i11) {
                    return;
                }
            } else {
                f10 = fD;
            }
            if (i10 == length) {
                return;
            }
            i10++;
            fD = f10;
        }
    }

    @Override
    public void O1(p.k.b bVar) {
        RippleAnimation rippleAnimation = (RippleAnimation) this.f3132y.b(bVar);
        if (rippleAnimation != null) {
            rippleAnimation.h();
        }
    }

    @Override
    public void n1() {
        this.f3132y.h();
    }

    private CommonRippleNode(p.g gVar, boolean z10, float f10, x1 x1Var, Function0 function0) {
        super(gVar, z10, f10, x1Var, function0, null);
        this.f3132y = new n0(0, 1, null);
    }
}
