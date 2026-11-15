package com.google.android.gms.internal.ads;

import defpackage.asi;
import defpackage.cui;
import defpackage.esi;
import defpackage.eti;
import defpackage.lsi;
import defpackage.mri;
import defpackage.osi;
import defpackage.qui;
import defpackage.rti;
import defpackage.vri;
import defpackage.vsi;
import defpackage.vti;
import defpackage.vui;
import defpackage.wri;
import defpackage.xsi;
import defpackage.xti;
import defpackage.ysi;
import defpackage.yti;
import defpackage.zti;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class ia extends aa {
    private static final int zza = Integer.MIN_VALUE;
    private static final int zzb = Integer.MAX_VALUE;
    private static Map<Class<?>, ia> zzc = new ConcurrentHashMap();
    static final int zzr = Integer.MAX_VALUE;
    static final int zzs = 0;
    private int zzd = -1;
    protected qui zzt = qui.c();

    public static void F(Class cls, ia iaVar) {
        iaVar.E();
        zzc.put(cls, iaVar);
    }

    public static ia I(Class cls) {
        ia iaVarD = zzc.get(cls);
        if (iaVarD == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                iaVarD = zzc.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (iaVarD == null) {
            iaVarD = ((ia) vui.o(cls)).d();
            if (iaVarD == null) {
                throw new IllegalStateException();
            }
            zzc.put(cls, iaVarD);
        }
        return iaVarD;
    }

    public static ia L(ia iaVar, zzgwn zzgwnVar) throws zzgyk {
        esi esiVar = esi.b;
        xti xtiVar = xti.c;
        ia iaVarN = N(iaVar, zzgwnVar, esi.c);
        X(iaVarN);
        return iaVarN;
    }

    public static ia M(ia iaVar, byte[] bArr) throws zzgyk {
        int length = bArr.length;
        esi esiVar = esi.b;
        xti xtiVar = xti.c;
        ia iaVarZ = Z(iaVar, bArr, 0, length, esi.c);
        X(iaVarZ);
        return iaVarZ;
    }

    public static ia N(ia iaVar, zzgwn zzgwnVar, esi esiVar) throws zzgyk {
        ia iaVarY = Y(iaVar, zzgwnVar, esiVar);
        X(iaVarY);
        return iaVarY;
    }

    public static ia O(ia iaVar, InputStream inputStream, esi esiVar) throws zzgyk {
        ia iaVarR = R(iaVar, vri.e(inputStream, 4096), esiVar);
        X(iaVarR);
        return iaVarR;
    }

    public static ia Q(ia iaVar, byte[] bArr, esi esiVar) throws zzgyk {
        ia iaVarZ = Z(iaVar, bArr, 0, bArr.length, esiVar);
        X(iaVarZ);
        return iaVarZ;
    }

    public static ia R(ia iaVar, vri vriVar, esi esiVar) throws zzgyk {
        ia iaVarK = iaVar.K();
        try {
            cui cuiVarB = xti.a().b(iaVarK.getClass());
            cuiVarB.e(iaVarK, wri.A(vriVar), esiVar);
            cuiVarB.a(iaVarK);
            return iaVarK;
        } catch (zzgyk e) {
            if (e.zzb()) {
                throw new zzgyk(e);
            }
            throw e;
        } catch (zzhak e2) {
            throw e2.zza();
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzgyk) {
                throw ((zzgyk) e3.getCause());
            }
            throw new zzgyk(e3);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof zzgyk) {
                throw ((zzgyk) e4.getCause());
            }
            throw e4;
        }
    }

    public static ia X(ia iaVar) throws zzgyk {
        if (iaVar == null || iaVar.P()) {
            return iaVar;
        }
        throw iaVar.h().zza();
    }

    public static ia Y(ia iaVar, zzgwn zzgwnVar, esi esiVar) throws zzgyk {
        vri vriVarZzl = zzgwnVar.zzl();
        ia iaVarR = R(iaVar, vriVarZzl, esiVar);
        vriVarZzl.z(0);
        return iaVarR;
    }

    public static ia Z(ia iaVar, byte[] bArr, int i, int i2, esi esiVar) throws zzgyk {
        if (i2 == 0) {
            return iaVar;
        }
        ia iaVarK = iaVar.K();
        try {
            cui cuiVarB = xti.a().b(iaVarK.getClass());
            cuiVarB.d(iaVarK, bArr, i, i + i2, new mri(esiVar));
            cuiVarB.a(iaVarK);
            return iaVarK;
        } catch (zzgyk e) {
            if (e.zzb()) {
                throw new zzgyk(e);
            }
            throw e;
        } catch (zzhak e2) {
            throw e2.zza();
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzgyk) {
                throw ((zzgyk) e3.getCause());
            }
            throw new zzgyk(e3);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzgyk("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public static final boolean a0(ia iaVar, boolean z) {
        byte bByteValue = ((Byte) iaVar.W(zzgxu.GET_MEMOIZED_IS_INITIALIZED, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zG = xti.a().b(iaVar.getClass()).g(iaVar);
        if (z) {
            iaVar.W(zzgxu.SET_MEMOIZED_IS_INITIALIZED, true != zG ? null : iaVar, null);
        }
        return zG;
    }

    public static vsi q() {
        return osi.i();
    }

    public static vsi r(vsi vsiVar) {
        int size = vsiVar.size();
        return vsiVar.e(size + size);
    }

    public static xsi s() {
        return eti.j();
    }

    public static xsi t(xsi xsiVar) {
        int size = xsiVar.size();
        return xsiVar.e(size + size);
    }

    public static ysi u() {
        return yti.c();
    }

    public static ysi v(ysi ysiVar) {
        int size = ysiVar.size();
        return ysiVar.e(size + size);
    }

    public static Object y(Method method, Object obj, Object... objArr) {
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

    public static Object z(rti rtiVar, String str, Object[] objArr) {
        return new zti(rtiVar, str, objArr);
    }

    public void A() {
        this.zzq = 0;
    }

    public void B() {
        j(Integer.MAX_VALUE);
    }

    public void C() {
        xti.a().b(getClass()).a(this);
        E();
    }

    public void E() {
        this.zzd &= Integer.MAX_VALUE;
    }

    @Override
    public final lsi e() {
        return (lsi) W(zzgxu.NEW_BUILDER, null, null);
    }

    public final lsi H() {
        lsi lsiVar = (lsi) W(zzgxu.NEW_BUILDER, null, null);
        lsiVar.o(this);
        return lsiVar;
    }

    @Override
    public final ia d() {
        return (ia) W(zzgxu.GET_DEFAULT_INSTANCE, null, null);
    }

    public ia K() {
        return (ia) W(zzgxu.NEW_MUTABLE_INSTANCE, null, null);
    }

    public final boolean P() {
        return a0(this, true);
    }

    public final int S(cui cuiVar) {
        if (cuiVar != null) {
            return cuiVar.zza(this);
        }
        return xti.a().b(getClass()).zza(this);
    }

    public void T(int i) {
        this.zzq = i;
    }

    public boolean U() {
        return o() == 0;
    }

    public boolean V() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    public abstract Object W(zzgxu zzgxuVar, Object obj, Object obj2);

    @Override
    public int a() {
        return f(null);
    }

    @Override
    public int b() {
        return this.zzd & Integer.MAX_VALUE;
    }

    @Override
    public void c(ha haVar) {
        xti.a().b(getClass()).c(this, asi.a(haVar));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return xti.a().b(getClass()).f(this, (ia) obj);
    }

    @Override
    public int f(cui cuiVar) {
        if (!V()) {
            if (b() != Integer.MAX_VALUE) {
                return b();
            }
            int iS = S(cuiVar);
            j(iS);
            return iS;
        }
        int iS2 = S(cuiVar);
        if (iS2 >= 0) {
            return iS2;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + iS2);
    }

    public int hashCode() {
        if (V()) {
            return n();
        }
        if (U()) {
            T(n());
        }
        return o();
    }

    @Override
    public void j(int i) {
        if (i >= 0) {
            this.zzd = i | (this.zzd & Integer.MIN_VALUE);
            return;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + i);
    }

    public int n() {
        return xti.a().b(getClass()).zzb(this);
    }

    public int o() {
        return this.zzq;
    }

    public final lsi p() {
        return (lsi) W(zzgxu.NEW_BUILDER, null, null);
    }

    public String toString() {
        return ja.a(this, super.toString());
    }

    public final vti w() {
        return (vti) W(zzgxu.GET_PARSER, null, null);
    }

    public Object x() {
        return W(zzgxu.BUILD_MESSAGE_INFO, null, null);
    }
}
