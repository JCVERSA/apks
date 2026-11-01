package n0;

import java.io.Closeable;
import java.io.DataInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

public final class f extends InputStream {

    public final int f1247a;

    public final Closeable f1248b;

    public f(Closeable closeable, int i2) {
        this.f1247a = i2;
        this.f1248b = closeable;
    }

    public static f a(int i2, String str) throws FileNotFoundException {
        o0.a aVarC = o0.a.c(i2);
        if (aVarC.f()) {
            if (aVarC.n("cat '" + str.replace("'", "'\\''") + "' ; exit $? ;\r\n")) {
                return new f(aVarC, 1);
            }
        }
        throw new FileNotFoundException(b(aVarC));
    }

    public static String b(o0.a aVar) {
        String str;
        ZApp zApp;
        if (aVar.f1296j != 2 || (zApp = ZApp.f1434c) == null) {
            return (!aVar.f() || (str = aVar.f1289c) == null) ? "Failed to get root shell" : str;
        }
        return zApp.getString(R.string.MES_SHIZUKU_IS_NOT_RUNNING);
    }

    @Override
    public final int available() {
        switch (this.f1247a) {
            case 0:
                return ((InputStream) this.f1248b).available();
            default:
                return super.available();
        }
    }

    @Override
    public final void close() throws IOException {
        switch (this.f1247a) {
            case 0:
                break;
            default:
                super.close();
                ((o0.a) this.f1248b).close();
                break;
        }
    }

    @Override
    public final int read() {
        int i2 = this.f1247a;
        Closeable closeable = this.f1248b;
        switch (i2) {
            case 0:
                return ((InputStream) closeable).read();
            default:
                o0.a aVar = (o0.a) closeable;
                DataInputStream dataInputStream = aVar.f1292f;
                if (dataInputStream == null) {
                    return -1;
                }
                int i3 = 1000;
                while (dataInputStream.available() <= 0) {
                    if (aVar.h() || (i3 = i3 - 1) == 0) {
                        return -1;
                    }
                    try {
                        ((o0.a) closeable).j(10L);
                    } catch (InterruptedException unused) {
                    }
                }
                return dataInputStream.read();
        }
    }

    @Override
    public final long skip(long j2) {
        switch (this.f1247a) {
            case 0:
                return ((InputStream) this.f1248b).skip(j2);
            default:
                return super.skip(j2);
        }
    }

    @Override
    public final int read(byte[] bArr, int i2, int i3) {
        switch (this.f1247a) {
            case 0:
                return ((InputStream) this.f1248b).read(bArr, i2, i3);
            default:
                return super.read(bArr, i2, i3);
        }
    }
}
