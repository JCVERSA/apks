package com.android.volley.toolbox;

import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class c implements com.android.volley.c {

    private final Map f18669a;

    private long f18670b;

    private final InterfaceC0157c f18671c;

    private final int f18672d;

    public interface InterfaceC0157c {
        File get();
    }

    public c(InterfaceC0157c interfaceC0157c, int i10) {
        this.f18669a = new LinkedHashMap(16, 0.75f, true);
        this.f18670b = 0L;
        this.f18671c = interfaceC0157c;
        this.f18672d = i10;
    }

    private String g(String str) {
        int length = str.length() / 2;
        return String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode());
    }

    private void h() {
        if (this.f18671c.get().exists()) {
            return;
        }
        com.android.volley.l.b("Re-initializing cache after external clearing.", new Object[0]);
        this.f18669a.clear();
        this.f18670b = 0L;
        initialize();
    }

    private void i() {
        if (this.f18670b < this.f18672d) {
            return;
        }
        if (com.android.volley.l.f18639b) {
            com.android.volley.l.e("Pruning old cache entries.", new Object[0]);
        }
        long j10 = this.f18670b;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Iterator it = this.f18669a.entrySet().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            a aVar = (a) ((Map.Entry) it.next()).getValue();
            if (f(aVar.f18674b).delete()) {
                this.f18670b -= aVar.f18673a;
            } else {
                String str = aVar.f18674b;
                com.android.volley.l.b("Could not delete cache entry for key=%s, filename=%s", str, g(str));
            }
            it.remove();
            i10++;
            if (this.f18670b < this.f18672d * 0.9f) {
                break;
            }
        }
        if (com.android.volley.l.f18639b) {
            com.android.volley.l.e("pruned %d files, %d bytes, %d ms", Integer.valueOf(i10), Long.valueOf(this.f18670b - j10), Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime));
        }
    }

    private void j(String str, a aVar) {
        if (this.f18669a.containsKey(str)) {
            this.f18670b += aVar.f18673a - ((a) this.f18669a.get(str)).f18673a;
        } else {
            this.f18670b += aVar.f18673a;
        }
        this.f18669a.put(str, aVar);
    }

    private static int k(InputStream inputStream) throws IOException {
        int i10 = inputStream.read();
        if (i10 != -1) {
            return i10;
        }
        throw new EOFException();
    }

    static List l(b bVar) throws IOException {
        int iM = m(bVar);
        if (iM < 0) {
            throw new IOException("readHeaderList size=" + iM);
        }
        List listEmptyList = iM == 0 ? Collections.emptyList() : new ArrayList();
        for (int i10 = 0; i10 < iM; i10++) {
            listEmptyList.add(new com.android.volley.e(o(bVar).intern(), o(bVar).intern()));
        }
        return listEmptyList;
    }

    static int m(InputStream inputStream) {
        return (k(inputStream) << 24) | k(inputStream) | (k(inputStream) << 8) | (k(inputStream) << 16);
    }

    static long n(InputStream inputStream) {
        return (((long) k(inputStream)) & 255) | ((((long) k(inputStream)) & 255) << 8) | ((((long) k(inputStream)) & 255) << 16) | ((((long) k(inputStream)) & 255) << 24) | ((((long) k(inputStream)) & 255) << 32) | ((((long) k(inputStream)) & 255) << 40) | ((((long) k(inputStream)) & 255) << 48) | ((255 & ((long) k(inputStream))) << 56);
    }

    static String o(b bVar) {
        return new String(r(bVar, n(bVar)), "UTF-8");
    }

    private void q(String str) {
        a aVar = (a) this.f18669a.remove(str);
        if (aVar != null) {
            this.f18670b -= aVar.f18673a;
        }
    }

    static byte[] r(b bVar, long j10) throws IOException {
        long jD = bVar.d();
        if (j10 >= 0 && j10 <= jD) {
            int i10 = (int) j10;
            if (i10 == j10) {
                byte[] bArr = new byte[i10];
                new DataInputStream(bVar).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j10 + ", maxLength=" + jD);
    }

    static void s(List list, OutputStream outputStream) throws IOException {
        if (list == null) {
            t(outputStream, 0);
            return;
        }
        t(outputStream, list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            com.android.volley.e eVar = (com.android.volley.e) it.next();
            v(outputStream, eVar.a());
            v(outputStream, eVar.b());
        }
    }

    static void t(OutputStream outputStream, int i10) throws IOException {
        outputStream.write(i10 & 255);
        outputStream.write((i10 >> 8) & 255);
        outputStream.write((i10 >> 16) & 255);
        outputStream.write((i10 >> 24) & 255);
    }

    static void u(OutputStream outputStream, long j10) throws IOException {
        outputStream.write((byte) j10);
        outputStream.write((byte) (j10 >>> 8));
        outputStream.write((byte) (j10 >>> 16));
        outputStream.write((byte) (j10 >>> 24));
        outputStream.write((byte) (j10 >>> 32));
        outputStream.write((byte) (j10 >>> 40));
        outputStream.write((byte) (j10 >>> 48));
        outputStream.write((byte) (j10 >>> 56));
    }

    static void v(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        u(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    @Override
    public synchronized com.android.volley.c.a a(String str) {
        a aVar = (a) this.f18669a.get(str);
        if (aVar == null) {
            return null;
        }
        File fileF = f(str);
        try {
            b bVar = new b(new BufferedInputStream(d(fileF)), fileF.length());
            try {
                a aVarB = a.b(bVar);
                if (TextUtils.equals(str, aVarB.f18674b)) {
                    com.android.volley.c.a aVarC = aVar.c(r(bVar, bVar.d()));
                    bVar.close();
                    return aVarC;
                }
                com.android.volley.l.b("%s: key=%s, found=%s", fileF.getAbsolutePath(), str, aVarB.f18674b);
                q(str);
                bVar.close();
                return null;
            } catch (Throwable th2) {
                bVar.close();
                throw th2;
            }
        } catch (IOException e10) {
            com.android.volley.l.b("%s: %s", fileF.getAbsolutePath(), e10.toString());
            p(str);
            return null;
        }
    }

    @Override
    public synchronized void b(String str, boolean z10) {
        try {
            com.android.volley.c.a aVarA = a(str);
            if (aVarA != null) {
                aVarA.f18608f = 0L;
                if (z10) {
                    aVarA.f18607e = 0L;
                }
                c(str, aVarA);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized void c(String str, com.android.volley.c.a aVar) {
        long j10 = this.f18670b;
        byte[] bArr = aVar.f18603a;
        long length = j10 + ((long) bArr.length);
        int i10 = this.f18672d;
        if (length > i10 && bArr.length > i10 * 0.9f) {
            return;
        }
        File fileF = f(str);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(e(fileF));
            a aVar2 = new a(str, aVar);
            if (!aVar2.d(bufferedOutputStream)) {
                bufferedOutputStream.close();
                com.android.volley.l.b("Failed to write header for %s", fileF.getAbsolutePath());
                throw new IOException();
            }
            bufferedOutputStream.write(aVar.f18603a);
            bufferedOutputStream.close();
            aVar2.f18673a = fileF.length();
            j(str, aVar2);
            i();
        } catch (IOException unused) {
            if (!fileF.delete()) {
                com.android.volley.l.b("Could not clean up file %s", fileF.getAbsolutePath());
            }
            h();
        }
    }

    InputStream d(File file) {
        return new FileInputStream(file);
    }

    OutputStream e(File file) {
        return new FileOutputStream(file);
    }

    public File f(String str) {
        return new File(this.f18671c.get(), g(str));
    }

    @Override
    public synchronized void initialize() {
        synchronized (this) {
            try {
                File file = this.f18671c.get();
                if (!file.exists()) {
                    if (!file.mkdirs()) {
                        com.android.volley.l.c("Unable to create cache dir %s", file.getAbsolutePath());
                    }
                    return;
                }
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null) {
                    return;
                }
                for (File file2 : fileArrListFiles) {
                    try {
                        long length = file2.length();
                        b bVar = new b(new BufferedInputStream(d(file2)), length);
                        try {
                            a aVarB = a.b(bVar);
                            aVarB.f18673a = length;
                            j(aVarB.f18674b, aVarB);
                            bVar.close();
                        } catch (Throwable th2) {
                            bVar.close();
                            throw th2;
                        }
                    } catch (IOException unused) {
                        file2.delete();
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public synchronized void p(String str) {
        boolean zDelete = f(str).delete();
        q(str);
        if (!zDelete) {
            com.android.volley.l.b("Could not delete cache entry for key=%s, filename=%s", str, g(str));
        }
    }

    static class b extends FilterInputStream {

        private final long f18681a;

        private long f18682b;

        b(InputStream inputStream, long j10) {
            super(inputStream);
            this.f18681a = j10;
        }

        long d() {
            return this.f18681a - this.f18682b;
        }

        @Override
        public int read() throws IOException {
            int i10 = super.read();
            if (i10 != -1) {
                this.f18682b++;
            }
            return i10;
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            int i12 = super.read(bArr, i10, i11);
            if (i12 != -1) {
                this.f18682b += (long) i12;
            }
            return i12;
        }
    }

    public c(InterfaceC0157c interfaceC0157c) {
        this(interfaceC0157c, 5242880);
    }

    static class a {

        long f18673a;

        final String f18674b;

        final String f18675c;

        final long f18676d;

        final long f18677e;

        final long f18678f;

        final long f18679g;

        final List f18680h;

        private a(String str, String str2, long j10, long j11, long j12, long j13, List list) {
            this.f18674b = str;
            this.f18675c = "".equals(str2) ? null : str2;
            this.f18676d = j10;
            this.f18677e = j11;
            this.f18678f = j12;
            this.f18679g = j13;
            this.f18680h = list;
        }

        private static List a(com.android.volley.c.a aVar) {
            List list = aVar.f18610h;
            return list != null ? list : d.h(aVar.f18609g);
        }

        static a b(b bVar) throws IOException {
            if (c.m(bVar) == 538247942) {
                return new a(c.o(bVar), c.o(bVar), c.n(bVar), c.n(bVar), c.n(bVar), c.n(bVar), c.l(bVar));
            }
            throw new IOException();
        }

        com.android.volley.c.a c(byte[] bArr) {
            com.android.volley.c.a aVar = new com.android.volley.c.a();
            aVar.f18603a = bArr;
            aVar.f18604b = this.f18675c;
            aVar.f18605c = this.f18676d;
            aVar.f18606d = this.f18677e;
            aVar.f18607e = this.f18678f;
            aVar.f18608f = this.f18679g;
            aVar.f18609g = d.i(this.f18680h);
            aVar.f18610h = Collections.unmodifiableList(this.f18680h);
            return aVar;
        }

        boolean d(OutputStream outputStream) {
            try {
                c.t(outputStream, 538247942);
                c.v(outputStream, this.f18674b);
                String str = this.f18675c;
                if (str == null) {
                    str = "";
                }
                c.v(outputStream, str);
                c.u(outputStream, this.f18676d);
                c.u(outputStream, this.f18677e);
                c.u(outputStream, this.f18678f);
                c.u(outputStream, this.f18679g);
                c.s(this.f18680h, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e10) {
                com.android.volley.l.b("%s", e10.toString());
                return false;
            }
        }

        a(String str, com.android.volley.c.a aVar) {
            this(str, aVar.f18604b, aVar.f18605c, aVar.f18606d, aVar.f18607e, aVar.f18608f, a(aVar));
        }
    }
}
