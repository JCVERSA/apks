package androidx.datastore.core.handlers;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.CorruptionHandler;
import defpackage.e74;
import defpackage.wh1;
import defpackage.y45;
import java.io.IOException;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\t\u001a\u00028\u00002\u0006\u0010\b\u001a\u00020\u0004H\u0096@¢\u0006\u0004\b\t\u0010\nR \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "T", "Landroidx/datastore/core/CorruptionHandler;", "Lkotlin/Function1;", "Landroidx/datastore/core/CorruptionException;", "produceNewData", MethodDecl.initName, "(Le74;)V", "ex", "handleCorruption", "(Landroidx/datastore/core/CorruptionException;Lwh1;)Ljava/lang/Object;", "Le74;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ReplaceFileCorruptionHandler<T> implements CorruptionHandler<T> {
    private final e74 produceNewData;

    public ReplaceFileCorruptionHandler(e74 e74Var) {
        y45.j(e74Var, "produceNewData");
        this.produceNewData = e74Var;
    }

    @Override
    public Object handleCorruption(CorruptionException corruptionException, wh1<? super T> wh1Var) throws IOException {
        return this.produceNewData.invoke(corruptionException);
    }
}
