package defpackage;

import com.google.android.gms.internal.play_billing.zzhb;
import com.google.android.gms.internal.play_billing.zzip;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class kli extends plh {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected i3j zzc = i3j.c();

    public static void f(Class cls, kli kliVar) {
        kliVar.e();
        zzb.put(cls, kliVar);
    }

    public static kli j(kli kliVar, byte[] bArr, int i, int i2, c8i c8iVar) throws zzhb {
        if (i2 == 0) {
            return kliVar;
        }
        kli kliVarR = kliVar.r();
        try {
            u1j u1jVarB = c1j.a().b(kliVarR.getClass());
            u1jVarB.c(kliVarR, bArr, 0, i2, new qoh(c8iVar));
            u1jVarB.a(kliVarR);
            return kliVarR;
        } catch (zzhb e) {
            throw e;
        } catch (zzip e2) {
            throw e2.zza();
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzhb) {
                throw ((zzhb) e3.getCause());
            }
            throw new zzhb(e3);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzhb("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public static final boolean k(kli kliVar, boolean z) {
        byte bByteValue = ((Byte) kliVar.l(1, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zF = c1j.a().b(kliVar.getClass()).f(kliVar);
        if (z) {
            kliVar.l(2, true != zF ? null : kliVar, null);
        }
        return zF;
    }

    public static kli q(Class cls) {
        Map map = zzb;
        kli kliVar = (kli) map.get(cls);
        if (kliVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                kliVar = (kli) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (kliVar == null) {
            kliVar = (kli) ((kli) x3j.e(cls)).l(6, null, null);
            if (kliVar == null) {
                throw new IllegalStateException();
            }
            map.put(cls, kliVar);
        }
        return kliVar;
    }

    public static kli s(kli kliVar, byte[] bArr) throws zzhb {
        int length = bArr.length;
        c8i c8iVar = c8i.b;
        int i = onh.a;
        kli kliVarJ = j(kliVar, bArr, 0, length, c8i.b);
        if (kliVarJ == null || k(kliVarJ, true)) {
            return kliVarJ;
        }
        throw new zzip(kliVarJ).zza();
    }

    public static toi t() {
        return mmi.i();
    }

    public static npi u() {
        return f1j.f();
    }

    public static Object v(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static Object w(g0j g0jVar, String str, Object[] objArr) {
        return new r1j(g0jVar, str, objArr);
    }

    @Override
    public final void a(o4i o4iVar) {
        c1j.a().b(getClass()).e(this, e5i.J(o4iVar));
    }

    @Override
    public final int c(u1j u1jVar) {
        if (h()) {
            int iZza = u1jVar.zza(this);
            if (iZza >= 0) {
                return iZza;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + iZza);
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iZza2 = u1jVar.zza(this);
        if (iZza2 >= 0) {
            this.zzd = (this.zzd & Integer.MIN_VALUE) | iZza2;
            return iZza2;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + iZza2);
    }

    public final void e() {
        this.zzd &= Integer.MAX_VALUE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return c1j.a().b(getClass()).d(this, (kli) obj);
    }

    public final void g(int i) {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final boolean h() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    public final int hashCode() {
        if (h()) {
            return m();
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iM = m();
        this.zza = iM;
        return iM;
    }

    public final int i(u1j u1jVar) {
        return c1j.a().b(getClass()).zza(this);
    }

    public abstract Object l(int i, Object obj, Object obj2);

    public final int m() {
        return c1j.a().b(getClass()).zzb(this);
    }

    public final boolean n() {
        return k(this, true);
    }

    public final fhi o() {
        return (fhi) l(5, null, null);
    }

    public final fhi p() {
        fhi fhiVar = (fhi) l(5, null, null);
        fhiVar.e(this);
        return fhiVar;
    }

    public final kli r() {
        return (kli) l(4, null, null);
    }

    public final String toString() {
        return n0j.a(this, super.toString());
    }

    public final void x() {
        c1j.a().b(getClass()).a(this);
        e();
    }

    @Override
    public final g0j zzl() {
        return (kli) l(6, null, null);
    }

    @Override
    public final int zzn() {
        if (h()) {
            int i = i(null);
            if (i >= 0) {
                return i;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + i);
        }
        int i2 = this.zzd & Integer.MAX_VALUE;
        if (i2 == Integer.MAX_VALUE) {
            i2 = i(null);
            if (i2 < 0) {
                throw new IllegalStateException("serialized size must be non-negative, was " + i2);
            }
            this.zzd = (this.zzd & Integer.MIN_VALUE) | i2;
        }
        return i2;
    }

    @Override
    public final d0j zzw() {
        return (fhi) l(5, null, null);
    }
}
