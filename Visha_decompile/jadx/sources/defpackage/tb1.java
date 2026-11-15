package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.b;

public final class tb1 {
    public final Object a;
    public final b b;
    public final u74 c;
    public final Object d;
    public final Throwable e;

    public tb1(Object obj, b bVar, u74 u74Var, Object obj2, Throwable th) {
        this.a = obj;
        this.b = bVar;
        this.c = u74Var;
        this.d = obj2;
        this.e = th;
    }

    public static tb1 b(tb1 tb1Var, Object obj, b bVar, u74 u74Var, Object obj2, Throwable th, int i, Object obj3) {
        if ((i & 1) != 0) {
            obj = tb1Var.a;
        }
        if ((i & 2) != 0) {
            bVar = tb1Var.b;
        }
        b bVar2 = bVar;
        if ((i & 4) != 0) {
            u74Var = tb1Var.c;
        }
        u74 u74Var2 = u74Var;
        if ((i & 8) != 0) {
            obj2 = tb1Var.d;
        }
        Object obj4 = obj2;
        if ((i & 16) != 0) {
            th = tb1Var.e;
        }
        return tb1Var.a(obj, bVar2, u74Var2, obj4, th);
    }

    public final tb1 a(Object obj, b bVar, u74 u74Var, Object obj2, Throwable th) {
        return new tb1(obj, bVar, u74Var, obj2, th);
    }

    public final boolean c() {
        return this.e != null;
    }

    public final void d(CancellableContinuationImpl cancellableContinuationImpl, Throwable th) {
        b bVar = this.b;
        if (bVar != null) {
            cancellableContinuationImpl.callCancelHandler(bVar, th);
        }
        u74 u74Var = this.c;
        if (u74Var != null) {
            cancellableContinuationImpl.callOnCancellation(u74Var, th, this.a);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tb1)) {
            return false;
        }
        tb1 tb1Var = (tb1) obj;
        return y45.e(this.a, tb1Var.a) && y45.e(this.b, tb1Var.b) && y45.e(this.c, tb1Var.c) && y45.e(this.d, tb1Var.d) && y45.e(this.e, tb1Var.e);
    }

    public int hashCode() {
        Object obj = this.a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        b bVar = this.b;
        int iHashCode2 = (iHashCode + (bVar == null ? 0 : bVar.hashCode())) * 31;
        u74 u74Var = this.c;
        int iHashCode3 = (iHashCode2 + (u74Var == null ? 0 : u74Var.hashCode())) * 31;
        Object obj2 = this.d;
        int iHashCode4 = (iHashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.e;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    public String toString() {
        return "CompletedContinuation(result=" + this.a + ", cancelHandler=" + this.b + ", onCancellation=" + this.c + ", idempotentResume=" + this.d + ", cancelCause=" + this.e + ')';
    }

    public tb1(Object obj, b bVar, u74 u74Var, Object obj2, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i & 2) != 0 ? null : bVar, (i & 4) != 0 ? null : u74Var, (i & 8) != 0 ? null : obj2, (i & 16) != 0 ? null : th);
    }
}
