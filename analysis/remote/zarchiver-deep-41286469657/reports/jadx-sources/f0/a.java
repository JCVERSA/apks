package f0;

import e0.h;
import h0.e;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import ru.zdevs.zarchiver.archiver.NArc;
import ru.zdevs.zarchiver.archiver.content.ContentNative;

public final class a {

    public static a f756e;

    public final ReentrantReadWriteLock f757a = new ReentrantReadWriteLock();

    public d f758b = null;

    public NArc f759c = null;

    public final Object f760d = new Object();

    public static d j(boolean z2) {
        a aVarM = m();
        ReentrantReadWriteLock reentrantReadWriteLock = aVarM.f757a;
        try {
            reentrantReadWriteLock.writeLock().lock();
            d dVar = aVarM.f758b;
            if (dVar != null && z2 == (dVar instanceof ContentNative)) {
                dVar.clear();
            } else if (z2) {
                aVarM.f758b = new ContentNative();
            } else {
                aVarM.f758b = new c();
            }
            reentrantReadWriteLock.writeLock().unlock();
            aVarM.o();
            return aVarM.f758b;
        } catch (Throwable th) {
            reentrantReadWriteLock.writeLock().unlock();
            throw th;
        }
    }

    public static a m() {
        if (f756e == null) {
            f756e = new a();
        }
        return f756e;
    }

    public final void a() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f757a;
        try {
            reentrantReadWriteLock.writeLock().lock();
            d dVar = this.f758b;
            if (dVar != null) {
                dVar.clear();
            }
            reentrantReadWriteLock.writeLock().unlock();
            o();
        } catch (Throwable th) {
            reentrantReadWriteLock.writeLock().unlock();
            throw th;
        }
    }

    public final void b(String str) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f757a;
        try {
            reentrantReadWriteLock.writeLock().lock();
            d dVar = this.f758b;
            if (dVar != null && dVar.m(str) && this.f758b.g() == 2) {
                this.f758b.clear();
            }
        } finally {
            reentrantReadWriteLock.writeLock().unlock();
        }
    }

    public final NArc c() {
        try {
            this.f757a.readLock().lock();
            if (this.f758b == null) {
                this.f757a.readLock().unlock();
                return null;
            }
            this.f757a.readLock().unlock();
            synchronized (this.f760d) {
                NArc nArc = this.f759c;
                if (nArc != null) {
                    return nArc;
                }
                try {
                    String strL = l();
                    if (strL == null) {
                        return null;
                    }
                    this.f759c = NArc.k(strL, i(), h.d().e(strL) ? h.d().c(false) : null);
                } catch (NArc.NArcException unused) {
                }
                return this.f759c;
            }
        } catch (Throwable th) {
            this.f757a.readLock().unlock();
            throw th;
        }
    }

    public final long d() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f757a;
        try {
            reentrantReadWriteLock.readLock().lock();
            d dVar = this.f758b;
            return dVar == null ? -1L : dVar.f();
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    public final e.b e(String str, v0.d dVar) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f757a;
        try {
            reentrantReadWriteLock.readLock().lock();
            d dVar2 = this.f758b;
            return dVar2 == null ? null : dVar2.o(str, dVar);
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    public final void f(String str, ArrayList<d0.d> arrayList) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f757a;
        try {
            reentrantReadWriteLock.readLock().lock();
            d dVar = this.f758b;
            if (dVar != null) {
                dVar.r(str, arrayList);
            }
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    public final e.b g(ArrayList arrayList, v0.d dVar) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f757a;
        try {
            reentrantReadWriteLock.readLock().lock();
            d dVar2 = this.f758b;
            return dVar2 == null ? null : dVar2.k(arrayList, dVar);
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    public final int h() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f757a;
        try {
            reentrantReadWriteLock.readLock().lock();
            d dVar = this.f758b;
            return dVar == null ? 0 : dVar.h();
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    public final String i() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f757a;
        try {
            reentrantReadWriteLock.readLock().lock();
            d dVar = this.f758b;
            if (dVar == null) {
                reentrantReadWriteLock.readLock().unlock();
                return null;
            }
            String strP = dVar.p();
            reentrantReadWriteLock.readLock().unlock();
            if (strP == null) {
                return strP;
            }
            int iIndexOf = strP.indexOf(47);
            String strI = iIndexOf > 0 ? v0.h.i(strP.substring(0, iIndexOf - 1).trim()) : v0.h.i(strP);
            int iIndexOf2 = strI.indexOf(32);
            if (iIndexOf2 <= 0) {
                return strI;
            }
            if (strI.startsWith("rar")) {
                return strI.endsWith(" 5") ? "rar5" : "rar";
            }
            return strI.substring(0, iIndexOf2 - 1).trim();
        } catch (Throwable th) {
            reentrantReadWriteLock.readLock().unlock();
            throw th;
        }
    }

    public final int k() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f757a;
        try {
            reentrantReadWriteLock.readLock().lock();
            d dVar = this.f758b;
            return dVar == null ? 0 : dVar.g();
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    public final String l() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f757a;
        try {
            reentrantReadWriteLock.readLock().lock();
            d dVar = this.f758b;
            return dVar == null ? null : dVar.l();
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    public final boolean n(String str) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f757a;
        try {
            reentrantReadWriteLock.readLock().lock();
            d dVar = this.f758b;
            return dVar != null && dVar.m(str);
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    public final void o() {
        NArc nArc = this.f759c;
        if (nArc != null) {
            nArc.a();
            synchronized (this.f760d) {
                NArc nArc2 = this.f759c;
                if (nArc2 == null) {
                    return;
                }
                nArc2.a();
                this.f759c.close();
                this.f759c = null;
            }
        }
    }
}
