package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.core.g;
import androidx.datastore.preferences.core.PreferenceDataStoreFactory;
import java.io.File;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.n0;

public final class PreferenceDataStoreSingletonDelegate implements ReadOnlyProperty {

    private final String f8330a;

    private final j1.b f8331b;

    private final Function1 f8332c;

    private final n0 f8333d;

    private final Object f8334e;

    private volatile g f8335f;

    public PreferenceDataStoreSingletonDelegate(String name, j1.b bVar, Function1 produceMigrations, n0 scope) {
        Intrinsics.h(name, "name");
        Intrinsics.h(produceMigrations, "produceMigrations");
        Intrinsics.h(scope, "scope");
        this.f8330a = name;
        this.f8331b = bVar;
        this.f8332c = produceMigrations;
        this.f8333d = scope;
        this.f8334e = new Object();
    }

    @Override
    public g a(Context thisRef, KProperty property) {
        g gVar;
        Intrinsics.h(thisRef, "thisRef");
        Intrinsics.h(property, "property");
        g gVar2 = this.f8335f;
        if (gVar2 != null) {
            return gVar2;
        }
        synchronized (this.f8334e) {
            try {
                if (this.f8335f == null) {
                    final Context applicationContext = thisRef.getApplicationContext();
                    PreferenceDataStoreFactory preferenceDataStoreFactory = PreferenceDataStoreFactory.f8342a;
                    j1.b bVar = this.f8331b;
                    Function1 function1 = this.f8332c;
                    Intrinsics.g(applicationContext, "applicationContext");
                    this.f8335f = preferenceDataStoreFactory.b(bVar, (List) function1.invoke(applicationContext), this.f8333d, new Function0<File>() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override
                        public final File invoke() {
                            Context applicationContext2 = applicationContext;
                            Intrinsics.g(applicationContext2, "applicationContext");
                            return a.a(applicationContext2, this.f8330a);
                        }
                    });
                }
                gVar = this.f8335f;
                Intrinsics.e(gVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gVar;
    }
}
