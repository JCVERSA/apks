package androidx.versionedparcelable;

import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class VersionedParcel {

    protected final androidx.collection.a f14891a;

    protected final androidx.collection.a f14892b;

    protected final androidx.collection.a f14893c;

    public static class ParcelException extends RuntimeException {
        public ParcelException(Throwable th2) {
            super(th2);
        }
    }

    public VersionedParcel(androidx.collection.a aVar, androidx.collection.a aVar2, androidx.collection.a aVar3) {
        this.f14891a = aVar;
        this.f14892b = aVar2;
        this.f14893c = aVar3;
    }

    private void N(c cVar) {
        try {
            I(c(cVar.getClass()).getName());
        } catch (ClassNotFoundException e10) {
            throw new RuntimeException(cVar.getClass().getSimpleName() + " does not have a Parcelizer", e10);
        }
    }

    private Class c(Class cls) throws ClassNotFoundException {
        Class cls2 = (Class) this.f14893c.get(cls.getName());
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
        this.f14893c.put(cls.getName(), cls3);
        return cls3;
    }

    private Method d(String str) throws NoSuchMethodException {
        Method method = (Method) this.f14891a.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
        this.f14891a.put(str, declaredMethod);
        return declaredMethod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Method e(Class cls) throws NoSuchMethodException, ClassNotFoundException {
        Method method = (Method) this.f14892b.get(cls.getName());
        if (method != null) {
            return method;
        }
        Class clsC = c(cls);
        System.currentTimeMillis();
        Method declaredMethod = clsC.getDeclaredMethod("write", cls, VersionedParcel.class);
        this.f14892b.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    protected abstract void A(byte[] bArr);

    public void B(byte[] bArr, int i10) {
        w(i10);
        A(bArr);
    }

    protected abstract void C(CharSequence charSequence);

    public void D(CharSequence charSequence, int i10) {
        w(i10);
        C(charSequence);
    }

    protected abstract void E(int i10);

    public void F(int i10, int i11) {
        w(i11);
        E(i10);
    }

    protected abstract void G(Parcelable parcelable);

    public void H(Parcelable parcelable, int i10) {
        w(i10);
        G(parcelable);
    }

    protected abstract void I(String str);

    public void J(String str, int i10) {
        w(i10);
        I(str);
    }

    protected void K(c cVar, VersionedParcel versionedParcel) {
        try {
            e(cVar.getClass()).invoke(null, cVar, versionedParcel);
        } catch (ClassNotFoundException e10) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e10);
        } catch (IllegalAccessException e11) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e11);
        } catch (NoSuchMethodException e12) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e12);
        } catch (InvocationTargetException e13) {
            if (!(e13.getCause() instanceof RuntimeException)) {
                throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e13);
            }
            throw ((RuntimeException) e13.getCause());
        }
    }

    protected void L(c cVar) {
        if (cVar == null) {
            I(null);
            return;
        }
        N(cVar);
        VersionedParcel versionedParcelB = b();
        K(cVar, versionedParcelB);
        versionedParcelB.a();
    }

    public void M(c cVar, int i10) {
        w(i10);
        L(cVar);
    }

    protected abstract void a();

    protected abstract VersionedParcel b();

    public boolean f() {
        return false;
    }

    protected abstract boolean g();

    public boolean h(boolean z10, int i10) {
        return !m(i10) ? z10 : g();
    }

    protected abstract byte[] i();

    public byte[] j(byte[] bArr, int i10) {
        return !m(i10) ? bArr : i();
    }

    protected abstract CharSequence k();

    public CharSequence l(CharSequence charSequence, int i10) {
        return !m(i10) ? charSequence : k();
    }

    protected abstract boolean m(int i10);

    protected c n(String str, VersionedParcel versionedParcel) {
        try {
            return (c) d(str).invoke(null, versionedParcel);
        } catch (ClassNotFoundException e10) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e10);
        } catch (IllegalAccessException e11) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e11);
        } catch (NoSuchMethodException e12) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e12);
        } catch (InvocationTargetException e13) {
            if (e13.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e13.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e13);
        }
    }

    protected abstract int o();

    public int p(int i10, int i11) {
        return !m(i11) ? i10 : o();
    }

    protected abstract Parcelable q();

    public Parcelable r(Parcelable parcelable, int i10) {
        return !m(i10) ? parcelable : q();
    }

    protected abstract String s();

    public String t(String str, int i10) {
        return !m(i10) ? str : s();
    }

    protected c u() {
        String strS = s();
        if (strS == null) {
            return null;
        }
        return n(strS, b());
    }

    public c v(c cVar, int i10) {
        return !m(i10) ? cVar : u();
    }

    protected abstract void w(int i10);

    protected abstract void y(boolean z10);

    public void z(boolean z10, int i10) {
        w(i10);
        y(z10);
    }

    public void x(boolean z10, boolean z11) {
    }
}
