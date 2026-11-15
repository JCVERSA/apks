package androidx.datastore.preferences.core;

import androidx.datastore.core.FileStorage;
import androidx.datastore.core.g;
import androidx.datastore.core.h;
import androidx.datastore.core.w;
import java.io.File;
import java.util.List;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

public final class PreferenceDataStoreFactory {

    public static final PreferenceDataStoreFactory f8342a = new PreferenceDataStoreFactory();

    private PreferenceDataStoreFactory() {
    }

    public final g a(w storage, j1.b bVar, List migrations, n0 scope) {
        Intrinsics.h(storage, "storage");
        Intrinsics.h(migrations, "migrations");
        Intrinsics.h(scope, "scope");
        return new PreferenceDataStore(h.f8305a.a(storage, bVar, migrations, scope));
    }

    public final g b(j1.b bVar, List migrations, n0 scope, final Function0 produceFile) {
        Intrinsics.h(migrations, "migrations");
        Intrinsics.h(scope, "scope");
        Intrinsics.h(produceFile, "produceFile");
        return new PreferenceDataStore(a(new FileStorage(e.f8345a, null, new Function0<File>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override
            public final File invoke() {
                File file = (File) produceFile.invoke();
                if (Intrinsics.c(FilesKt.w(file), "preferences_pb")) {
                    File absoluteFile = file.getAbsoluteFile();
                    Intrinsics.g(absoluteFile, "file.absoluteFile");
                    return absoluteFile;
                }
                throw new IllegalStateException(("File extension for file: " + file + " does not match required extension for Preferences file: preferences_pb").toString());
            }
        }, 2, null), bVar, migrations, scope));
    }
}
