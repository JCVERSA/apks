package kotlinx.coroutines;

import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

final class a0 {

    public final Object f64660a;

    public final m f64661b;

    public final Function3 f64662c;

    public final Object f64663d;

    public final Throwable f64664e;

    public a0(Object obj, m mVar, Function3 function3, Object obj2, Throwable th2) {
        this.f64660a = obj;
        this.f64661b = mVar;
        this.f64662c = function3;
        this.f64663d = obj2;
        this.f64664e = th2;
    }

    public static a0 b(a0 a0Var, Object obj, m mVar, Function3 function3, Object obj2, Throwable th2, int i10, Object obj3) {
        if ((i10 & 1) != 0) {
            obj = a0Var.f64660a;
        }
        if ((i10 & 2) != 0) {
            mVar = a0Var.f64661b;
        }
        m mVar2 = mVar;
        if ((i10 & 4) != 0) {
            function3 = a0Var.f64662c;
        }
        Function3 function4 = function3;
        if ((i10 & 8) != 0) {
            obj2 = a0Var.f64663d;
        }
        Object obj4 = obj2;
        if ((i10 & 16) != 0) {
            th2 = a0Var.f64664e;
        }
        return a0Var.a(obj, mVar2, function4, obj4, th2);
    }

    public final a0 a(Object obj, m mVar, Function3 function3, Object obj2, Throwable th2) {
        return new a0(obj, mVar, function3, obj2, th2);
    }

    public final boolean c() {
        return this.f64664e != null;
    }

    public final void d(CancellableContinuationImpl cancellableContinuationImpl, Throwable th2) {
        m mVar = this.f64661b;
        if (mVar != null) {
            cancellableContinuationImpl.callCancelHandler(mVar, th2);
        }
        Function3 function3 = this.f64662c;
        if (function3 != null) {
            cancellableContinuationImpl.callOnCancellation(function3, th2, this.f64660a);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return Intrinsics.c(this.f64660a, a0Var.f64660a) && Intrinsics.c(this.f64661b, a0Var.f64661b) && Intrinsics.c(this.f64662c, a0Var.f64662c) && Intrinsics.c(this.f64663d, a0Var.f64663d) && Intrinsics.c(this.f64664e, a0Var.f64664e);
    }

    public int hashCode() {
        Object obj = this.f64660a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        m mVar = this.f64661b;
        int iHashCode2 = (iHashCode + (mVar == null ? 0 : mVar.hashCode())) * 31;
        Function3 function3 = this.f64662c;
        int iHashCode3 = (iHashCode2 + (function3 == null ? 0 : function3.hashCode())) * 31;
        Object obj2 = this.f64663d;
        int iHashCode4 = (iHashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th2 = this.f64664e;
        return iHashCode4 + (th2 != null ? th2.hashCode() : 0);
    }

    public String toString() {
        return "CompletedContinuation(result=" + this.f64660a + ", cancelHandler=" + this.f64661b + ", onCancellation=" + this.f64662c + ", idempotentResume=" + this.f64663d + ", cancelCause=" + this.f64664e + ')';
    }

    public a0(Object obj, m mVar, Function3 function3, Object obj2, Throwable th2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i10 & 2) != 0 ? null : mVar, (i10 & 4) != 0 ? null : function3, (i10 & 8) != 0 ? null : obj2, (i10 & 16) != 0 ? null : th2);
    }
}
