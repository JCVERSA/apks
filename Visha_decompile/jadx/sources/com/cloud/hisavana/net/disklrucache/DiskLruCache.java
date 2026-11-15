package com.cloud.hisavana.net.disklrucache;

import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;
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
    public static final Pattern p = Pattern.compile("[a-z0-9_-]{1,120}");
    public static final OutputStream q = new OutputStream() {
        @Override
        public void write(int i) {
        }
    };
    public final File b;
    public final File c;
    public final File d;
    public final File e;
    public final int f;
    public long g;
    public final int h;
    public Writer j;
    public final LinkedHashMap k;
    public int l;
    public long i = 0;
    public long m = 0;
    public final ThreadPoolExecutor n = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    public final Callable o = new Callable<Void>() {
        @Override
        public Void call() {
            synchronized (DiskLruCache.this) {
                try {
                    if (DiskLruCache.this.j == null) {
                        return null;
                    }
                    DiskLruCache.this.U();
                    if (DiskLruCache.this.K()) {
                        DiskLruCache.this.R();
                        DiskLruCache.this.l = 0;
                    }
                    return null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };

    public final class Editor {
        public final Entry a;
        public final boolean[] b;
        public boolean c;
        public boolean d;

        public class FaultHidingOutputStream extends FilterOutputStream {
            @Override
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    Editor.this.c = true;
                }
            }

            @Override
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    Editor.this.c = true;
                }
            }

            @Override
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException unused) {
                    Editor.this.c = true;
                }
            }

            public FaultHidingOutputStream(OutputStream outputStream) {
                super(outputStream);
            }

            @Override
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException unused) {
                    Editor.this.c = true;
                }
            }
        }

        public void a() {
            DiskLruCache.this.E(this, false);
        }

        public void b() {
            if (this.d) {
                return;
            }
            try {
                a();
            } catch (IOException unused) {
            }
        }

        public void f() {
            if (this.c) {
                DiskLruCache.this.E(this, false);
                DiskLruCache.this.S(this.a.a);
            } else {
                DiskLruCache.this.E(this, true);
            }
            this.d = true;
        }

        public OutputStream g(int i) {
            FileOutputStream fileOutputStream;
            FaultHidingOutputStream faultHidingOutputStream;
            if (i < 0 || i >= DiskLruCache.this.h) {
                throw new IllegalArgumentException("Expected index " + i + " to be greater than 0 and less than the maximum value count of " + DiskLruCache.this.h);
            }
            synchronized (DiskLruCache.this) {
                try {
                    if (this.a.d != this) {
                        throw new IllegalStateException();
                    }
                    if (!this.a.c) {
                        this.b[i] = true;
                    }
                    File fileK = this.a.k(i);
                    try {
                        fileOutputStream = new FileOutputStream(fileK);
                    } catch (FileNotFoundException unused) {
                        DiskLruCache.this.b.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(fileK);
                        } catch (FileNotFoundException unused2) {
                            return DiskLruCache.q;
                        }
                    }
                    faultHidingOutputStream = new FaultHidingOutputStream(fileOutputStream);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return faultHidingOutputStream;
        }

        public Editor(Entry entry) {
            this.a = entry;
            this.b = entry.c ? null : new boolean[DiskLruCache.this.h];
        }
    }

    public final class Entry {
        public final String a;
        public final long[] b;
        public boolean c;
        public Editor d;
        public long e;

        public File j(int i) {
            return new File(DiskLruCache.this.b, this.a + Consts.DOT + i);
        }

        public File k(int i) {
            return new File(DiskLruCache.this.b, this.a + Consts.DOT + i + ".tmp");
        }

        public String l() {
            StringBuilder sb = new StringBuilder();
            for (long j : this.b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        public final IOException m(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public final void n(String[] strArr) throws IOException {
            if (strArr.length != DiskLruCache.this.h) {
                throw m(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.b[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw m(strArr);
                }
            }
        }

        public Entry(String str) {
            this.a = str;
            this.b = new long[DiskLruCache.this.h];
        }
    }

    public final class Snapshot implements Closeable {
        public final String b;
        public final long c;
        public final InputStream[] d;
        public final long[] e;

        @Override
        public void close() {
            for (InputStream inputStream : this.d) {
                DiskLruCacheUtil.b(inputStream);
            }
        }

        public Snapshot(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.b = str;
            this.c = j;
            this.d = inputStreamArr;
            this.e = jArr;
        }
    }

    public DiskLruCache(File file, int i, int i2, long j, boolean z) {
        this.b = file;
        this.f = i;
        this.c = new File(file, "journal");
        this.d = new File(file, "journal.tmp");
        this.e = new File(file, "journal.bkp");
        this.h = i2;
        this.g = j;
        this.k = new LinkedHashMap(0, 0.75f, z);
    }

    public static void G(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static DiskLruCache M(File file, int i, int i2, long j) {
        return N(file, i, i2, j, true);
    }

    public static DiskLruCache N(File file, int i, int i2, long j, boolean z) throws IOException {
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
                T(file2, file3, false);
            }
        }
        DiskLruCache diskLruCache = new DiskLruCache(file, i, i2, j, z);
        if (diskLruCache.c.exists()) {
            try {
                diskLruCache.P();
                diskLruCache.O();
                return diskLruCache;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                diskLruCache.F();
            }
        }
        file.mkdirs();
        DiskLruCache diskLruCache2 = new DiskLruCache(file, i, i2, j, z);
        diskLruCache2.R();
        return diskLruCache2;
    }

    public static void T(File file, File file2, boolean z) throws IOException {
        if (z) {
            G(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public final void D() {
        if (this.j == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public final synchronized void E(Editor editor, boolean z) {
        Entry entry = editor.a;
        if (entry.d != editor) {
            throw new IllegalStateException();
        }
        if (z && !entry.c) {
            for (int i = 0; i < this.h; i++) {
                if (!editor.b[i]) {
                    editor.a();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!entry.k(i).exists()) {
                    editor.a();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.h; i2++) {
            File fileK = entry.k(i2);
            if (!z) {
                G(fileK);
            } else if (fileK.exists()) {
                File fileJ = entry.j(i2);
                fileK.renameTo(fileJ);
                long j = entry.b[i2];
                long length = fileJ.length();
                entry.b[i2] = length;
                this.i = (this.i - j) + length;
            }
        }
        this.l++;
        entry.d = null;
        if (entry.c || z) {
            entry.c = true;
            this.j.write("CLEAN " + entry.a + entry.l() + '\n');
            if (z) {
                long j2 = this.m;
                this.m = 1 + j2;
                entry.e = j2;
            }
        } else {
            this.k.remove(entry.a);
            this.j.write("REMOVE " + entry.a + '\n');
        }
        this.j.flush();
        if (this.i > this.g || K()) {
            this.n.submit(this.o);
        }
    }

    public void F() throws IOException {
        close();
        DiskLruCacheUtil.c(this.b);
    }

    public Editor H(String str) {
        return I(str, -1L);
    }

    public final synchronized Editor I(String str, long j) {
        D();
        V(str);
        Entry entry = (Entry) this.k.get(str);
        if (j != -1 && (entry == null || entry.e != j)) {
            return null;
        }
        if (entry == null) {
            entry = new Entry(str);
            this.k.put(str, entry);
        } else if (entry.d != null) {
            return null;
        }
        Editor editor = new Editor(entry);
        entry.d = editor;
        this.j.write("DIRTY " + str + '\n');
        this.j.flush();
        return editor;
    }

    public synchronized Snapshot J(String str) {
        InputStream inputStream;
        D();
        V(str);
        Entry entry = (Entry) this.k.get(str);
        if (entry == null) {
            return null;
        }
        if (!entry.c) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.h];
        for (int i = 0; i < this.h; i++) {
            try {
                inputStreamArr[i] = new FileInputStream(entry.j(i));
            } catch (FileNotFoundException unused) {
                for (int i2 = 0; i2 < this.h && (inputStream = inputStreamArr[i2]) != null; i2++) {
                    DiskLruCacheUtil.b(inputStream);
                }
                return null;
            }
        }
        this.l++;
        this.j.append((CharSequence) ("READ " + str + '\n'));
        if (K()) {
            this.n.submit(this.o);
        }
        return new Snapshot(str, entry.e, inputStreamArr, entry.b);
    }

    public final boolean K() {
        int i = this.l;
        return i >= 2000 && i >= this.k.size();
    }

    public final void L(String str) {
        HttpRequest httpRequest = HttpRequest.a;
        if (httpRequest.g().isEmpty() || TextUtils.isEmpty(str)) {
            return;
        }
        for (LruCleanCallBack lruCleanCallBack : httpRequest.g()) {
            if (lruCleanCallBack != null) {
                lruCleanCallBack.onCallBack(str);
            }
        }
    }

    public final void O() throws IOException {
        G(this.d);
        Iterator it = this.k.values().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            int i = 0;
            if (entry.d == null) {
                while (i < this.h) {
                    this.i += entry.b[i];
                    i++;
                }
            } else {
                entry.d = null;
                while (i < this.h) {
                    G(entry.j(i));
                    G(entry.k(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    public final void P() {
        StrictLineReader strictLineReader = new StrictLineReader(new FileInputStream(this.c), DiskLruCacheUtil.a);
        try {
            String line = strictLineReader.readLine();
            String line2 = strictLineReader.readLine();
            String line3 = strictLineReader.readLine();
            String line4 = strictLineReader.readLine();
            String line5 = strictLineReader.readLine();
            if (!"libcore.io.DiskLruCache".equals(line) || !"1".equals(line2) || !Integer.toString(this.f).equals(line3) || !Integer.toString(this.h).equals(line4) || !"".equals(line5)) {
                throw new IOException("unexpected journal header: [" + line + ", " + line2 + ", " + line4 + ", " + line5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    Q(strictLineReader.readLine());
                    i++;
                } catch (EOFException unused) {
                    this.l = i - this.k.size();
                    if (strictLineReader.b()) {
                        R();
                    } else {
                        this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c, true), DiskLruCacheUtil.a));
                    }
                    DiskLruCacheUtil.b(strictLineReader);
                    return;
                }
            }
        } catch (Throwable th) {
            DiskLruCacheUtil.b(strictLineReader);
            throw th;
        }
    }

    public final void Q(String str) throws IOException {
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
        Entry entry = (Entry) this.k.get(strSubstring);
        if (entry == null) {
            entry = new Entry(strSubstring);
            this.k.put(strSubstring, entry);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            entry.c = true;
            entry.d = null;
            entry.n(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
            entry.d = new Editor(entry);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    public final synchronized void R() {
        try {
            Writer writer = this.j;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d), DiskLruCacheUtil.a));
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
                for (Entry entry : this.k.values()) {
                    if (entry.d != null) {
                        bufferedWriter.write("DIRTY " + entry.a + '\n');
                    } else {
                        bufferedWriter.write("CLEAN " + entry.a + entry.l() + '\n');
                    }
                }
                bufferedWriter.close();
                if (this.c.exists()) {
                    T(this.c, this.e, true);
                }
                T(this.d, this.c, false);
                this.e.delete();
                this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c, true), DiskLruCacheUtil.a));
            } catch (Throwable th) {
                bufferedWriter.close();
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized boolean S(String str) {
        try {
            D();
            V(str);
            Entry entry = (Entry) this.k.get(str);
            if (entry != null && entry.d == null) {
                for (int i = 0; i < this.h; i++) {
                    File fileJ = entry.j(i);
                    if (fileJ.exists() && !fileJ.delete()) {
                        throw new IOException("failed to delete " + fileJ);
                    }
                    this.i -= entry.b[i];
                    entry.b[i] = 0;
                }
                this.l++;
                this.j.append((CharSequence) ("REMOVE " + str + '\n'));
                this.k.remove(str);
                if (K()) {
                    this.n.submit(this.o);
                }
                return true;
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void U() {
        while (this.i > this.g) {
            Map.Entry entry = (Map.Entry) this.k.entrySet().iterator().next();
            if (S((String) entry.getKey())) {
                L((String) entry.getKey());
            }
        }
    }

    public final void V(String str) {
        if (p.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    @Override
    public synchronized void close() {
        try {
            if (this.j == null) {
                return;
            }
            for (Entry entry : new ArrayList(this.k.values())) {
                if (entry.d != null) {
                    entry.d.a();
                }
            }
            U();
            this.j.close();
            this.j = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void flush() {
        D();
        U();
        this.j.flush();
    }
}
