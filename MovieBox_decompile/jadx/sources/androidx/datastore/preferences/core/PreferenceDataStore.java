package androidx.datastore.preferences.core;

import androidx.datastore.core.g;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public final class PreferenceDataStore implements g {

    private final g f8341a;

    public PreferenceDataStore(g delegate) {
        Intrinsics.h(delegate, "delegate");
        this.f8341a = delegate;
    }

    @Override
    public Object a(Function2 function2, Continuation continuation) {
        return this.f8341a.a(new PreferenceDataStore$updateData$2(function2, null), continuation);
    }

    @Override
    public kotlinx.coroutines.flow.a getData() {
        return this.f8341a.getData();
    }
}
