package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import defpackage.c74;
import defpackage.eh5;
import defpackage.hcb;
import defpackage.hi;
import defpackage.k72;
import defpackage.lz4;
import defpackage.mcb;
import defpackage.nr0;
import defpackage.ocb;
import defpackage.or0;
import defpackage.px0;
import defpackage.vx9;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.l;

public abstract class CapturedTypeConstructorKt {

    public static final class a extends k72 {
        public final boolean d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(l lVar, boolean z) {
            super(lVar);
            this.d = z;
        }

        @Override
        public boolean b() {
            return this.d;
        }

        @Override
        public mcb e(eh5 eh5Var) {
            y45.j(eh5Var, "key");
            mcb mcbVarE = super.e(eh5Var);
            if (mcbVarE == null) {
                return null;
            }
            px0 px0VarC = eh5Var.I0().c();
            return CapturedTypeConstructorKt.b(mcbVarE, px0VarC instanceof hcb ? (hcb) px0VarC : null);
        }
    }

    public static final mcb b(final mcb mcbVar, hcb hcbVar) {
        if (hcbVar == null || mcbVar.c() == Variance.INVARIANT) {
            return mcbVar;
        }
        if (hcbVar.h() != mcbVar.c()) {
            return new ocb(c(mcbVar));
        }
        if (!mcbVar.b()) {
            return new ocb(mcbVar.getType());
        }
        vx9 vx9Var = LockBasedStorageManager.e;
        y45.i(vx9Var, "NO_LOCKS");
        return new ocb(new LazyWrappedType(vx9Var, new c74() {
            {
                super(0);
            }

            @Override
            public final eh5 invoke() {
                eh5 type = mcbVar.getType();
                y45.i(type, "this@createCapturedIfNeeded.type");
                return type;
            }
        }));
    }

    public static final eh5 c(mcb mcbVar) {
        y45.j(mcbVar, "typeProjection");
        return new nr0(mcbVar, null, false, null, 14, null);
    }

    public static final boolean d(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        return eh5Var.I0() instanceof or0;
    }

    public static final l e(l lVar, boolean z) {
        y45.j(lVar, "<this>");
        if (!(lVar instanceof lz4)) {
            return new a(lVar, z);
        }
        lz4 lz4Var = (lz4) lVar;
        hcb[] hcbVarArrJ = lz4Var.j();
        List<Pair> listS1 = hi.s1(lz4Var.i(), lz4Var.j());
        ArrayList arrayList = new ArrayList(z71.v(listS1, 10));
        for (Pair pair : listS1) {
            arrayList.add(b((mcb) pair.getFirst(), (hcb) pair.getSecond()));
        }
        return new lz4(hcbVarArrJ, (mcb[]) arrayList.toArray(new mcb[0]), z);
    }

    public static l f(l lVar, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return e(lVar, z);
    }
}
