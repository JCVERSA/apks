package androidx.datastore.core;

import kotlin.coroutines.Continuation;

public abstract class StorageConnectionKt {
    public static final Object a(x xVar, Continuation continuation) {
        return xVar.d(new StorageConnectionKt$readData$2(null), continuation);
    }
}
