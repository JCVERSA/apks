package androidx.datastore;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.core.okio.OkioSerializer;
import androidx.datastore.core.okio.OkioStorage;
import com.lzy.okgo.model.Progress;
import defpackage.af5;
import defpackage.c74;
import defpackage.e74;
import defpackage.eo8;
import defpackage.nk1;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import okio.FileSystem;
import okio.Path;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0002BW\b\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t\u0012\u001e\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00020\u0003\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r0\f0\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J*\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u0013\u001a\u00020\u00032\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u0014H\u0096\u0002¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0018R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0019R\u001c\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u001aR,\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00020\u0003\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r0\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u001bR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u001cR\u0014\u0010\u001e\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001e\u0010 \u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006\""}, d2 = {"Landroidx/datastore/DataStoreSingletonDelegate;", "T", "Leo8;", "Landroid/content/Context;", "Landroidx/datastore/core/DataStore;", "", Progress.FILE_NAME, "Landroidx/datastore/core/okio/OkioSerializer;", "serializer", "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "corruptionHandler", "Lkotlin/Function1;", "", "Landroidx/datastore/core/DataMigration;", "produceMigrations", "Lnk1;", "scope", MethodDecl.initName, "(Ljava/lang/String;Landroidx/datastore/core/okio/OkioSerializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Le74;Lnk1;)V", "thisRef", "Laf5;", "property", "getValue", "(Landroid/content/Context;Laf5;)Landroidx/datastore/core/DataStore;", "Ljava/lang/String;", "Landroidx/datastore/core/okio/OkioSerializer;", "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "Le74;", "Lnk1;", "", "lock", "Ljava/lang/Object;", "INSTANCE", "Landroidx/datastore/core/DataStore;", "datastore_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DataStoreSingletonDelegate<T> implements eo8 {

    @GuardedBy("lock")
    private volatile DataStore<T> INSTANCE;
    private final ReplaceFileCorruptionHandler<T> corruptionHandler;
    private final String fileName;
    private final Object lock;
    private final e74 produceMigrations;
    private final nk1 scope;
    private final OkioSerializer<T> serializer;

    public DataStoreSingletonDelegate(String str, OkioSerializer<T> okioSerializer, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, e74 e74Var, nk1 nk1Var) {
        y45.j(str, Progress.FILE_NAME);
        y45.j(okioSerializer, "serializer");
        y45.j(e74Var, "produceMigrations");
        y45.j(nk1Var, "scope");
        this.fileName = str;
        this.serializer = okioSerializer;
        this.corruptionHandler = replaceFileCorruptionHandler;
        this.produceMigrations = e74Var;
        this.scope = nk1Var;
        this.lock = new Object();
    }

    @Override
    public DataStore<T> getValue(Context thisRef, af5 property) {
        DataStore<T> dataStore;
        y45.j(thisRef, "thisRef");
        y45.j(property, "property");
        DataStore<T> dataStore2 = this.INSTANCE;
        if (dataStore2 != null) {
            return dataStore2;
        }
        synchronized (this.lock) {
            try {
                if (this.INSTANCE == null) {
                    final Context applicationContext = thisRef.getApplicationContext();
                    DataStoreFactory dataStoreFactory = DataStoreFactory.INSTANCE;
                    OkioStorage okioStorage = new OkioStorage(FileSystem.SYSTEM, this.serializer, null, new c74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override
                        public final Path invoke() {
                            Path.Companion companion = Path.INSTANCE;
                            Context context = applicationContext;
                            y45.i(context, "applicationContext");
                            String absolutePath = DataStoreFile.dataStoreFile(context, ((DataStoreSingletonDelegate) this).fileName).getAbsolutePath();
                            y45.i(absolutePath, "applicationContext.dataS…le(fileName).absolutePath");
                            return Path.Companion.get$default(companion, absolutePath, false, 1, (Object) null);
                        }
                    }, 4, null);
                    ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler = this.corruptionHandler;
                    e74 e74Var = this.produceMigrations;
                    y45.i(applicationContext, "applicationContext");
                    this.INSTANCE = dataStoreFactory.create(okioStorage, replaceFileCorruptionHandler, (List) e74Var.invoke(applicationContext), this.scope);
                }
                dataStore = this.INSTANCE;
                y45.g(dataStore);
            } catch (Throwable th) {
                throw th;
            }
        }
        return dataStore;
    }
}
