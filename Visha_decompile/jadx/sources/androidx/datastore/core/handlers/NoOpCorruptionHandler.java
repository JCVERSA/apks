package androidx.datastore.core.handlers;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.CorruptionHandler;
import defpackage.wh1;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0007\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0096@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/datastore/core/handlers/NoOpCorruptionHandler;", "T", "Landroidx/datastore/core/CorruptionHandler;", MethodDecl.initName, "()V", "Landroidx/datastore/core/CorruptionException;", "ex", "handleCorruption", "(Landroidx/datastore/core/CorruptionException;Lwh1;)Ljava/lang/Object;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class NoOpCorruptionHandler<T> implements CorruptionHandler<T> {
    @Override
    public Object handleCorruption(CorruptionException corruptionException, wh1<? super T> wh1Var) throws CorruptionException {
        throw corruptionException;
    }
}
