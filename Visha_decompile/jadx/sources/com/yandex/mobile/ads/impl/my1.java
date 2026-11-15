package com.yandex.mobile.ads.impl;

import android.os.ConditionVariable;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import com.alibaba.android.arouter.utils.Consts;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.TreeSet;

public final class my1 implements sm {
    private static final HashSet<File> j = new HashSet<>();
    private final File a;
    private final zm b;
    private final kn c;

    @Nullable
    private final bn d;
    private final HashMap<String, ArrayList<sm.b>> e;
    private final Random f;
    private final boolean g;
    private long h;
    private sm.a i;

    public my1(File file, or0 or0Var, kn knVar, @Nullable bn bnVar) {
        if (!c(file)) {
            throw new IllegalStateException("Another SimpleCache instance uses the folder: " + file);
        }
        this.a = file;
        this.b = or0Var;
        this.c = knVar;
        this.d = bnVar;
        this.e = new HashMap<>();
        this.f = new Random();
        this.g = true;
        this.h = -1L;
        ConditionVariable conditionVariable = new ConditionVariable();
        new ly1(this, conditionVariable).start();
        conditionVariable.block();
    }

    public final synchronized TreeSet c(String str) {
        jn jnVarA;
        try {
            jnVarA = this.c.a(str);
        } catch (Throwable th) {
            throw th;
        }
        return (jnVarA == null || jnVarA.c()) ? new TreeSet() : new TreeSet((Collection) jnVarA.b());
    }

    @Override
    public final synchronized long d(String str, long j2, long j3) {
        jn jnVarA;
        if (j3 == -1) {
            j3 = Long.MAX_VALUE;
        }
        jnVarA = this.c.a(str);
        return jnVarA != null ? jnVarA.a(j2, j3) : -j3;
    }

    @Override
    public final synchronized fn e(String str, long j2, long j3) throws sm.a, InterruptedException {
        fn fnVarC;
        a();
        while (true) {
            fnVarC = c(str, j2, j3);
            if (fnVarC == null) {
                wait();
            }
        }
        return fnVarC;
    }

