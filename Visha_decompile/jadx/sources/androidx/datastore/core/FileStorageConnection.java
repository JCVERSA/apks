package androidx.datastore.core;

import com.lzy.okgo.model.HttpHeaders;
import defpackage.c74;
import defpackage.mk0;
import defpackage.nt1;
import defpackage.nw6;
import defpackage.s74;
import defpackage.sw6;
import defpackage.u74;
import defpackage.ue3;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.io.File;
import java.io.IOException;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B3\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\n*\u00020\u0003H\u0002¢\u0006\u0004\b\u0010\u0010\u0011JF\u0010\u0019\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00122.\u0010\u0018\u001a*\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0014\u0012\u0004\u0012\u00020\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0013H\u0096@¢\u0006\u0004\b\u0019\u0010\u001aJ:\u0010\u001d\u001a\u00020\n2(\u0010\u0018\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u001bH\u0096@¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001f\u0010\u000fR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010 R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010!R\u001a\u0010\b\u001a\u00020\u00078\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\b\u0010\"\u001a\u0004\b#\u0010$R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010%R\u0014\u0010'\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010*\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006,"}, d2 = {"Landroidx/datastore/core/FileStorageConnection;", "T", "Landroidx/datastore/core/StorageConnection;", "Ljava/io/File;", "file", "Landroidx/datastore/core/Serializer;", "serializer", "Landroidx/datastore/core/InterProcessCoordinator;", "coordinator", "Lkotlin/Function0;", "Lzfb;", "onClose", MethodDecl.initName, "(Ljava/io/File;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/InterProcessCoordinator;Lc74;)V", "checkNotClosed", "()V", "createParentDirectories", "(Ljava/io/File;)V", "R", "Lkotlin/Function3;", "Landroidx/datastore/core/ReadScope;", "", "Lwh1;", "", "block", "readScope", "(Lu74;Lwh1;)Ljava/lang/Object;", "Lkotlin/Function2;", "Landroidx/datastore/core/WriteScope;", "writeScope", "(Ls74;Lwh1;)Ljava/lang/Object;", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, "Ljava/io/File;", "Landroidx/datastore/core/Serializer;", "Landroidx/datastore/core/InterProcessCoordinator;", "getCoordinator", "()Landroidx/datastore/core/InterProcessCoordinator;", "Lc74;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "closed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Lnw6;", "transactionMutex", "Lnw6;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FileStorageConnection<T> implements StorageConnection<T> {
    private final java.util.concurrent.atomic.AtomicBoolean closed;
    private final InterProcessCoordinator coordinator;
    private final File file;
    private final c74 onClose;
    private final Serializer<T> serializer;
    private final nw6 transactionMutex;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.FileStorageConnection", f = "FileStorage.kt", l = {101}, m = "readScope")
    public static final class AnonymousClass1<R> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        Object result;
        final FileStorageConnection<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(FileStorageConnection<T> fileStorageConnection, wh1<? super AnonymousClass1> wh1Var) {
            super(wh1Var);
            this.this$0 = fileStorageConnection;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readScope(null, this);
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.FileStorageConnection", f = "FileStorage.kt", l = {214, 118}, m = "writeScope")
    public static final class C04921 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        Object result;
        final FileStorageConnection<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04921(FileStorageConnection<T> fileStorageConnection, wh1<? super C04921> wh1Var) {
            super(wh1Var);
            this.this$0 = fileStorageConnection;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.writeScope(null, this);
        }
    }

    public FileStorageConnection(File file, Serializer<T> serializer, InterProcessCoordinator interProcessCoordinator, c74 c74Var) {
        y45.j(file, "file");
        y45.j(serializer, "serializer");
        y45.j(interProcessCoordinator, "coordinator");
        y45.j(c74Var, "onClose");
        this.file = file;
        this.serializer = serializer;
        this.coordinator = interProcessCoordinator;
        this.onClose = c74Var;
        this.closed = new java.util.concurrent.atomic.AtomicBoolean(false);
        this.transactionMutex = sw6.b(false, 1, null);
    }

    private final void checkNotClosed() {
        if (this.closed.get()) {
            throw new IllegalStateException("StorageConnection has already been disposed.");
        }
    }

    private final void createParentDirectories(File file) throws IOException {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (parentFile.isDirectory()) {
                return;
            }
            throw new IOException("Unable to create parent directories of " + file);
        }
    }

    @Override
    public void close() {
        this.closed.set(true);
        this.onClose.invoke();
    }

    @Override
    public InterProcessCoordinator getCoordinator() {
        return this.coordinator;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x008f */
    /* JADX WARN: Code duplicated, block: B:28:0x0076 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x0078  */
    /* JADX WARN: Code duplicated, block: B:55:0x007e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <R> Object readScope(u74 u74Var, wh1<? super R> wh1Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        boolean zA;
        Throwable th;
        Closeable closeable;
        FileStorageConnection<T> fileStorageConnection;
        boolean z;
        if (wh1Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) wh1Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(this, wh1Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(this, wh1Var);
        }
        Object obj = anonymousClass1.result;
        Object objF = z45.f();
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            c.b(obj);
            checkNotClosed();
            zA = nw6.a.a(this.transactionMutex, null, 1, null);
            FileReadScope fileReadScope = new FileReadScope(this.file, this.serializer);
            try {
                Object objA = mk0.a(zA);
                anonymousClass1.L$0 = this;
                anonymousClass1.L$1 = fileReadScope;
                anonymousClass1.Z$0 = zA;
                anonymousClass1.label = 1;
                Object objInvoke = u74Var.invoke(fileReadScope, objA, anonymousClass1);
                if (objInvoke == objF) {
                    return objF;
                }
                fileStorageConnection = this;
                z = zA;
                obj = objInvoke;
                closeable = fileReadScope;
                closeable.close();
                th = null;
                if (th != null) {
                    throw th;
                }
                if (z) {
                    nw6.a.b(fileStorageConnection.transactionMutex, null, 1, null);
                }
                return obj;
            } catch (Throwable th2) {
                th = th2;
                closeable = fileReadScope;
                closeable.close();
                throw th;
            }
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        z = anonymousClass1.Z$0;
        closeable = (Closeable) anonymousClass1.L$1;
        fileStorageConnection = (FileStorageConnection) anonymousClass1.L$0;
        try {
            c.b(obj);
            try {
                closeable.close();
                th = null;
            } catch (Throwable th3) {
                th = th3;
            }
            if (th != null) {
                if (z) {
                    nw6.a.b(fileStorageConnection.transactionMutex, null, 1, null);
                }
                return obj;
            }
            try {
                throw th;
            } catch (Throwable th4) {
                th = th4;
                zA = z;
                this = fileStorageConnection;
            }
        } catch (Throwable th5) {
            zA = z;
            this = fileStorageConnection;
            th = th5;
            try {
                closeable.close();
                throw th;
            } catch (Throwable th6) {
                ue3.a(th, th6);
                throw th;
            }
        }
        if (zA) {
            nw6.a.b(this.transactionMutex, null, 1, null);
        }
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00b9 A[Catch: all -> 0x00ee, IOException -> 0x00f1, TRY_ENTER, TryCatch #2 {IOException -> 0x00f1, blocks: (B:34:0x00b9, B:36:0x00bf, B:39:0x00c8, B:40:0x00ed, B:48:0x00fd, B:55:0x010b, B:54:0x0108), top: B:69:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00fd A[Catch: all -> 0x00ee, IOException -> 0x00f1, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IOException -> 0x00f1, blocks: (B:34:0x00b9, B:36:0x00bf, B:39:0x00c8, B:40:0x00ed, B:48:0x00fd, B:55:0x010b, B:54:0x0108), top: B:69:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.File, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.io.File, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v12, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [nw6] */
    @Override
    public Object writeScope(s74 s74Var, wh1<? super zfb> wh1Var) throws Throwable {
        C04921 c04921;
        ?? file;
        nw6 nw6Var;
        FileWriteScope fileWriteScope;
        Throwable th;
        Closeable closeable;
        FileStorageConnection<T> fileStorageConnection;
        nw6 nw6Var2;
        ?? r8;
        if (wh1Var instanceof C04921) {
            c04921 = (C04921) wh1Var;
            int i = c04921.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04921.label = i - Integer.MIN_VALUE;
            } else {
                c04921 = new C04921(this, wh1Var);
            }
        } else {
            c04921 = new C04921(this, wh1Var);
        }
        ?? r9 = c04921.result;
        Object objF = z45.f();
        int i2 = c04921.label;
        try {
            try {
                try {
                    try {
                        try {
                            if (i2 == 0) {
                                c.b(r9);
                                checkNotClosed();
                                createParentDirectories(this.file);
                                nw6Var = this.transactionMutex;
                                c04921.L$0 = this;
                                c04921.L$1 = s74Var;
                                c04921.L$2 = nw6Var;
                                c04921.label = 1;
                                if (nw6Var.c(null, c04921) == objF) {
                                    return objF;
                                }
                            } else {
                                if (i2 != 1) {
                                    if (i2 != 2) {
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                    closeable = (Closeable) c04921.L$3;
                                    File file2 = (File) c04921.L$2;
                                    nw6Var2 = (nw6) c04921.L$1;
                                    fileStorageConnection = (FileStorageConnection) c04921.L$0;
                                    try {
                                        c.b(r9);
                                        r8 = file2;
                                        zfb zfbVar = zfb.a;
                                        try {
                                            closeable.close();
                                            th = null;
                                        } catch (Throwable th2) {
                                            th = th2;
                                        }
                                        if (th == null) {
                                            throw th;
                                        }
                                        if (r8.exists() && !FileMoves_androidKt.atomicMoveTo(r8, fileStorageConnection.file)) {
                                            throw new IOException("Unable to rename " + r8 + " to " + fileStorageConnection.file + ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file.");
                                        }
                                        zfb zfbVar2 = zfb.a;
                                        nw6Var2.b(null);
                                        return zfb.a;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        try {
                                            closeable.close();
                                        } catch (Throwable th4) {
                                            ue3.a(th, th4);
                                        }
                                        throw th;
                                    }
                                }
                                nw6 nw6Var3 = (nw6) c04921.L$2;
                                s74Var = (s74) c04921.L$1;
                                FileStorageConnection<T> fileStorageConnection2 = (FileStorageConnection) c04921.L$0;
                                c.b(r9);
                                nw6Var = nw6Var3;
                                this = fileStorageConnection2;
                            }
                            c04921.L$0 = this;
                            c04921.L$1 = nw6Var;
                            c04921.L$2 = file;
                            c04921.L$3 = fileWriteScope;
                            c04921.label = 2;
                            if (s74Var.invoke(fileWriteScope, c04921) == objF) {
                                return objF;
                            }
                            fileStorageConnection = this;
                            nw6Var2 = nw6Var;
                            r8 = file;
                            closeable = fileWriteScope;
                            zfb zfbVar3 = zfb.a;
                            closeable.close();
                            th = null;
                            if (th == null) {
                                throw th;
                            }
                            if (r8.exists()) {
                                throw new IOException("Unable to rename " + r8 + " to " + fileStorageConnection.file + ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file.");
                            }
                            zfb zfbVar4 = zfb.a;
                            nw6Var2.b(null);
                            return zfb.a;
                        } catch (Throwable th5) {
                            th = th5;
                            closeable = fileWriteScope;
                            closeable.close();
                            throw th;
                        }
                        fileWriteScope = new FileWriteScope(file, this.serializer);
                    } catch (IOException e) {
                        e = e;
                        if (file.exists()) {
                            file.delete();
                        }
                        throw e;
                    }
                    file = new File(this.file.getAbsolutePath() + ".tmp");
                } catch (IOException e2) {
                    e = e2;
                    file = s74Var;
                }
            } catch (Throwable th6) {
                th = th6;
                r9.b(null);
                throw th;
            }
        } catch (Throwable th7) {
            th = th7;
            r9 = objF;
            r9.b(null);
            throw th;
        }
    }
}
