package androidx.datastore.core.okio;

import androidx.datastore.core.WriteScope;
import com.hunantv.media.drm.IDrmSession;
import defpackage.nt1;
import defpackage.ue3;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.io.Closeable;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import okio.BufferedSink;
import okio.FileHandle;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B%\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/datastore/core/okio/OkioWriteScope;", "T", "Landroidx/datastore/core/okio/OkioReadScope;", "Landroidx/datastore/core/WriteScope;", "Lokio/FileSystem;", "fileSystem", "Lokio/Path;", "path", "Landroidx/datastore/core/okio/OkioSerializer;", "serializer", MethodDecl.initName, "(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V", ES6Iterator.VALUE_PROPERTY, "Lzfb;", "writeData", "(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;", "datastore-core-okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OkioWriteScope<T> extends OkioReadScope<T> implements WriteScope<T> {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.okio.OkioWriteScope", f = "OkioStorage.kt", l = {IDrmSession.ERROR_SESSION_PROVISION_ERROR_KEYID_INVALID}, m = "writeData")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;
        final OkioWriteScope<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(OkioWriteScope<T> okioWriteScope, wh1<? super AnonymousClass1> wh1Var) {
            super(wh1Var);
            this.this$0 = okioWriteScope;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.writeData(null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OkioWriteScope(FileSystem fileSystem, Path path, OkioSerializer<T> okioSerializer) {
        super(fileSystem, path, okioSerializer);
        y45.j(fileSystem, "fileSystem");
        y45.j(path, "path");
        y45.j(okioSerializer, "serializer");
    }

    /* JADX WARN: Code duplicated, block: B:72:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x00aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.lang.Object, okio.FileHandle] */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v8, types: [okio.FileHandle] */
    @Override
    public Object writeData(T t, wh1<? super zfb> wh1Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        ?? OpenReadWrite;
        ?? r0;
        Closeable closeable;
        zfb zfbVar;
        Throwable th;
        ?? r10;
        zfb zfbVar2;
        ?? r9;
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
        Throwable th2 = null;
        if (i2 == 0) {
            c.b(obj);
            checkClose();
            OpenReadWrite = getFileSystem().openReadWrite(getPath());
            try {
                BufferedSink bufferedSinkBuffer = Okio.buffer(FileHandle.sink$default(OpenReadWrite, 0L, 1, null));
                try {
                    OkioSerializer<T> serializer = getSerializer();
                    anonymousClass1.L$0 = OpenReadWrite;
                    anonymousClass1.L$1 = OpenReadWrite;
                    anonymousClass1.L$2 = bufferedSinkBuffer;
                    anonymousClass1.label = 1;
                    if (serializer.writeTo(t, bufferedSinkBuffer, anonymousClass1) == objF) {
                        return objF;
                    }
                    ?? r11 = OpenReadWrite;
                    r0 = r11;
                    closeable = bufferedSinkBuffer;
                    r9 = r11;
                } catch (Throwable th3) {
                    th = th3;
                    r0 = OpenReadWrite;
                    closeable = bufferedSinkBuffer;
                    if (closeable != null) {
                        closeable.close();
                    }
                    th = th;
                    r10 = r0;
                    zfbVar2 = null;
                }
            } catch (Throwable th4) {
                th = th4;
                if (OpenReadWrite != 0) {
                    OpenReadWrite.close();
                }
                th2 = th;
                zfbVar = null;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            closeable = (Closeable) anonymousClass1.L$2;
            FileHandle fileHandle = (FileHandle) anonymousClass1.L$1;
            r0 = (Closeable) anonymousClass1.L$0;
            try {
                c.b(obj);
                r0 = r0;
                r9 = fileHandle;
            } catch (Throwable th5) {
                th = th5;
                if (closeable != null) {
                    try {
                        closeable.close();
                    } catch (Throwable th6) {
                        try {
                            ue3.a(th, th6);
                        } catch (Throwable th7) {
                            th = th7;
                            OpenReadWrite = r0;
                            if (OpenReadWrite != 0) {
                                try {
                                    OpenReadWrite.close();
                                } catch (Throwable th8) {
                                    ue3.a(th, th8);
                                }
                            }
                            th2 = th;
                            zfbVar = null;
                        }
                    }
                }
                th = th;
                r10 = r0;
                zfbVar2 = null;
            }
        }
        r9.flush();
        zfbVar2 = zfb.a;
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th9) {
                th = th9;
            }
        }
        th = null;
        r10 = r0;
        if (th != null) {
            throw th;
        }
        y45.g(zfbVar2);
        zfbVar = zfb.a;
        if (r10 != 0) {
            try {
                r10.close();
            } catch (Throwable th10) {
                th2 = th10;
            }
        }
        if (th2 != null) {
            throw th2;
        }
        y45.g(zfbVar);
        return zfb.a;
    }
}
