package androidx.datastore.core;

import defpackage.e74;
import defpackage.j05;
import defpackage.nw6;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u001aJ\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00000\u0004H\u0081\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\u0007\u0010\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\t"}, d2 = {"R", "Lnw6;", "", "owner", "Lkotlin/Function1;", "", "block", "withTryLock", "(Lnw6;Ljava/lang/Object;Le74;)Ljava/lang/Object;", "datastore-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class MutexUtilsKt {
    public static final <R> R withTryLock(nw6 nw6Var, Object obj, e74 e74Var) {
        y45.j(nw6Var, "<this>");
        y45.j(e74Var, "block");
        boolean zA = nw6Var.a(obj);
        try {
            return (R) e74Var.invoke(Boolean.valueOf(zA));
        } finally {
            j05.b(1);
            if (zA) {
                nw6Var.b(obj);
            }
            j05.a(1);
        }
    }

    public static Object withTryLock$default(nw6 nw6Var, Object obj, e74 e74Var, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = null;
        }
        y45.j(nw6Var, "<this>");
        y45.j(e74Var, "block");
        boolean zA = nw6Var.a(obj);
        try {
            return e74Var.invoke(Boolean.valueOf(zA));
        } finally {
            j05.b(1);
            if (zA) {
                nw6Var.b(obj);
            }
            j05.a(1);
        }
    }
}
