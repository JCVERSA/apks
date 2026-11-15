package org.bouncycastle.jcajce.provider.drbg;

import androidx.webkit.Profile;
import defpackage.ab3;
import defpackage.bb3;
import defpackage.ci;
import defpackage.cv7;
import defpackage.el4;
import defpackage.fz4;
import defpackage.gx0;
import defpackage.gz4;
import defpackage.ly8;
import defpackage.qi8;
import defpackage.u0a;
import defpackage.xx8;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.SecureRandomSpi;
import java.security.Security;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.bouncycastle.crypto.prng.SP800SecureRandom;

public abstract class DRBG {
    public static EntropyDaemon b;
    public static final String[][] a = {new String[]{"sun.security.provider.Sun", "sun.security.provider.SecureRandom"}, new String[]{"org.apache.harmony.security.provider.crypto.CryptoProvider", "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"}, new String[]{"com.android.org.conscrypt.OpenSSLProvider", "com.android.org.conscrypt.OpenSSLRandom"}, new String[]{"org.conscrypt.OpenSSLProvider", "org.conscrypt.OpenSSLRandom"}};
    public static Thread c = null;

    public static class CoreSecureRandom extends SecureRandom {
        public CoreSecureRandom(Object[] objArr) {
            super((SecureRandomSpi) objArr[1], (Provider) objArr[0]);
        }
    }

    public static class Default extends SecureRandomSpi {
        private static final SecureRandom random = DRBG.f(true);

        @Override
        public byte[] engineGenerateSeed(int i) {
            return random.generateSeed(i);
        }

        @Override
        public void engineNextBytes(byte[] bArr) {
            random.nextBytes(bArr);
        }

        @Override
        public void engineSetSeed(byte[] bArr) {
            random.setSeed(bArr);
        }
    }

    public static class NonceAndIV extends SecureRandomSpi {
        private static final SecureRandom random = DRBG.f(false);

        @Override
        public byte[] engineGenerateSeed(int i) {
            return random.generateSeed(i);
        }

        @Override
        public void engineNextBytes(byte[] bArr) {
            random.nextBytes(bArr);
        }

        @Override
        public void engineSetSeed(byte[] bArr) {
            random.setSeed(bArr);
        }
    }

    public static class a implements bb3 {
        @Override
        public ab3 get(int i) {
            return new g(DRBG.b, i);
        }
    }

    public static class b implements bb3 {
        @Override
        public ab3 get(int i) {
            return new h(i);
        }
    }

    public static class c implements PrivilegedAction {
        @Override
        public Boolean run() {
            try {
                return Boolean.valueOf(SecureRandom.class.getMethod("getInstanceStrong", null) != null);
            } catch (Exception unused) {
                return Boolean.FALSE;
            }
        }
    }

    public static class d implements PrivilegedAction {
        @Override
        public SecureRandom run() {
            try {
                return (SecureRandom) SecureRandom.class.getMethod("getInstanceStrong", null).invoke(null, null);
            } catch (Exception unused) {
                return new CoreSecureRandom(DRBG.j());
            }
        }
    }

    public static class e implements PrivilegedAction {
        @Override
        public String run() {
            return Security.getProperty("securerandom.source");
        }
    }

    public static class f implements PrivilegedAction {
        public final String a;

        public f(String str) {
            this.a = str;
        }

        @Override
        public bb3 run() {
            try {
                return (bb3) gx0.a(DRBG.class, this.a).newInstance();
            } catch (Exception e) {
                throw new IllegalStateException("entropy source " + this.a + " not created: " + e.getMessage(), e);
            }
        }
    }

    public static class g implements ab3 {
        public final AtomicBoolean a;
        public final AtomicInteger b;
        public final SP800SecureRandom c;
        public final b d;
        public final int e;
        public final byte[] f;

        public class a implements bb3 {
            public a() {
            }

            @Override
            public ab3 get(int i) {
                return g.this.d;
            }
        }

        public static class b implements fz4 {
            public final EntropyDaemon a;
            public final AtomicBoolean b;
            public final fz4 c;
            public final int d;
            public final AtomicReference e = new AtomicReference();
            public final AtomicBoolean f = new AtomicBoolean(false);

            public b(EntropyDaemon entropyDaemon, AtomicBoolean atomicBoolean, bb3 bb3Var, int i) {
                this.a = entropyDaemon;
                this.b = atomicBoolean;
                this.c = (fz4) bb3Var.get(i);
                this.d = (i + 7) / 8;
            }

