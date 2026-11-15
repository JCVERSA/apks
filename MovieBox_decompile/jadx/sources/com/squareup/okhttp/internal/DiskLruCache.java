package com.squareup.okhttp.internal;

import com.squareup.okhttp.internal.io.FileSystem;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.NoSuchElementException;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

public final class DiskLruCache implements Closeable {

    static final Pattern f39408s = Pattern.compile("[a-z0-9_-]{1,120}");

    private static final Sink f39409t = new c();

    private final FileSystem f39410a;

    private final File f39411b;

    private final File f39412c;

    private final File f39413d;

    private final File f39414e;

    private final int f39415f;

    private long f39416g;

    private final int f39417h;

    private BufferedSink f39419j;

    private int f39421l;

    private boolean f39422m;

    private boolean f39423n;

    private boolean f39424o;

    private final Executor f39426q;

    private long f39418i = 0;

    private final LinkedHashMap f39420k = new LinkedHashMap(0, 0.75f, true);

    private long f39425p = 0;

    private final Runnable f39427r = new Runnable() {
        @Override
        public void run() {
            synchronized (DiskLruCache.this) {
                if ((!DiskLruCache.this.f39423n) || DiskLruCache.this.f39424o) {
                    return;
                }
                try {
                    DiskLruCache.this.u0();
                    if (DiskLruCache.this.f0()) {
                        DiskLruCache.this.o0();
                        DiskLruCache.this.f39421l = 0;
                    }
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            }
        }
    };

    class a extends com.squareup.okhttp.internal.b {
        a(Sink sink) {
            super(sink);
        }

        @Override
        protected void b(IOException iOException) {
            DiskLruCache.this.f39422m = true;
        }
    }

    class b implements Iterator {

        final Iterator f39429a;

        f f39430b;

        f f39431c;

        b() {
            this.f39429a = new ArrayList(DiskLruCache.this.f39420k.values()).iterator();
        }

        @Override
        public f next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            f fVar = this.f39430b;
            this.f39431c = fVar;
            this.f39430b = null;
            return fVar;
        }

        @Override
        public boolean hasNext() {
            if (this.f39430b != null) {
                return true;
            }
            synchronized (DiskLruCache.this) {
                try {
                    if (DiskLruCache.this.f39424o) {
                        return false;
                    }
                    while (this.f39429a.hasNext()) {
                        f fVarN = ((e) this.f39429a.next()).n();
                        if (fVarN != null) {
                            this.f39430b = fVarN;
                            return true;
                        }
                    }
                    return false;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void remove() {
            f fVar = this.f39431c;
            if (fVar == null) {
                throw new IllegalStateException("remove() before next()");
            }
            try {
                DiskLruCache.this.p0(fVar.f39447a);
            } catch (IOException unused) {
            } finally {
                this.f39431c = null;
            }
        }
    }

    static class c implements Sink {
        c() {
        }

        @Override
        public void close() {
        }

        @Override
        public void flush() {
        }

        @Override
        public Timeout getTimeout() {
            return Timeout.NONE;
        }

        @Override
        public void write(Buffer buffer, long j10) throws EOFException {
            buffer.skip(j10);
        }
    }

    public final class d {

        private final e f39433a;

        private final boolean[] f39434b;

        private boolean f39435c;

        private boolean f39436d;

        class a extends com.squareup.okhttp.internal.b {
            a(Sink sink) {
                super(sink);
            }

            @Override
            protected void b(IOException iOException) {
                synchronized (DiskLruCache.this) {
                    d.this.f39435c = true;
                }
            }
        }

        public void a() {
            synchronized (DiskLruCache.this) {
                DiskLruCache.this.v(this, false);
            }
        }

        public void e() {
            synchronized (DiskLruCache.this) {
                try {
                    if (this.f39435c) {
                        DiskLruCache.this.v(this, false);
                        DiskLruCache.this.r0(this.f39433a);
                    } else {
                        DiskLruCache.this.v(this, true);
                    }
                    this.f39436d = true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public Sink f(int i10) {
            a aVar;
            synchronized (DiskLruCache.this) {
                try {
                    if (this.f39433a.f39444f != this) {
                        throw new IllegalStateException();
                    }
                    if (!this.f39433a.f39443e) {
                        this.f39434b[i10] = true;
                    }
                    try {
                        aVar = new a(DiskLruCache.this.f39410a.sink(this.f39433a.f39442d[i10]));
                    } catch (FileNotFoundException unused) {
                        return DiskLruCache.f39409t;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return aVar;
        }

        private d(e eVar) {
            this.f39433a = eVar;
            this.f39434b = eVar.f39443e ? null : new boolean[DiskLruCache.this.f39417h];
        }
    }

    private final class e {

        private final String f39439a;

        private final long[] f39440b;

        private final File[] f39441c;

        private final File[] f39442d;

        private boolean f39443e;

        private d f39444f;

        private long f39445g;

        private IOException l(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public void m(String[] strArr) throws IOException {
            if (strArr.length != DiskLruCache.this.f39417h) {
                throw l(strArr);
            }
            for (int i10 = 0; i10 < strArr.length; i10++) {
                try {
                    this.f39440b[i10] = Long.parseLong(strArr[i10]);
                } catch (NumberFormatException unused) {
                    throw l(strArr);
                }
            }
        }

        f n() {
            Source source;
            if (!Thread.holdsLock(DiskLruCache.this)) {
                throw new AssertionError();
            }
            Source[] sourceArr = new Source[DiskLruCache.this.f39417h];
            long[] jArr = (long[]) this.f39440b.clone();
            for (int i10 = 0; i10 < DiskLruCache.this.f39417h; i10++) {
                try {
                    sourceArr[i10] = DiskLruCache.this.f39410a.source(this.f39441c[i10]);
                } catch (FileNotFoundException unused) {
                    for (int i11 = 0; i11 < DiskLruCache.this.f39417h && (source = sourceArr[i11]) != null; i11++) {
                        g.c(source);
                    }
                    return null;
                }
            }
            return new f(this.f39439a, this.f39445g, sourceArr, jArr);
        }

        void o(BufferedSink bufferedSink) throws IOException {
            for (long j10 : this.f39440b) {
                bufferedSink.writeByte(32).writeDecimalLong(j10);
            }
        }

        private e(String str) {
            this.f39439a = str;
            this.f39440b = new long[DiskLruCache.this.f39417h];
            this.f39441c = new File[DiskLruCache.this.f39417h];
            this.f39442d = new File[DiskLruCache.this.f39417h];
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append('.');
            int length = sb2.length();
            for (int i10 = 0; i10 < DiskLruCache.this.f39417h; i10++) {
                sb2.append(i10);
                this.f39441c[i10] = new File(DiskLruCache.this.f39411b, sb2.toString());
                sb2.append(".tmp");
                this.f39442d[i10] = new File(DiskLruCache.this.f39411b, sb2.toString());
                sb2.setLength(length);
            }
        }
    }

    public final class f implements Closeable {

        private final String f39447a;

        private final long f39448b;

        private final Source[] f39449c;

        private final long[] f39450d;

        @Override
        public void close() {
            for (Source source : this.f39449c) {
                g.c(source);
            }
        }

        public d d() {
            return DiskLruCache.this.S(this.f39447a, this.f39448b);
        }

        public Source f(int i10) {
            return this.f39449c[i10];
        }

        private f(String str, long j10, Source[] sourceArr, long[] jArr) {
            this.f39447a = str;
            this.f39448b = j10;
            this.f39449c = sourceArr;
            this.f39450d = jArr;
        }
    }

    DiskLruCache(FileSystem fileSystem, File file, int i10, int i11, long j10, Executor executor) {
        this.f39410a = fileSystem;
        this.f39411b = file;
        this.f39415f = i10;
        this.f39412c = new File(file, "journal");
        this.f39413d = new File(file, "journal.tmp");
        this.f39414e = new File(file, "journal.bkp");
        this.f39417h = i11;
        this.f39416g = j10;
        this.f39426q = executor;
    }

    public synchronized d S(String str, long j10) {
        e0();
        u();
        x0(str);
        e eVar = (e) this.f39420k.get(str);
        if (j10 != -1 && (eVar == null || eVar.f39445g != j10)) {
            return null;
        }
        if (eVar != null && eVar.f39444f != null) {
            return null;
        }
        this.f39419j.writeUtf8("DIRTY").writeByte(32).writeUtf8(str).writeByte(10);
        this.f39419j.flush();
        if (this.f39422m) {
            return null;
        }
        if (eVar == null) {
            eVar = new e(str);
            this.f39420k.put(str, eVar);
        }
        d dVar = new d(eVar);
        eVar.f39444f = dVar;
        return dVar;
    }

    public boolean f0() {
        int i10 = this.f39421l;
        return i10 >= 2000 && i10 >= this.f39420k.size();
    }

    private BufferedSink g0() {
        return Okio.buffer(new a(this.f39410a.appendingSink(this.f39412c)));
    }

    private void h0() throws IOException {
        this.f39410a.delete(this.f39413d);
        Iterator it = this.f39420k.values().iterator();
        while (it.hasNext()) {
            e eVar = (e) it.next();
            int i10 = 0;
            if (eVar.f39444f == null) {
                while (i10 < this.f39417h) {
                    this.f39418i += eVar.f39440b[i10];
                    i10++;
                }
            } else {
                eVar.f39444f = null;
                while (i10 < this.f39417h) {
                    this.f39410a.delete(eVar.f39441c[i10]);
                    this.f39410a.delete(eVar.f39442d[i10]);
                    i10++;
                }
                it.remove();
            }
        }
    }

    private void j0() {
        BufferedSource bufferedSourceBuffer = Okio.buffer(this.f39410a.source(this.f39412c));
        try {
            String utf8LineStrict = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict2 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict3 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict4 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict5 = bufferedSourceBuffer.readUtf8LineStrict();
            if (!"libcore.io.DiskLruCache".equals(utf8LineStrict) || !"1".equals(utf8LineStrict2) || !Integer.toString(this.f39415f).equals(utf8LineStrict3) || !Integer.toString(this.f39417h).equals(utf8LineStrict4) || !"".equals(utf8LineStrict5)) {
                throw new IOException("unexpected journal header: [" + utf8LineStrict + ", " + utf8LineStrict2 + ", " + utf8LineStrict4 + ", " + utf8LineStrict5 + "]");
            }
            int i10 = 0;
            while (true) {
                try {
                    l0(bufferedSourceBuffer.readUtf8LineStrict());
                    i10++;
                } catch (EOFException unused) {
                    this.f39421l = i10 - this.f39420k.size();
                    if (bufferedSourceBuffer.exhausted()) {
                        this.f39419j = g0();
                    } else {
                        o0();
                    }
                    g.c(bufferedSourceBuffer);
                    return;
                }
            }
        } catch (Throwable th2) {
            g.c(bufferedSourceBuffer);
            throw th2;
        }
    }

    private void l0(String str) throws IOException {
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
                this.f39420k.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i10, iIndexOf2);
        }
        e eVar = (e) this.f39420k.get(strSubstring);
        if (eVar == null) {
            eVar = new e(strSubstring);
            this.f39420k.put(strSubstring, eVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            eVar.f39443e = true;
            eVar.f39444f = null;
            eVar.m(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
            eVar.f39444f = new d(eVar);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    public synchronized void o0() {
        try {
            BufferedSink bufferedSink = this.f39419j;
            if (bufferedSink != null) {
                bufferedSink.close();
            }
            BufferedSink bufferedSinkBuffer = Okio.buffer(this.f39410a.sink(this.f39413d));
            try {
                bufferedSinkBuffer.writeUtf8("libcore.io.DiskLruCache").writeByte(10);
                bufferedSinkBuffer.writeUtf8("1").writeByte(10);
                bufferedSinkBuffer.writeDecimalLong(this.f39415f).writeByte(10);
                bufferedSinkBuffer.writeDecimalLong(this.f39417h).writeByte(10);
                bufferedSinkBuffer.writeByte(10);
                for (e eVar : this.f39420k.values()) {
                    if (eVar.f39444f != null) {
                        bufferedSinkBuffer.writeUtf8("DIRTY").writeByte(32);
                        bufferedSinkBuffer.writeUtf8(eVar.f39439a);
                        bufferedSinkBuffer.writeByte(10);
                    } else {
                        bufferedSinkBuffer.writeUtf8("CLEAN").writeByte(32);
                        bufferedSinkBuffer.writeUtf8(eVar.f39439a);
                        eVar.o(bufferedSinkBuffer);
                        bufferedSinkBuffer.writeByte(10);
                    }
                }
                bufferedSinkBuffer.close();
                if (this.f39410a.exists(this.f39412c)) {
                    this.f39410a.rename(this.f39412c, this.f39414e);
                }
                this.f39410a.rename(this.f39413d, this.f39412c);
                this.f39410a.delete(this.f39414e);
                this.f39419j = g0();
                this.f39422m = false;
            } catch (Throwable th2) {
                bufferedSinkBuffer.close();
                throw th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    public boolean r0(e eVar) throws IOException {
        if (eVar.f39444f != null) {
            eVar.f39444f.f39435c = true;
        }
        for (int i10 = 0; i10 < this.f39417h; i10++) {
            this.f39410a.delete(eVar.f39441c[i10]);
            this.f39418i -= eVar.f39440b[i10];
            eVar.f39440b[i10] = 0;
        }
        this.f39421l++;
        this.f39419j.writeUtf8("REMOVE").writeByte(32).writeUtf8(eVar.f39439a).writeByte(10);
        this.f39420k.remove(eVar.f39439a);
        if (f0()) {
            this.f39426q.execute(this.f39427r);
        }
        return true;
    }

    private synchronized void u() {
        if (isClosed()) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public void u0() throws IOException {
        while (this.f39418i > this.f39416g) {
            r0((e) this.f39420k.values().iterator().next());
        }
    }

    public synchronized void v(d dVar, boolean z10) {
        e eVar = dVar.f39433a;
        if (eVar.f39444f != dVar) {
            throw new IllegalStateException();
        }
        if (z10 && !eVar.f39443e) {
            for (int i10 = 0; i10 < this.f39417h; i10++) {
                if (!dVar.f39434b[i10]) {
                    dVar.a();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i10);
                }
                if (!this.f39410a.exists(eVar.f39442d[i10])) {
                    dVar.a();
                    return;
                }
            }
        }
        for (int i11 = 0; i11 < this.f39417h; i11++) {
            File file = eVar.f39442d[i11];
            if (!z10) {
                this.f39410a.delete(file);
            } else if (this.f39410a.exists(file)) {
                File file2 = eVar.f39441c[i11];
                this.f39410a.rename(file, file2);
                long j10 = eVar.f39440b[i11];
                long size = this.f39410a.size(file2);
                eVar.f39440b[i11] = size;
                this.f39418i = (this.f39418i - j10) + size;
            }
        }
        this.f39421l++;
        eVar.f39444f = null;
        if (eVar.f39443e || z10) {
            eVar.f39443e = true;
            this.f39419j.writeUtf8("CLEAN").writeByte(32);
            this.f39419j.writeUtf8(eVar.f39439a);
            eVar.o(this.f39419j);
            this.f39419j.writeByte(10);
            if (z10) {
                long j11 = this.f39425p;
                this.f39425p = 1 + j11;
                eVar.f39445g = j11;
            }
        } else {
            this.f39420k.remove(eVar.f39439a);
            this.f39419j.writeUtf8("REMOVE").writeByte(32);
            this.f39419j.writeUtf8(eVar.f39439a);
            this.f39419j.writeByte(10);
        }
        this.f39419j.flush();
        if (this.f39418i > this.f39416g || f0()) {
            this.f39426q.execute(this.f39427r);
        }
    }

    public static DiskLruCache w(FileSystem fileSystem, File file, int i10, int i11, long j10) {
        if (j10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i11 > 0) {
            return new DiskLruCache(fileSystem, file, i10, i11, j10, new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), g.s("OkHttp DiskLruCache", true)));
        }
        throw new IllegalArgumentException("valueCount <= 0");
    }

    private void x0(String str) {
        if (f39408s.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    public synchronized void T() {
        e0();
        for (e eVar : (e[]) this.f39420k.values().toArray(new e[this.f39420k.size()])) {
            r0(eVar);
        }
    }

    public synchronized f W(String str) {
        e0();
        u();
        x0(str);
        e eVar = (e) this.f39420k.get(str);
        if (eVar != null && eVar.f39443e) {
            f fVarN = eVar.n();
            if (fVarN == null) {
                return null;
            }
            this.f39421l++;
            this.f39419j.writeUtf8("READ").writeByte(32).writeUtf8(str).writeByte(10);
            if (f0()) {
                this.f39426q.execute(this.f39427r);
            }
            return fVarN;
        }
        return null;
    }

    public File X() {
        return this.f39411b;
    }

    @Override
    public synchronized void close() {
        try {
            if (this.f39423n && !this.f39424o) {
                for (e eVar : (e[]) this.f39420k.values().toArray(new e[this.f39420k.size()])) {
                    if (eVar.f39444f != null) {
                        eVar.f39444f.a();
                    }
                }
                u0();
                this.f39419j.close();
                this.f39419j = null;
                this.f39424o = true;
                return;
            }
            this.f39424o = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized long d0() {
        return this.f39416g;
    }

    public synchronized void e0() {
        try {
            if (this.f39423n) {
                return;
            }
            if (this.f39410a.exists(this.f39414e)) {
                if (this.f39410a.exists(this.f39412c)) {
                    this.f39410a.delete(this.f39414e);
                } else {
                    this.f39410a.rename(this.f39414e, this.f39412c);
                }
            }
            if (this.f39410a.exists(this.f39412c)) {
                try {
                    j0();
                    h0();
                    this.f39423n = true;
                    return;
                } catch (IOException e10) {
                    com.squareup.okhttp.internal.e.f().i("DiskLruCache " + this.f39411b + " is corrupt: " + e10.getMessage() + ", removing");
                    x();
                    this.f39424o = false;
                }
            }
            o0();
            this.f39423n = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void flush() {
        if (this.f39423n) {
            u();
            u0();
            this.f39419j.flush();
        }
    }

    public synchronized boolean isClosed() {
        return this.f39424o;
    }

    public synchronized boolean p0(String str) {
        e0();
        u();
        x0(str);
        e eVar = (e) this.f39420k.get(str);
        if (eVar == null) {
            return false;
        }
        return r0(eVar);
    }

    public synchronized long s0() {
        e0();
        return this.f39418i;
    }

    public synchronized Iterator t0() {
        e0();
        return new b();
    }

    public void x() throws IOException {
        close();
        this.f39410a.deleteContents(this.f39411b);
    }

    public d y(String str) {
        return S(str, -1L);
    }
}
