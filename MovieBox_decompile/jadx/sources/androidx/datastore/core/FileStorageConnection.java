package androidx.datastore.core;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

public final class FileStorageConnection implements x {

    private final File f8280a;

    private final t f8281b;

    private final m f8282c;

    private final Function0 f8283d;

    private final AtomicBoolean f8284e;

    private final kotlinx.coroutines.sync.a f8285f;

    public FileStorageConnection(File file, t serializer, m coordinator, Function0 onClose) {
        Intrinsics.h(file, "file");
        Intrinsics.h(serializer, "serializer");
        Intrinsics.h(coordinator, "coordinator");
        Intrinsics.h(onClose, "onClose");
        this.f8280a = file;
        this.f8281b = serializer;
        this.f8282c = coordinator;
        this.f8283d = onClose;
        this.f8284e = new AtomicBoolean(false);
        this.f8285f = kotlinx.coroutines.sync.g.b(false, 1, null);
    }

    private final void f() {
        if (this.f8284e.get()) {
            throw new IllegalStateException("StorageConnection has already been disposed.");
        }
    }

    private final void g(File file) throws IOException {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (parentFile.isDirectory()) {
                return;
            }
            throw new IOException("Unable to create parent directories of " + file);
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00bb A[Catch: all -> 0x00f0, IOException -> 0x00f2, TRY_ENTER, TryCatch #0 {all -> 0x00f0, blocks: (B:35:0x00bb, B:37:0x00c1, B:40:0x00ca, B:41:0x00ef, B:46:0x00f5, B:49:0x00fd, B:58:0x010c, B:60:0x0112, B:61:0x0115, B:56:0x010a, B:55:0x0107, B:24:0x007a, B:25:0x0096), top: B:64:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00fd A[Catch: all -> 0x00f0, IOException -> 0x00f2, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00f0, blocks: (B:35:0x00bb, B:37:0x00c1, B:40:0x00ca, B:41:0x00ef, B:46:0x00f5, B:49:0x00fd, B:58:0x010c, B:60:0x0112, B:61:0x0115, B:56:0x010a, B:55:0x0107, B:24:0x007a, B:25:0x0096), top: B:64:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int, kotlinx.coroutines.sync.a] */
    @Override
    public Object b(Function2 function2, Continuation continuation) throws IOException {
        FileStorageConnection$writeScope$1 fileStorageConnection$writeScope$1;
        File file;
        FileStorageConnection fileStorageConnection;
        kotlinx.coroutines.sync.a aVar;
        FileWriteScope fileWriteScope;
        Throwable th2;
        c cVar;
        File file2;
        FileStorageConnection fileStorageConnection2;
        if (continuation instanceof FileStorageConnection$writeScope$1) {
            fileStorageConnection$writeScope$1 = (FileStorageConnection$writeScope$1) continuation;
            int i10 = fileStorageConnection$writeScope$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                fileStorageConnection$writeScope$1.label = i10 - Integer.MIN_VALUE;
            } else {
                fileStorageConnection$writeScope$1 = new FileStorageConnection$writeScope$1(this, continuation);
            }
        } else {
            fileStorageConnection$writeScope$1 = new FileStorageConnection$writeScope$1(this, continuation);
        }
        Object obj = fileStorageConnection$writeScope$1.result;
        Object objF = IntrinsicsKt.f();
        ?? r10 = fileStorageConnection$writeScope$1.label;
        try {
            try {
                try {
                    try {
                        if (r10 == 0) {
                            ResultKt.b(obj);
                            f();
                            g(this.f8280a);
                            kotlinx.coroutines.sync.a aVar2 = this.f8285f;
                            fileStorageConnection$writeScope$1.L$0 = this;
                            fileStorageConnection$writeScope$1.L$1 = function2;
                            fileStorageConnection$writeScope$1.L$2 = aVar2;
                            fileStorageConnection$writeScope$1.label = 1;
                            if (aVar2.f(null, fileStorageConnection$writeScope$1) == objF) {
                                return objF;
                            }
                            fileStorageConnection = this;
                            aVar = aVar2;
                        } else {
                            if (r10 != 1) {
                                if (r10 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                cVar = (c) fileStorageConnection$writeScope$1.L$3;
                                File file3 = (File) fileStorageConnection$writeScope$1.L$2;
                                aVar = (kotlinx.coroutines.sync.a) fileStorageConnection$writeScope$1.L$1;
                                fileStorageConnection2 = (FileStorageConnection) fileStorageConnection$writeScope$1.L$0;
                                try {
                                    ResultKt.b(obj);
                                    file2 = file3;
                                    Unit unit = Unit.f64096a;
                                    try {
                                        cVar.close();
                                        th = null;
                                    } catch (Throwable th3) {
                                        th = th3;
                                    }
                                    if (th == null) {
                                        throw th;
                                    }
                                    if (file2.exists() && !j.a(file2, fileStorageConnection2.f8280a)) {
                                        throw new IOException("Unable to rename " + file2 + " to " + fileStorageConnection2.f8280a + ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file.");
                                    }
                                    Unit unit2 = Unit.f64096a;
                                    aVar.unlock(null);
                                    return Unit.f64096a;
                                } catch (Throwable th4) {
                                    th2 = th4;
                                    try {
                                        cVar.close();
                                    } catch (Throwable th5) {
                                        ExceptionsKt.a(th2, th5);
                                    }
                                    throw th2;
                                }
                            }
                            kotlinx.coroutines.sync.a aVar3 = (kotlinx.coroutines.sync.a) fileStorageConnection$writeScope$1.L$2;
                            Function2 function3 = (Function2) fileStorageConnection$writeScope$1.L$1;
                            fileStorageConnection = (FileStorageConnection) fileStorageConnection$writeScope$1.L$0;
                            ResultKt.b(obj);
                            aVar = aVar3;
                            function2 = function3;
                        }
                        fileStorageConnection$writeScope$1.L$0 = fileStorageConnection;
                        fileStorageConnection$writeScope$1.L$1 = aVar;
                        fileStorageConnection$writeScope$1.L$2 = file;
                        fileStorageConnection$writeScope$1.L$3 = fileWriteScope;
                        fileStorageConnection$writeScope$1.label = 2;
                        if (function2.invoke(fileWriteScope, fileStorageConnection$writeScope$1) == objF) {
                            return objF;
                        }
                        file2 = file;
                        fileStorageConnection2 = fileStorageConnection;
                        cVar = fileWriteScope;
                        Unit unit3 = Unit.f64096a;
                        cVar.close();
                        th = null;
                        if (th == null) {
                            throw th;
                        }
                        if (file2.exists()) {
                            throw new IOException("Unable to rename " + file2 + " to " + fileStorageConnection2.f8280a + ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file.");
                        }
                        Unit unit4 = Unit.f64096a;
                        aVar.unlock(null);
                        return Unit.f64096a;
                    } catch (Throwable th6) {
                        th2 = th6;
                        cVar = fileWriteScope;
                        cVar.close();
                        throw th2;
                    }
                    fileWriteScope = new FileWriteScope(file, fileStorageConnection.f8281b);
                } catch (IOException e10) {
                    e = e10;
                    if (file.exists()) {
                        file.delete();
                    }
                    throw e;
                }
                file = new File(fileStorageConnection.f8280a.getAbsolutePath() + ".tmp");
            } catch (Throwable th7) {
                r10.unlock(null);
                throw th7;
            }
        } catch (IOException e11) {
            e = e11;
            file = objF;
        }
    }

    @Override
    public void close() {
        this.f8284e.set(true);
        this.f8283d.invoke();
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0073 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x0075  */
    /* JADX WARN: Code duplicated, block: B:31:0x007b A[Catch: all -> 0x007c, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x007c, blocks: (B:31:0x007b, B:40:0x008c, B:39:0x0089, B:36:0x0084), top: B:52:0x0022, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x0094  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [androidx.datastore.core.FileStorageConnection] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.datastore.core.FileStorageConnection$readScope$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.datastore.core.FileStorageConnection] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.datastore.core.FileStorageConnection] */
    /* JADX WARN: Type inference failed for: r9v0, types: [kotlin.jvm.functions.Function3] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v14, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override
    public Object d(Function3 function3, Continuation continuation) throws Throwable {
        ?? fileStorageConnection$readScope$1;
        c cVar;
        Throwable th2;
        ?? r10;
        ?? r11;
        if (continuation instanceof FileStorageConnection$readScope$1) {
            FileStorageConnection$readScope$1 fileStorageConnection$readScope$2 = (FileStorageConnection$readScope$1) continuation;
            int i10 = fileStorageConnection$readScope$2.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                fileStorageConnection$readScope$2.label = i10 - Integer.MIN_VALUE;
                fileStorageConnection$readScope$1 = fileStorageConnection$readScope$2;
            } else {
                fileStorageConnection$readScope$1 = new FileStorageConnection$readScope$1(this, continuation);
            }
        } else {
            fileStorageConnection$readScope$1 = new FileStorageConnection$readScope$1(this, continuation);
        }
        Object obj = fileStorageConnection$readScope$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = fileStorageConnection$readScope$1.label;
        try {
            if (i11 != 0) {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function3 = fileStorageConnection$readScope$1.Z$0;
                cVar = (c) fileStorageConnection$readScope$1.L$1;
                fileStorageConnection$readScope$1 = (FileStorageConnection) fileStorageConnection$readScope$1.L$0;
                try {
                    ResultKt.b(obj);
                    r10 = fileStorageConnection$readScope$1;
                    r11 = function3;
                    try {
                        cVar.close();
                        th = null;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                    if (th == null) {
                        throw th;
                    }
                    if (r11 != 0) {
                        kotlinx.coroutines.sync.a.C0799a.c(r10.f8285f, null, 1, null);
                    }
                    return obj;
                } catch (Throwable th4) {
                    th2 = th4;
                    try {
                        cVar.close();
                    } catch (Throwable th5) {
                        ExceptionsKt.a(th2, th5);
                    }
                    throw th2;
                }
            }
            ResultKt.b(obj);
            f();
            boolean zB = kotlinx.coroutines.sync.a.C0799a.b(this.f8285f, null, 1, null);
            try {
                FileReadScope fileReadScope = new FileReadScope(this.f8280a, this.f8281b);
                try {
                    Boolean boolA = Boxing.a(zB);
                    fileStorageConnection$readScope$1.L$0 = this;
                    fileStorageConnection$readScope$1.L$1 = fileReadScope;
                    fileStorageConnection$readScope$1.Z$0 = zB;
                    fileStorageConnection$readScope$1.label = 1;
                    Object objInvoke = function3.invoke(fileReadScope, boolA, fileStorageConnection$readScope$1);
                    if (objInvoke == objF) {
                        return objF;
                    }
                    r10 = this;
                    cVar = fileReadScope;
                    obj = objInvoke;
                    r11 = zB;
                    cVar.close();
                    th = null;
                    if (th == null) {
                        throw th;
                    }
                    if (r11 != 0) {
                        kotlinx.coroutines.sync.a.C0799a.c(r10.f8285f, null, 1, null);
                    }
                    return obj;
                } catch (Throwable th6) {
                    fileStorageConnection$readScope$1 = this;
                    cVar = fileReadScope;
                    th2 = th6;
                    function3 = zB;
                    cVar.close();
                    throw th2;
                }
            } catch (Throwable th7) {
                fileStorageConnection$readScope$1 = this;
                th = th7;
                function3 = zB;
                if (function3 != 0) {
                    kotlinx.coroutines.sync.a.C0799a.c(fileStorageConnection$readScope$1.f8285f, null, 1, null);
                }
                throw th;
            }
        } catch (Throwable th8) {
            th = th8;
            if (function3 != 0) {
                kotlinx.coroutines.sync.a.C0799a.c(fileStorageConnection$readScope$1.f8285f, null, 1, null);
            }
            throw th;
        }
    }

    @Override
    public m e() {
        return this.f8282c;
    }
}
