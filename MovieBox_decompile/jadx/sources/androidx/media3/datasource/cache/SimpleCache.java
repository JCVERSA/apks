package androidx.media3.datasource.cache;

import android.os.ConditionVariable;
import androidx.media3.common.util.u;
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

    private static final HashSet f10459l = new HashSet();

    private final File f10460a;

    private final b f10461b;

    private final k f10462c;

    private final d f10463d;

    private final HashMap f10464e;

    private final Random f10465f;

    private final boolean f10466g;

    private long f10467h;

    private long f10468i;

    private boolean f10469j;

    private Cache.CacheException f10470k;

    public SimpleCache(File file, b bVar, v1.a aVar) {
        this(file, bVar, aVar, null, false, false);
    }

    private s A(String str, s sVar) {
        boolean z10;
        if (!this.f10466g) {
            return sVar;
        }
        String name = ((File) androidx.media3.common.util.a.e(sVar.f10510e)).getName();
        long j10 = sVar.f10508c;
        long jCurrentTimeMillis = System.currentTimeMillis();
        d dVar = this.f10463d;
        if (dVar != null) {
            try {
                dVar.h(name, j10, jCurrentTimeMillis);
            } catch (IOException unused) {
                u.h("SimpleCache", "Failed to update index with new touch timestamp.");
            }
            z10 = false;
        } else {
            z10 = true;
        }
        s sVarL = ((j) androidx.media3.common.util.a.e(this.f10462c.f(str))).l(sVar, jCurrentTimeMillis, z10);
        w(sVar, sVarL);
        return sVarL;
    }

    private void k(s sVar) {
        this.f10462c.k(sVar.f10506a).a(sVar);
        this.f10468i += sVar.f10508c;
        u(sVar);
    }

    private static void m(File file) throws Cache.CacheException {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        String str = "Failed to create cache directory: " + file;
        u.c("SimpleCache", str);
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
        j jVarF = this.f10462c.f(str);
        if (jVarF == null) {
            return s.h(str, j10, j11);
        }
        while (true) {
            sVarE = jVarF.e(j10, j11);
            if (!sVarE.f10509d || ((File) androidx.media3.common.util.a.e(sVarE.f10510e)).length() == sVarE.f10508c) {
                break;
            }
            z();
        }
        return sVarE;
    }

    public void q() {
        if (!this.f10460a.exists()) {
            try {
                m(this.f10460a);
            } catch (Cache.CacheException e10) {
                this.f10470k = e10;
                return;
            }
        }
        File[] fileArrListFiles = this.f10460a.listFiles();
        if (fileArrListFiles == null) {
            String str = "Failed to list cache directory files: " + this.f10460a;
            u.c("SimpleCache", str);
            this.f10470k = new Cache.CacheException(str);
            return;
        }
        long jS = s(fileArrListFiles);
        this.f10467h = jS;
        if (jS == -1) {
            try {
                this.f10467h = n(this.f10460a);
            } catch (IOException e11) {
                String str2 = "Failed to create cache UID: " + this.f10460a;
                u.d("SimpleCache", str2, e11);
                this.f10470k = new Cache.CacheException(str2, e11);
                return;
            }
        }
        try {
            this.f10462c.l(this.f10467h);
            d dVar = this.f10463d;
            if (dVar != null) {
                dVar.e(this.f10467h);
                Map mapB = this.f10463d.b();
                r(this.f10460a, true, fileArrListFiles, mapB);
                this.f10463d.g(mapB.keySet());
            } else {
                r(this.f10460a, true, fileArrListFiles, null);
            }
            this.f10462c.p();
            try {
                this.f10462c.q();
            } catch (IOException e12) {
                u.d("SimpleCache", "Storing index file failed", e12);
            }
        } catch (IOException e13) {
            String str3 = "Failed to initialize cache indices: " + this.f10460a;
            u.d("SimpleCache", str3, e13);
            this.f10470k = new Cache.CacheException(str3, e13);
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
            } else if (!z10 || (!k.m(name) && !name.endsWith(".uid"))) {
                c cVar = map != null ? (c) map.remove(name) : null;
                if (cVar != null) {
                    j11 = cVar.f10500a;
                    j10 = cVar.f10501b;
                } else {
                    j10 = -9223372036854775807L;
                    j11 = -1;
                }
                s sVarF = s.f(file2, j11, j10, this.f10462c);
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
                    u.c("SimpleCache", "Malformed UID file: " + file);
                    file.delete();
                }
            }
        }
        return -1L;
    }

    private static synchronized boolean t(File file) {
        return f10459l.add(file.getAbsoluteFile());
    }

    private void u(s sVar) {
        ArrayList arrayList = (ArrayList) this.f10464e.get(sVar.f10506a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.a) arrayList.get(size)).c(this, sVar);
            }
        }
        this.f10461b.c(this, sVar);
    }

    private void v(h hVar) {
        ArrayList arrayList = (ArrayList) this.f10464e.get(hVar.f10506a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.a) arrayList.get(size)).e(this, hVar);
            }
        }
        this.f10461b.e(this, hVar);
    }

    private void w(s sVar, h hVar) {
        ArrayList arrayList = (ArrayList) this.f10464e.get(sVar.f10506a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((Cache.a) arrayList.get(size)).b(this, sVar, hVar);
            }
        }
        this.f10461b.b(this, sVar, hVar);
    }

    private static long x(String str) {
        return Long.parseLong(str.substring(0, str.indexOf(46)), 16);
    }

    private void y(h hVar) {
        j jVarF = this.f10462c.f(hVar.f10506a);
        if (jVarF == null || !jVarF.k(hVar)) {
            return;
        }
        this.f10468i -= hVar.f10508c;
        if (this.f10463d != null) {
            String name = ((File) androidx.media3.common.util.a.e(hVar.f10510e)).getName();
            try {
                this.f10463d.f(name);
            } catch (IOException unused) {
                u.h("SimpleCache", "Failed to remove file index entry for: " + name);
            }
        }
        this.f10462c.n(jVarF.f10523b);
        v(hVar);
    }

    private void z() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f10462c.g().iterator();
        while (it.hasNext()) {
            for (h hVar : ((j) it.next()).f()) {
                if (((File) androidx.media3.common.util.a.e(hVar.f10510e)).length() != hVar.f10508c) {
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
        androidx.media3.common.util.a.g(!this.f10469j);
        l();
        s sVarP = p(str, j10, j11);
        if (sVarP.f10509d) {
            return A(str, sVarP);
        }
        if (this.f10462c.k(str).j(j10, sVarP.f10508c)) {
            return sVarP;
        }
        return null;
    }

    @Override
    public synchronized h c(String str, long j10, long j11) {
        h hVarB;
        androidx.media3.common.util.a.g(!this.f10469j);
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
        androidx.media3.common.util.a.g(!this.f10469j);
        if (file.exists()) {
            if (j10 == 0) {
                file.delete();
                return;
            }
            s sVar = (s) androidx.media3.common.util.a.e(s.g(file, j10, this.f10462c));
            j jVar = (j) androidx.media3.common.util.a.e(this.f10462c.f(sVar.f10506a));
            androidx.media3.common.util.a.g(jVar.h(sVar.f10507b, sVar.f10508c));
            long jA = l.a(jVar.d());
            if (jA != -1) {
                androidx.media3.common.util.a.g(sVar.f10507b + sVar.f10508c <= jA);
            }
            if (this.f10463d == null) {
                k(sVar);
                this.f10462c.q();
                notifyAll();
                return;
            }
            try {
                this.f10463d.h(file.getName(), sVar.f10508c, sVar.f10511f);
                k(sVar);
                try {
                    this.f10462c.q();
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
        androidx.media3.common.util.a.g(!this.f10469j);
        Iterator it = o(str).iterator();
        while (it.hasNext()) {
            y((h) it.next());
        }
    }

    @Override
    public synchronized void f(h hVar) {
        androidx.media3.common.util.a.g(!this.f10469j);
        y(hVar);
    }

    @Override
    public synchronized void g(h hVar) {
        androidx.media3.common.util.a.g(!this.f10469j);
        j jVar = (j) androidx.media3.common.util.a.e(this.f10462c.f(hVar.f10506a));
        jVar.m(hVar.f10507b);
        this.f10462c.n(jVar.f10523b);
        notifyAll();
    }

    @Override
    public synchronized long getCachedLength(String str, long j10, long j11) {
        j jVarF;
        androidx.media3.common.util.a.g(!this.f10469j);
        if (j11 == -1) {
            j11 = Long.MAX_VALUE;
        }
        jVarF = this.f10462c.f(str);
        return jVarF != null ? jVarF.c(j10, j11) : -j11;
    }

    @Override
    public synchronized m getContentMetadata(String str) {
        androidx.media3.common.util.a.g(!this.f10469j);
        return this.f10462c.h(str);
    }

    @Override
    public synchronized void h(String str, n nVar) {
        androidx.media3.common.util.a.g(!this.f10469j);
        l();
        this.f10462c.d(str, nVar);
        try {
            this.f10462c.q();
        } catch (IOException e10) {
            throw new Cache.CacheException(e10);
        }
    }

    public synchronized void l() {
        Cache.CacheException cacheException = this.f10470k;
        if (cacheException != null) {
            throw cacheException;
        }
    }

    public synchronized NavigableSet o(String str) {
        j jVarF;
        try {
            androidx.media3.common.util.a.g(!this.f10469j);
            jVarF = this.f10462c.f(str);
        } catch (Throwable th2) {
            throw th2;
        }
        return (jVarF == null || jVarF.g()) ? new TreeSet() : new TreeSet((Collection) jVarF.f());
    }

    @Override
    public synchronized File startFile(String str, long j10, long j11) {
        j jVarF;
        File file;
        try {
            androidx.media3.common.util.a.g(!this.f10469j);
            l();
            jVarF = this.f10462c.f(str);
            androidx.media3.common.util.a.e(jVarF);
            androidx.media3.common.util.a.g(jVarF.h(j10, j11));
            if (!this.f10460a.exists()) {
                m(this.f10460a);
                z();
            }
            this.f10461b.d(this, str, j10, j11);
            file = new File(this.f10460a, Integer.toString(this.f10465f.nextInt(10)));
            if (!file.exists()) {
                m(file);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return s.j(file, jVarF.f10522a, j10, System.currentTimeMillis());
    }

    public SimpleCache(File file, b bVar, v1.a aVar, byte[] bArr, boolean z10, boolean z11) {
        this(file, bVar, new k(aVar, file, bArr, z10, z11), (aVar == null || z11) ? null : new d(aVar));
    }

    SimpleCache(File file, b bVar, k kVar, d dVar) {
        if (t(file)) {
            this.f10460a = file;
            this.f10461b = bVar;
            this.f10462c = kVar;
            this.f10463d = dVar;
            this.f10464e = new HashMap();
            this.f10465f = new Random();
            this.f10466g = bVar.a();
            this.f10467h = -1L;
            final ConditionVariable conditionVariable = new ConditionVariable();
            new Thread("ExoPlayer:SimpleCacheInit") {
                @Override
                public void run() {
                    synchronized (SimpleCache.this) {
                        conditionVariable.open();
                        SimpleCache.this.q();
                        SimpleCache.this.f10461b.onCacheInitialized();
                    }
                }
            }.start();
            conditionVariable.block();
            return;
        }
        throw new IllegalStateException("Another SimpleCache instance uses the folder: " + file);
    }
}
