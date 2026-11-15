package com.yandex.mobile.ads.impl;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import defpackage.y45;
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
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public final class q10 implements tm {
    private final LinkedHashMap a = new LinkedHashMap(16, 0.75f, true);
    private long b = 0;
    private final d c;
    private final int d;

    public class a implements d {
        final File a;

        public a(File file) {
            this.a = file;
        }
    }

    @VisibleForTesting
    public static class b {
        long a;
        final String b;
        final String c;
        final long d;
        final long e;
        final long f;
        final long g;
        final List<kf0> h;

        public static List<kf0> a(tm.a aVar) {
            List<kf0> list = aVar.h;
            if (list != null) {
                return list;
            }
            Map<String, String> map = aVar.g;
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                arrayList.add(new kf0(entry.getKey(), entry.getValue()));
            }
            return arrayList;
        }

        private b(String str, String str2, long j, long j2, long j3, long j4, List<kf0> list) {
            this.b = str;
            this.c = "".equals(str2) ? null : str2;
            this.d = j;
            this.e = j2;
            this.f = j3;
            this.g = j4;
            this.h = list;
        }

        public static b a(c cVar) throws IOException {
            if (q10.a(cVar) == 538247942) {
                String str = new String(q10.a(cVar, q10.b(cVar)), "UTF-8");
                String str2 = new String(q10.a(cVar, q10.b(cVar)), "UTF-8");
                long jB = q10.b(cVar);
                long jB2 = q10.b(cVar);
                long jB3 = q10.b(cVar);
                long jB4 = q10.b(cVar);
                int iA = q10.a(cVar);
                if (iA >= 0) {
                    List listEmptyList = iA == 0 ? Collections.emptyList() : new ArrayList();
                    int i = 0;
                    while (i < iA) {
                        listEmptyList.add(new kf0(new String(q10.a(cVar, q10.b(cVar)), "UTF-8").intern(), new String(q10.a(cVar, q10.b(cVar)), "UTF-8").intern()));
                        i++;
                        jB4 = jB4;
                        jB3 = jB3;
                    }
                    return new b(str, str2, jB, jB2, jB3, jB4, listEmptyList);
                }
                throw new IOException(oe.a("readHeaderList size=", iA));
            }
            throw new IOException();
        }

        public final tm.a a(byte[] bArr) {
            tm.a aVar = new tm.a();
            aVar.a = bArr;
            aVar.b = this.c;
            aVar.c = this.d;
            aVar.d = this.e;
            aVar.e = this.f;
            aVar.f = this.g;
            List<kf0> list = this.h;
            TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            for (kf0 kf0Var : list) {
                treeMap.put(kf0Var.a(), kf0Var.b());
            }
            aVar.g = treeMap;
            aVar.h = Collections.unmodifiableList(this.h);
            return aVar;
        }

        public final boolean a(BufferedOutputStream bufferedOutputStream) {
            try {
                q10.a(bufferedOutputStream, 538247942);
                byte[] bytes = this.b.getBytes("UTF-8");
                q10.a(bufferedOutputStream, bytes.length);
                bufferedOutputStream.write(bytes, 0, bytes.length);
                String str = this.c;
                if (str == null) {
                    str = "";
                }
                byte[] bytes2 = str.getBytes("UTF-8");
                q10.a(bufferedOutputStream, bytes2.length);
                bufferedOutputStream.write(bytes2, 0, bytes2.length);
                q10.a(bufferedOutputStream, this.d);
                q10.a(bufferedOutputStream, this.e);
                q10.a(bufferedOutputStream, this.f);
                q10.a(bufferedOutputStream, this.g);
                List<kf0> list = this.h;
                if (list != null) {
                    q10.a(bufferedOutputStream, list.size());
                    for (kf0 kf0Var : list) {
                        byte[] bytes3 = kf0Var.a().getBytes("UTF-8");
                        q10.a(bufferedOutputStream, bytes3.length);
                        bufferedOutputStream.write(bytes3, 0, bytes3.length);
                        byte[] bytes4 = kf0Var.b().getBytes("UTF-8");
                        q10.a(bufferedOutputStream, bytes4.length);
                        bufferedOutputStream.write(bytes4, 0, bytes4.length);
                    }
                } else {
                    q10.a(bufferedOutputStream, 0);
                }
                bufferedOutputStream.flush();
                return true;
            } catch (IOException e) {
                Object[] objArr = {e.toString()};
                boolean z = ti2.a;
                sp0.a(objArr);
                return false;
            }
        }
    }

    public interface d {
    }

    public q10(File file, int i) {
        this.c = new a(file);
        this.d = i;
    }

    private void b() {
        if (this.b < this.d) {
            return;
        }
        if (ti2.a) {
            sp0.e(new Object[0]);
        }
        long j = this.b;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Iterator it = this.a.entrySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            b bVar = (b) ((Map.Entry) it.next()).getValue();
            String str = bVar.b;
            File file = ((a) this.c).a;
            int length = str.length() / 2;
            if (new File(file, String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode())).delete()) {
                this.b -= bVar.a;
            } else {
                String str2 = bVar.b;
                int length2 = str2.length() / 2;
                sp0.a(str2, String.valueOf(str2.substring(0, length2).hashCode()) + String.valueOf(str2.substring(length2).hashCode()));
            }
            it.remove();
            i++;
            if (this.b < this.d * 0.9f) {
                break;
            }
        }
        if (ti2.a) {
            sp0.e(Integer.valueOf(i), Long.valueOf(this.b - j), Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime));
        }
    }

    @Override
    public final synchronized void a() {
        File file = ((a) this.c).a;
        if (!file.exists()) {
            if (!file.mkdirs()) {
                Object[] objArr = {file.getAbsolutePath()};
                boolean z = ti2.a;
                sp0.b(objArr);
            }
            return;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            try {
                try {
                    long length = file2.length();
                    c cVar = new c(new BufferedInputStream(new FileInputStream(file2)), length);
                    try {
                        b bVarA = b.a(cVar);
                        bVarA.a = length;
                        String str = bVarA.b;
                        if (this.a.containsKey(str)) {
                            this.b = (bVarA.a - ((b) this.a.get(str)).a) + this.b;
                        } else {
                            this.b += bVarA.a;
                        }
                        this.a.put(str, bVarA);
                        cVar.close();
                    } catch (Throwable th) {
                        cVar.close();
                        throw th;
                    }
                } catch (IOException unused) {
                    file2.delete();
                }
            } catch (Throwable unused2) {
                y45.j(file2, "<this>");
                try {
                    file2.delete();
                } catch (Throwable unused3) {
                }
            }
        }
    }

    @Override
    public final synchronized tm.a get(String str) {
        b bVar = (b) this.a.get(str);
        if (bVar == null) {
            return null;
        }
        File file = ((a) this.c).a;
        int length = str.length() / 2;
        File file2 = new File(file, String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode()));
        try {
            c cVar = new c(new BufferedInputStream(new FileInputStream(file2)), file2.length());
            try {
                b bVarA = b.a(cVar);
                if (TextUtils.equals(str, bVarA.b)) {
                    tm.a aVarA = bVar.a(a(cVar, cVar.a - cVar.b));
                    cVar.close();
                    return aVarA;
                }
                Object[] objArr = {file2.getAbsolutePath(), str, bVarA.b};
                boolean z = ti2.a;
                sp0.a(objArr);
                b bVar2 = (b) this.a.remove(str);
                if (bVar2 != null) {
                    this.b -= bVar2.a;
                }
                cVar.close();
                return null;
            } catch (Throwable th) {
                cVar.close();
                throw th;
            }
        } catch (IOException e) {
            Object[] objArr2 = {file2.getAbsolutePath(), e.toString()};
            boolean z2 = ti2.a;
            sp0.a(objArr2);
            b(str);
            return null;
        }
    }

    @VisibleForTesting
    public static class c extends FilterInputStream {
        private final long a;
        private long b;

        public c(BufferedInputStream bufferedInputStream, long j) {
            super(bufferedInputStream);
            this.a = j;
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

    @Override
    public final synchronized void a(String str) {
        tm.a aVar = get(str);
        if (aVar != null) {
            aVar.f = 0L;
            aVar.e = 0L;
            a(str, aVar);
        }
    }

    public static long b(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        if (i != -1) {
            long j = ((long) i) & 255;
            int i2 = inputStream.read();
            if (i2 != -1) {
                long j2 = j | ((((long) i2) & 255) << 8);
                int i3 = inputStream.read();
                if (i3 != -1) {
                    long j3 = j2 | ((((long) i3) & 255) << 16);
                    int i4 = inputStream.read();
                    if (i4 != -1) {
                        long j4 = j3 | ((((long) i4) & 255) << 24);
                        int i5 = inputStream.read();
                        if (i5 != -1) {
                            long j5 = j4 | ((((long) i5) & 255) << 32);
                            int i6 = inputStream.read();
                            if (i6 != -1) {
                                long j6 = j5 | ((((long) i6) & 255) << 40);
                                int i7 = inputStream.read();
                                if (i7 != -1) {
                                    long j7 = j6 | ((((long) i7) & 255) << 48);
                                    int i8 = inputStream.read();
                                    if (i8 != -1) {
                                        return ((((long) i8) & 255) << 56) | j7;
                                    }
                                    throw new EOFException();
                                }
                                throw new EOFException();
                            }
                            throw new EOFException();
                        }
                        throw new EOFException();
                    }
                    throw new EOFException();
                }
                throw new EOFException();
            }
            throw new EOFException();
        }
        throw new EOFException();
    }

    @Override
    public final synchronized void a(String str, tm.a aVar) {
        File file;
        long j = this.b;
        byte[] bArr = aVar.a;
        long length = j + ((long) bArr.length);
        int i = this.d;
        if (length > i && bArr.length > i * 0.9f) {
            return;
        }
        File file2 = ((a) this.c).a;
        int length2 = str.length() / 2;
        File file3 = new File(file2, String.valueOf(str.substring(0, length2).hashCode()) + String.valueOf(str.substring(length2).hashCode()));
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file3));
            file = file3;
            try {
                b bVar = new b(str, aVar.b, aVar.c, aVar.d, aVar.e, aVar.f, b.a(aVar));
                if (bVar.a(bufferedOutputStream)) {
                    bufferedOutputStream.write(aVar.a);
                    bufferedOutputStream.close();
                    bVar.a = file.length();
                    if (!this.a.containsKey(str)) {
                        this.b += bVar.a;
                    } else {
                        this.b = (bVar.a - ((b) this.a.get(str)).a) + this.b;
                    }
                    this.a.put(str, bVar);
                    b();
                    return;
                }
                bufferedOutputStream.close();
                Object[] objArr = {file.getAbsolutePath()};
                boolean z = ti2.a;
                sp0.a(objArr);
                throw new IOException();
            } catch (IOException unused) {
                if (!file.delete()) {
                    Object[] objArr2 = {file.getAbsolutePath()};
                    boolean z2 = ti2.a;
                    sp0.a(objArr2);
                }
                if (!((a) this.c).a.exists()) {
                    boolean z3 = ti2.a;
                    sp0.a(new Object[0]);
                    this.a.clear();
                    this.b = 0L;
                    a();
                }
            }
        } catch (IOException unused2) {
            file = file3;
        }
    }

    public final synchronized void b(String str) {
        try {
            File file = ((a) this.c).a;
            int length = str.length() / 2;
            boolean zDelete = new File(file, String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode())).delete();
            b bVar = (b) this.a.remove(str);
            if (bVar != null) {
                this.b -= bVar.a;
            }
            if (!zDelete) {
                int length2 = str.length() / 2;
                Object[] objArr = {str, String.valueOf(str.substring(0, length2).hashCode()) + String.valueOf(str.substring(length2).hashCode())};
                boolean z = ti2.a;
                sp0.a(objArr);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static int a(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        if (i != -1) {
            int i2 = inputStream.read();
            if (i2 != -1) {
                int i3 = i | (i2 << 8);
                int i4 = inputStream.read();
                if (i4 != -1) {
                    int i5 = i3 | (i4 << 16);
                    int i6 = inputStream.read();
                    if (i6 != -1) {
                        return (i6 << 24) | i5;
                    }
                    throw new EOFException();
                }
                throw new EOFException();
            }
            throw new EOFException();
        }
        throw new EOFException();
    }

    @VisibleForTesting
    public static byte[] a(c cVar, long j) throws IOException {
        long j2 = cVar.a - cVar.b;
        if (j >= 0 && j <= j2) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(cVar).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j + ", maxLength=" + j2);
    }

    public static void a(BufferedOutputStream bufferedOutputStream, int i) throws IOException {
        bufferedOutputStream.write(i & 255);
        bufferedOutputStream.write((i >> 8) & 255);
        bufferedOutputStream.write((i >> 16) & 255);
        bufferedOutputStream.write((i >> 24) & 255);
    }

    public static void a(BufferedOutputStream bufferedOutputStream, long j) throws IOException {
        bufferedOutputStream.write((byte) j);
        bufferedOutputStream.write((byte) (j >>> 8));
        bufferedOutputStream.write((byte) (j >>> 16));
        bufferedOutputStream.write((byte) (j >>> 24));
        bufferedOutputStream.write((byte) (j >>> 32));
        bufferedOutputStream.write((byte) (j >>> 40));
        bufferedOutputStream.write((byte) (j >>> 48));
        bufferedOutputStream.write((byte) (j >>> 56));
    }
}
