package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class c extends b {

    private final b f3665s;

    private boolean f3666t;

    public c(int i10, SnapshotIdSet snapshotIdSet, Function1 function1, Function1 function2, b bVar) {
        super(i10, snapshotIdSet, function1, function2);
        this.f3665s = bVar;
        bVar.m(this);
    }

    private final void T() {
        if (this.f3666t) {
            return;
        }
        this.f3666t = true;
        this.f3665s.n(this);
    }

    @Override
    public k C() {
        Map mapR;
        if (this.f3665s.D() || this.f3665s.e()) {
            return new k.a(this);
        }
        MutableScatterSet mutableScatterSetE = E();
        int iF = f();
        if (mutableScatterSetE != null) {
            b bVar = this.f3665s;
            mapR = SnapshotKt.R(bVar, this, bVar.g());
        } else {
            mapR = null;
        }
        synchronized (SnapshotKt.I()) {
            try {
                SnapshotKt.g0(this);
                if (mutableScatterSetE == null || mutableScatterSetE.c() == 0) {
                    b();
                } else {
                    k kVarI = I(this.f3665s.f(), mapR, this.f3665s.g());
                    if (!Intrinsics.c(kVarI, k.b.f3702a)) {
                        return kVarI;
                    }
                    MutableScatterSet mutableScatterSetE2 = this.f3665s.E();
                    if (mutableScatterSetE2 != null) {
                        mutableScatterSetE2.i(mutableScatterSetE);
                    } else {
                        this.f3665s.P(mutableScatterSetE);
                        P(null);
                    }
                }
                if (this.f3665s.f() < iF) {
                    this.f3665s.B();
                }
                b bVar2 = this.f3665s;
                bVar2.v(bVar2.g().l(iF).j(F()));
                this.f3665s.J(iF);
                this.f3665s.L(y());
                this.f3665s.K(F());
                this.f3665s.M(G());
                Unit unit = Unit.f64096a;
                O(true);
                T();
                return k.b.f3702a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void d() {
        if (e()) {
            return;
        }
        super.d();
        T();
    }
}
