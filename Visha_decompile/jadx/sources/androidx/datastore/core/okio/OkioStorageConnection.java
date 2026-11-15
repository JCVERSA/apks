package androidx.datastore.core.okio;

import androidx.datastore.core.Closeable;
import androidx.datastore.core.InterProcessCoordinator;
import androidx.datastore.core.StorageConnection;
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
import java.io.IOException;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import okio.FileSystem;
import okio.Path;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B;\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011JF\u0010\u0019\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00122.\u0010\u0018\u001a*\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0014\u0012\u0004\u0012\u00020\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0013H\u0096@¢\u0006\u0004\b\u0019\u0010\u001aJ:\u0010\u001d\u001a\u00020\f2(\u0010\u0018\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u001bH\u0096@¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001f\u0010\u0011R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010 R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010!R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\"R\u001a\u0010\n\u001a\u00020\t8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010#\u001a\u0004\b$\u0010%R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010&R\u0014\u0010(\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010+\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,¨\u0006-"}, d2 = {"Landroidx/datastore/core/okio/OkioStorageConnection;", "T", "Landroidx/datastore/core/StorageConnection;", "Lokio/FileSystem;", "fileSystem", "Lokio/Path;", "path", "Landroidx/datastore/core/okio/OkioSerializer;", "serializer", "Landroidx/datastore/core/InterProcessCoordinator;", "coordinator", "Lkotlin/Function0;", "Lzfb;", "onClose", MethodDecl.initName, "(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;Landroidx/datastore/core/InterProcessCoordinator;Lc74;)V", "checkNotClosed", "()V", "R", "Lkotlin/Function3;", "Landroidx/datastore/core/ReadScope;", "", "Lwh1;", "", "block", "readScope", "(Lu74;Lwh1;)Ljava/lang/Object;", "Lkotlin/Function2;", "Landroidx/datastore/core/WriteScope;", "writeScope", "(Ls74;Lwh1;)Ljava/lang/Object;", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, "Lokio/FileSystem;", "Lokio/Path;", "Landroidx/datastore/core/okio/OkioSerializer;", "Landroidx/datastore/core/InterProcessCoordinator;", "getCoordinator", "()Landroidx/datastore/core/InterProcessCoordinator;", "Lc74;", "Landroidx/datastore/core/okio/AtomicBoolean;", "closed", "Landroidx/datastore/core/okio/AtomicBoolean;", "Lnw6;", "transactionMutex", "Lnw6;", "datastore-core-okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OkioStorageConnection<T> implements StorageConnection<T> {
    private final AtomicBoolean closed;
    private final InterProcessCoordinator coordinator;
    private final FileSystem fileSystem;
    private final c74 onClose;
    private final Path path;
    private final OkioSerializer<T> serializer;
    private final nw6 transactionMutex;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.okio.OkioStorageConnection", f = "OkioStorage.kt", l = {113}, m = "readScope")
    public static final class AnonymousClass1<R> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        Object result;
        final OkioStorageConnection<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(OkioStorageConnection<T> okioStorageConnection, wh1<? super AnonymousClass1> wh1Var) {
            super(wh1Var);
            this.this$0 = okioStorageConnection;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readScope(null, this);
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.okio.OkioStorageConnection", f = "OkioStorage.kt", l = {236, 137}, m = "writeScope")
    public static final class C04961 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        Object result;
        final OkioStorageConnection<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04961(OkioStorageConnection<T> okioStorageConnection, wh1<? super C04961> wh1Var) {
            super(wh1Var);
            this.this$0 = okioStorageConnection;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.writeScope(null, this);
        }
    }

    public OkioStorageConnection(FileSystem fileSystem, Path path, OkioSerializer<T> okioSerializer, InterProcessCoordinator interProcessCoordinator, c74 c74Var) {
        y45.j(fileSystem, "fileSystem");
        y45.j(path, "path");
        y45.j(okioSerializer, "serializer");
        y45.j(interProcessCoordinator, "coordinator");
        y45.j(c74Var, "onClose");
        this.fileSystem = fileSystem;
        this.path = path;
        this.serializer = okioSerializer;
        this.coordinator = interProcessCoordinator;
        this.onClose = c74Var;
        this.closed = new AtomicBoolean(false);
        this.transactionMutex = sw6.b(false, 1, null);
    }

    private final void checkNotClosed() {
        if (this.closed.get()) {
            throw new IllegalStateException("StorageConnection has already been disposed.");
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

    /* JADX WARN: Code duplicated, block: B:28:0x0078 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x007a  */
    /* JADX WARN: Code duplicated, block: B:46:0x0080 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [u74] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v9 */
    @Override
    public <R> Object readScope(u74 u74Var, wh1<? super R> wh1Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        Throwable th;
        Closeable closeable;
        OkioStorageConnection<T> okioStorageConnection;
        boolean z;
        ?? r11;
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
        ?? r12 = anonymousClass1.result;
        Object objF = z45.f();
        int i2 = anonymousClass1.label;
        try {
            if (i2 == 0) {
                c.b(r12);
                checkNotClosed();
                boolean zA = nw6.a.a(this.transactionMutex, null, 1, null);
                OkioReadScope okioReadScope = new OkioReadScope(this.fileSystem, this.path, this.serializer);
                try {
                    Boolean boolA = mk0.a(zA);
                    anonymousClass1.L$0 = this;
                    anonymousClass1.L$1 = okioReadScope;
                    anonymousClass1.Z$0 = zA;
                    anonymousClass1.label = 1;
                    Object objInvoke = u74Var.invoke(okioReadScope, boolA, anonymousClass1);
                    if (objInvoke == objF) {
                        return objF;
                    }
                    okioStorageConnection = this;
                    z = zA ? 1 : 0;
                    r11 = objInvoke;
                    closeable = okioReadScope;
                    closeable.close();
                    th = null;
                    if (th != null) {
                        throw th;
                    }
                    if (z) {
                        nw6.a.b(okioStorageConnection.transactionMutex, null, 1, null);
                    }
                    return r11;
                } catch (Throwable th2) {
                    th = th2;
                    closeable = okioReadScope;
                    r12 = zA;
                    closeable.close();
                    throw th;
                }
            }
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z = anonymousClass1.Z$0;
            closeable = (Closeable) anonymousClass1.L$1;
            okioStorageConnection = (OkioStorageConnection) anonymousClass1.L$0;
            try {
                c.b(r12);
                r11 = r12;
                try {
                    closeable.close();
                    th = null;
                } catch (Throwable th3) {
                    th = th3;
                }
                if (th != null) {
                    if (z) {
                        nw6.a.b(okioStorageConnection.transactionMutex, null, 1, null);
                    }
                    return r11;
                }
                try {
                    throw th;
                } catch (Throwable th4) {
                    th = th4;
                    r12 = z;
                    this = okioStorageConnection;
                }
            } catch (Throwable th5) {
                r12 = z ? 1 : 0;
                this = okioStorageConnection;
                th = th5;
                try {
                    closeable.close();
                    throw th;
                } catch (Throwable th6) {
                    ue3.a(th, th6);
                    throw th;
                }
            }
        } catch (Throwable th7) {
            th = th7;
        }
        if (r12 != 0) {
            nw6.a.b(this.transactionMutex, null, 1, null);
        }
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00d1 A[Catch: all -> 0x00e1, IOException -> 0x00e4, TRY_ENTER, TryCatch #1 {all -> 0x00e1, blocks: (B:37:0x00d1, B:39:0x00d9, B:45:0x00e7, B:48:0x00ef, B:55:0x00fd, B:54:0x00fa), top: B:71:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00d9 A[Catch: all -> 0x00e1, IOException -> 0x00e4, TRY_LEAVE, TryCatch #1 {all -> 0x00e1, blocks: (B:37:0x00d1, B:39:0x00d9, B:45:0x00e7, B:48:0x00ef, B:55:0x00fd, B:54:0x00fa), top: B:71:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00ef A[Catch: all -> 0x00e1, IOException -> 0x00e4, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00e1, blocks: (B:37:0x00d1, B:39:0x00d9, B:45:0x00e7, B:48:0x00ef, B:55:0x00fd, B:54:0x00fa), top: B:71:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.datastore.core.okio.OkioStorageConnection] */
    /* JADX WARN: Type inference failed for: r0v4, types: [okio.FileSystem] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r10v1, types: [okio.Path] */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r11v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [nw6] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r1v1, types: [okio.FileSystem] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [nw6] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public Object writeScope(s74 s74Var, wh1<? super zfb> wh1Var) throws Throwable {
        C04961 c04961;
        ?? r11;
        ?? r10;
        ?? r0;
        s74 s74Var2;
        Path path;
        Path pathResolve;
        OkioWriteScope okioWriteScope;
        Throwable th;
        Closeable closeable;
        OkioStorageConnection<T> okioStorageConnection;
        ?? r1;
        Path path2;
        if (wh1Var instanceof C04961) {
            C04961 c04962 = (C04961) wh1Var;
            int i = c04962.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04962.label = i - Integer.MIN_VALUE;
                c04961 = c04962;
            } else {
                c04961 = new C04961(this, wh1Var);
            }
        } else {
            c04961 = new C04961(this, wh1Var);
        }
        Object obj = c04961.result;
        Object objF = z45.f();
        int i2 = c04961.label;
        try {
            try {
                try {
                    try {
                        try {
                            if (i2 == 0) {
                                c.b(obj);
                                checkNotClosed();
                                Path pathParent = this.path.parent();
                                if (pathParent == null) {
                                    throw new IllegalStateException("must have a parent path");
                                }
                                this.fileSystem.createDirectories(pathParent, false);
                                nw6 nw6Var = this.transactionMutex;
                                c04961.L$0 = this;
                                c04961.L$1 = s74Var;
                                c04961.L$2 = pathParent;
                                c04961.L$3 = nw6Var;
                                c04961.label = 1;
                                if (nw6Var.c(null, c04961) == objF) {
                                    return objF;
                                }
                                s74Var2 = s74Var;
                                path = pathParent;
                                r11 = nw6Var;
                            } else {
                                if (i2 != 1) {
                                    if (i2 != 2) {
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                    closeable = (Closeable) c04961.L$3;
                                    Path path3 = (Path) c04961.L$2;
                                    nw6 nw6Var2 = (nw6) c04961.L$1;
                                    okioStorageConnection = (OkioStorageConnection) c04961.L$0;
                                    try {
                                        c.b(obj);
                                        r1 = nw6Var2;
                                        path2 = path3;
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
                                        if (okioStorageConnection.fileSystem.exists(path2)) {
                                            okioStorageConnection.fileSystem.atomicMove(path2, okioStorageConnection.path);
                                        }
                                        zfb zfbVar2 = zfb.a;
                                        r1.b(null);
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
                                nw6 nw6Var3 = (nw6) c04961.L$3;
                                path = (Path) c04961.L$2;
                                s74 s74Var3 = (s74) c04961.L$1;
                                OkioStorageConnection<T> okioStorageConnection2 = (OkioStorageConnection) c04961.L$0;
                                c.b(obj);
                                r11 = nw6Var3;
                                this = okioStorageConnection2;
                                s74Var2 = s74Var3;
                            }
                            c04961.L$0 = this;
                            c04961.L$1 = r11;
                            c04961.L$2 = pathResolve;
                            c04961.L$3 = okioWriteScope;
                            c04961.label = 2;
                            if (s74Var2.invoke(okioWriteScope, c04961) == objF) {
                                return objF;
                            }
                            okioStorageConnection = this;
                            r1 = r11;
                            closeable = okioWriteScope;
                            path2 = pathResolve;
                            zfb zfbVar3 = zfb.a;
                            closeable.close();
                            th = null;
                            if (th == null) {
                                throw th;
                            }
                            if (okioStorageConnection.fileSystem.exists(path2)) {
                                okioStorageConnection.fileSystem.atomicMove(path2, okioStorageConnection.path);
                            }
                            zfb zfbVar4 = zfb.a;
                            r1.b(null);
                            return zfb.a;
                        } catch (Throwable th5) {
                            th = th5;
                            closeable = okioWriteScope;
                            closeable.close();
                            throw th;
                        }
                        this.fileSystem.delete(pathResolve, false);
                        okioWriteScope = new OkioWriteScope(this.fileSystem, pathResolve, this.serializer);
                    } catch (IOException e) {
                        r0 = this;
                        e = e;
                        r10 = pathResolve;
                        r11 = r11;
                        if (!r0.fileSystem.exists(r10)) {
                            throw e;
                        }
                        try {
                            r0.fileSystem.delete(r10);
                            throw e;
                        } catch (IOException unused) {
                            throw e;
                        }
                    }
                    pathResolve = path.resolve(this.path.name() + ".tmp");
                } catch (Throwable th6) {
                    th = th6;
                    r11.b(null);
                    throw th;
                }
            } catch (Throwable th7) {
                th = th7;
                r11 = objF;
                r11.b(null);
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            r11 = objF;
            r0 = c04961;
            r10 = s74Var;
        }
    }
}