    private void a(oy1 oy1Var) {
        this.c.c(oy1Var.b).a(oy1Var);
        ArrayList<sm.b> arrayList = this.e.get(oy1Var.b);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).a(this, oy1Var);
            }
        }
        this.b.a(this, oy1Var);
    }

    @Override
    public final synchronized long b(String str, long j2, long j3) {
        long j4;
        long j5 = j3 == -1 ? Long.MAX_VALUE : j2 + j3;
        long j6 = j5 < 0 ? Long.MAX_VALUE : j5;
        long j7 = j2;
        j4 = 0;
        while (j7 < j6) {
            long jD = d(str, j7, j6 - j7);
            if (jD > 0) {
                j4 += jD;
            } else {
                jD = -jD;
            }
            j7 += jD;
        }
        return j4;
    }

    @Override
    public final synchronized nz b(String str) {
        return this.c.b(str);
    }

    public void b() {
        long j2;
        if (!this.a.exists()) {
            try {
                a(this.a);
            } catch (sm.a e) {
                this.i = e;
                return;
            }
        }
        File[] fileArrListFiles = this.a.listFiles();
        if (fileArrListFiles == null) {
            String str = "Failed to list cache directory files: " + this.a;
            et0.b("SimpleCache", str);
            this.i = new sm.a(str);
            return;
        }
        int length = fileArrListFiles.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                j2 = -1;
                break;
            }
            File file = fileArrListFiles[i];
            String name = file.getName();
            if (name.endsWith(".uid")) {
                try {
                    j2 = Long.parseLong(name.substring(0, name.indexOf(46)), 16);
                    break;
                } catch (NumberFormatException unused) {
                    et0.b("SimpleCache", "Malformed UID file: " + file);
                    file.delete();
                }
            }
            i++;
        }
        this.h = j2;
        if (j2 == -1) {
            try {
                this.h = b(this.a);
            } catch (IOException e2) {
                String str2 = "Failed to create cache UID: " + this.a;
                et0.a("SimpleCache", str2, e2);
                this.i = new sm.a(str2, e2);
                return;
            }
        }
        try {
            this.c.a(this.h);
            bn bnVar = this.d;
            if (bnVar != null) {
                bnVar.a(this.h);
                HashMap mapA = this.d.a();
                a(this.a, true, fileArrListFiles, mapA);
                this.d.a(mapA.keySet());
            } else {
                a(this.a, true, fileArrListFiles, null);
            }
            this.c.b();
            try {
                this.c.c();
            } catch (Throwable th) {
                et0.a("SimpleCache", "Storing index file failed", th);
            }
        } catch (Throwable th2) {
            String str3 = "Failed to initialize cache indices: " + this.a;
            et0.a("SimpleCache", str3, th2);
            this.i = new sm.a(str3, th2);
        }
    }

    private void c(fn fnVar) {
        jn jnVarA = this.c.a(fnVar.b);
        if (jnVarA == null || !jnVarA.a(fnVar)) {
            return;
        }
        if (this.d != null) {
            String name = fnVar.f.getName();
            try {
                this.d.a(name);
            } catch (IOException unused) {
                rv0.a("Failed to remove file index entry for: ", name, "SimpleCache");
            }
        }
        this.c.d(jnVarA.b);
        ArrayList<sm.b> arrayList = this.e.get(fnVar.b);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).a(fnVar);
            }
        }
        this.b.a(fnVar);
    }

    @Override
    public final synchronized void a(String str, es esVar) throws sm.a {
        a();
        this.c.a(str, esVar);
        try {
            this.c.c();
        } catch (Throwable th) {
            throw new sm.a(th);
        }
    }

    public final synchronized void a() throws sm.a {
        sm.a aVar = this.i;
        if (aVar != null) {
            throw aVar;
        }
    }

    @Override
    public final synchronized void a(File file, long j2) throws sm.a {
        if (file.exists()) {
            if (j2 == 0) {
                file.delete();
                return;
            }
            oy1 oy1VarA = oy1.a(file, j2, C.TIME_UNSET, this.c);
            oy1VarA.getClass();
            jn jnVarA = this.c.a(oy1VarA.b);
            jnVarA.getClass();
            if (jnVarA.c(oy1VarA.c, oy1VarA.d)) {
                long jB = jnVarA.a().b();
                if (jB != -1 && oy1VarA.c + oy1VarA.d > jB) {
                    throw new IllegalStateException();
                }
                if (this.d != null) {
                    try {
                        this.d.a(file.getName(), oy1VarA.d, oy1VarA.g);
                        a(oy1VarA);
                        try {
                            this.c.c();
                            notifyAll();
                            return;
                        } catch (Throwable th) {
                            throw new sm.a(th);
                        }
                    } catch (IOException e) {
                        throw new sm.a(e);
                    }
                }
                a(oy1VarA);
                this.c.c();
                notifyAll();
                return;
                throw th;
            }
            throw new IllegalStateException();
        }
    }

    public my1(File file, or0 or0Var, @Nullable k60 k60Var) {
        this(file, or0Var, new kn(k60Var, file), new bn(k60Var));
    }

    private void c() {
        ArrayList arrayList = new ArrayList();
        Iterator<jn> it = this.c.a().iterator();
        while (it.hasNext()) {
            for (oy1 oy1Var : it.next().b()) {
                if (oy1Var.f.length() != oy1Var.d) {
                    arrayList.add(oy1Var);
                }
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            c((fn) arrayList.get(i));
        }
    }

    @Override
    @Nullable
    public final synchronized fn c(String str, long j2, long j3) throws sm.a {
        oy1 oy1VarB;
        oy1 oy1VarA;
        boolean z;
        try {
            a();
            jn jnVarA = this.c.a(str);
            if (jnVarA == null) {
                oy1VarA = oy1.a(str, j2, j3);
            } else {
                while (true) {
                    oy1VarB = jnVarA.b(j2, j3);
                    if (!oy1VarB.e || oy1VarB.f.length() == oy1VarB.d) {
                        break;
                    }
                    c();
                }
                oy1VarA = oy1VarB;
            }
            if (oy1VarA.e) {
                if (this.g) {
                    File file = oy1VarA.f;
                    file.getClass();
                    String name = file.getName();
                    long j4 = oy1VarA.d;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    bn bnVar = this.d;
                    if (bnVar != null) {
                        try {
                            bnVar.a(name, j4, jCurrentTimeMillis);
                        } catch (IOException unused) {
                            et0.d("SimpleCache", "Failed to update index with new touch timestamp.");
                        }
                        z = false;
                    } else {
                        z = true;
                    }
                    oy1 oy1VarA2 = this.c.a(str).a(oy1VarA, jCurrentTimeMillis, z);
                    ArrayList<sm.b> arrayList = this.e.get(oy1VarA.b);
                    if (arrayList != null) {
                        for (int size = arrayList.size() - 1; size >= 0; size--) {
                            arrayList.get(size).a(this, oy1VarA, oy1VarA2);
                        }
                    }
                    this.b.a(this, oy1VarA, oy1VarA2);
                    oy1VarA = oy1VarA2;
                }
                return oy1VarA;
            }
            if (this.c.c(str).d(j2, oy1VarA.d)) {
                return oy1VarA;
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    private static void a(File file) throws sm.a {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        String str = "Failed to create cache directory: " + file;
        et0.b("SimpleCache", str);
        throw new sm.a(str);
    }

    @Override
    public final synchronized void b(fn fnVar) {
        jn jnVarA = this.c.a(fnVar.b);
        jnVarA.getClass();
        jnVarA.a(fnVar.c);
        this.c.d(jnVarA.b);
        notifyAll();
    }

    private void a(File file, boolean z, @Nullable File[] fileArr, @Nullable HashMap map) {
        long j2;
        long j3;
        if (fileArr == null || fileArr.length == 0) {
            if (z) {
                return;
            }
            file.delete();
            return;
        }
        for (File file2 : fileArr) {
            String name = file2.getName();
            if (z && name.indexOf(46) == -1) {
                a(file2, false, file2.listFiles(), map);
            } else if (!z || (!name.startsWith("monetization_cached_content_index.exi") && !name.endsWith(".uid"))) {
                an anVar = map != null ? (an) map.remove(name) : null;
                if (anVar != null) {
                    j3 = anVar.a;
                    j2 = anVar.b;
                } else {
                    j2 = -9223372036854775807L;
                    j3 = -1;
                }
                oy1 oy1VarA = oy1.a(file2, j3, j2, this.c);
                if (oy1VarA != null) {
                    a(oy1VarA);
                } else {
                    file2.delete();
                }
            }
        }
    }

    private static long b(File file) throws IOException {
        long jNextLong = new SecureRandom().nextLong();
        long jAbs = jNextLong == Long.MIN_VALUE ? 0L : Math.abs(jNextLong);
        File file2 = new File(file, Long.toString(jAbs, 16) + ".uid");
        if (file2.createNewFile()) {
            return jAbs;
        }
        throw new IOException("Failed to create UID file: " + file2);
    }

    private static synchronized boolean c(File file) {
        return j.add(file.getAbsoluteFile());
    }

    @Override
    public final synchronized void a(String str) {
        Iterator it = c(str).iterator();
        while (it.hasNext()) {
            c((fn) it.next());
        }
    }

    @Override
    public final synchronized void a(fn fnVar) {
        c(fnVar);
    }

    @Override
    public final synchronized File a(String str, long j2, long j3) throws sm.a {
        File file;
        long jCurrentTimeMillis;
        int i;
        try {
            a();
            jn jnVarA = this.c.a(str);
            jnVarA.getClass();
            if (jnVarA.c(j2, j3)) {
                if (!this.a.exists()) {
                    a(this.a);
                    c();
                }
                this.b.a(this, j3);
                file = new File(this.a, Integer.toString(this.f.nextInt(10)));
                if (!file.exists()) {
                    a(file);
                }
                jCurrentTimeMillis = System.currentTimeMillis();
                i = jnVarA.a;
                int i2 = oy1.k;
            } else {
                throw new IllegalStateException();
            }
        } catch (Throwable th) {
            throw th;
        }
        return new File(file, i + Consts.DOT + j2 + Consts.DOT + jCurrentTimeMillis + ".v3.exo");
    }
}
