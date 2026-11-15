package androidx.datastore.core;

import defpackage.e74;
import defpackage.j05;
import defpackage.ue3;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a;\u0010\u0005\u001a\u00028\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\u0004\b\u0001\u0010\u0002*\u00028\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0007"}, d2 = {"Landroidx/datastore/core/Closeable;", "T", "R", "Lkotlin/Function1;", "block", "use", "(Landroidx/datastore/core/Closeable;Le74;)Ljava/lang/Object;", "datastore-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class CloseableKt {
    public static final <T extends Closeable, R> R use(T t, e74 e74Var) throws Throwable {
        y45.j(t, "<this>");
        y45.j(e74Var, "block");
        try {
            R r = (R) e74Var.invoke(t);
            j05.b(1);
            try {
                t.close();
                th = null;
            } catch (Throwable th) {
                th = th;
            }
            if (th != null) {
                throw th;
            }
            j05.a(1);
            return r;
        } catch (Throwable th2) {
            j05.b(1);
            try {
                t.close();
            } catch (Throwable th3) {
                ue3.a(th2, th3);
            }
            throw th2;
        }
    }
}
