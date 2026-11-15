package androidx.datastore.core;

import androidx.annotation.GuardedBy;
import defpackage.c74;
import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import java.io.File;
import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u0013*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001\u0013B9\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0014\b\u0002\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\t¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0010R \u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0011R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0012¨\u0006\u0014"}, d2 = {"Landroidx/datastore/core/FileStorage;", "T", "Landroidx/datastore/core/Storage;", "Landroidx/datastore/core/Serializer;", "serializer", "Lkotlin/Function1;", "Ljava/io/File;", "Landroidx/datastore/core/InterProcessCoordinator;", "coordinatorProducer", "Lkotlin/Function0;", "produceFile", MethodDecl.initName, "(Landroidx/datastore/core/Serializer;Le74;Lc74;)V", "Landroidx/datastore/core/StorageConnection;", "createConnection", "()Landroidx/datastore/core/StorageConnection;", "Landroidx/datastore/core/Serializer;", "Le74;", "Lc74;", "Companion", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FileStorage<T> implements Storage<T> {

    public static final Companion INSTANCE = new Companion(null);

    @GuardedBy("activeFilesLock")
    private static final Set<String> activeFiles = new LinkedHashSet();
    private static final Object activeFilesLock = new Object();
    private final e74 coordinatorProducer;
    private final c74 produceFile;
    private final Serializer<T> serializer;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0000X\u0081\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/datastore/core/FileStorage$Companion;", "", "()V", "activeFiles", "", "", "getActiveFiles$datastore_core_release", "()Ljava/util/Set;", "activeFilesLock", "getActiveFilesLock$datastore_core_release", "()Ljava/lang/Object;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Set<String> getActiveFiles$datastore_core_release() {
            return FileStorage.activeFiles;
        }

        public final Object getActiveFilesLock$datastore_core_release() {
            return FileStorage.activeFilesLock;
        }

        private Companion() {
        }
    }

    public FileStorage(Serializer<T> serializer, e74 e74Var, c74 c74Var) {
        y45.j(serializer, "serializer");
        y45.j(e74Var, "coordinatorProducer");
        y45.j(c74Var, "produceFile");
        this.serializer = serializer;
        this.coordinatorProducer = e74Var;
        this.produceFile = c74Var;
    }

    @Override
    public StorageConnection<T> createConnection() throws IOException {
        final File canonicalFile = ((File) this.produceFile.invoke()).getCanonicalFile();
        synchronized (activeFilesLock) {
            String absolutePath = canonicalFile.getAbsolutePath();
            Set<String> set = activeFiles;
            if (set.contains(absolutePath)) {
                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + absolutePath + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
            }
            y45.i(absolutePath, "path");
            set.add(absolutePath);
        }
        y45.i(canonicalFile, "file");
        return new FileStorageConnection(canonicalFile, this.serializer, (InterProcessCoordinator) this.coordinatorProducer.invoke(canonicalFile), new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m43invoke();
                return zfb.a;
            }

            public final void m43invoke() {
                Companion companion = FileStorage.INSTANCE;
                Object activeFilesLock$datastore_core_release = companion.getActiveFilesLock$datastore_core_release();
                File file = canonicalFile;
                synchronized (activeFilesLock$datastore_core_release) {
                    companion.getActiveFiles$datastore_core_release().remove(file.getAbsolutePath());
                    zfb zfbVar = zfb.a;
                }
            }
        });
    }

    public FileStorage(Serializer serializer, e74 e74Var, c74 c74Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(serializer, (i & 2) != 0 ? new e74() {
            @Override
            public final InterProcessCoordinator invoke(File file) {
                y45.j(file, "it");
                return InterProcessCoordinator_jvmKt.createSingleProcessCoordinator(file);
            }
        } : e74Var, c74Var);
    }
}
