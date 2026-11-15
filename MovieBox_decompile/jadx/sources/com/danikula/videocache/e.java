package com.danikula.videocache;

import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Locale;

class e extends m {

    private b f23376i;

    private final a f23377j;

    public e(a aVar) {
        super(aVar);
        this.f23377j = aVar;
    }

    private String i(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    private String j(d dVar) {
        int i10;
        String strI;
        String strZ = this.f23377j.z();
        boolean zIsEmpty = TextUtils.isEmpty(strZ);
        long jA = this.f23377j.A();
        long jG = this.f23377j.G();
        long j10 = dVar.f23374b;
        boolean z10 = jA >= 0;
        boolean z11 = dVar.f23375c;
        long j11 = z11 ? jA - j10 : jA;
        boolean z12 = z10 && z11;
        q.e("header， offset = " + j10 + ", rangeEnd = " + jG + ", totalSize = " + jA + ", contentLength = " + j11 + " , contentType = " + strZ);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(dVar.f23375c ? "HTTP/1.1 206 PARTIAL CONTENT\n" : "HTTP/1.1 200 OK\n");
        sb2.append("Accept-Ranges: bytes\n");
        String strI2 = "";
        sb2.append(z10 ? i("Content-Length: %d\n", Long.valueOf(j11)) : "");
        if (z12) {
            i10 = 1;
            strI = i("Content-Range: bytes %d-%d/%d\n", Long.valueOf(j10), Long.valueOf(jG), Long.valueOf(jA));
        } else {
            i10 = 1;
            strI = "";
        }
        sb2.append(strI);
        if (!zIsEmpty) {
            Object[] objArr = new Object[i10];
            objArr[0] = strZ;
            strI2 = i("Content-Type: %s\n", objArr);
        }
        sb2.append(strI2);
        sb2.append("\n");
        return sb2.toString();
    }

    private void m(OutputStream outputStream, long j10, String str) throws IOException {
        q.a("responseWithCache， offset = " + j10);
        byte[] bArr = new byte[8192];
        while (true) {
            int iD = d(bArr, j10, 8192, str);
            if (iD == -1 || this.f23402e) {
                break;
            }
            outputStream.write(bArr, 0, iD);
            j10 += (long) iD;
        }
        outputStream.flush();
        q.e("responseWithCache， --------------------end,offset = " + j10 + "， threadName = " + Thread.currentThread().getName());
    }

    public void k(d dVar, Socket socket) throws IOException {
        long j10 = dVar.f23374b;
        q.f("processRequest， offset = " + j10 + "， threadName = " + Thread.currentThread().getName());
        a(j10);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        bufferedOutputStream.write(j(dVar).getBytes("UTF-8"));
        m(bufferedOutputStream, j10, n.b(dVar.f23373a));
    }

    public void l(b bVar) {
        this.f23376i = bVar;
    }
}
