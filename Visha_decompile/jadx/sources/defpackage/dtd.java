package defpackage;

import java.io.IOException;
import java.io.InputStream;

public final class dtd implements yqd {
    @Override
    public final sjd a(InputStream inputStream) {
        sjd sjdVar = new sjd();
        try {
            StringBuilder sb = new StringBuilder();
            byte[] bArr = new byte[4096];
            while (true) {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    break;
                }
                sb.append(new String(bArr, 0, i));
            }
            sjdVar.d(sb.toString());
        } catch (IOException e) {
            e.printStackTrace();
            sjdVar.b(414);
            sjdVar.d(e.getMessage());
        }
        return sjdVar;
    }
}
