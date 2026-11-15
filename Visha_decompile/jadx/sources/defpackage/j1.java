package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;

public abstract class j1 implements x0, y93 {
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof x0) {
            return j().s(((x0) obj).j());
        }
        return false;
    }

    @Override
    public byte[] getEncoded() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        j().p(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public int hashCode() {
        return j().hashCode();
    }

    @Override
    public abstract p1 j();

    public void k(OutputStream outputStream, String str) {
        j().k(outputStream, str);
    }

    public byte[] l(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        j().k(byteArrayOutputStream, str);
        return byteArrayOutputStream.toByteArray();
    }
}
