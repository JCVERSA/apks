package com.google.android.exoplayer2.upstream.cache;

import android.os.ConditionVariable;
import defpackage.bt1;
import defpackage.eq0;
import defpackage.fq0;
import defpackage.np0;
import defpackage.op0;
import defpackage.op5;
import defpackage.wl9;
import defpackage.yg1;
import defpackage.yp0;
import defpackage.zg1;
import defpackage.zi;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

public final class SimpleCache implements Cache {
    public static final HashSet l = new HashSet();
    public final File a;
    public final b b;
    public final fq0 c;
    public final op0 d;
    public final HashMap e;
    public final Random f;
    public final boolean g;
    public long h;
    public long i;
    public boolean j;
    public Cache.CacheException k;

    public SimpleCache(File file, b bVar, bt1 bt1Var) {
        this(file, bVar, bt1Var, null, false, false);
    }

    public static void h(File file) throws Cache.CacheException {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        String str = "Failed to create cache directory: " + file;
        op5.c("SimpleCache", str);
        throw new Cache.CacheException(str);
    }

    public static long i(File file) throws IOException {
        long jNextLong = new SecureRandom().nextLong();
        long jAbs = jNextLong == Long.MIN_VALUE ? 0L : Math.abs(jNextLong);
        File file2 = new File(file, Long.toString(jAbs, 16) + ".uid");
        if (file2.createNewFile()) {
            return jAbs;
        }
        throw new IOException("Failed to create UID file: " + file2);
    }

    public static long m(File[] fileArr) {
        int length = fileArr.length;
        for (int i = 0; i < length; i++) {
            File file = fileArr[i];
            String name = file.getName();
            if (name.endsWith(".uid")) {
                try {
                    return r(name);
                } catch (NumberFormatException unused) {
                    op5.c("SimpleCache", "Malformed UID file: " + file);
                    file.delete();
                }
            }
        }
        return -1L;
    }

    public static synchronized boolean n(File file) {
        return l.add(file.getAbsoluteFile());
    }

    public static long r(String str) {
        return Long.parseLong(str.substring(0, str.indexOf(46)), 16);
    }

    @Override
    public synchronized void a(yp0 yp0Var) {
        zi.g(!this.j);
        s(yp0Var);
    }

    @Override
    public synchronized void b(yp0 yp0Var) {
        zi.g(!this.j);
        eq0 eq0Var = (eq0) zi.e(this.c.g(yp0Var.b));
        eq0Var.l(yp0Var.c);
        this.c.p(eq0Var.b);
        notifyAll();
    }

    @Override
    public synchronized void c(String str, zg1 zg1Var) {
        zi.g(!this.j);
        g();
        this.c.e(str, zg1Var);
        try {
            this.c.s();
        } catch (IOException e) {
            throw new Cache.CacheException(e);
        }
    }

    @Override
    public synchronized void commitFile(File file, long j) {
        zi.g(!this.j);
        if (file.exists()) {
            if (j == 0) {
                file.delete();
                return;
            }
            wl9 wl9Var = (wl9) zi.e(wl9.g(file, j, this.c));
            eq0 eq0Var = (eq0) zi.e(this.c.g(wl9Var.b));
            zi.g(eq0Var.g(wl9Var.c, wl9Var.d));
            long jB = yg1.b(eq0Var.c());
            if (jB != -1) {
                zi.g(wl9Var.c + wl9Var.d <= jB);
            }
            if (this.d == null) {
                f(wl9Var);
                this.c.s();
                notifyAll();
                return;
            }
            try {
                this.d.h(file.getName(), wl9Var.d, wl9Var.g);
                f(wl9Var);
                try {
                    this.c.s();
                    notifyAll();
                    return;
                } catch (IOException e) {
                    throw new Cache.CacheException(e);
                }
            } catch (IOException e2) {
                throw new Cache.CacheException(e2);
            }
            throw th;
        }
    }

    public final void f(wl9 wl9Var) {
        this.c.m(wl9Var.b).a(wl9Var);
        this.i += wl9Var.d;
        o(wl9Var);
    }

