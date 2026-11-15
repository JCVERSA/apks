package com.cloud.hisavana.net.disklrucache;

import android.text.TextUtils;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.disklrucache.listener.LruCleanCallBack;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public final class DiskLruCache implements Closeable {

    static final Pattern f20738o = Pattern.compile("[a-z0-9_-]{1,120}");

    private static final OutputStream f20739p = new OutputStream() {
        @Override
        public void write(int i10) {
        }
    };

    private final File f20740a;

    private final File f20741b;

    private final File f20742c;

    private final File f20743d;

    private final int f20744e;

    private long f20745f;

    private final int f20746g;

    private Writer f20748i;

    private final LinkedHashMap f20749j;

    private int f20750k;

    private long f20747h = 0;

    private long f20751l = 0;

    final ThreadPoolExecutor f20752m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    private final Callable f20753n = new Callable<Void>() {
        @Override
        public Void call() {
            synchronized (DiskLruCache.this) {
                try {
                    if (DiskLruCache.this.f20748i == null) {
                        return null;
                    }
                    DiskLruCache.this.f0();
                    if (DiskLruCache.this.v()) {
                        DiskLruCache.this.X();
                        DiskLruCache.this.f20750k = 0;
                    }
                    return null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    };

    public final class Editor {

        private final Entry f20755a;

        private final boolean[] f20756b;

        private boolean f20757c;

        private boolean f20758d;

        private class FaultHidingOutputStream extends FilterOutputStream {
            @Override
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    Editor.this.f20757c = true;
                }
            }

            @Override
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    Editor.this.f20757c = true;
                }
            }

            @Override
            public void write(int i10) {
                try {
                    ((FilterOutputStream) this).out.write(i10);
                } catch (IOException unused) {
                    Editor.this.f20757c = true;
                }
            }

            private FaultHidingOutputStream(OutputStream outputStream) {
                super(outputStream);
            }

            @Override
            public void write(byte[] bArr, int i10, int i11) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i10, i11);
                } catch (IOException unused) {
                    Editor.this.f20757c = true;
                }
            }
        }

        public void a() {
            DiskLruCache.this.p(this, false);
        }

        public void b() {
            if (this.f20758d) {
                return;
            }
            try {
                a();
            } catch (IOException unused) {
            }
        }

        public void f() {
            if (this.f20757c) {
                DiskLruCache.this.p(this, false);
                DiskLruCache.this.d0(this.f20755a.f20761a);
            } else {
                DiskLruCache.this.p(this, true);
            }
            this.f20758d = true;
        }

        public OutputStream g(int i10) {
            FileOutputStream fileOutputStream;
            FaultHidingOutputStream faultHidingOutputStream;
            if (i10 < 0 || i10 >= DiskLruCache.this.f20746g) {
                throw new IllegalArgumentException("Expected index " + i10 + " to be greater than 0 and less than the maximum value count of " + DiskLruCache.this.f20746g);
            }
            synchronized (DiskLruCache.this) {
                try {
                    if (this.f20755a.f20764d != this) {
                        throw new IllegalStateException();
                    }
                    if (!this.f20755a.f20763c) {
                        this.f20756b[i10] = true;
                    }
                    File fileK = this.f20755a.k(i10);
                    try {
                        fileOutputStream = new FileOutputStream(fileK);
                    } catch (FileNotFoundException unused) {
                        DiskLruCache.this.f20740a.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(fileK);
                        } catch (FileNotFoundException unused2) {
                            return DiskLruCache.f20739p;
                        }
                    }
                    faultHidingOutputStream = new FaultHidingOutputStream(fileOutputStream);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return faultHidingOutputStream;
        }

        private Editor(Entry entry) {
            this.f20755a = entry;
            this.f20756b = entry.f20763c ? null : new boolean[DiskLruCache.this.f20746g];
        }
    }

    private final class Entry {

        private final String f20761a;

        private final long[] f20762b;

        private boolean f20763c;

        private Editor f20764d;

        private long f20765e;

        private IOException m(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public void n(String[] strArr) throws IOException {
            if (strArr.length != DiskLruCache.this.f20746g) {
                throw m(strArr);
            }
            for (int i10 = 0; i10 < strArr.length; i10++) {
                try {
                    this.f20762b[i10] = Long.parseLong(strArr[i10]);
                } catch (NumberFormatException unused) {
                    throw m(strArr);
                }
            }
        }

        public File j(int i10) {
            return new File(DiskLruCache.this.f20740a, this.f20761a + "." + i10);
        }

        public File k(int i10) {
            return new File(DiskLruCache.this.f20740a, this.f20761a + "." + i10 + ".tmp");
        }

        public String l() {
            StringBuilder sb2 = new StringBuilder();
            for (long j10 : this.f20762b) {
                sb2.append(' ');
                sb2.append(j10);
            }
            return sb2.toString();
        }

        private Entry(String str) {
            this.f20761a = str;
            this.f20762b = new long[DiskLruCache.this.f20746g];
        }
    }

    public final class Snapshot implements Closeable {

        private final String f20767a;

        private final long f20768b;

        private final InputStream[] f20769c;

        private final long[] f20770d;

        @Override
        public void close() {
            for (InputStream inputStream : this.f20769c) {
                DiskLruCacheUtil.b(inputStream);
            }
        }

        private Snapshot(String str, long j10, InputStream[] inputStreamArr, long[] jArr) {
            this.f20767a = str;
            this.f20768b = j10;
            this.f20769c = inputStreamArr;
            this.f20770d = jArr;
        }
    }

    private DiskLruCache(File file, int i10, int i11, long j10, boolean z10) {
        this.f20740a = file;
        this.f20744e = i10;
        this.f20741b = new File(file, "journal");
        this.f20742c = new File(file, "journal.tmp");
        this.f20743d = new File(file, "journal.bkp");
        this.f20746g = i11;
        this.f20745f = j10;
        this.f20749j = new LinkedHashMap(0, 0.75f, z10);
    }

    private void S() throws IOException {
        r(this.f20742c);
        Iterator it = this.f20749j.values().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            int i10 = 0;
            if (entry.f20764d == null) {
                while (i10 < this.f20746g) {
                    this.f20747h += entry.f20762b[i10];
                    i10++;
                }
            } else {
                entry.f20764d = null;
                while (i10 < this.f20746g) {
                    r(entry.j(i10));
                    r(entry.k(i10));
                    i10++;
                }
                it.remove();
            }
        }
    }

    private void T() {
        StrictLineReader strictLineReader = new StrictLineReader(new FileInputStream(this.f20741b), DiskLruCacheUtil.f20792a);
        try {
            String strK = strictLineReader.k();
            String strK2 = strictLineReader.k();
            String strK3 = strictLineReader.k();
            String strK4 = strictLineReader.k();
            String strK5 = strictLineReader.k();
            if (!"libcore.io.DiskLruCache".equals(strK) || !"1".equals(strK2) || !Integer.toString(this.f20744e).equals(strK3) || !Integer.toString(this.f20746g).equals(strK4) || !"".equals(strK5)) {
                throw new IOException("unexpected journal header: [" + strK + ", " + strK2 + ", " + strK4 + ", " + strK5 + "]");
            }
            int i10 = 0;
            while (true) {
                try {
                    W(strictLineReader.k());
                    i10++;
                } catch (EOFException unused) {
                    this.f20750k = i10 - this.f20749j.size();
                    if (strictLineReader.h()) {
                        X();
                    } else {
                        this.f20748i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f20741b, true), DiskLruCacheUtil.f20792a));
                    }
                    DiskLruCacheUtil.b(strictLineReader);
                    return;
                }
            }
        } catch (Throwable th2) {
            DiskLruCacheUtil.b(strictLineReader);
            throw th2;
        }
    }

    private void W(String str) throws IOException {
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
                this.f20749j.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i10, iIndexOf2);
        }
        Entry entry = (Entry) this.f20749j.get(strSubstring);
        if (entry == null) {
            entry = new Entry(strSubstring);
            this.f20749j.put(strSubstring, entry);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            entry.f20763c = true;
            entry.f20764d = null;
            entry.n(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
            entry.f20764d = new Editor(entry);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    public synchronized void X() {
        try {
            Writer writer = this.f20748i;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f20742c), DiskLruCacheUtil.f20792a));
            try {
                bufferedWriter.write("libcore.io.DiskLruCache");
                bufferedWriter.write("\n");
                bufferedWriter.write("1");
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f20744e));
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f20746g));
                bufferedWriter.write("\n");
                bufferedWriter.write("\n");
                for (Entry entry : this.f20749j.values()) {
                    if (entry.f20764d != null) {
                        bufferedWriter.write("DIRTY " + entry.f20761a + '\n');
                    } else {
                        bufferedWriter.write("CLEAN " + entry.f20761a + entry.l() + '\n');
                    }
                }
                bufferedWriter.close();
                if (this.f20741b.exists()) {
                    e0(this.f20741b, this.f20743d, true);
                }
                e0(this.f20742c, this.f20741b, false);
                this.f20743d.delete();
                this.f20748i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f20741b, true), DiskLruCacheUtil.f20792a));
            } catch (Throwable th2) {
                bufferedWriter.close();
                throw th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    private static void e0(File file, File file2, boolean z10) throws IOException {
        if (z10) {
            r(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public void f0() {
        while (this.f20747h > this.f20745f) {
            Map.Entry entry = (Map.Entry) this.f20749j.entrySet().iterator().next();
            if (d0((String) entry.getKey())) {
                w((String) entry.getKey());
            }
        }
    }

    private void g0(String str) {
        if (f20738o.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    private void o() {
        if (this.f20748i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized void p(Editor editor, boolean z10) {
        Entry entry = editor.f20755a;
        if (entry.f20764d != editor) {
            throw new IllegalStateException();
        }
        if (z10 && !entry.f20763c) {
            for (int i10 = 0; i10 < this.f20746g; i10++) {
                if (!editor.f20756b[i10]) {
                    editor.a();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i10);
                }
                if (!entry.k(i10).exists()) {
                    editor.a();
                    return;
                }
            }
        }
        for (int i11 = 0; i11 < this.f20746g; i11++) {
            File fileK = entry.k(i11);
            if (!z10) {
                r(fileK);
            } else if (fileK.exists()) {
                File fileJ = entry.j(i11);
                fileK.renameTo(fileJ);
                long j10 = entry.f20762b[i11];
                long length = fileJ.length();
                entry.f20762b[i11] = length;
                this.f20747h = (this.f20747h - j10) + length;
            }
        }
        this.f20750k++;
        entry.f20764d = null;
        if (entry.f20763c || z10) {
            entry.f20763c = true;
            this.f20748i.write("CLEAN " + entry.f20761a + entry.l() + '\n');
            if (z10) {
                long j11 = this.f20751l;
                this.f20751l = 1 + j11;
                entry.f20765e = j11;
            }
        } else {
            this.f20749j.remove(entry.f20761a);
            this.f20748i.write("REMOVE " + entry.f20761a + '\n');
        }
        this.f20748i.flush();
        if (this.f20747h > this.f20745f || v()) {
            this.f20752m.submit(this.f20753n);
        }
    }

    private static void r(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private synchronized Editor t(String str, long j10) {
        o();
        g0(str);
        Entry entry = (Entry) this.f20749j.get(str);
        if (j10 != -1 && (entry == null || entry.f20765e != j10)) {
            return null;
        }
        if (entry == null) {
            entry = new Entry(str);
            this.f20749j.put(str, entry);
        } else if (entry.f20764d != null) {
            return null;
        }
        Editor editor = new Editor(entry);
        entry.f20764d = editor;
        this.f20748i.write("DIRTY " + str + '\n');
        this.f20748i.flush();
        return editor;
    }

    public boolean v() {
        int i10 = this.f20750k;
        return i10 >= 2000 && i10 >= this.f20749j.size();
    }

    private void w(String str) {
        HttpRequest httpRequest = HttpRequest.f20712a;
        if (httpRequest.g().isEmpty() || TextUtils.isEmpty(str)) {
            return;
        }
        for (LruCleanCallBack lruCleanCallBack : httpRequest.g()) {
            if (lruCleanCallBack != null) {
                lruCleanCallBack.onCallBack(str);
            }
        }
    }

    public static DiskLruCache x(File file, int i10, int i11, long j10) {
        return y(file, i10, i11, j10, true);
    }

    public static DiskLruCache y(File file, int i10, int i11, long j10, boolean z10) throws IOException {
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
                e0(file2, file3, false);
            }
        }
        DiskLruCache diskLruCache = new DiskLruCache(file, i10, i11, j10, z10);
        if (diskLruCache.f20741b.exists()) {
            try {
                diskLruCache.T();
                diskLruCache.S();
                return diskLruCache;
            } catch (IOException e10) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e10.getMessage() + ", removing");
                diskLruCache.q();
            }
        }
        file.mkdirs();
        DiskLruCache diskLruCache2 = new DiskLruCache(file, i10, i11, j10, z10);
        diskLruCache2.X();
        return diskLruCache2;
    }

    @Override
    public synchronized void close() {
        try {
            if (this.f20748i == null) {
                return;
            }
            for (Entry entry : new ArrayList(this.f20749j.values())) {
                if (entry.f20764d != null) {
                    entry.f20764d.a();
                }
            }
            f0();
            this.f20748i.close();
            this.f20748i = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized boolean d0(String str) {
        try {
            o();
            g0(str);
            Entry entry = (Entry) this.f20749j.get(str);
            if (entry != null && entry.f20764d == null) {
                for (int i10 = 0; i10 < this.f20746g; i10++) {
                    File fileJ = entry.j(i10);
                    if (fileJ.exists() && !fileJ.delete()) {
                        throw new IOException("failed to delete " + fileJ);
                    }
                    this.f20747h -= entry.f20762b[i10];
                    entry.f20762b[i10] = 0;
                }
                this.f20750k++;
                this.f20748i.append((CharSequence) ("REMOVE " + str + '\n'));
                this.f20749j.remove(str);
                if (v()) {
                    this.f20752m.submit(this.f20753n);
                }
                return true;
            }
            return false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void flush() {
        o();
        f0();
        this.f20748i.flush();
    }

    public void q() throws IOException {
        close();
        DiskLruCacheUtil.c(this.f20740a);
    }

    public Editor s(String str) {
        return t(str, -1L);
    }

    public synchronized Snapshot u(String str) {
        InputStream inputStream;
        o();
        g0(str);
        Entry entry = (Entry) this.f20749j.get(str);
        if (entry == null) {
            return null;
        }
        if (!entry.f20763c) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.f20746g];
        for (int i10 = 0; i10 < this.f20746g; i10++) {
            try {
                inputStreamArr[i10] = new FileInputStream(entry.j(i10));
            } catch (FileNotFoundException unused) {
                for (int i11 = 0; i11 < this.f20746g && (inputStream = inputStreamArr[i11]) != null; i11++) {
                    DiskLruCacheUtil.b(inputStream);
                }
                return null;
            }
        }
        this.f20750k++;
        this.f20748i.append((CharSequence) ("READ " + str + '\n'));
        if (v()) {
            this.f20752m.submit(this.f20753n);
        }
        return new Snapshot(str, entry.f20765e, inputStreamArr, entry.f20762b);
    }
}
