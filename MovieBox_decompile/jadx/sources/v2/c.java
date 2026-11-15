package v2;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public final class c {

    private final ByteArrayOutputStream f73445a;

    private final DataOutputStream f73446b;

    public c() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f73445a = byteArrayOutputStream;
        this.f73446b = new DataOutputStream(byteArrayOutputStream);
    }

    private static void b(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public byte[] a(a aVar) {
        this.f73445a.reset();
        try {
            b(this.f73446b, aVar.f73439a);
            String str = aVar.f73440b;
            if (str == null) {
                str = "";
            }
            b(this.f73446b, str);
            this.f73446b.writeLong(aVar.f73441c);
            this.f73446b.writeLong(aVar.f73442d);
            this.f73446b.write(aVar.f73443e);
            this.f73446b.flush();
            return this.f73445a.toByteArray();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
