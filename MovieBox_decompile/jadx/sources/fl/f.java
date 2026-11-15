package fl;

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

public final class f implements Closeable {

    private final File f60199a;

    private final File f60200b;

    private final File f60201c;

    private final File f60202d;

    private final int f60203e;

    private long f60204f;

    private final int f60205g;

    private Writer f60207i;

    private int f60209k;

    private long f60213o;

    private long f60206h = 0;

    private final LinkedHashMap f60208j = new LinkedHashMap(0, 0.75f, true);

    private long f60210l = 0;

    final ThreadPoolExecutor f60211m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b(null));

    private final Callable f60212n = new a();

    class a implements Callable {
        a() {
        }

        @Override
        public Void call() {
            synchronized (f.this) {
                try {
                    if (f.this.f60207i == null) {
                        return null;
                    }
                    f.this.T();
                    if (f.this.r()) {
                        f.this.y();
                        f.this.f60209k = 0;
                    }
                    return null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private static final class b implements ThreadFactory {
        b(a aVar) {
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

        private final d f60215a;

        private final boolean[] f60216b;

        private boolean f60217c;

        c(d dVar, a aVar) {
            this.f60215a = dVar;
            this.f60216b = dVar.f60223e ? null : new boolean[f.this.f60205g];
        }

        public File b(int i10) {
            File file;
            synchronized (f.this) {
                try {
                    if (this.f60215a.f60224f != this) {
                        throw new IllegalStateException();
                    }
                    if (!this.f60215a.f60223e) {
                        this.f60216b[i10] = true;
                    }
                    file = this.f60215a.f60222d[i10];
                    if (!f.this.f60199a.exists()) {
                        f.this.f60199a.mkdirs();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return file;
        }

        public void c() {
            f.this.l(this, false);
        }

        public void d() {
            if (this.f60217c) {
                return;
            }
            try {
                c();
            } catch (IOException unused) {
            }
        }

        public void f() {
            f.this.l(this, true);
            this.f60217c = true;
        }
    }

    private final class d {

        private final String f60219a;

        private final long[] f60220b;

        File[] f60221c;

        File[] f60222d;

        private boolean f60223e;

        private c f60224f;

        private long f60225g;

        private long f60226h;

        d(String str, a aVar) {
            this.f60219a = str;
            this.f60220b = new long[f.this.f60205g];
            this.f60221c = new File[f.this.f60205g];
            this.f60222d = new File[f.this.f60205g];
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append('.');
            int length = sb2.length();
            for (int i10 = 0; i10 < f.this.f60205g; i10++) {
                sb2.append(i10);
                this.f60221c[i10] = new File(f.this.f60199a, sb2.toString());
                sb2.append(".tmp");
                this.f60222d[i10] = new File(f.this.f60199a, sb2.toString());
                sb2.setLength(length);
            }
        }

        private IOException e(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public void k(String[] strArr) throws IOException {
            if (strArr.length != f.this.f60205g) {
                e(strArr);
                throw null;
            }
            for (int i10 = 0; i10 < strArr.length; i10++) {
                try {
                    this.f60220b[i10] = Long.parseLong(strArr[i10]);
                } catch (NumberFormatException unused) {
                    e(strArr);
                    throw null;
                }
            }
        }

        public File d(int i10) {
            return this.f60221c[i10];
        }

        public String f() {
            StringBuilder sb2 = new StringBuilder();
            for (long j10 : this.f60220b) {
                sb2.append(' ');
                sb2.append(j10);
            }
            return sb2.toString();
        }

        public File j(int i10) {
            return this.f60222d[i10];
        }
    }

    public final class e {

        private final File[] f60228a;

        e(f fVar, String str, long j10, File[] fileArr, long[] jArr, a aVar) {
            this.f60228a = fileArr;
        }

        public File a(int i10) {
            return this.f60228a[i10];
        }
    }

    private f(File file, int i10, int i11, long j10, long j11) {
        this.f60199a = file;
        this.f60203e = i10;
        this.f60200b = new File(file, "journal");
        this.f60201c = new File(file, "journal.tmp");
        this.f60202d = new File(file, "journal.bkp");
        this.f60205g = i11;
        this.f60204f = j10;
        this.f60213o = j11;
    }

    public void T() {
        while (this.f60206h > this.f60204f) {
            u((String) ((Map.Entry) this.f60208j.entrySet().iterator().next()).getKey());
        }
    }

    private synchronized c f(String str, long j10) {
        k();
        d dVar = (d) this.f60208j.get(str);
        a aVar = null;
        if (j10 != -1 && (dVar == null || dVar.f60225g != j10)) {
            return null;
        }
        if (dVar == null) {
            dVar = new d(str, aVar);
            this.f60208j.put(str, dVar);
        } else if (dVar.f60224f != null) {
            return null;
        }
        c cVar = new c(dVar, aVar);
        dVar.f60224f = cVar;
        this.f60207i.append((CharSequence) "DIRTY");
        this.f60207i.append(' ');
        this.f60207i.append((CharSequence) str);
        this.f60207i.append('\n');
        this.f60207i.flush();
        return cVar;
    }

    public static f h(File file, int i10, int i11, long j10, long j11) throws IOException {
        if (j10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i11 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                o(file2, file3, false);
            }
        }
        f fVar = new f(file, i10, i11, j10, j11);
        if (fVar.f60200b.exists()) {
            try {
                fVar.w();
                fVar.t();
                return fVar;
            } catch (IOException e10) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e10.getMessage() + ", removing");
                fVar.close();
                fl.d.c(fVar.f60199a);
            }
        }
        file.mkdirs();
        f fVar2 = new f(file, i10, i11, j10, j11);
        fVar2.y();
        return fVar2;
    }

    private void k() {
        if (this.f60207i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized void l(c cVar, boolean z10) {
        d dVar = cVar.f60215a;
        if (dVar.f60224f != cVar) {
            throw new IllegalStateException();
        }
        if (z10 && !dVar.f60223e) {
            for (int i10 = 0; i10 < this.f60205g; i10++) {
                if (!cVar.f60216b[i10]) {
                    cVar.c();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i10);
                }
                if (!dVar.j(i10).exists()) {
                    cVar.c();
                    return;
                }
            }
        }
        for (int i11 = 0; i11 < this.f60205g; i11++) {
            File fileJ = dVar.j(i11);
            if (!z10) {
                n(fileJ);
            } else if (fileJ.exists()) {
                File fileD = dVar.d(i11);
                fileJ.renameTo(fileD);
                long j10 = dVar.f60220b[i11];
                long length = fileD.length();
                dVar.f60220b[i11] = length;
                this.f60206h = (this.f60206h - j10) + length;
            }
        }
        this.f60209k++;
        dVar.f60224f = null;
        if (dVar.f60223e || z10) {
            dVar.f60223e = true;
            this.f60207i.append((CharSequence) "CLEAN");
            this.f60207i.append(' ');
            this.f60207i.append((CharSequence) dVar.f60219a);
            this.f60207i.append((CharSequence) dVar.f());
            this.f60207i.append(' ');
            this.f60207i.append((CharSequence) "STAMP_");
            this.f60207i.append((CharSequence) String.valueOf(System.currentTimeMillis()));
            this.f60207i.append('\n');
            if (z10) {
                long j11 = this.f60210l;
                this.f60210l = 1 + j11;
                dVar.f60225g = j11;
            }
        } else {
            this.f60208j.remove(dVar.f60219a);
            this.f60207i.append((CharSequence) "REMOVE");
            this.f60207i.append(' ');
            this.f60207i.append((CharSequence) dVar.f60219a);
            this.f60207i.append('\n');
        }
        this.f60207i.flush();
        if (this.f60206h > this.f60204f || r()) {
            this.f60211m.submit(this.f60212n);
        }
    }

    private static void n(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void o(File file, File file2, boolean z10) throws IOException {
        if (z10) {
            n(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public boolean r() {
        int i10 = this.f60209k;
        return i10 >= 2000 && i10 >= this.f60208j.size();
    }

    private void t() throws IOException {
        n(this.f60201c);
        Iterator it = this.f60208j.values().iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            int i10 = 0;
            if (dVar.f60224f == null) {
                while (i10 < this.f60205g) {
                    this.f60206h += dVar.f60220b[i10];
                    i10++;
                }
            } else {
                dVar.f60224f = null;
                while (i10 < this.f60205g) {
                    n(dVar.d(i10));
                    n(dVar.j(i10));
                    i10++;
                }
                it.remove();
            }
        }
    }

    private void w() {
        l lVar = new l(new FileInputStream(this.f60200b), fl.d.f60191a);
        try {
            String strH = lVar.h();
            String strH2 = lVar.h();
            String strH3 = lVar.h();
            String strH4 = lVar.h();
            String strH5 = lVar.h();
            if (!"libcore.io.DiskLruCache".equals(strH) || !"1".equals(strH2) || !Integer.toString(this.f60203e).equals(strH3) || !Integer.toString(this.f60205g).equals(strH4) || !"".equals(strH5)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("unexpected journal header: [");
                sb2.append(strH);
                sb2.append(", ");
                sb2.append(strH2);
                sb2.append(", ");
                sb2.append(strH4);
                sb2.append(", ");
                sb2.append(strH5);
                sb2.append("]");
                throw new IOException(sb2.toString());
            }
            int i10 = 0;
            while (true) {
                try {
                    x(lVar.h());
                    i10++;
                } catch (EOFException unused) {
                    this.f60209k = i10 - this.f60208j.size();
                    if (lVar.d()) {
                        y();
                    } else {
                        this.f60207i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f60200b, true), fl.d.f60191a));
                    }
                    fl.d.b(lVar);
                    return;
                }
            }
        } catch (Throwable th2) {
            fl.d.b(lVar);
            throw th2;
        }
    }

    private void x(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i10 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i10);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i10);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                this.f60208j.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i10, iIndexOf2);
        }
        d dVar = (d) this.f60208j.get(strSubstring);
        a aVar = null;
        if (dVar == null) {
            dVar = new d(strSubstring, aVar);
            this.f60208j.put(strSubstring, dVar);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                dVar.f60224f = new c(dVar, aVar);
                return;
            }
            if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
                return;
            }
            throw new IOException("unexpected journal line: " + str);
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
        dVar.f60223e = true;
        dVar.f60224f = null;
        if (!strArrSplit[strArrSplit.length - 1].startsWith("STAMP_")) {
            dVar.f60226h = System.currentTimeMillis();
            dVar.k(strArrSplit);
            return;
        }
        String[] strArr = new String[strArrSplit.length - 1];
        for (int i11 = 0; i11 < strArrSplit.length - 1; i11++) {
            strArr[i11] = strArrSplit[i11];
        }
        dVar.k(strArr);
        dVar.f60226h = Long.parseLong(strArrSplit[strArrSplit.length - 1].substring(6));
        if (Math.abs(System.currentTimeMillis() - dVar.f60226h) > this.f60213o) {
            dVar.f60224f = new c(dVar, aVar);
        }
    }

    public synchronized void y() {
        try {
            Writer writer = this.f60207i;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f60201c), fl.d.f60191a));
            try {
                bufferedWriter.write("libcore.io.DiskLruCache");
                bufferedWriter.write("\n");
                bufferedWriter.write("1");
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f60203e));
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f60205g));
                bufferedWriter.write("\n");
                bufferedWriter.write("\n");
                for (d dVar : this.f60208j.values()) {
                    if (dVar.f60224f != null) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("DIRTY ");
                        sb2.append(dVar.f60219a);
                        sb2.append('\n');
                        bufferedWriter.write(sb2.toString());
                    } else {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("CLEAN ");
                        sb3.append(dVar.f60219a);
                        sb3.append(dVar.f());
                        sb3.append(' ');
                        sb3.append("STAMP_");
                        sb3.append(dVar.f60226h);
                        sb3.append('\n');
                        bufferedWriter.write(sb3.toString());
                    }
                }
                bufferedWriter.close();
                if (this.f60200b.exists()) {
                    o(this.f60200b, this.f60202d, true);
                }
                o(this.f60201c, this.f60200b, false);
                this.f60202d.delete();
                this.f60207i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f60200b, true), fl.d.f60191a));
            } catch (Throwable th2) {
                bufferedWriter.close();
                throw th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    @Override
    public synchronized void close() {
        try {
            if (this.f60207i == null) {
                return;
            }
            for (d dVar : new ArrayList(this.f60208j.values())) {
                if (dVar.f60224f != null) {
                    dVar.f60224f.c();
                }
            }
            T();
            this.f60207i.close();
            this.f60207i = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public c d(String str) {
        return f(str, -1L);
    }

    public synchronized e p(String str) {
        k();
        d dVar = (d) this.f60208j.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.f60223e) {
            return null;
        }
        for (File file : dVar.f60221c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f60209k++;
        this.f60207i.append((CharSequence) "READ");
        this.f60207i.append(' ');
        this.f60207i.append((CharSequence) str);
        this.f60207i.append('\n');
        if (r()) {
            this.f60211m.submit(this.f60212n);
        }
        return new e(this, str, dVar.f60225g, dVar.f60221c, dVar.f60220b, null);
    }

    public synchronized boolean u(String str) {
        try {
            k();
            d dVar = (d) this.f60208j.get(str);
            if (dVar != null && dVar.f60224f == null) {
                for (int i10 = 0; i10 < this.f60205g; i10++) {
                    File fileD = dVar.d(i10);
                    if (fileD.exists() && !fileD.delete()) {
                        throw new IOException("failed to delete " + fileD);
                    }
                    this.f60206h -= dVar.f60220b[i10];
                    dVar.f60220b[i10] = 0;
                }
                this.f60209k++;
                this.f60207i.append((CharSequence) "REMOVE");
                this.f60207i.append(' ');
                this.f60207i.append((CharSequence) str);
                this.f60207i.append('\n');
                this.f60208j.remove(str);
                if (r()) {
                    this.f60211m.submit(this.f60212n);
                }
                return true;
            }
            return false;
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
