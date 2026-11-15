package androidx.datastore.core;

import com.lzy.okgo.model.HttpHeaders;
import defpackage.ly0;
import defpackage.nt1;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0004¢\u0006\u0004\b\u000e\u0010\rR\u001a\u0010\u0004\u001a\u00020\u00038\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R \u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Landroidx/datastore/core/FileReadScope;", "T", "Landroidx/datastore/core/ReadScope;", "Ljava/io/File;", "file", "Landroidx/datastore/core/Serializer;", "serializer", MethodDecl.initName, "(Ljava/io/File;Landroidx/datastore/core/Serializer;)V", "readData", "(Lwh1;)Ljava/lang/Object;", "Lzfb;", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, "()V", "checkNotClosed", "Ljava/io/File;", "getFile", "()Ljava/io/File;", "Landroidx/datastore/core/Serializer;", "getSerializer", "()Landroidx/datastore/core/Serializer;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "closed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class FileReadScope<T> implements ReadScope<T> {
    private final java.util.concurrent.atomic.AtomicBoolean closed;
    private final File file;
    private final Serializer<T> serializer;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.FileReadScope", f = "FileStorage.kt", l = {169, 178}, m = "readData$suspendImpl")
    public static final class AnonymousClass1<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;
        final FileReadScope<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(FileReadScope<T> fileReadScope, wh1<? super AnonymousClass1> wh1Var) {
            super(wh1Var);
            this.this$0 = fileReadScope;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileReadScope.readData$suspendImpl(this.this$0, this);
        }
    }

    public FileReadScope(File file, Serializer<T> serializer) {
        y45.j(file, "file");
        y45.j(serializer, "serializer");
        this.file = file;
        this.serializer = serializer;
        this.closed = new java.util.concurrent.atomic.AtomicBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11, types: [androidx.datastore.core.FileReadScope] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r7v20 */
    public static <T> Object readData$suspendImpl(FileReadScope<T> fileReadScope, wh1<? super T> wh1Var) {
        AnonymousClass1 anonymousClass1;
        Throwable th;
        java.io.Closeable closeable;
        java.io.Closeable closeable2;
        Throwable th2;
        if (wh1Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) wh1Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(fileReadScope, wh1Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(fileReadScope, wh1Var);
        }
        Object obj = anonymousClass1.result;
        Object objF = z45.f();
        ?? r2 = anonymousClass1.label;
        try {
            if (r2 != 0) {
                if (r2 == 1) {
                    closeable2 = (java.io.Closeable) anonymousClass1.L$1;
                    r2 = (FileReadScope) anonymousClass1.L$0;
                    try {
                        c.b(obj);
                        ly0.a(closeable2, null);
                        return obj;
                    } catch (Throwable th3) {
                        th2 = th3;
                        try {
                            throw th2;
                        } catch (Throwable th4) {
                            ly0.a(closeable2, th2);
                            throw th4;
                        }
                    }
                }
                if (r2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                closeable = (java.io.Closeable) anonymousClass1.L$0;
                try {
                    c.b(obj);
                    ly0.a(closeable, null);
                    return obj;
                } catch (Throwable th5) {
                    th = th5;
                    try {
                        throw th;
                    } catch (Throwable th6) {
                        ly0.a(closeable, th);
                        throw th6;
                    }
                }
            }
            c.b(obj);
            fileReadScope.checkNotClosed();
            try {
                FileInputStream fileInputStream = new FileInputStream(((FileReadScope) fileReadScope).file);
                try {
                    Serializer<T> serializer = ((FileReadScope) fileReadScope).serializer;
                    anonymousClass1.L$0 = fileReadScope;
                    anonymousClass1.L$1 = fileInputStream;
                    anonymousClass1.label = 1;
                    Object from = serializer.readFrom(fileInputStream, anonymousClass1);
                    if (from == objF) {
                        return objF;
                    }
                    closeable2 = fileInputStream;
                    obj = from;
                    ly0.a(closeable2, null);
                    return obj;
                } catch (Throwable th7) {
                    r2 = fileReadScope;
                    closeable2 = fileInputStream;
                    th2 = th7;
                    throw th2;
                }
            } catch (FileNotFoundException unused) {
                if (!((FileReadScope) fileReadScope).file.exists()) {
                    return ((FileReadScope) fileReadScope).serializer.getDefaultValue();
                }
                FileInputStream fileInputStream2 = new FileInputStream(((FileReadScope) fileReadScope).file);
                try {
                    Serializer<T> serializer2 = ((FileReadScope) fileReadScope).serializer;
                    anonymousClass1.L$0 = fileInputStream2;
                    anonymousClass1.L$1 = null;
                    anonymousClass1.label = 2;
                    Object from2 = serializer2.readFrom(fileInputStream2, anonymousClass1);
                    if (from2 == objF) {
                        return objF;
                    }
                    obj = from2;
                    closeable = fileInputStream2;
                    ly0.a(closeable, null);
                    return obj;
                } catch (Throwable th8) {
                    th = th8;
                    closeable = fileInputStream2;
                    throw th;
                }
            }
        } catch (FileNotFoundException unused2) {
            fileReadScope = (FileReadScope<T>) r2;
        }
    }

    public final void checkNotClosed() {
        if (this.closed.get()) {
            throw new IllegalStateException("This scope has already been closed.");
        }
    }

    @Override
    public void close() {
        this.closed.set(true);
    }

    public final File getFile() {
        return this.file;
    }

    public final Serializer<T> getSerializer() {
        return this.serializer;
    }

    @Override
    public Object readData(wh1<? super T> wh1Var) {
        return readData$suspendImpl(this, wh1Var);
    }
}
