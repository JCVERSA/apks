package androidx.datastore.preferences.core;

import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.FileStorage;
import androidx.datastore.core.Storage;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import defpackage.c74;
import defpackage.fv3;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.v6a;
import defpackage.y45;
import defpackage.y71;
import java.io.File;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlinx.coroutines.d;
import okio.Path;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JU\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u000f2\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0014\b\u0002\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\b0\u00072\b\b\u0002\u0010\u000b\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0007¢\u0006\u0004\b\u0010\u0010\u0011JU\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u000f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u00122\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0014\b\u0002\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\b0\u00072\b\b\u0002\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\u0010\u0010\u0014JU\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\u000f2\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0014\b\u0002\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\b0\u00072\b\b\u0002\u0010\u000b\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00150\fH\u0007¢\u0006\u0004\b\u0016\u0010\u0011¨\u0006\u0017"}, d2 = {"Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;", "", MethodDecl.initName, "()V", "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "Landroidx/datastore/preferences/core/Preferences;", "corruptionHandler", "", "Landroidx/datastore/core/DataMigration;", "migrations", "Lnk1;", "scope", "Lkotlin/Function0;", "Ljava/io/File;", "produceFile", "Landroidx/datastore/core/DataStore;", "create", "(Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lnk1;Lc74;)Landroidx/datastore/core/DataStore;", "Landroidx/datastore/core/Storage;", "storage", "(Landroidx/datastore/core/Storage;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lnk1;)Landroidx/datastore/core/DataStore;", "Lokio/Path;", "createWithPath", "datastore-preferences-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PreferenceDataStoreFactory {
    public static final PreferenceDataStoreFactory INSTANCE = new PreferenceDataStoreFactory();

    private PreferenceDataStoreFactory() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static DataStore create$default(PreferenceDataStoreFactory preferenceDataStoreFactory, Storage storage, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, nk1 nk1Var, int i, Object obj) {
        if ((i & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i & 4) != 0) {
            list = y71.k();
        }
        if ((i & 8) != 0) {
            nk1Var = d.a(Actual_jvmAndroidKt.ioDispatcher().plus(v6a.b(null, 1, null)));
        }
        return preferenceDataStoreFactory.create((Storage<Preferences>) storage, (ReplaceFileCorruptionHandler<Preferences>) replaceFileCorruptionHandler, (List<? extends DataMigration<Preferences>>) list, nk1Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static DataStore createWithPath$default(PreferenceDataStoreFactory preferenceDataStoreFactory, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, nk1 nk1Var, c74 c74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i & 2) != 0) {
            list = y71.k();
        }
        if ((i & 4) != 0) {
            nk1Var = d.a(Actual_jvmAndroidKt.ioDispatcher().plus(v6a.b(null, 1, null)));
        }
        return preferenceDataStoreFactory.createWithPath(replaceFileCorruptionHandler, list, nk1Var, c74Var);
    }

    public final DataStore<Preferences> create(c74 c74Var) {
        y45.j(c74Var, "produceFile");
        return create$default(this, (ReplaceFileCorruptionHandler) null, (List) null, (nk1) null, c74Var, 7, (Object) null);
    }

    public final DataStore<Preferences> createWithPath(c74 c74Var) {
        y45.j(c74Var, "produceFile");
        return createWithPath$default(this, null, null, null, c74Var, 7, null);
    }

    public final DataStore<Preferences> create(Storage<Preferences> storage) {
        y45.j(storage, "storage");
        return create$default(this, storage, (ReplaceFileCorruptionHandler) null, (List) null, (nk1) null, 14, (Object) null);
    }

    public final DataStore<Preferences> createWithPath(ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, c74 c74Var) {
        y45.j(c74Var, "produceFile");
        return createWithPath$default(this, replaceFileCorruptionHandler, null, null, c74Var, 6, null);
    }

    public final DataStore<Preferences> create(Storage<Preferences> storage, ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler) {
        y45.j(storage, "storage");
        return create$default(this, storage, replaceFileCorruptionHandler, (List) null, (nk1) null, 12, (Object) null);
    }

    public final DataStore<Preferences> createWithPath(ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, List<? extends DataMigration<Preferences>> list, c74 c74Var) {
        y45.j(list, "migrations");
        y45.j(c74Var, "produceFile");
        return createWithPath$default(this, replaceFileCorruptionHandler, list, null, c74Var, 4, null);
    }

    public final DataStore<Preferences> create(Storage<Preferences> storage, ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, List<? extends DataMigration<Preferences>> list) {
        y45.j(storage, "storage");
        y45.j(list, "migrations");
        return create$default(this, storage, replaceFileCorruptionHandler, list, (nk1) null, 8, (Object) null);
    }

    public final DataStore<Preferences> createWithPath(ReplaceFileCorruptionHandler<Preferences> corruptionHandler, List<? extends DataMigration<Preferences>> migrations, nk1 scope, final c74 produceFile) {
        y45.j(migrations, "migrations");
        y45.j(scope, "scope");
        y45.j(produceFile, "produceFile");
        return create(corruptionHandler, migrations, scope, new c74() {
            {
                super(0);
            }

            @Override
            public final File invoke() {
                return ((Path) produceFile.invoke()).toFile();
            }
        });
    }

    public final DataStore<Preferences> create(ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, c74 c74Var) {
        y45.j(c74Var, "produceFile");
        return create$default(this, replaceFileCorruptionHandler, (List) null, (nk1) null, c74Var, 6, (Object) null);
    }

    public final DataStore<Preferences> create(ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, List<? extends DataMigration<Preferences>> list, c74 c74Var) {
        y45.j(list, "migrations");
        y45.j(c74Var, "produceFile");
        return create$default(this, replaceFileCorruptionHandler, list, (nk1) null, c74Var, 4, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static DataStore create$default(PreferenceDataStoreFactory preferenceDataStoreFactory, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, nk1 nk1Var, c74 c74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i & 2) != 0) {
            list = y71.k();
        }
        if ((i & 4) != 0) {
            nk1Var = d.a(mc2.b().plus(v6a.b(null, 1, null)));
        }
        return preferenceDataStoreFactory.create((ReplaceFileCorruptionHandler<Preferences>) replaceFileCorruptionHandler, (List<? extends DataMigration<Preferences>>) list, nk1Var, c74Var);
    }

    public final DataStore<Preferences> create(ReplaceFileCorruptionHandler<Preferences> corruptionHandler, List<? extends DataMigration<Preferences>> migrations, nk1 scope, final c74 produceFile) {
        y45.j(migrations, "migrations");
        y45.j(scope, "scope");
        y45.j(produceFile, "produceFile");
        return new PreferenceDataStore(create(new FileStorage(PreferencesFileSerializer.INSTANCE, null, new c74() {
            {
                super(0);
            }

            @Override
            public final File invoke() {
                File file = (File) produceFile.invoke();
                if (y45.e(fv3.k(file), "preferences_pb")) {
                    File absoluteFile = file.getAbsoluteFile();
                    y45.i(absoluteFile, "file.absoluteFile");
                    return absoluteFile;
                }
                throw new IllegalStateException(("File extension for file: " + file + " does not match required extension for Preferences file: preferences_pb").toString());
            }
        }, 2, null), corruptionHandler, migrations, scope));
    }

    public final DataStore<Preferences> create(Storage<Preferences> storage, ReplaceFileCorruptionHandler<Preferences> corruptionHandler, List<? extends DataMigration<Preferences>> migrations, nk1 scope) {
        y45.j(storage, "storage");
        y45.j(migrations, "migrations");
        y45.j(scope, "scope");
        return new PreferenceDataStore(DataStoreFactory.INSTANCE.create(storage, corruptionHandler, migrations, scope));
    }
}