            @Override
            public byte[] a(long j) {
                byte[] bArr = (byte[]) this.e.getAndSet(null);
                if (bArr == null || bArr.length != this.d) {
                    return this.c.a(j);
                }
                this.f.set(false);
                return bArr;
            }

            @Override
            public byte[] b() {
                try {
                    return a(0L);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new IllegalStateException("initial entropy fetch interrupted");
                }
            }

            @Override
            public int c() {
                return this.d * 8;
            }

            public void d() {
                if (this.f.getAndSet(true)) {
                    return;
                }
                this.a.addTask(new EntropyGatherer(this.c, this.b, this.e));
            }
        }

        public g(EntropyDaemon entropyDaemon, int i) {
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            this.a = atomicBoolean;
            this.b = new AtomicInteger(0);
            this.f = cv7.j(System.currentTimeMillis());
            bb3 bb3VarG = DRBG.g();
            this.e = (i + 7) / 8;
            b bVar = new b(entropyDaemon, atomicBoolean, bb3VarG, 256);
            this.d = bVar;
            this.c = new ly8(new a()).e(u0a.e("Bouncy Castle Hybrid Entropy Source")).b(new el4(new xx8()), bVar.b(), false);
        }

        @Override
        public byte[] b() {
            byte[] bArr = new byte[this.e];
            if (this.b.getAndIncrement() > 128) {
                if (this.a.getAndSet(false)) {
                    this.b.set(0);
                    this.c.reseed(this.f);
                } else {
                    this.d.d();
                }
            }
            this.c.nextBytes(bArr);
            return bArr;
        }

        @Override
        public int c() {
            return this.e * 8;
        }
    }

    public static class h implements ab3 {
        public final AtomicBoolean a;
        public final AtomicInteger b;
        public final SP800SecureRandom c;
        public final b d;
        public final int e;
        public final byte[] f;

        public class a implements bb3 {
            public a() {
            }

            @Override
            public ab3 get(int i) {
                return h.this.d;
            }
        }

        public static class b implements fz4 {
            public final AtomicBoolean a;
            public final fz4 b;
            public final int c;
            public final AtomicReference d = new AtomicReference();
            public final AtomicBoolean e = new AtomicBoolean(false);

            public b(AtomicBoolean atomicBoolean, bb3 bb3Var, int i) {
                this.a = atomicBoolean;
                this.b = (fz4) bb3Var.get(i);
                this.c = (i + 7) / 8;
            }

            @Override
            public byte[] a(long j) {
                byte[] bArr = (byte[]) this.d.getAndSet(null);
                if (bArr == null || bArr.length != this.c) {
                    return this.b.a(j);
                }
                this.e.set(false);
                return bArr;
            }

            @Override
            public byte[] b() {
                try {
                    return a(0L);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new IllegalStateException("initial entropy fetch interrupted");
                }
            }

            @Override
            public int c() {
                return this.c * 8;
            }

            public void d() {
                if (this.e.getAndSet(true)) {
                    return;
                }
                Thread thread = new Thread(new EntropyGatherer(this.b, this.a, this.d));
                thread.setDaemon(true);
                thread.start();
            }
        }

        public h(int i) {
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            this.a = atomicBoolean;
            this.b = new AtomicInteger(0);
            this.f = cv7.j(System.currentTimeMillis());
            bb3 bb3VarG = DRBG.g();
            this.e = (i + 7) / 8;
            b bVar = new b(atomicBoolean, bb3VarG, 256);
            this.d = bVar;
            this.c = new ly8(new a()).e(u0a.e("Bouncy Castle Hybrid Entropy Source")).b(new el4(new xx8()), bVar.b(), false);
        }

        @Override
        public byte[] b() {
            byte[] bArr = new byte[this.e];
            if (this.b.getAndIncrement() > 1024) {
                if (this.a.getAndSet(false)) {
                    this.b.set(0);
                    this.c.reseed(this.f);
                } else {
                    this.d.d();
                }
            }
            this.c.nextBytes(bArr);
            return bArr;
        }

        @Override
        public int c() {
            return this.e * 8;
        }
    }

    public static class i implements bb3 {
        public final InputStream a;

        public class a implements PrivilegedAction {
            public final URL a;

            public a(URL url) {
                this.a = url;
            }

            @Override
            public InputStream run() {
                try {
                    return this.a.openStream();
                } catch (IOException unused) {
                    throw new IllegalStateException("unable to open random source");
                }
            }
        }

