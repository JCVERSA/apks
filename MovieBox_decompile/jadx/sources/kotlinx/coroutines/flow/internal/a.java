package kotlinx.coroutines.flow.internal;

import java.util.Arrays;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.h1;

public abstract class a {

    private c[] f64834a;

    private int f64835b;

    private int f64836c;

    private t f64837d;

    public final h1 c() {
        t tVar;
        synchronized (this) {
            tVar = this.f64837d;
            if (tVar == null) {
                tVar = new t(this.f64835b);
                this.f64837d = tVar;
            }
        }
        return tVar;
    }

    protected final c i() {
        c cVarJ;
        t tVar;
        synchronized (this) {
            try {
                c[] cVarArrK = this.f64834a;
                if (cVarArrK == null) {
                    cVarArrK = k(2);
                    this.f64834a = cVarArrK;
                } else if (this.f64835b >= cVarArrK.length) {
                    Object[] objArrCopyOf = Arrays.copyOf(cVarArrK, cVarArrK.length * 2);
                    Intrinsics.g(objArrCopyOf, "copyOf(...)");
                    this.f64834a = (c[]) objArrCopyOf;
                    cVarArrK = (c[]) objArrCopyOf;
                }
                int i10 = this.f64836c;
                do {
                    cVarJ = cVarArrK[i10];
                    if (cVarJ == null) {
                        cVarJ = j();
                        cVarArrK[i10] = cVarJ;
                    }
                    i10++;
                    if (i10 >= cVarArrK.length) {
                        i10 = 0;
                    }
                    Intrinsics.f(cVarJ, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                } while (!cVarJ.a(this));
                this.f64836c = i10;
                this.f64835b++;
                tVar = this.f64837d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (tVar != null) {
            tVar.a0(1);
        }
        return cVarJ;
    }

    protected abstract c j();

    protected abstract c[] k(int i10);

    protected final void l(c cVar) {
        t tVar;
        int i10;
        Continuation[] continuationArrB;
        synchronized (this) {
            try {
                int i11 = this.f64835b - 1;
                this.f64835b = i11;
                tVar = this.f64837d;
                if (i11 == 0) {
                    this.f64836c = 0;
                }
                Intrinsics.f(cVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                continuationArrB = cVar.b(this);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        for (Continuation continuation : continuationArrB) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m453constructorimpl(Unit.f64096a));
            }
        }
        if (tVar != null) {
            tVar.a0(-1);
        }
    }

    protected final int m() {
        return this.f64835b;
    }

    protected final c[] n() {
        return this.f64834a;
    }
}
