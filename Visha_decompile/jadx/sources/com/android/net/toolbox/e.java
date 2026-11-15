package com.android.net.toolbox;

import android.os.SystemClock;
import android.text.TextUtils;
import com.android.net.v;
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

public final class e implements com.android.net.b {
    private final Map<String, a> a;
    private long b;
    private final File c;
    private final int d;

    public static class a {
        long a;
        final String b;
        final String c;
        final long d;
        final long e;
        final long f;
        final long g;
        final List<com.android.net.g> h;

        /* JADX WARN: Illegal instructions before constructor call */
        public a(String str, com.android.net.b.a aVar) {
            String str2 = aVar.b;
            long j = aVar.c;
            long j2 = aVar.d;
            long j3 = aVar.e;
            long j4 = aVar.f;
            List<com.android.net.g> list = aVar.h;
            this(str, str2, j, j2, j3, j4, list == null ? g.b(aVar.g) : list);
            this.a = aVar.a.length;
        }

        public static a a(b bVar) throws IOException {
            if (e.a((InputStream) bVar) == 538247942) {
                return new a(e.a(bVar), e.a(bVar), e.b((InputStream) bVar), e.b((InputStream) bVar), e.b((InputStream) bVar), e.b((InputStream) bVar), e.b(bVar));
            }
            throw new IOException();
        }

        private a(String str, String str2, long j, long j2, long j3, long j4, List<com.android.net.g> list) {
            this.b = str;
            this.c = "".equals(str2) ? null : str2;
            this.d = j;
            this.e = j2;
            this.f = j3;
            this.g = j4;
            this.h = list;
        }

        public final boolean a(OutputStream outputStream) {
            try {
                e.a(outputStream, 538247942);
                e.a(outputStream, this.b);
                String str = this.c;
                if (str == null) {
                    str = "";
                }
                e.a(outputStream, str);
                e.a(outputStream, this.d);
                e.a(outputStream, this.e);
                e.a(outputStream, this.f);
                e.a(outputStream, this.g);
                List<com.android.net.g> list = this.h;
                if (list != null) {
                    e.a(outputStream, list.size());
                    for (com.android.net.g gVar : list) {
                        e.a(outputStream, gVar.a);
                        e.a(outputStream, gVar.b);
                    }
                } else {
                    e.a(outputStream, 0);
                }
                outputStream.flush();
                return true;
            } catch (IOException e) {
                v.b("%s", e.toString());
                return false;
            }
        }
    }

    public static class b extends FilterInputStream {
        private final long a;
        private long b;

        public b(InputStream inputStream, long j) {
            super(inputStream);
            this.a = j;
        }

        public final long a() {
            return this.a - this.b;
        }

        @Override
        public final int read() throws IOException {
            int i = super.read();
            if (i != -1) {
                this.b++;
            }
            return i;
        }