        public class b implements PrivilegedAction {
            public final byte[] a;
            public final int b;
            public final int c;

            public b(byte[] bArr, int i, int i2) {
                this.a = bArr;
                this.b = i;
                this.c = i2;
            }

            @Override
            public Integer run() {
                try {
                    return Integer.valueOf(i.this.a.read(this.a, this.b, this.c));
                } catch (IOException unused) {
                    throw new InternalError("unable to read random source");
                }
            }
        }

        public class c implements fz4 {
            public final int a;
            public final int b;

            public c(int i) {
                this.b = i;
                this.a = (i + 7) / 8;
            }

            @Override
            public byte[] a(long j) throws InterruptedException {
                int i = this.a;
                byte[] bArr = new byte[i];
                int i2 = 0;
                while (i2 != i) {
                    int iC = i.this.c(bArr, i2, i - i2);
                    if (iC <= -1) {
                        break;
                    }
                    i2 += iC;
                    DRBG.m(j);
                }
                if (i2 == i) {
                    return bArr;
                }
                throw new InternalError("unable to fully read random source");
            }

            @Override
            public byte[] b() {
                try {
                    return a(0L);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new IllegalStateException("initial entropy fetch interrupted");
                }
            }

            @Override
            public int c() {
                return this.b;
            }
        }

        public i(URL url) {
            this.a = (InputStream) AccessController.doPrivileged(new a(url));
        }

        public final int c(byte[] bArr, int i, int i2) {
            return ((Integer) AccessController.doPrivileged(new b(bArr, i, i2))).intValue();
        }

        @Override
        public ab3 get(int i) {
            return new c(i);
        }
    }

    static {
        b = null;
        b = new EntropyDaemon();
    }

    public static SecureRandom f(boolean z) {
        if (qi8.b("org.bouncycastle.drbg.entropysource") != null) {
            bb3 bb3VarH = h();
            ab3 ab3Var = bb3VarH.get(128);
            byte[] bArrB = ab3Var.b();
            return new ly8(bb3VarH).e(z ? k(bArrB) : l(bArrB)).c(new xx8(), ab3Var.b(), z);
        }
        if (!qi8.c("org.bouncycastle.drbg.entropy_thread")) {
            h hVar = new h(256);
            byte[] bArrB2 = hVar.b();
            return new ly8(new b()).e(z ? k(bArrB2) : l(bArrB2)).c(new xx8(), hVar.b(), z);
        }
        synchronized (b) {
            try {
                if (c == null) {
                    Thread thread = new Thread(b, "BC Entropy Daemon");
                    c = thread;
                    thread.setDaemon(true);
                    c.start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        g gVar = new g(b, 256);
        byte[] bArrB3 = gVar.b();
        return new ly8(new a()).e(z ? k(bArrB3) : l(bArrB3)).c(new xx8(), gVar.b(), z);
    }

    public static bb3 g() {
        String str = (String) AccessController.doPrivileged(new e());
        if (str == null) {
            return i();
        }
        try {
            return new i(new URL(str));
        } catch (Exception unused) {
            return i();
        }
    }

    public static bb3 h() {
        return (bb3) AccessController.doPrivileged(new f(qi8.b("org.bouncycastle.drbg.entropysource")));
    }

    public static bb3 i() {
        return ((Boolean) AccessController.doPrivileged(new c())).booleanValue() ? new gz4((SecureRandom) AccessController.doPrivileged(new d()), true) : new gz4(new CoreSecureRandom(j()), true);
    }

    public static final Object[] j() {
        char c2 = 0;
        int i2 = 0;
        while (true) {
            String[][] strArr = a;
            if (i2 >= strArr.length) {
                return null;
            }
            String[] strArr2 = strArr[i2];
            try {
                return new Object[]{Class.forName(strArr2[c2]).newInstance(), Class.forName(strArr2[1]).newInstance()};
            } catch (Throwable unused) {
                i2++;
            }
        }
    }

    public static byte[] k(byte[] bArr) {
        return ci.m(u0a.e(Profile.DEFAULT_PROFILE_NAME), bArr, cv7.j(Thread.currentThread().getId()), cv7.j(System.currentTimeMillis()));
    }

    public static byte[] l(byte[] bArr) {
        return ci.m(u0a.e("Nonce"), bArr, cv7.m(Thread.currentThread().getId()), cv7.m(System.currentTimeMillis()));
    }

    public static void m(long j) throws InterruptedException {
        if (j != 0) {
            Thread.sleep(j);
        }
    }
}
