package androidx.datastore.core.okio;

import defpackage.c74;
import defpackage.j05;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\t"}, d2 = {"Landroidx/datastore/core/okio/Synchronizer;", "", MethodDecl.initName, "()V", "T", "Lkotlin/Function0;", "block", "withLock", "(Lc74;)Ljava/lang/Object;", "datastore-core-okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Synchronizer {
    public final <T> T withLock(c74 block) {
        T t;
        y45.j(block, "block");
        synchronized (this) {
            try {
                t = (T) block.invoke();
                j05.b(1);
            } finally {
                j05.b(1);
                j05.a(1);
            }
        }
        return t;
    }
}
