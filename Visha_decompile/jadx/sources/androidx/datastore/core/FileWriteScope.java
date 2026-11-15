package androidx.datastore.core;

import defpackage.ly0;
import defpackage.nt1;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.io.File;
import java.io.FileOutputStream;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001d\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/datastore/core/FileWriteScope;", "T", "Landroidx/datastore/core/FileReadScope;", "Landroidx/datastore/core/WriteScope;", "Ljava/io/File;", "file", "Landroidx/datastore/core/Serializer;", "serializer", MethodDecl.initName, "(Ljava/io/File;Landroidx/datastore/core/Serializer;)V", ES6Iterator.VALUE_PROPERTY, "Lzfb;", "writeData", "(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FileWriteScope<T> extends FileReadScope<T> implements WriteScope<T> {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @nt1(c = "androidx.datastore.core.FileWriteScope", f = "FileStorage.kt", l = {201}, m = "writeData")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;
        final FileWriteScope<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(FileWriteScope<T> fileWriteScope, wh1<? super AnonymousClass1> wh1Var) {
            super(wh1Var);
            this.this$0 = fileWriteScope;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.writeData(null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileWriteScope(File file, Serializer<T> serializer) {
        super(file, serializer);
        y45.j(file, "file");
        y45.j(serializer, "serializer");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object writeData(T t, wh1<? super zfb> wh1Var) {
        AnonymousClass1 anonymousClass1;
        java.io.Closeable closeable;
        FileOutputStream fileOutputStream;
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
            FileOutputStream fileOutputStream2 = new FileOutputStream(getFile());
            try {
                Serializer<T> serializer = getSerializer();
                UncloseableOutputStream uncloseableOutputStream = new UncloseableOutputStream(fileOutputStream2);
                anonymousClass1.L$0 = fileOutputStream2;
                anonymousClass1.L$1 = fileOutputStream2;
                anonymousClass1.label = 1;
                if (serializer.writeTo(t, uncloseableOutputStream, anonymousClass1) == objF) {
                    return objF;
                }
                fileOutputStream = fileOutputStream2;
                closeable = fileOutputStream;
            } catch (Throwable th) {
                th = th;
                closeable = fileOutputStream2;
                throw th;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            fileOutputStream = (FileOutputStream) anonymousClass1.L$1;
            closeable = (java.io.Closeable) anonymousClass1.L$0;
            try {
                c.b(obj);
            } catch (Throwable th2) {
                th = th2;
                try {
                    throw th;
                } catch (Throwable th3) {
                    ly0.a(closeable, th);
                    throw th3;
                }
            }
        }
        fileOutputStream.getFD().sync();
        zfb zfbVar = zfb.a;
        ly0.a(closeable, null);
        return zfb.a;
    }
}
