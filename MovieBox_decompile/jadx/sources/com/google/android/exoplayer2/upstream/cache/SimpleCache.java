package com.google.android.exoplayer2.upstream.cache;

import android.os.ConditionVariable;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Random;
import java.util.TreeSet;

public final class SimpleCache implements Cache {

    private static final HashSet f26518l = new HashSet();

    private final File f26519a;

    private final b f26520b;

    private final k f26521c;

    private final d f26522d;

    private final HashMap f26523e;

    private final Random f26524f;

    private final boolean f26525g;

    private long f26526h;

    private long f26527i;

    private boolean f26528j;

    private Cache.CacheException f26529k;

    public SimpleCache(File file, b bVar, h9.a aVar) {
        this(file, bVar, aVar, null, false, false);
    }

    private s A(String str, s sVar) {
        boolean z10;
        if (!this.f26525g) {
            return sVar;
        }
        String name = ((File) com.google.android.exoplayer2.util.a.e(sVar.f26569e)).getName();
        long j10 = sVar.f26567c;
        long jCurrentTimeMillis = System.currentTimeMillis();
        d dVar = this.f26522d;
        if (dVar != null) {
            try {
                dVar.h(name, j10, jCurrentTimeMillis);
            } catch (IOException unused) {
                com.google.android.exoplayer2.util.s.i("SimpleCache", "Failed to update index with new touch timestamp.");
            }
            z10 = false;
        } else {
            z10 = true;
        }
        s sVarL = this.f26521c.g(str).l(sVar, jCurrentTimeMillis, z10);
        w(sVar, sVarL);
        return sVarL;
    }

    private void k(s sVar) {
        this.f26521c.m(sVar.f26565a).a(sVar);
        this.f26527i += sVar.f26567c;
        u(sVar);
    }

    private static void m(File file) throws Cache.CacheException {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        String str = "Failed to create cache directory: " + file;
        com.google.android.exoplayer2.util.s.c("SimpleCache", str);
        throw new Cache.CacheException(str);
    }

    private static long n(File file) throws IOException {
        long jNextLong = new SecureRandom().nextLong();
        long jAbs = jNextLong == Long.MIN_VALUE ? 0L : Math.abs(jNextLong);
        File file2 = new File(file, Long.toString(jAbs, 16) + ".uid");
        if (file2.createNewFile()) {
            return jAbs;
        }
        throw new IOException("Failed to create UID file: " + file2);
    }

    private s p(String str, long j10, long j11) {
        s sVarE;
        j jVarG = this.f26521c.g(str);
        if (jVarG == null) {
            return s.h(str, j10, j11);
        }
        while (true) {
            sVarE = jVarG.e(j10, j11);
            if (!sVarE.f26568d || sVarE.f26569e.length() == sVarE.f26567c) {
                break;
            }
            z();
        }
        return sVarE;
    }

    public void q() {
        if (!this.f26519a.exists()) {
            try {
                m(this.f26519a);
            } catch (Cache.CacheException e10) {
                this.f26529k = e10;
                return;
            }
        }
        File[] fileArrListFiles = this.f26519a.listFiles();
        if (fileArrListFiles == null) {
            String str = "Failed to list cache directory files: " + this.f26519a;
            com.google.android.exoplayer2.util.s.c("SimpleCache", str);
            this.f26529k = new Cache.CacheException(str);
            return;
        }
        long jS = s(fileArrListFiles);
        this.f26526h = jS;
        if (jS == -1) {
            try {
                this.f26526h = n(this.f26519a);
            } catch (IOException e11) {
                String str2 = "Failed to create cache UID: " + this.f26519a;
                com.google.android.exoplayer2.util.s.d("SimpleCache", str2, e11);
                this.f26529k = new Cache.CacheException(str2, e11);
                return;
            }
        }
        try {
            this.f26521c.n(this.f26526h);
            d dVar = this.f26522d;
            if (dVar != null) {
                dVar.e(this.f26526h);
                Map mapB = this.f26522d.b();
                r(this.f26519a, true, fileArrListFiles, mapB);
                this.f26522d.g(mapB.keySet());
            } else {
                r(this.f26519a, true, fileArrListFiles, null);
            }
            this.f26521c.r();
            try {
                this.f26521c.s();
            } catch (IOException e12) {
                com.google.android.exoplayer2.util.s.d("SimpleCache", "Storing index file failed", e12);
            }
        } catch (IOException e13) {
            String str3 = "Failed to initialize cache indices: " + this.f26519a;
            com.google.android.exoplayer2.util.s.d("SimpleCache", str3, e13);
            this.f26529k = new Cache.CacheException(str3, e13);
        }
    }

