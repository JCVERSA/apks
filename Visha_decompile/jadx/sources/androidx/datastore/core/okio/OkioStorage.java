package androidx.datastore.core.okio;

import androidx.datastore.core.InterProcessCoordinator;
import androidx.datastore.core.Storage;
import androidx.datastore.core.StorageConnection;
import defpackage.c74;
import defpackage.s74;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import java.util.LinkedHashSet;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okio.FileSystem;
import okio.Path;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 \u001b*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001\u001bBG\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u001a\b\u0002\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t0\u0007\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0012R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0013R&\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0014R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0015R\u001b\u0010\u001a\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, d2 = {"Landroidx/datastore/core/okio/OkioStorage;", "T", "Landroidx/datastore/core/Storage;", "Lokio/FileSystem;", "fileSystem", "Landroidx/datastore/core/okio/OkioSerializer;", "serializer", "Lkotlin/Function2;", "Lokio/Path;", "Landroidx/datastore/core/InterProcessCoordinator;", "coordinatorProducer", "Lkotlin/Function0;", "producePath", MethodDecl.initName, "(Lokio/FileSystem;Landroidx/datastore/core/okio/OkioSerializer;Ls74;Lc74;)V", "Landroidx/datastore/core/StorageConnection;", "createConnection", "()Landroidx/datastore/core/StorageConnection;", "Lokio/FileSystem;", "Landroidx/datastore/core/okio/OkioSerializer;", "Ls74;", "Lc74;", "canonicalPath$delegate", "Lyi5;", "getCanonicalPath", "()Lokio/Path;", "canonicalPath", "Companion", "datastore-core-okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OkioStorage<T> implements Storage<T> {

    public static final Companion INSTANCE = new Companion(null);
    private static final Set<String> activeFiles = new LinkedHashSet();
    private static final Synchronizer activeFilesLock = new Synchronizer();

    private final yi5 canonicalPath;
    private final s74 coordinatorProducer;
    private final FileSystem fileSystem;
    private final c74 producePath;
    private final OkioSerializer<T> serializer;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/datastore/core/okio/OkioStorage$Companion;", "", "()V", "activeFiles", "", "", "getActiveFiles$datastore_core_okio", "()Ljava/util/Set;", "activeFilesLock", "Landroidx/datastore/core/okio/Synchronizer;", "getActiveFilesLock", "()Landroidx/datastore/core/okio/Synchronizer;", "datastore-core-okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Set<String> getActiveFiles$datastore_core_okio() {
            return OkioStorage.activeFiles;
        }

        public final Synchronizer getActiveFilesLock() {
            return OkioStorage.activeFilesLock;
        }

        private Companion() {
        }
    }

    public OkioStorage(FileSystem fileSystem, OkioSerializer<T> okioSerializer, s74 s74Var, c74 c74Var) {
        y45.j(fileSystem, "fileSystem");
        y45.j(okioSerializer, "serializer");
        y45.j(s74Var, "coordinatorProducer");
        y45.j(c74Var, "producePath");
        this.fileSystem = fileSystem;
        this.serializer = okioSerializer;
        this.coordinatorProducer = s74Var;
        this.producePath = c74Var;
        this.canonicalPath = b.a(new c74(this) {
            final OkioStorage<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public final Path invoke() {
                Path path = (Path) ((OkioStorage) this.this$0).producePath.invoke();
                boolean zIsAbsolute = path.isAbsolute();
                OkioStorage<T> okioStorage = this.this$0;
                if (zIsAbsolute) {
                    return path.normalized();
                }
                throw new IllegalStateException(("OkioStorage requires absolute paths, but did not get an absolute path from producePath = " + ((OkioStorage) okioStorage).producePath + ", instead got " + path).toString());
            }
        });
    }

    public final Path getCanonicalPath() {
        return (Path) this.canonicalPath.getValue();
    }

    @Override
    public StorageConnection<T> createConnection() {
        String string = getCanonicalPath().toString();
        synchronized (activeFilesLock) {
            Set<String> set = activeFiles;
            if (set.contains(string)) {
                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + string + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
            }
            set.add(string);
        }
        return new OkioStorageConnection(this.fileSystem, getCanonicalPath(), this.serializer, (InterProcessCoordinator) this.coordinatorProducer.invoke(getCanonicalPath(), this.fileSystem), new c74(this) {
            final OkioStorage<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override
            public Object invoke() {
                m45invoke();
                return zfb.a;
            }

            public final void m45invoke() {
                Companion companion = OkioStorage.INSTANCE;
                Synchronizer activeFilesLock2 = companion.getActiveFilesLock();
                OkioStorage<T> okioStorage = this.this$0;
                synchronized (activeFilesLock2) {
                    companion.getActiveFiles$datastore_core_okio().remove(okioStorage.getCanonicalPath().toString());
                    zfb zfbVar = zfb.a;
                }
            }
        });
    }

    public OkioStorage(FileSystem fileSystem, OkioSerializer okioSerializer, s74 s74Var, c74 c74Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(fileSystem, okioSerializer, (i & 4) != 0 ? new s74() {
            @Override
            public final InterProcessCoordinator invoke(Path path, FileSystem fileSystem2) {
                y45.j(path, "path");
                y45.j(fileSystem2, "<anonymous parameter 1>");
                return OkioStorageKt.createSingleProcessCoordinator(path);
            }
        } : s74Var, c74Var);
    }
}
