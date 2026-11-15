package androidx.datastore.core.okio;

import androidx.datastore.core.ReadScope;
import com.lzy.okgo.model.HttpHeaders;
import defpackage.nt1;
import defpackage.ue3;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import java.io.Closeable;
import java.io.FileNotFoundException;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B%\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0004¢\u0006\u0004\b\u0010\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u00038\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u00058\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R \u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\b\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Landroidx/datastore/core/okio/OkioReadScope;", "T", "Landroidx/datastore/core/ReadScope;", "Lokio/FileSystem;", "fileSystem", "Lokio/Path;", "path", "Landroidx/datastore/core/okio/OkioSerializer;", "serializer", MethodDecl.initName, "(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V", "readData", "(Lwh1;)Ljava/lang/Object;", "Lzfb;", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, "()V", "checkClose", "Lokio/FileSystem;", "getFileSystem", "()Lokio/FileSystem;", "Lokio/Path;", "getPath", "()Lokio/Path;", "Landroidx/datastore/core/okio/OkioSerializer;", "getSerializer", "()Landroidx/datastore/core/okio/OkioSerializer;", "Landroidx/datastore/core/okio/AtomicBoolean;", "closed", "Landroidx/datastore/core/okio/AtomicBoolean;", "datastore-core-okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OkioReadScope<T> implements ReadScope<T> {
    private final AtomicBoolean closed;
    private final FileSystem fileSystem;
    private final Path path;
    private final OkioSerializer<T> serializer;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.okio.OkioReadScope", f = "OkioStorage.kt", l = {180, 187}, m = "readData$suspendImpl")
    public static final class AnonymousClass1<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;
        final OkioReadScope<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(OkioReadScope<T> okioReadScope, wh1<? super AnonymousClass1> wh1Var) {
            super(wh1Var);
            this.this$0 = okioReadScope;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OkioReadScope.readData$suspendImpl(this.this$0, this);
        }
    }

    public OkioReadScope(FileSystem fileSystem, Path path, OkioSerializer<T> okioSerializer) {
        y45.j(fileSystem, "fileSystem");
        y45.j(path, "path");
        y45.j(okioSerializer, "serializer");
        this.fileSystem = fileSystem;
        this.path = path;
        this.serializer = okioSerializer;
        this.closed = new AtomicBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0090 A[Catch: FileNotFoundException -> 0x008a, TryCatch #8 {FileNotFoundException -> 0x008a, blocks: (B:46:0x0090, B:47:0x0094, B:42:0x0086, B:39:0x0081), top: B:82:0x0081, inners: #4 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0094 A[Catch: FileNotFoundException -> 0x008a, TRY_LEAVE, TryCatch #8 {FileNotFoundException -> 0x008a, blocks: (B:46:0x0090, B:47:0x0094, B:42:0x0086, B:39:0x0081), top: B:82:0x0081, inners: #4 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x009f  */
    /* JADX WARN: Code duplicated, block: B:53:0x00b9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:54:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:70:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:71:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:76:0x00bf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:82:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x0072 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x00cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static <T> Object readData$suspendImpl(OkioReadScope<T> okioReadScope, wh1<? super T> wh1Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        OkioReadScope<T> okioReadScope2;
        Closeable closeable;
        Throwable th;
        BufferedSource bufferedSourceBuffer;
        Throwable th2;
        Closeable closeable2;
        Object from;
        Throwable th3;
        if (wh1Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) wh1Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(okioReadScope, wh1Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(okioReadScope, wh1Var);
        }
        Object obj = anonymousClass1.result;
        Object objF = z45.f();
        int i2 = anonymousClass1.label;
        Throwable th4 = null;
        if (i2 == 0) {
            c.b(obj);
            okioReadScope.checkClose();
            try {
                BufferedSource bufferedSourceBuffer2 = Okio.buffer(((OkioReadScope) okioReadScope).fileSystem.source(((OkioReadScope) okioReadScope).path));
                try {
                    OkioSerializer<T> okioSerializer = ((OkioReadScope) okioReadScope).serializer;
                    anonymousClass1.L$0 = okioReadScope;
                    anonymousClass1.L$1 = bufferedSourceBuffer2;
                    anonymousClass1.label = 1;
                    Object from2 = okioSerializer.readFrom(bufferedSourceBuffer2, anonymousClass1);
                    if (from2 == objF) {
                        return objF;
                    }
                    closeable = bufferedSourceBuffer2;
                    obj = from2;
                    if (closeable != null) {
                        closeable.close();
                    }
                    th3 = null;
                    if (th3 == null) {
                        throw th3;
                    }
                    y45.g(obj);
                    return obj;
                } catch (Throwable th5) {
                    okioReadScope2 = okioReadScope;
                    closeable = bufferedSourceBuffer2;
                    th = th5;
                    if (closeable != null) {
                        closeable.close();
                    }
                    th3 = th;
                    obj = null;
                }
            } catch (FileNotFoundException unused) {
                if (((OkioReadScope) okioReadScope).fileSystem.exists(((OkioReadScope) okioReadScope).path)) {
                    return ((OkioReadScope) okioReadScope).serializer.getDefaultValue();
                }
                bufferedSourceBuffer = Okio.buffer(((OkioReadScope) okioReadScope).fileSystem.source(((OkioReadScope) okioReadScope).path));
                OkioSerializer<T> okioSerializer2 = ((OkioReadScope) okioReadScope).serializer;
                anonymousClass1.L$0 = bufferedSourceBuffer;
                anonymousClass1.L$1 = null;
                anonymousClass1.label = 2;
                from = okioSerializer2.readFrom(bufferedSourceBuffer, anonymousClass1);
                if (from == objF) {
                    return objF;
                }
                obj = from;
                closeable2 = bufferedSourceBuffer;
                if (closeable2 != null) {
                    closeable2.close();
                }
                if (th4 != null) {
                    throw th4;
                }
                y45.g(obj);
                return obj;
            }
        } else {
            if (i2 == 1) {
                closeable = (Closeable) anonymousClass1.L$1;
                okioReadScope2 = (OkioReadScope) anonymousClass1.L$0;
                try {
                    c.b(obj);
                    if (closeable != null) {
                        try {
                            closeable.close();
                        } catch (Throwable th6) {
                            th3 = th6;
                        }
                    }
                    th3 = null;
                } catch (Throwable th7) {
                    th = th7;
                    if (closeable != null) {
                        try {
                            try {
                                closeable.close();
                            } catch (Throwable th8) {
                                ue3.a(th, th8);
                            }
                        } catch (FileNotFoundException unused2) {
                            okioReadScope = okioReadScope2;
                            if (((OkioReadScope) okioReadScope).fileSystem.exists(((OkioReadScope) okioReadScope).path)) {
                                return ((OkioReadScope) okioReadScope).serializer.getDefaultValue();
                            }
                            bufferedSourceBuffer = Okio.buffer(((OkioReadScope) okioReadScope).fileSystem.source(((OkioReadScope) okioReadScope).path));
                            try {
                                OkioSerializer<T> okioSerializer3 = ((OkioReadScope) okioReadScope).serializer;
                                anonymousClass1.L$0 = bufferedSourceBuffer;
                                anonymousClass1.L$1 = null;
                                anonymousClass1.label = 2;
                                from = okioSerializer3.readFrom(bufferedSourceBuffer, anonymousClass1);
                                if (from == objF) {
                                    return objF;
                                }
                                obj = from;
                                closeable2 = bufferedSourceBuffer;
                                if (closeable2 != null) {
                                    closeable2.close();
                                }
                                if (th4 != null) {
                                    throw th4;
                                }
                                y45.g(obj);
                                return obj;
                            } catch (Throwable th9) {
                                th2 = th9;
                                closeable2 = bufferedSourceBuffer;
                                if (closeable2 != null) {
                                    closeable2.close();
                                }
                                th4 = th2;
                                obj = null;
                            }
                        }
                    }
                    th3 = th;
                    obj = null;
                }
                if (th3 == null) {
                    throw th3;
                }
                y45.g(obj);
                return obj;
            }
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            closeable2 = (Closeable) anonymousClass1.L$0;
            try {
                c.b(obj);
                if (closeable2 != null) {
                    try {
                        closeable2.close();
                    } catch (Throwable th10) {
                        th4 = th10;
                    }
                }
            } catch (Throwable th11) {
                th2 = th11;
                if (closeable2 != null) {
                    try {
                        closeable2.close();
                    } catch (Throwable th12) {
                        ue3.a(th2, th12);
                    }
                }
                th4 = th2;
                obj = null;
            }
        }
        if (th4 != null) {
            throw th4;
        }
        y45.g(obj);
        return obj;
    }

    public final void checkClose() {
        if (this.closed.get()) {
            throw new IllegalStateException("This scope has already been closed.");
        }
    }

    @Override
    public void close() {
        this.closed.set(true);
    }

    public final FileSystem getFileSystem() {
        return this.fileSystem;
    }

    public final Path getPath() {
        return this.path;
    }

    public final OkioSerializer<T> getSerializer() {
        return this.serializer;
    }

    @Override
    public Object readData(wh1<? super T> wh1Var) {
        return readData$suspendImpl(this, wh1Var);
    }
}