    private void r(File file, boolean z10, File[] fileArr, Map map) {
        long j10;
        long j11;
        if (fileArr == null || fileArr.length == 0) {
            if (z10) {
                return;
            }
            file.delete();
            return;
        }
        for (File file2 : fileArr) {
            String name = file2.getName();
            if (z10 && name.indexOf(46) == -1) {
                r(file2, false, file2.listFiles(), map);
            } else if (!z10 || (!k.o(name) && !name.endsWith(".uid"))) {
                c cVar = map != null ? (c) map.remove(name) : null;
                if (cVar != null) {
                    j11 = cVar.f26559a;
                    j10 = cVar.f26560b;
                } else {
                    j10 = -9223372036854775807L;
                    j11 = -1;
                }
                s sVarF = s.f(file2, j11, j10, this.f26521c);
                if (sVarF != null) {
                    k(sVarF);
                } else {
                    file2.delete();
                }
            }
        }
    }

    private static long s(File[] fileArr) {
        int length = fileArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            File file = fileArr[i10];
            String name = file.getName();
            if (name.endsWith(".uid")) {
                try {
                    return x(name);
                } catch (NumberFormatException unused) {
                    com.google.android.exoplayer2.util.s.c("SimpleCache", "Malformed UID file: " + file);
                    file.delete();
                }
            }
        }
        return -1L;
    }

    private static synchronized boolean t(File file) {
        return f26518l.add(file.getAbsoluteFile());
    }

    private void u(s sVar) {
        ArrayList arrayList = (ArrayList) this.f26523e.get(sVar.f26565a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.a) arrayList.get(size)).b(this, sVar);
            }
        }
        this.f26520b.b(this, sVar);
    }

    private void v(h hVar) {
        ArrayList arrayList = (ArrayList) this.f26523e.get(hVar.f26565a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.a) arrayList.get(size)).d(this, hVar);
            }
        }
        this.f26520b.d(this, hVar);
    }

    private void w(s sVar, h hVar) {
        ArrayList arrayList = (ArrayList) this.f26523e.get(sVar.f26565a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.a) arrayList.get(size)).e(this, sVar, hVar);
            }
        }
        this.f26520b.e(this, sVar, hVar);
    }

    private static long x(String str) {
        return Long.parseLong(str.substring(0, str.indexOf(46)), 16);
    }

    private void y(h hVar) {
        j jVarG = this.f26521c.g(hVar.f26565a);
        if (jVarG == null || !jVarG.k(hVar)) {
            return;
        }
        this.f26527i -= hVar.f26567c;
        if (this.f26522d != null) {
            String name = hVar.f26569e.getName();
            try {
                this.f26522d.f(name);
            } catch (IOException unused) {
                com.google.android.exoplayer2.util.s.i("SimpleCache", "Failed to remove file index entry for: " + name);
            }
        }
        this.f26521c.p(jVarG.f26582b);
        v(hVar);
    }

    private void z() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f26521c.h().iterator();
        while (it.hasNext()) {
            for (h hVar : ((j) it.next()).f()) {
                if (hVar.f26569e.length() != hVar.f26567c) {
                    arrayList.add(hVar);
                }
            }
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            y((h) arrayList.get(i10));
        }
    }

    @Override
    public synchronized long a(String str, long j10, long j11) {
        long j12;
        long j13 = j11 == -1 ? Long.MAX_VALUE : j10 + j11;
        long j14 = j13 >= 0 ? j13 : Long.MAX_VALUE;
        long j15 = j10;
        j12 = 0;
        while (j15 < j14) {
            long cachedLength = getCachedLength(str, j15, j14 - j15);
            if (cachedLength > 0) {
                j12 += cachedLength;
            } else {
                cachedLength = -cachedLength;
            }
            j15 += cachedLength;
        }
        return j12;
    }

    @Override
    public synchronized h b(String str, long j10, long j11) {
        com.google.android.exoplayer2.util.a.g(!this.f26528j);
        l();
        s sVarP = p(str, j10, j11);
        if (sVarP.f26568d) {
            return A(str, sVarP);
        }
        if (this.f26521c.m(str).j(j10, sVarP.f26567c)) {
            return sVarP;
        }
        return null;
    }

    @Override
    public synchronized h c(String str, long j10, long j11) {
        h hVarB;
        com.google.android.exoplayer2.util.a.g(!this.f26528j);
        l();
        while (true) {
            hVarB = b(str, j10, j11);
            if (hVarB == null) {
                wait();
            }
        }
        return hVarB;
    }

    @Override
    public synchronized void d(File file, long j10) {
        com.google.android.exoplayer2.util.a.g(!this.f26528j);
        if (file.exists()) {
            if (j10 == 0) {
                file.delete();
                return;
            }
            s sVar = (s) com.google.android.exoplayer2.util.a.e(s.g(file, j10, this.f26521c));
            j jVar = (j) com.google.android.exoplayer2.util.a.e(this.f26521c.g(sVar.f26565a));
            com.google.android.exoplayer2.util.a.g(jVar.h(sVar.f26566b, sVar.f26567c));
            long jA = l.a(jVar.d());
            if (jA != -1) {
                com.google.android.exoplayer2.util.a.g(sVar.f26566b + sVar.f26567c <= jA);
            }
            if (this.f26522d == null) {
                k(sVar);
                this.f26521c.s();
                notifyAll();
                return;
            }
            try {
                this.f26522d.h(file.getName(), sVar.f26567c, sVar.f26570f);
                k(sVar);
                try {
                    this.f26521c.s();
                    notifyAll();
                    return;
                } catch (IOException e10) {
                    throw new Cache.CacheException(e10);
                }
            } catch (IOException e11) {
                throw new Cache.CacheException(e11);
            }
            throw th;
        }
    }

    @Override
    public synchronized void e(String str) {
        com.google.android.exoplayer2.util.a.g(!this.f26528j);
        Iterator it = o(str).iterator();
        while (it.hasNext()) {
            y((h) it.next());
        }
    }

    @Override
    public synchronized void f(String str, n nVar) {
        com.google.android.exoplayer2.util.a.g(!this.f26528j);
        l();
        this.f26521c.e(str, nVar);
        try {
            this.f26521c.s();
        } catch (IOException e10) {
            throw new Cache.CacheException(e10);
        }
    }

    @Override
    public synchronized void g(h hVar) {
        com.google.android.exoplayer2.util.a.g(!this.f26528j);
        j jVar = (j) com.google.android.exoplayer2.util.a.e(this.f26521c.g(hVar.f26565a));
        jVar.m(hVar.f26566b);
        this.f26521c.p(jVar.f26582b);
        notifyAll();
    }

    @Override
    public synchronized long getCachedLength(String str, long j10, long j11) {
        j jVarG;
        com.google.android.exoplayer2.util.a.g(!this.f26528j);
        if (j11 == -1) {
            j11 = Long.MAX_VALUE;
        }
        jVarG = this.f26521c.g(str);
        return jVarG != null ? jVarG.c(j10, j11) : -j11;
    }

    @Override
    public synchronized m getContentMetadata(String str) {
        com.google.android.exoplayer2.util.a.g(!this.f26528j);
        return this.f26521c.j(str);
    }

    @Override
    public synchronized void h(h hVar) {
        com.google.android.exoplayer2.util.a.g(!this.f26528j);
        y(hVar);
    }

    public synchronized void l() {
        Cache.CacheException cacheException = this.f26529k;
        if (cacheException != null) {
            throw cacheException;
        }
    }

    public synchronized NavigableSet o(String str) {
        j jVarG;
        try {
            com.google.android.exoplayer2.util.a.g(!this.f26528j);
            jVarG = this.f26521c.g(str);
        } catch (Throwable th2) {
            throw th2;
        }
        return (jVarG == null || jVarG.g()) ? new TreeSet() : new TreeSet((Collection) jVarG.f());
    }

    @Override
    public synchronized File startFile(String str, long j10, long j11) {
        j jVarG;
        File file;
        try {
            com.google.android.exoplayer2.util.a.g(!this.f26528j);
            l();
            jVarG = this.f26521c.g(str);
            com.google.android.exoplayer2.util.a.e(jVarG);
            com.google.android.exoplayer2.util.a.g(jVarG.h(j10, j11));
            if (!this.f26519a.exists()) {
                m(this.f26519a);
                z();
            }
            this.f26520b.c(this, str, j10, j11);
            file = new File(this.f26519a, Integer.toString(this.f26524f.nextInt(10)));
            if (!file.exists()) {
                m(file);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return s.j(file, jVarG.f26581a, j10, System.currentTimeMillis());
    }

    public SimpleCache(File file, b bVar, h9.a aVar, byte[] bArr, boolean z10, boolean z11) {
        this(file, bVar, new k(aVar, file, bArr, z10, z11), (aVar == null || z11) ? null : new d(aVar));
    }

    SimpleCache(File file, b bVar, k kVar, d dVar) {
        if (t(file)) {
            this.f26519a = file;
            this.f26520b = bVar;
            this.f26521c = kVar;
            this.f26522d = dVar;
            this.f26523e = new HashMap();
            this.f26524f = new Random();
            this.f26525g = bVar.a();
            this.f26526h = -1L;
            final ConditionVariable conditionVariable = new ConditionVariable();
            new Thread("ExoPlayer:SimpleCacheInit") {
                @Override
                public void run() {
                    synchronized (SimpleCache.this) {
                        conditionVariable.open();
                        SimpleCache.this.q();
                        SimpleCache.this.f26520b.onCacheInitialized();
                    }
                }
            }.start();
            conditionVariable.block();
            return;
        }
        throw new IllegalStateException("Another SimpleCache instance uses the folder: " + file);
    }
}
