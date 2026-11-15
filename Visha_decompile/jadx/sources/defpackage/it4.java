package defpackage;

import android.text.TextUtils;
import com.danikula.videocache.ProxyCache;
import com.danikula.videocache.ProxyCacheException;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Locale;

public class it4 extends ProxyCache {
    public final ot4 j;
    public final fq3 k;
    public sp0 l;

    public it4(ot4 ot4Var, fq3 fq3Var) {
        super(ot4Var, fq3Var);
        this.k = fq3Var;
        this.j = ot4Var;
    }

    @Override
    public void g(int i) {
        sp0 sp0Var = this.l;
        if (sp0Var != null) {
            sp0Var.onCacheAvailable(this.k.b, this.j.e(), i);
        }
    }

    public final String p(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public final boolean q(hh4 hh4Var) {
        long length = this.j.length();
        return (((length > 0L ? 1 : (length == 0L ? 0 : -1)) > 0) && hh4Var.c && ((float) hh4Var.b) > ((float) this.k.available()) + (((float) length) * 0.2f)) ? false : true;
    }

    public final String r(hh4 hh4Var) {
        String strD = this.j.d();
        boolean zIsEmpty = TextUtils.isEmpty(strD);
        long jAvailable = this.k.isCompleted() ? this.k.available() : this.j.length();
        boolean z = false;
        boolean z2 = jAvailable >= 0;
        boolean z3 = hh4Var.c;
        long j = z3 ? jAvailable - hh4Var.b : jAvailable;
        if (z2 && z3) {
            z = true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(hh4Var.c ? "HTTP/1.1 206 PARTIAL CONTENT\n" : "HTTP/1.1 200 OK\n");
        sb.append("Accept-Ranges: bytes\n");
        sb.append(z2 ? p("Content-Length: %d\n", Long.valueOf(j)) : "");
        sb.append(z ? p("Content-Range: bytes %d-%d/%d\n", Long.valueOf(hh4Var.b), Long.valueOf(jAvailable - 1), Long.valueOf(jAvailable)) : "");
        sb.append(zIsEmpty ? "" : p("Content-Type: %s\n", strD));
        sb.append("\n");
        return sb.toString();
    }

    public void s(hh4 hh4Var, Socket socket) throws IOException, ProxyCacheException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        bufferedOutputStream.write(r(hh4Var).getBytes("UTF-8"));
        long j = hh4Var.b;
        if (q(hh4Var)) {
            u(bufferedOutputStream, j);
        } else {
            v(bufferedOutputStream, j);
        }
    }

    public void t(sp0 sp0Var) {
        this.l = sp0Var;
    }

    public final void u(OutputStream outputStream, long j) throws IOException, ProxyCacheException {
        byte[] bArr = new byte[8192];
        while (true) {
            int iJ = j(bArr, j, 8192);
            if (iJ == -1) {
                outputStream.flush();
                return;
            } else {
                outputStream.write(bArr, 0, iJ);
                j += (long) iJ;
            }
        }
    }

    public final void v(OutputStream outputStream, long j) {
        ot4 ot4Var = new ot4(this.j);
        try {
            ot4Var.a((int) j);
            byte[] bArr = new byte[8192];
            while (true) {
                int i = ot4Var.read(bArr);
                if (i == -1) {
                    outputStream.flush();
                    return;
                }
                outputStream.write(bArr, 0, i);
            }
        } finally {
            ot4Var.close();
        }
    }
}
