package o0;

import java.io.DataOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;

public final class d extends OutputStream {

    public final a f1304a;

    public boolean f1305b = true;

    public d(a aVar) {
        this.f1304a = aVar;
    }

    public static d a(int i2, String str) throws FileNotFoundException {
        if (!p0.a.b()) {
            throw new FileNotFoundException("coreutils is not available");
        }
        a aVarC = a.c(i2);
        if (aVarC.f()) {
            if (aVarC.n(p0.a.a() + " sv '" + str.replace("'", "'\\''") + "' ; exit $? ;\r\n") && aVarC.l(20, 16)) {
                return new d(aVarC);
            }
        }
        throw new FileNotFoundException(n0.f.b(aVarC));
    }

    @Override
    public final void close() throws IOException {
        super.close();
        boolean z2 = this.f1305b;
        a aVar = this.f1304a;
        if (z2) {
            if (aVar.h()) {
                String str = aVar.f1289c;
                if (str == null) {
                    str = "Bad FD";
                }
                throw new IOException(str);
            }
            try {
                DataOutputStream dataOutputStream = aVar.f1291e;
                if (dataOutputStream != null) {
                    dataOutputStream.write("^ZA_EOF#".getBytes("UTF-8"));
                    dataOutputStream.flush();
                    dataOutputStream.close();
                    for (int i2 = 0; i2 < 10 && !aVar.h(); i2++) {
                        aVar.j(200L);
                    }
                }
            } catch (Exception unused) {
            }
        }
        aVar.close();
    }

    @Override
    public final void write(int i2) throws IOException {
        a aVar = this.f1304a;
        DataOutputStream dataOutputStream = aVar.f1291e;
        if (dataOutputStream != null) {
            dataOutputStream.write(i2);
            return;
        }
        String str = aVar.f1289c;
        if (str == null) {
            str = "Bad FD";
        }
        throw new IOException(str);
    }

    @Override
    public final void write(byte[] bArr, int i2, int i3) throws IOException {
        a aVar = this.f1304a;
        DataOutputStream dataOutputStream = aVar.f1291e;
        if (dataOutputStream != null && !aVar.h()) {
            dataOutputStream.write(bArr, i2, i3);
            dataOutputStream.flush();
        } else {
            String str = aVar.f1289c;
            if (str == null) {
                str = "Bad FD";
            }
            throw new IOException(str);
        }
    }
}