        @Override
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            int i3 = super.read(bArr, i, i2);
            if (i3 != -1) {
                this.b += (long) i3;
            }
            return i3;
        }
    }

    private e(File file) {
        this.a = new LinkedHashMap(16, 0.75f, true);
        this.b = 0L;
        this.c = file;
        this.d = 5242880;
    }

    public static int a(InputStream inputStream) {
        return (c(inputStream) << 24) | c(inputStream) | (c(inputStream) << 8) | (c(inputStream) << 16);
    }

    public static long b(InputStream inputStream) {
        return (((long) c(inputStream)) & 255) | ((((long) c(inputStream)) & 255) << 8) | ((((long) c(inputStream)) & 255) << 16) | ((((long) c(inputStream)) & 255) << 24) | ((((long) c(inputStream)) & 255) << 32) | ((((long) c(inputStream)) & 255) << 40) | ((((long) c(inputStream)) & 255) << 48) | ((255 & ((long) c(inputStream))) << 56);
    }

    private static int c(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        if (i != -1) {
            return i;
        }
        throw new EOFException();
    }

    private File d(String str) {
        return new File(this.c, c(str));
    }

    private void e(String str) {
        a aVarRemove = this.a.remove(str);
        if (aVarRemove != null) {
            this.b -= aVarRemove.a;
        }
    }

    public e(File file, byte b2) {
        this(file);
    }

    public static List<com.android.net.g> b(b bVar) {
        int iA = a((InputStream) bVar);
        List<com.android.net.g> listEmptyList = iA == 0 ? Collections.emptyList() : new ArrayList<>(iA);
        for (int i = 0; i < iA; i++) {
            listEmptyList.add(new com.android.net.g(a(bVar).intern(), a(bVar).intern()));
        }
        return listEmptyList;
    }

    private static String c(String str) {
        int length = str.length() / 2;
        return String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode());
    }

    @Override
    public final synchronized com.android.net.b.a a(String str) {
        a aVar = this.a.get(str);
        if (aVar == null) {
            return null;
        }
        File fileD = d(str);
        try {
            b bVar = new b(new BufferedInputStream(a(fileD)), fileD.length());
            try {
                a aVarA = a.a(bVar);
                if (!TextUtils.equals(str, aVarA.b)) {
                    v.b("%s: key=%s, found=%s", fileD.getAbsolutePath(), str, aVarA.b);
                    e(str);
                    bVar.close();
                    return null;
                }
                byte[] bArrA = a(bVar, bVar.a());
                com.android.net.b.a aVar2 = new com.android.net.b.a();
                aVar2.a = bArrA;
                aVar2.b = aVar.c;
                aVar2.c = aVar.d;
                aVar2.d = aVar.e;
                aVar2.e = aVar.f;
                aVar2.f = aVar.g;
                aVar2.g = g.a(aVar.h);
                aVar2.h = Collections.unmodifiableList(aVar.h);
                bVar.close();
                return aVar2;
            } catch (Throwable th) {
                bVar.close();
                throw th;
            }
        } catch (IOException e) {
            v.b("%s: %s", fileD.getAbsolutePath(), e.toString());
            b(str);
            return null;
        }
    }

    private static InputStream a(File file) {
        return new FileInputStream(file);
    }

    private synchronized void b(String str) {
        boolean zDelete = d(str).delete();
        e(str);
        if (!zDelete) {
            v.b("Could not delete cache entry for key=%s, filename=%s", str, c(str));
        }
    }

    public static String a(b bVar) {
        return new String(a(bVar, b((InputStream) bVar)), "UTF-8");
    }

    @Override
    public final synchronized void a() {
        try {
            if (!this.c.exists()) {
                if (!this.c.mkdirs()) {
                    v.c("Unable to create cache dir %s", this.c.getAbsolutePath());
                }
                return;
            }
            File[] fileArrListFiles = this.c.listFiles();
            if (fileArrListFiles == null) {
                return;
            }
            for (File file : fileArrListFiles) {
                try {
                    long length = file.length();
                    b bVar = new b(new BufferedInputStream(a(file)), length);
                    try {
                        a aVarA = a.a(bVar);
                        aVarA.a = length;
                        a(aVarA.b, aVarA);
                        bVar.close();
                    } catch (Throwable th) {
                        bVar.close();
                        throw th;
                    }
                } catch (IOException unused) {
                    file.delete();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static void a(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    public static void a(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    public static void a(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    @Override
    public final synchronized void a(String str, com.android.net.b.a aVar) {
        try {
            long length = aVar.a.length;
            if (this.b + length >= this.d) {
                int i = 0;
                if (v.b) {
                    v.a("Pruning old cache entries.", new Object[0]);
                }
                long j = this.b;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                Iterator<Map.Entry<String, a>> it = this.a.entrySet().iterator();
                while (it.hasNext()) {
                    a value = it.next().getValue();
                    if (d(value.b).delete()) {
                        this.b -= value.a;
                    } else {
                        String str2 = value.b;
                        v.b("Could not delete cache entry for key=%s, filename=%s", str2, c(str2));
                    }
                    it.remove();
                    i++;
                    if (this.b + length < this.d * 0.9f) {
                        break;
                    }
                }
                if (v.b) {
                    v.a("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.b - j), Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime));
                }
            }
            File fileD = d(str);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileD));
                a aVar2 = new a(str, aVar);
                if (!aVar2.a(bufferedOutputStream)) {
                    bufferedOutputStream.close();
                    v.b("Failed to write header for %s", fileD.getAbsolutePath());
                    throw new IOException();
                }
                bufferedOutputStream.write(aVar.a);
                bufferedOutputStream.close();
                a(str, aVar2);
            } catch (IOException unused) {
                if (fileD.delete()) {
                    return;
                }
                v.b("Could not clean up file %s", fileD.getAbsolutePath());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void a(String str, a aVar) {
        if (this.a.containsKey(str)) {
            this.b += aVar.a - this.a.get(str).a;
        } else {
            this.b += aVar.a;
        }
        this.a.put(str, aVar);
    }

    private static byte[] a(b bVar, long j) throws IOException {
        long jA = bVar.a();
        if (j >= 0 && j <= jA) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(bVar).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j + ", maxLength=" + jA);
    }
}
