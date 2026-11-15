package androidx.datastore.core;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

public class FileReadScope implements s {

    private final File f8271a;

    private final t f8272b;

    private final AtomicBoolean f8273c;

    public FileReadScope(File file, t serializer) {
        Intrinsics.h(file, "file");
        Intrinsics.h(serializer, "serializer");
        this.f8271a = file;
        this.f8272b = serializer;
        this.f8273c = new AtomicBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11, types: [androidx.datastore.core.FileReadScope] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.datastore.core.FileReadScope, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [androidx.datastore.core.FileReadScope] */
    static Object i(FileReadScope fileReadScope, Continuation continuation) {
        FileReadScope$readData$1 fileReadScope$readData$1;
        Throwable th2;
        Closeable closeable;
        Closeable closeable2;
        Throwable th3;
        if (continuation instanceof FileReadScope$readData$1) {
            fileReadScope$readData$1 = (FileReadScope$readData$1) continuation;
            int i10 = fileReadScope$readData$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                fileReadScope$readData$1.label = i10 - Integer.MIN_VALUE;
            } else {
                fileReadScope$readData$1 = new FileReadScope$readData$1(fileReadScope, continuation);
            }
        } else {
            fileReadScope$readData$1 = new FileReadScope$readData$1(fileReadScope, continuation);
        }
        Object obj = fileReadScope$readData$1.result;
        Object objF = IntrinsicsKt.f();
        ?? r10 = fileReadScope$readData$1.label;
        try {
            if (r10 != 0) {
                if (r10 == 1) {
                    closeable2 = (Closeable) fileReadScope$readData$1.L$1;
                    r10 = (FileReadScope) fileReadScope$readData$1.L$0;
                    try {
                        ResultKt.b(obj);
                        CloseableKt.a(closeable2, null);
                        return obj;
                    } catch (Throwable th4) {
                        th3 = th4;
                        try {
                            throw th3;
                        } catch (Throwable th5) {
                            CloseableKt.a(closeable2, th3);
                            throw th5;
                        }
                    }
                }
                if (r10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                closeable = (Closeable) fileReadScope$readData$1.L$0;
                try {
                    ResultKt.b(obj);
                    CloseableKt.a(closeable, null);
                    return obj;
                } catch (Throwable th6) {
                    th2 = th6;
                    try {
                        throw th2;
                    } catch (Throwable th7) {
                        CloseableKt.a(closeable, th2);
                        throw th7;
                    }
                }
            }
            ResultKt.b(obj);
            fileReadScope.f();
            try {
                FileInputStream fileInputStream = new FileInputStream(((FileReadScope) fileReadScope).f8271a);
                try {
                    t tVar = ((FileReadScope) fileReadScope).f8272b;
                    fileReadScope$readData$1.L$0 = fileReadScope;
                    fileReadScope$readData$1.L$1 = fileInputStream;
                    fileReadScope$readData$1.label = 1;
                    Object objC = tVar.c(fileInputStream, fileReadScope$readData$1);
                    if (objC == objF) {
                        return objF;
                    }
                    closeable2 = fileInputStream;
                    obj = objC;
                    CloseableKt.a(closeable2, null);
                    return obj;
                } catch (Throwable th8) {
                    r10 = fileReadScope;
                    closeable2 = fileInputStream;
                    th3 = th8;
                    throw th3;
                }
            } catch (FileNotFoundException unused) {
                if (!((FileReadScope) fileReadScope).f8271a.exists()) {
                    return ((FileReadScope) fileReadScope).f8272b.a();
                }
                FileInputStream fileInputStream2 = new FileInputStream(((FileReadScope) fileReadScope).f8271a);
                try {
                    t tVar2 = ((FileReadScope) fileReadScope).f8272b;
                    fileReadScope$readData$1.L$0 = fileInputStream2;
                    fileReadScope$readData$1.L$1 = null;
                    fileReadScope$readData$1.label = 2;
                    Object objC2 = tVar2.c(fileInputStream2, fileReadScope$readData$1);
                    if (objC2 == objF) {
                        return objF;
                    }
                    obj = objC2;
                    closeable = fileInputStream2;
                    CloseableKt.a(closeable, null);
                    return obj;
                } catch (Throwable th9) {
                    th2 = th9;
                    closeable = fileInputStream2;
                    throw th2;
                }
            }
        } catch (FileNotFoundException unused2) {
            fileReadScope = r10;
        }
    }

    @Override
    public Object c(Continuation continuation) {
        return i(this, continuation);
    }

    @Override
    public void close() {
        this.f8273c.set(true);
    }

    protected final void f() {
        if (this.f8273c.get()) {
            throw new IllegalStateException("This scope has already been closed.");
        }
    }

    protected final File g() {
        return this.f8271a;
    }

    protected final t h() {
        return this.f8272b;
    }
}
