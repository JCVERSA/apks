package com.bytedance.sdk.component.HiB.TKC.Sj.Sj;

import android.util.Log;
import com.bytedance.sdk.component.utils.TEQ;
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
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.regex.Pattern;

public final class Sj implements Closeable {
    static final Pattern Sj = Pattern.compile("[a-z0-9_-]{1,120}");
    public static final OutputStream TKC = new OutputStream() {
        @Override
        public void write(int i10) throws IOException {
        }
    };
    private final int Dq;
    private final File EjP;
    private final File HiB;
    private final File Jcg;
    private final int TEQ;

    private Writer f20242aa;
    final ExecutorService sP;
    private int sef;
    private long uA;
    private final File vS;
    private long Ym = 0;
    private final LinkedHashMap<String, sP> Fmk = new LinkedHashMap<>(0, 0.75f, true);
    private long Zq = -1;
    private long uvD = 0;
    private final Callable<Void> dNu = new Callable<Void>() {
        @Override
        public Void call() throws Exception {
            synchronized (Sj.this) {
                try {
                    if (Sj.this.f20242aa == null) {
                        return null;
                    }
                    Sj.this.Dq();
                    if (Sj.this.vS()) {
                        Sj.this.HiB();
                        Sj.this.sef = 0;
                    }
                    return null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    };

    public final class C0192Sj {
        private boolean EjP;
        private boolean HiB;
        private final boolean[] TKC;
        private final sP sP;

        private class C0193Sj extends FilterOutputStream {
            @Override
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    C0192Sj.this.EjP = true;
                }
            }

            @Override
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    C0192Sj.this.EjP = true;
                }
            }

            @Override
            public void write(int i10) {
                try {
                    ((FilterOutputStream) this).out.write(i10);
                } catch (IOException unused) {
                    C0192Sj.this.EjP = true;
                }
            }

            private C0193Sj(OutputStream outputStream) {
                super(outputStream);
            }

            @Override
            public void write(byte[] bArr, int i10, int i11) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i10, i11);
                } catch (IOException unused) {
                    C0192Sj.this.EjP = true;
                }
            }
        }

        private C0192Sj(sP sPVar) {
            this.sP = sPVar;
            this.TKC = sPVar.EjP ? null : new boolean[Sj.this.TEQ];
        }

        public void sP() throws IOException {
            Sj.this.Sj(this, false);
        }

        public OutputStream Sj(int i10) throws IOException {
            FileOutputStream fileOutputStream;
            C0193Sj c0193Sj;
            if (i10 < 0 || i10 >= Sj.this.TEQ) {
                throw new IllegalArgumentException("Expected index " + i10 + " to be greater than 0 and less than the maximum value count of " + Sj.this.TEQ);
            }
            synchronized (Sj.this) {
                try {
                    if (this.sP.HiB == this) {
                        if (!this.sP.EjP) {
                            this.TKC[i10] = true;
                        }
                        File fileSP = this.sP.sP(i10);
                        try {
                            fileOutputStream = new FileOutputStream(fileSP);
                        } catch (FileNotFoundException unused) {
                            Sj.this.EjP.mkdirs();
                            try {
                                fileOutputStream = new FileOutputStream(fileSP);
                            } catch (FileNotFoundException unused2) {
                                return Sj.TKC;
                            }
                        }
                        c0193Sj = new C0193Sj(fileOutputStream);
                    } else {
                        throw new IllegalStateException();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return c0193Sj;
        }

        public void Sj() throws IOException {
            if (this.EjP) {
                Sj.this.Sj(this, false);
                Sj.this.TKC(this.sP.sP);
            } else {
                Sj.this.Sj(this, true);
            }
            this.HiB = true;
        }
    }

    public final class TKC implements Closeable {
        private final InputStream[] EjP;
        private final long[] HiB;
        private final long TKC;
        private final String sP;

        public InputStream Sj(int i10) {
            return this.EjP[i10];
        }

        @Override
        public void close() {
            for (InputStream inputStream : this.EjP) {
                TEQ.Sj(inputStream);
            }
        }

        private TKC(String str, long j10, InputStream[] inputStreamArr, long[] jArr) {
            this.sP = str;
            this.TKC = j10;
            this.EjP = inputStreamArr;
            this.HiB = jArr;
        }
    }

    private final class sP {
        private boolean EjP;
        private C0192Sj HiB;
        private final long[] TKC;
        private final String sP;
        private long vS;

        private sP(String str) {
            this.sP = str;
            this.TKC = new long[Sj.this.TEQ];
        }

        private IOException sP(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File sP(int i10) {
            return new File(Sj.this.EjP, this.sP + "." + i10 + ".tmp");
        }

        public String Sj() throws IOException {
            StringBuilder sb2 = new StringBuilder();
            for (long j10 : this.TKC) {
                sb2.append(' ');
                sb2.append(j10);
            }
            return sb2.toString();
        }

        public void Sj(String[] strArr) throws IOException {
            if (strArr.length == Sj.this.TEQ) {
                for (int i10 = 0; i10 < strArr.length; i10++) {
                    try {
                        this.TKC[i10] = Long.parseLong(strArr[i10]);
                    } catch (NumberFormatException unused) {
                        throw sP(strArr);
                    }
                }
                return;
            }
            throw sP(strArr);
        }

        public File Sj(int i10) {
            return new File(Sj.this.EjP, this.sP + "." + i10);
        }
    }

    private Sj(File file, int i10, int i11, long j10, ExecutorService executorService) {
        this.EjP = file;
        this.Dq = i10;
        this.HiB = new File(file, "journal");
        this.vS = new File(file, "journal.tmp");
        this.Jcg = new File(file, "journal.bkp");
        this.TEQ = i11;
        this.uA = j10;
        this.sP = executorService;
    }

    public void Dq() throws IOException {
        long j10 = this.uA;
        long j11 = this.Zq;
        if (j11 >= 0) {
            j10 = j11;
        }
        while (this.Ym > j10) {
            TKC(this.Fmk.entrySet().iterator().next().getKey());
        }
        this.Zq = -1L;
    }

    private void Jcg() {
        if (this.f20242aa == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @Override
    public synchronized void close() throws IOException {
        try {
            if (this.f20242aa == null) {
                return;
            }
            for (sP sPVar : new ArrayList(this.Fmk.values())) {
                if (sPVar.HiB != null) {
                    sPVar.HiB.sP();
                }
            }
            Dq();
            this.f20242aa.close();
            this.f20242aa = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void EjP(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        int i10 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i10);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i10);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                this.Fmk.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i10, iIndexOf2);
        }
        sP sPVar = this.Fmk.get(strSubstring);
        if (sPVar == null) {
            sPVar = new sP(strSubstring);
            this.Fmk.put(strSubstring, sPVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            sPVar.EjP = true;
            sPVar.HiB = null;
            sPVar.Sj(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
            sPVar.HiB = new C0192Sj(sPVar);
        } else if (iIndexOf2 != -1 || iIndexOf != 4 || !str.startsWith("READ")) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
    }

    public synchronized void HiB() throws IOException {
        try {
            Writer writer = this.f20242aa;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.vS), EjP.Sj));
            try {
                bufferedWriter.write("libcore.io.DiskLruCache");
                bufferedWriter.write("\n");
                bufferedWriter.write("1");
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.Dq));
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.TEQ));
                bufferedWriter.write("\n");
                bufferedWriter.write("\n");
                for (sP sPVar : this.Fmk.values()) {
                    if (sPVar.HiB != null) {
                        bufferedWriter.write("DIRTY " + sPVar.sP + '\n');
                    } else {
                        bufferedWriter.write("CLEAN " + sPVar.sP + sPVar.Sj() + '\n');
                    }
                }
                bufferedWriter.close();
                if (this.HiB.exists()) {
                    Sj(this.HiB, this.Jcg, true);
                }
                Sj(this.vS, this.HiB, false);
                this.Jcg.delete();
                this.f20242aa = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.HiB, true), EjP.Sj));
            } catch (Throwable th2) {
                bufferedWriter.close();
                throw th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    private void TKC() throws IOException {
        com.bytedance.sdk.component.HiB.TKC.Sj.Sj.TKC tkc = new com.bytedance.sdk.component.HiB.TKC.Sj.Sj.TKC(new FileInputStream(this.HiB), EjP.Sj);
        try {
            String strSj = tkc.Sj();
            String strSj2 = tkc.Sj();
            String strSj3 = tkc.Sj();
            String strSj4 = tkc.Sj();
            String strSj5 = tkc.Sj();
            if (!"libcore.io.DiskLruCache".equals(strSj) || !"1".equals(strSj2) || !Integer.toString(this.Dq).equals(strSj3) || !Integer.toString(this.TEQ).equals(strSj4) || !"".equals(strSj5)) {
                throw new IOException("unexpected journal header: [" + strSj + ", " + strSj2 + ", " + strSj4 + ", " + strSj5 + "]");
            }
            int i10 = 0;
            while (true) {
                try {
                    EjP(tkc.Sj());
                    i10++;
                } catch (EOFException unused) {
                    this.sef = i10 - this.Fmk.size();
                    if (tkc.sP()) {
                        HiB();
                    } else {
                        this.f20242aa = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.HiB, true), EjP.Sj));
                    }
                    TEQ.Sj(tkc);
                    return;
                }
            }
        } catch (Throwable th2) {
            TEQ.Sj(tkc);
            throw th2;
        }
    }

    public boolean vS() {
        int i10 = this.sef;
        return i10 >= 2000 && i10 >= this.Fmk.size();
    }

    public C0192Sj sP(String str) throws IOException {
        return Sj(str, -1L);
    }

    public void sP() throws IOException {
        close();
        EjP.Sj(this.EjP);
    }

    public static Sj Sj(File file, int i10, int i11, long j10, ExecutorService executorService) throws IOException {
        if (j10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i11 > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    Sj(file2, file3, false);
                }
            }
            Sj sj2 = new Sj(file, i10, i11, j10, executorService);
            if (sj2.HiB.exists()) {
                try {
                    sj2.TKC();
                    sj2.EjP();
                    return sj2;
                } catch (IOException e10) {
                    Log.w("DiskLruCache ", file + " is corrupt: " + e10.getMessage() + ", removing");
                    sj2.sP();
                }
            }
            file.mkdirs();
            Sj sj3 = new Sj(file, i10, i11, j10, executorService);
            sj3.HiB();
            return sj3;
        }
        throw new IllegalArgumentException("valueCount <= 0");
    }

    public synchronized boolean TKC(String str) throws IOException {
        try {
            Jcg();
            HiB(str);
            sP sPVar = this.Fmk.get(str);
            if (sPVar != null && sPVar.HiB == null) {
                for (int i10 = 0; i10 < this.TEQ; i10++) {
                    File fileSj = sPVar.Sj(i10);
                    if (fileSj.exists() && !fileSj.delete()) {
                        throw new IOException("failed to delete ".concat(String.valueOf(fileSj)));
                    }
                    this.Ym -= sPVar.TKC[i10];
                    sPVar.TKC[i10] = 0;
                }
                this.sef++;
                this.f20242aa.append((CharSequence) ("REMOVE " + str + '\n'));
                this.Fmk.remove(str);
                if (vS()) {
                    this.sP.submit(this.dNu);
                }
                return true;
            }
            return false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void EjP() throws IOException {
        Sj(this.vS);
        Iterator<sP> it = this.Fmk.values().iterator();
        while (it.hasNext()) {
            sP next = it.next();
            int i10 = 0;
            if (next.HiB != null) {
                next.HiB = null;
                while (i10 < this.TEQ) {
                    Sj(next.Sj(i10));
                    Sj(next.sP(i10));
                    i10++;
                }
                it.remove();
            } else {
                while (i10 < this.TEQ) {
                    this.Ym += next.TKC[i10];
                    i10++;
                }
            }
        }
    }

    private static void Sj(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void Sj(File file, File file2, boolean z10) throws IOException {
        if (z10) {
            Sj(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    private void HiB(String str) {
        if (Sj.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    public synchronized TKC Sj(String str) throws IOException {
        InputStream inputStream;
        Jcg();
        HiB(str);
        sP sPVar = this.Fmk.get(str);
        if (sPVar == null) {
            return null;
        }
        if (!sPVar.EjP) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.TEQ];
        for (int i10 = 0; i10 < this.TEQ; i10++) {
            try {
                inputStreamArr[i10] = new FileInputStream(sPVar.Sj(i10));
            } catch (FileNotFoundException unused) {
                for (int i11 = 0; i11 < this.TEQ && (inputStream = inputStreamArr[i11]) != null; i11++) {
                    TEQ.Sj(inputStream);
                }
                return null;
            }
        }
        this.sef++;
        this.f20242aa.append((CharSequence) ("READ " + str + '\n'));
        if (vS()) {
            this.sP.submit(this.dNu);
        }
        return new TKC(str, sPVar.vS, inputStreamArr, sPVar.TKC);
    }

    private synchronized C0192Sj Sj(String str, long j10) throws IOException {
        Jcg();
        HiB(str);
        sP sPVar = this.Fmk.get(str);
        if (j10 != -1 && (sPVar == null || sPVar.vS != j10)) {
            return null;
        }
        if (sPVar != null) {
            if (sPVar.HiB != null) {
                return null;
            }
        } else {
            sPVar = new sP(str);
            this.Fmk.put(str, sPVar);
        }
        C0192Sj c0192Sj = new C0192Sj(sPVar);
        sPVar.HiB = c0192Sj;
        this.f20242aa.write("DIRTY " + str + '\n');
        this.f20242aa.flush();
        return c0192Sj;
    }

    public synchronized void Sj(C0192Sj c0192Sj, boolean z10) throws IOException {
        sP sPVar = c0192Sj.sP;
        if (sPVar.HiB == c0192Sj) {
            if (z10 && !sPVar.EjP) {
                for (int i10 = 0; i10 < this.TEQ; i10++) {
                    if (c0192Sj.TKC[i10]) {
                        if (!sPVar.sP(i10).exists()) {
                            c0192Sj.sP();
                            return;
                        }
                    } else {
                        c0192Sj.sP();
                        throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i10)));
                    }
                }
            }
            for (int i11 = 0; i11 < this.TEQ; i11++) {
                File fileSP = sPVar.sP(i11);
                if (z10) {
                    if (fileSP.exists()) {
                        File fileSj = sPVar.Sj(i11);
                        fileSP.renameTo(fileSj);
                        long j10 = sPVar.TKC[i11];
                        long length = fileSj.length();
                        sPVar.TKC[i11] = length;
                        this.Ym = (this.Ym - j10) + length;
                    }
                } else {
                    Sj(fileSP);
                }
            }
            this.sef++;
            sPVar.HiB = null;
            if (!(sPVar.EjP | z10)) {
                this.Fmk.remove(sPVar.sP);
                this.f20242aa.write("REMOVE " + sPVar.sP + '\n');
            } else {
                sPVar.EjP = true;
                this.f20242aa.write("CLEAN " + sPVar.sP + sPVar.Sj() + '\n');
                if (z10) {
                    long j11 = this.uvD;
                    this.uvD = 1 + j11;
                    sPVar.vS = j11;
                }
            }
            this.f20242aa.flush();
            if (this.Ym > this.uA || vS()) {
                this.sP.submit(this.dNu);
            }
            return;
        }
        throw new IllegalStateException();
    }

    public synchronized void Sj() throws IOException {
        Jcg();
        Dq();
        this.f20242aa.flush();
    }
}
