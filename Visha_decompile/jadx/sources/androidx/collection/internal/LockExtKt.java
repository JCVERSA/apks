package androidx.collection.internal;

import defpackage.c74;
import defpackage.j05;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a8\u0010\u0004\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0080\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0006"}, d2 = {"T", "Landroidx/collection/internal/Lock;", "Lkotlin/Function0;", "block", "synchronized", "(Landroidx/collection/internal/Lock;Lc74;)Ljava/lang/Object;", "collection"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class LockExtKt {
    public static final <T> T m33synchronized(Lock lock, c74 c74Var) {
        T t;
        y45.j(lock, "<this>");
        y45.j(c74Var, "block");
        synchronized (lock) {
            try {
                t = (T) c74Var.invoke();
                j05.b(1);
            } finally {
                j05.b(1);
                j05.a(1);
            }
        }
        return t;
    }
}
