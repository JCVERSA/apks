package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.core.f;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadOnlyProperty;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public abstract class PreferenceDataStoreDelegateKt {
    public static final ReadOnlyProperty a(String name, j1.b bVar, Function1 produceMigrations, n0 scope) {
        Intrinsics.h(name, "name");
        Intrinsics.h(produceMigrations, "produceMigrations");
        Intrinsics.h(scope, "scope");
        return new PreferenceDataStoreSingletonDelegate(name, bVar, produceMigrations, scope);
    }

    public static ReadOnlyProperty b(String str, j1.b bVar, Function1 function1, n0 n0Var, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bVar = null;
        }
        if ((i10 & 4) != 0) {
            function1 = new Function1<Context, List<? extends f>>() {
                @Override
                public final List<f> invoke(Context it) {
                    Intrinsics.h(it, "it");
                    return CollectionsKt.l();
                }
            };
        }
        if ((i10 & 8) != 0) {
            n0Var = o0.a(y0.b().plus(l2.b(null, 1, null)));
        }
        return a(str, bVar, function1, n0Var);
    }
}
