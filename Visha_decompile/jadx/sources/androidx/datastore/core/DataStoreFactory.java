package androidx.datastore.core;

import androidx.datastore.core.handlers.NoOpCorruptionHandler;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import defpackage.c74;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.v6a;
import defpackage.x71;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlinx.coroutines.d;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003Ji\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011\"\u0004\b\u0000\u0010\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00052\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00072\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\t2\b\b\u0002\u0010\r\u001a\u00020\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0007¢\u0006\u0004\b\u0012\u0010\u0013J[\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011\"\u0004\b\u0000\u0010\u00042\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00072\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\t2\b\b\u0002\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0004\b\u0012\u0010\u0016¨\u0006\u0017"}, d2 = {"Landroidx/datastore/core/DataStoreFactory;", "", MethodDecl.initName, "()V", "T", "Landroidx/datastore/core/Serializer;", "serializer", "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "corruptionHandler", "", "Landroidx/datastore/core/DataMigration;", "migrations", "Lnk1;", "scope", "Lkotlin/Function0;", "Ljava/io/File;", "produceFile", "Landroidx/datastore/core/DataStore;", "create", "(Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lnk1;Lc74;)Landroidx/datastore/core/DataStore;", "Landroidx/datastore/core/Storage;", "storage", "(Landroidx/datastore/core/Storage;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lnk1;)Landroidx/datastore/core/DataStore;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DataStoreFactory {
    public static final DataStoreFactory INSTANCE = new DataStoreFactory();

    private DataStoreFactory() {
    }

    public static DataStore create$default(DataStoreFactory dataStoreFactory, Storage storage, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, nk1 nk1Var, int i, Object obj) {
        if ((i & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i & 4) != 0) {
            list = y71.k();
        }
        if ((i & 8) != 0) {
            nk1Var = d.a(Actual_jvmKt.ioDispatcher().plus(v6a.b(null, 1, null)));
        }
        return dataStoreFactory.create(storage, replaceFileCorruptionHandler, list, nk1Var);
    }

    public final <T> DataStore<T> create(Serializer<T> serializer, c74 c74Var) {
        y45.j(serializer, "serializer");
        y45.j(c74Var, "produceFile");
        return create$default(this, serializer, null, null, null, c74Var, 14, null);
    }

    public final <T> DataStore<T> create(Serializer<T> serializer, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, c74 c74Var) {
        y45.j(serializer, "serializer");
        y45.j(c74Var, "produceFile");
        return create$default(this, serializer, replaceFileCorruptionHandler, null, null, c74Var, 12, null);
    }

    public final <T> DataStore<T> create(Serializer<T> serializer, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, List<? extends DataMigration<T>> list, c74 c74Var) {
        y45.j(serializer, "serializer");
        y45.j(list, "migrations");
        y45.j(c74Var, "produceFile");
        return create$default(this, serializer, replaceFileCorruptionHandler, list, null, c74Var, 8, null);
    }

    public static DataStore create$default(DataStoreFactory dataStoreFactory, Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, nk1 nk1Var, c74 c74Var, int i, Object obj) {
        ReplaceFileCorruptionHandler replaceFileCorruptionHandler2 = (i & 2) != 0 ? null : replaceFileCorruptionHandler;
        if ((i & 4) != 0) {
            list = y71.k();
        }
        List list2 = list;
        if ((i & 8) != 0) {
            nk1Var = d.a(mc2.b().plus(v6a.b(null, 1, null)));
        }
        return dataStoreFactory.create(serializer, replaceFileCorruptionHandler2, list2, nk1Var, c74Var);
    }

    public final <T> DataStore<T> create(Storage<T> storage) {
        y45.j(storage, "storage");
        return create$default(this, storage, null, null, null, 14, null);
    }

    public final <T> DataStore<T> create(Storage<T> storage, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler) {
        y45.j(storage, "storage");
        return create$default(this, storage, replaceFileCorruptionHandler, null, null, 12, null);
    }

    public final <T> DataStore<T> create(Storage<T> storage, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, List<? extends DataMigration<T>> list) {
        y45.j(storage, "storage");
        y45.j(list, "migrations");
        return create$default(this, storage, replaceFileCorruptionHandler, list, null, 8, null);
    }

    public final <T> DataStore<T> create(Serializer<T> serializer, ReplaceFileCorruptionHandler<T> corruptionHandler, List<? extends DataMigration<T>> migrations, nk1 scope, c74 produceFile) {
        y45.j(serializer, "serializer");
        y45.j(migrations, "migrations");
        y45.j(scope, "scope");
        y45.j(produceFile, "produceFile");
        return create(new FileStorage(serializer, null, produceFile, 2, null), corruptionHandler, migrations, scope);
    }

    public final <T> DataStore<T> create(Storage<T> storage, ReplaceFileCorruptionHandler<T> corruptionHandler, List<? extends DataMigration<T>> migrations, nk1 scope) {
        y45.j(storage, "storage");
        y45.j(migrations, "migrations");
        y45.j(scope, "scope");
        if (corruptionHandler == null) {
            corruptionHandler = (ReplaceFileCorruptionHandler<T>) new NoOpCorruptionHandler();
        }
        return new DataStoreImpl(storage, x71.e(DataMigrationInitializer.INSTANCE.getInitializer(migrations)), corruptionHandler, scope);
    }
}
