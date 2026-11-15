package androidx.datastore.core;

import com.lzy.okgo.model.HttpHeaders;
import defpackage.y45;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\f\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\t\u0010\fJ'\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0013\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Landroidx/datastore/core/UncloseableOutputStream;", "Ljava/io/OutputStream;", "Ljava/io/FileOutputStream;", "fileOutputStream", MethodDecl.initName, "(Ljava/io/FileOutputStream;)V", "", "b", "Lzfb;", "write", "(I)V", "", "([B)V", "bytes", "off", "len", "([BII)V", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, "()V", "flush", "Ljava/io/FileOutputStream;", "getFileOutputStream", "()Ljava/io/FileOutputStream;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class UncloseableOutputStream extends OutputStream {
    private final FileOutputStream fileOutputStream;

    public UncloseableOutputStream(FileOutputStream fileOutputStream) {
        y45.j(fileOutputStream, "fileOutputStream");
        this.fileOutputStream = fileOutputStream;
    }

    @Override
    public void close() {
    }

    @Override
    public void flush() throws IOException {
        this.fileOutputStream.flush();
    }

    public final FileOutputStream getFileOutputStream() {
        return this.fileOutputStream;
    }

    @Override
    public void write(int b) throws IOException {
        this.fileOutputStream.write(b);
    }

    @Override
    public void write(byte[] b) throws IOException {
        y45.j(b, "b");
        this.fileOutputStream.write(b);
    }

    @Override
    public void write(byte[] bytes, int off, int len) throws IOException {
        y45.j(bytes, "bytes");
        this.fileOutputStream.write(bytes, off, len);
    }
}