    public synchronized void g() {
        Cache.CacheException cacheException = this.k;
        if (cacheException != null) {
            throw cacheException;
        }
    }

    @Override
    public synchronized yg1 getContentMetadata(String str) {
        zi.g(!this.j);
        return this.c.j(str);
    }

    public final wl9 j(String str, long j, long j2) {
        wl9 wl9VarD;
        eq0 eq0VarG = this.c.g(str);
        if (eq0VarG == null) {
            return wl9.h(str, j, j2);
        }
        while (true) {
            wl9VarD = eq0VarG.d(j, j2);
            if (!wl9VarD.e || wl9VarD.f.length() == wl9VarD.d) {
                break;
            }
            t();
        }
        return wl9VarD;
    }

    public final void k() {
        if (!this.a.exists()) {
            try {
                h(this.a);
            } catch (Cache.CacheException e) {
                this.k = e;
                return;
            }
        }
        File[] fileArrListFiles = this.a.listFiles();
        if (fileArrListFiles == null) {
            String str = "Failed to list cache directory files: " + this.a;
            op5.c("SimpleCache", str);
            this.k = new Cache.CacheException(str);
            return;
        }
        long jM = m(fileArrListFiles);
        this.h = jM;
        if (jM == -1) {
            try {
                this.h = i(this.a);
            } catch (IOException e2) {
                String str2 = "Failed to create cache UID: " + this.a;
                op5.d("SimpleCache", str2, e2);
                this.k = new Cache.CacheException(str2, e2);
                return;
            }
        }
        try {
            this.c.n(this.h);
            op0 op0Var = this.d;
            if (op0Var != null) {
                op0Var.e(this.h);
                Map mapB = this.d.b();
                l(this.a, true, fileArrListFiles, mapB);
                this.d.g(mapB.keySet());
            } else {
                l(this.a, true, fileArrListFiles, null);
            }
            this.c.r();
            try {
                this.c.s();
            } catch (IOException e3) {
                op5.d("SimpleCache", "Storing index file failed", e3);
            }
        } catch (IOException e4) {
            String str3 = "Failed to initialize cache indices: " + this.a;
            op5.d("SimpleCache", str3, e4);
            this.k = new Cache.CacheException(str3, e4);
        }
    }

