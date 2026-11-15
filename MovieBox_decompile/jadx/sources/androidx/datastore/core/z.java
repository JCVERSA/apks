package androidx.datastore.core;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import kotlin.jvm.internal.Intrinsics;

public final class z extends OutputStream {

    private final FileOutputStream f8319a;

    public z(FileOutputStream fileOutputStream) {
        Intrinsics.h(fileOutputStream, "fileOutputStream");
        this.f8319a = fileOutputStream;
    }

    @Override
    public void flush() throws IOException {
        this.f8319a.flush();
    }

    @Override
    public void write(int i10) throws IOException {
        this.f8319a.write(i10);
    }

    @Override
    public void write(byte[] b10) throws IOException {
        Intrinsics.h(b10, "b");
        this.f8319a.write(b10);
    }

    @Override
    public void write(byte[] bytes, int i10, int i11) throws IOException {
        Intrinsics.h(bytes, "bytes");
        this.f8319a.write(bytes, i10, i11);
    }

    @Override
    public void close() {
    }
}
