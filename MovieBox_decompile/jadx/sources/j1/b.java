package j1;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.d;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class b implements d {

    private final Function1 f62873a;

    public b(Function1 produceNewData) {
        Intrinsics.h(produceNewData, "produceNewData");
        this.f62873a = produceNewData;
    }

    @Override
    public Object a(CorruptionException corruptionException, Continuation continuation) {
        return this.f62873a.invoke(corruptionException);
    }
}