    public final void l(File file, boolean z, File[] fileArr, Map map) {
        long j;
        long j2;
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
                l(file2, false, file2.listFiles(), map);
            } else if (!z || (!fq0.o(name) && !name.endsWith(".uid"))) {
                np0 np0Var = map != null ? (np0) map.remove(name) : null;
                if (np0Var != null) {
                    j2 = np0Var.a;
                    j = np0Var.b;
                } else {
                    j = -9223372036854775807L;
                    j2 = -1;
                }
                wl9 wl9VarF = wl9.f(file2, j2, j, this.c);
                if (wl9VarF != null) {
                    f(wl9VarF);
                } else {
                    file2.delete();
                }
            }
        }
    }

    public final void o(wl9 wl9Var) {
        ArrayList arrayList = (ArrayList) this.e.get(wl9Var.b);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.a) arrayList.get(size)).c(this, wl9Var);
            }
        }
        this.b.c(this, wl9Var);
    }

    public final void p(yp0 yp0Var) {
        ArrayList arrayList = (ArrayList) this.e.get(yp0Var.b);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.a) arrayList.get(size)).d(this, yp0Var);
            }
        }
        this.b.d(this, yp0Var);
    }

    public final void q(wl9 wl9Var, yp0 yp0Var) {
        ArrayList arrayList = (ArrayList) this.e.get(wl9Var.b);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.a) arrayList.get(size)).a(this, wl9Var, yp0Var);
            }
        }
        this.b.a(this, wl9Var, yp0Var);
    }

    public final void s(yp0 yp0Var) {
        eq0 eq0VarG = this.c.g(yp0Var.b);
        if (eq0VarG == null || !eq0VarG.j(yp0Var)) {
            return;
        }
        this.i -= yp0Var.d;
        if (this.d != null) {
            String name = yp0Var.f.getName();
            try {
                this.d.f(name);
            } catch (IOException unused) {
                op5.i("SimpleCache", "Failed to remove file index entry for: " + name);
            }
        }
        this.c.p(eq0VarG.b);
        p(yp0Var);
    }

    @Override
    public synchronized File startFile(String str, long j, long j2) {
        eq0 eq0VarG;
        File file;
        try {
            zi.g(!this.j);
            g();
            eq0VarG = this.c.g(str);
            zi.e(eq0VarG);
            zi.g(eq0VarG.g(j, j2));
            if (!this.a.exists()) {
                h(this.a);
                t();
            }
            this.b.b(this, str, j, j2);
            file = new File(this.a, Integer.toString(this.f.nextInt(10)));
            if (!file.exists()) {
                h(file);
            }
        } catch (Throwable th) {
            throw th;
        }
        return wl9.j(file, eq0VarG.a, j, System.currentTimeMillis());
    }

    @Override
    public synchronized yp0 startReadWrite(String str, long j, long j2) {
        yp0 yp0VarStartReadWriteNonBlocking;
        zi.g(!this.j);
        g();
        while (true) {
            yp0VarStartReadWriteNonBlocking = startReadWriteNonBlocking(str, j, j2);
            if (yp0VarStartReadWriteNonBlocking == null) {
                wait();
            }
        }
        return yp0VarStartReadWriteNonBlocking;
    }

    @Override
    public synchronized yp0 startReadWriteNonBlocking(String str, long j, long j2) {
        zi.g(!this.j);
        g();
        wl9 wl9VarJ = j(str, j, j2);
        if (wl9VarJ.e) {
            return u(str, wl9VarJ);
        }
        if (this.c.m(str).i(j, wl9VarJ.d)) {
            return wl9VarJ;
        }
        return null;
    }

    public final void t() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.c.h().iterator();
        while (it.hasNext()) {
            for (yp0 yp0Var : ((eq0) it.next()).e()) {
                if (yp0Var.f.length() != yp0Var.d) {
                    arrayList.add(yp0Var);
                }
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            s((yp0) arrayList.get(i));
        }
    }

    public final wl9 u(String str, wl9 wl9Var) {
        boolean z;
        if (!this.g) {
            return wl9Var;
        }
        String name = ((File) zi.e(wl9Var.f)).getName();
        long j = wl9Var.d;
        long jCurrentTimeMillis = System.currentTimeMillis();
        op0 op0Var = this.d;
        if (op0Var != null) {
            try {
                op0Var.h(name, j, jCurrentTimeMillis);
            } catch (IOException unused) {
                op5.i("SimpleCache", "Failed to update index with new touch timestamp.");
            }
            z = false;
        } else {
            z = true;
        }
        wl9 wl9VarK = this.c.g(str).k(wl9Var, jCurrentTimeMillis, z);
        q(wl9Var, wl9VarK);
        return wl9VarK;
    }

    public SimpleCache(File file, b bVar, bt1 bt1Var, byte[] bArr, boolean z, boolean z2) {
        this(file, bVar, new fq0(bt1Var, file, bArr, z, z2), (bt1Var == null || z2) ? null : new op0(bt1Var));
    }

    public SimpleCache(File file, b bVar, fq0 fq0Var, op0 op0Var) {
        if (n(file)) {
            this.a = file;
            this.b = bVar;
            this.c = fq0Var;
            this.d = op0Var;
            this.e = new HashMap();
            this.f = new Random();
            this.g = bVar.requiresCacheSpanTouches();
            this.h = -1L;
            final ConditionVariable conditionVariable = new ConditionVariable();
            new Thread("ExoPlayer:SimpleCacheInit") {
                @Override
                public void run() {
                    synchronized (SimpleCache.this) {
                        conditionVariable.open();
                        SimpleCache.this.k();
                        SimpleCache.this.b.onCacheInitialized();
                    }
                }
            }.start();
            conditionVariable.block();
            return;
        }
        throw new IllegalStateException("Another SimpleCache instance uses the folder: " + file);
    }
}
