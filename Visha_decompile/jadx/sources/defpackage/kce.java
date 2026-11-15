package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public final class kce {
    public final ByteArrayOutputStream a;
    public final DataOutputStream b;

    public kce() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.a = byteArrayOutputStream;
        this.b = new DataOutputStream(byteArrayOutputStream);
    }

    public static void b(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public final byte[] a(jce jceVar) {
        ByteArrayOutputStream byteArrayOutputStream = this.a;
        byteArrayOutputStream.reset();
        try {
            DataOutputStream dataOutputStream = this.b;
            b(dataOutputStream, jceVar.a);
            b(dataOutputStream, jceVar.b);
            dataOutputStream.writeLong(jceVar.c);
            dataOutputStream.writeLong(jceVar.d);
            dataOutputStream.write(jceVar.e);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
