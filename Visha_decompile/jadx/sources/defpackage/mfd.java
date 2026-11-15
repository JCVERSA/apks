package defpackage;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class mfd implements Closeable {
    public final File b;
    public final File c;
    public final File d;
    public final File e;
    public final int f;
    public long g;
    public final int h;
    public Writer j;
    public int l;
    public long p;
    public long i = 0;
    public final LinkedHashMap k = new LinkedHashMap(0, 0.75f, true);
    public long m = 0;
    public final ThreadPoolExecutor n = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b(null));
    public final Callable o = new a();

    public class a implements Callable {
        public a() {
        }

        @Override
        public Void call() {
            synchronized (mfd.this) {
                try {
                    if (mfd.this.j == null) {
                        return null;
                    }
                    mfd.this.P();
                    if (mfd.this.G()) {
                        mfd.this.N();
                        mfd.this.l = 0;
                    }
                    return null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static final class b implements ThreadFactory {
        public b(a aVar) {
        }

        @Override
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    public final class c {
        public final d a;
        public final boolean[] b;
        public boolean c;

        public c(d dVar, a aVar) {
            this.a = dVar;
            this.b = dVar.e ? null : new boolean[mfd.this.h];
        }

        public File b(int i) {
            File file;
            synchronized (mfd.this) {
                try {
                    if (this.a.f != this) {
                        throw new IllegalStateException();
                    }
                    if (!this.a.e) {
                        this.b[i] = true;
                    }
                    file = this.a.d[i];
                    if (!mfd.this.b.exists()) {
                        mfd.this.b.mkdirs();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return file;
        }

        public void c() {
            mfd.this.k(this, false);
        }

        public void d() {
            if (this.c) {
                return;
            }
            try {
                c();
            } catch (IOException unused) {
            }
        }

        public void f() {
            mfd.this.k(this, true);
            this.c = true;
        }
    }

    public final class d {
        public final String a;
        public final long[] b;
        public File[] c;
        public File[] d;
        public boolean e;
        public c f;
        public long g;
        public long h;

        public d(String str, a aVar) {
            this.a = str;
            this.b = new long[mfd.this.h];
            this.c = new File[mfd.this.h];
            this.d = new File[mfd.this.h];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i = 0; i < mfd.this.h; i++) {
                sb.append(i);
                this.c[i] = new File(mfd.this.b, sb.toString());
                sb.append(".tmp");
                this.d[i] = new File(mfd.this.b, sb.toString());
                sb.setLength(length);
            }
        }

        public File d(int i) {
            return this.c[i];
        }

        public final IOException e(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public String f() {
            StringBuilder sb = new StringBuilder();
            for (long j : this.b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        public File j(int i) {
            return this.d[i];
        }

        public final void k(String[] strArr) throws IOException {
            if (strArr.length != mfd.this.h) {
                e(strArr);
                throw null;
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.b[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    e(strArr);
                    throw null;
                }
            }
        }
    }

    public final class e {
        public final File[] a;

        public e(mfd mfdVar, String str, long j, File[] fileArr, long[] jArr, a aVar) {
            this.a = fileArr;
        }

        public File a(int i) {
            return this.a[i];
        }
    }

    public mfd(File file, int i, int i2, long j, long j2) {
        this.b = file;
        this.f = i;
        this.c = new File(file, "journal");
        this.d = new File(file, "journal.tmp");
        this.e = new File(file, "journal.bkp");
        this.h = i2;
        this.g = j;
        this.p = j2;
    }

    public static void D(File file, File file2, boolean z) throws IOException {
        if (z) {
            o(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public static mfd e(File file, int i, int i2, long j, long j2) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                D(file2, file3, false);
            }
        }
        mfd mfdVar = new mfd(file, i, i2, j, j2);
        if (mfdVar.c.exists()) {
            try {
                mfdVar.L();
                mfdVar.I();
                return mfdVar;
            } catch (IOException e2) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                mfdVar.close();
                i9d.c(mfdVar.b);
            }
        }
        file.mkdirs();
        mfd mfdVar2 = new mfd(file, i, i2, j, j2);
        mfdVar2.N();
        return mfdVar2;
    }

    public static void o(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public synchronized e E(String str) {
        h();
        d dVar = (d) this.k.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.e) {
            return null;
        }
        for (File file : dVar.c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.l++;
        this.j.append((CharSequence) "READ");
        this.j.append(' ');
        this.j.append((CharSequence) str);
        this.j.append('\n');
        if (G()) {
            this.n.submit(this.o);
        }
        return new e(this, str, dVar.g, dVar.c, dVar.b, null);
    }

    public final boolean G() {
        int i = this.l;
        return i >= 2000 && i >= this.k.size();
    }

    public final void I() throws IOException {
        o(this.d);
        Iterator it = this.k.values().iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            int i = 0;
            if (dVar.f == null) {
                while (i < this.h) {
                    this.i += dVar.b[i];
                    i++;
                }
            } else {
                dVar.f = null;
                while (i < this.h) {
                    o(dVar.d(i));
                    o(dVar.j(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    public synchronized boolean J(String str) {
        try {
            h();
            d dVar = (d) this.k.get(str);
            if (dVar != null && dVar.f == null) {
                for (int i = 0; i < this.h; i++) {
                    File fileD = dVar.d(i);
                    if (fileD.exists() && !fileD.delete()) {
                        throw new IOException("failed to delete " + fileD);
                    }
                    this.i -= dVar.b[i];
                    dVar.b[i] = 0;
                }
                this.l++;
                this.j.append((CharSequence) "REMOVE");
                this.j.append(' ');
                this.j.append((CharSequence) str);
                this.j.append('\n');
                this.k.remove(str);
                if (G()) {
                    this.n.submit(this.o);
                }
                return true;
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void L() {
        spd spdVar = new spd(new FileInputStream(this.c), i9d.a);
        try {
            String strD = spdVar.d();
            String strD2 = spdVar.d();
            String strD3 = spdVar.d();
            String strD4 = spdVar.d();
            String strD5 = spdVar.d();
            if (!"libcore.io.DiskLruCache".equals(strD) || !"1".equals(strD2) || !Integer.toString(this.f).equals(strD3) || !Integer.toString(this.h).equals(strD4) || !"".equals(strD5)) {
                StringBuilder sb = new StringBuilder();
                sb.append("unexpected journal header: [");
                sb.append(strD);
                sb.append(", ");
                sb.append(strD2);
                sb.append(", ");
                sb.append(strD4);
                sb.append(", ");
                sb.append(strD5);
                sb.append("]");
                throw new IOException(sb.toString());
            }
            int i = 0;
            while (true) {
                try {
                    M(spdVar.d());
                    i++;
                } catch (EOFException unused) {
                    this.l = i - this.k.size();
                    if (spdVar.b()) {
                        N();
                    } else {
                        this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c, true), i9d.a));
                    }
                    i9d.b(spdVar);
                    return;
                }
            }
        } catch (Throwable th) {
            i9d.b(spdVar);
            throw th;
        }
    }

    public final void M(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                this.k.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        d dVar = (d) this.k.get(strSubstring);
        a aVar = null;
        if (dVar == null) {
            dVar = new d(strSubstring, aVar);
            this.k.put(strSubstring, dVar);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                dVar.f = new c(dVar, aVar);
                return;
            }
            if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
                return;
            }
            throw new IOException("unexpected journal line: " + str);
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
        dVar.e = true;
        dVar.f = null;
        if (!strArrSplit[strArrSplit.length - 1].startsWith("STAMP_")) {
            dVar.h = System.currentTimeMillis();
            dVar.k(strArrSplit);
            return;
        }
        String[] strArr = new String[strArrSplit.length - 1];
        for (int i2 = 0; i2 < strArrSplit.length - 1; i2++) {
            strArr[i2] = strArrSplit[i2];
        }
        dVar.k(strArr);
        dVar.h = Long.parseLong(strArrSplit[strArrSplit.length - 1].substring(6));
        if (Math.abs(System.currentTimeMillis() - dVar.h) > this.p) {
            dVar.f = new c(dVar, aVar);
        }
    }

    public final synchronized void N() {
        try {
            Writer writer = this.j;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d), i9d.a));
            try {
                bufferedWriter.write("libcore.io.DiskLruCache");
                bufferedWriter.write("\n");
                bufferedWriter.write("1");
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f));
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.h));
                bufferedWriter.write("\n");
                bufferedWriter.write("\n");
                for (d dVar : this.k.values()) {
                    if (dVar.f != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("DIRTY ");
                        sb.append(dVar.a);
                        sb.append('\n');
                        bufferedWriter.write(sb.toString());
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("CLEAN ");
                        sb2.append(dVar.a);
                        sb2.append(dVar.f());
                        sb2.append(' ');
                        sb2.append("STAMP_");
                        sb2.append(dVar.h);
                        sb2.append('\n');
                        bufferedWriter.write(sb2.toString());
                    }
                }
                bufferedWriter.close();
                if (this.c.exists()) {
                    D(this.c, this.e, true);
                }
                D(this.d, this.c, false);
                this.e.delete();
                this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c, true), i9d.a));
            } catch (Throwable th) {
                bufferedWriter.close();
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void P() {
        while (this.i > this.g) {
            J((String) ((Map.Entry) this.k.entrySet().iterator().next()).getKey());
        }
    }

    public c b(String str) {
        return d(str, -1L);
    }

    @Override
    public synchronized void close() {
        try {
            if (this.j == null) {
                return;
            }
            for (d dVar : new ArrayList(this.k.values())) {
                if (dVar.f != null) {
                    dVar.f.c();
                }
            }
            P();
            this.j.close();
            this.j = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized c d(String str, long j) {
        h();
        d dVar = (d) this.k.get(str);
        a aVar = null;
        if (j != -1 && (dVar == null || dVar.g != j)) {
            return null;
        }
        if (dVar == null) {
            dVar = new d(str, aVar);
            this.k.put(str, dVar);
        } else if (dVar.f != null) {
            return null;
        }
        c cVar = new c(dVar, aVar);
        dVar.f = cVar;
        this.j.append((CharSequence) "DIRTY");
        this.j.append(' ');
        this.j.append((CharSequence) str);
        this.j.append('\n');
        this.j.flush();
        return cVar;
    }

    public final void h() {
        if (this.j == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public final synchronized void k(c cVar, boolean z) {
        d dVar = cVar.a;
        if (dVar.f != cVar) {
            throw new IllegalStateException();
        }
        if (z && !dVar.e) {
            for (int i = 0; i < this.h; i++) {
                if (!cVar.b[i]) {
                    cVar.c();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!dVar.j(i).exists()) {
                    cVar.c();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.h; i2++) {
            File fileJ = dVar.j(i2);
            if (!z) {
                o(fileJ);
            } else if (fileJ.exists()) {
                File fileD = dVar.d(i2);
                fileJ.renameTo(fileD);
                long j = dVar.b[i2];
                long length = fileD.length();
                dVar.b[i2] = length;
                this.i = (this.i - j) + length;
            }
        }
        this.l++;
        dVar.f = null;
        if (dVar.e || z) {
            dVar.e = true;
            this.j.append((CharSequence) "CLEAN");
            this.j.append(' ');
            this.j.append((CharSequence) dVar.a);
            this.j.append((CharSequence) dVar.f());
            this.j.append(' ');
            this.j.append((CharSequence) "STAMP_");
            this.j.append((CharSequence) String.valueOf(System.currentTimeMillis()));
            this.j.append('\n');
            if (z) {
                long j2 = this.m;
                this.m = 1 + j2;
                dVar.g = j2;
            }
        } else {
            this.k.remove(dVar.a);
            this.j.append((CharSequence) "REMOVE");
            this.j.append(' ');
            this.j.append((CharSequence) dVar.a);
            this.j.append('\n');
        }
        this.j.flush();
        if (this.i > this.g || G()) {
            this.n.submit(this.o);
        }
    }
}
