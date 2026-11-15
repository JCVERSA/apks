package androidx.datastore.core;

import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

public final class FileWriteScope extends FileReadScope implements b0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileWriteScope(File file, t serializer) {
        super(file, serializer);
        Intrinsics.h(file, "file");
        Intrinsics.h(serializer, "serializer");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object a(Object obj, Continuation continuation) {
        FileWriteScope$writeData$1 fileWriteScope$writeData$1;
        Closeable closeable;
        FileOutputStream fileOutputStream;
        if (continuation instanceof FileWriteScope$writeData$1) {
            fileWriteScope$writeData$1 = (FileWriteScope$writeData$1) continuation;
            int i10 = fileWriteScope$writeData$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                fileWriteScope$writeData$1.label = i10 - Integer.MIN_VALUE;
            } else {
                fileWriteScope$writeData$1 = new FileWriteScope$writeData$1(this, continuation);
            }
        } else {
            fileWriteScope$writeData$1 = new FileWriteScope$writeData$1(this, continuation);
        }
        Object obj2 = fileWriteScope$writeData$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = fileWriteScope$writeData$1.label;
        if (i11 == 0) {
            ResultKt.b(obj2);
            f();
            FileOutputStream fileOutputStream2 = new FileOutputStream(g());
            try {
                t tVarH = h();
                z zVar = new z(fileOutputStream2);
                fileWriteScope$writeData$1.L$0 = fileOutputStream2;
                fileWriteScope$writeData$1.L$1 = fileOutputStream2;
                fileWriteScope$writeData$1.label = 1;
                if (tVarH.b(obj, zVar, fileWriteScope$writeData$1) == objF) {
                    return objF;
                }
                fileOutputStream = fileOutputStream2;
                closeable = fileOutputStream;
            } catch (Throwable th2) {
                th = th2;
                closeable = fileOutputStream2;
                throw th;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            fileOutputStream = (FileOutputStream) fileWriteScope$writeData$1.L$1;
            closeable = (Closeable) fileWriteScope$writeData$1.L$0;
            try {
                ResultKt.b(obj2);
            } catch (Throwable th3) {
                th = th3;
                try {
                    throw th;
                } catch (Throwable th4) {
                    CloseableKt.a(closeable, th);
                    throw th4;
                }
            }
        }
        fileOutputStream.getFD().sync();
        Unit unit = Unit.f64096a;
        CloseableKt.a(closeable, null);
        return Unit.f64096a;
    }
}
