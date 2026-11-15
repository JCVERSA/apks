package com.google.android.gms.internal.play_billing;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.android.gms.internal.play_billing.k;
import defpackage.l1g;
import defpackage.p3g;
import java.lang.reflect.Field;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

public final class k extends h {
    public static final Unsafe a;
    public static final long b;
    public static final long c;
    public static final long d;
    public static final long e;
    public static final long f;

    static {
        Unsafe unsafeH;
        try {
            try {
                unsafeH = Unsafe.getUnsafe();
            } catch (SecurityException unused) {
                try {
                    unsafeH = (Unsafe) Class.forName("java.security.AccessController").getMethod("doPrivileged", PrivilegedExceptionAction.class).invoke(null, new PrivilegedExceptionAction() {
                        @Override
                        public final Object run() {
                            return k.h();
                        }
                    });
                } catch (Exception unused2) {
                    unsafeH = h();
                    Unsafe unsafe = unsafeH;
                }
            }
            try {
                c = unsafeH.objectFieldOffset(m.class.getDeclaredField("d"));
                b = unsafeH.objectFieldOffset(m.class.getDeclaredField("c"));
                d = unsafeH.objectFieldOffset(m.class.getDeclaredField("b"));
                e = unsafeH.objectFieldOffset(l.class.getDeclaredField(CmcdData.OBJECT_TYPE_AUDIO_ONLY));
                f = unsafeH.objectFieldOffset(l.class.getDeclaredField("b"));
                a = unsafeH;
            } catch (NoSuchFieldException e2) {
                throw new RuntimeException(e2);
            }
        } catch (Exception e3) {
            throw new RuntimeException("Could not initialize intrinsics", e3);
        }
    }

    public k(p3g p3gVar) {
        super(null);
    }

    public static Unsafe h() throws IllegalAccessException {
        for (Field field : Unsafe.class.getDeclaredFields()) {
            field.setAccessible(true);
            Object obj = field.get(null);
            if (Unsafe.class.isInstance(obj)) {
                return (Unsafe) Unsafe.class.cast(obj);
            }
        }
        throw new NoSuchFieldError("the Unsafe");
    }

    @Override
    public final e a(m mVar, e eVar) {
        e eVar2;
        do {
            eVar2 = mVar.c;
            if (eVar == eVar2) {
                break;
            }
        } while (!e(mVar, eVar2, eVar));
        return eVar2;
    }

    @Override
    public final l b(m mVar, l lVar) {
        l lVar2;
        do {
            lVar2 = mVar.d;
            if (lVar == lVar2) {
                break;
            }
        } while (!g(mVar, lVar2, lVar));
        return lVar2;
    }

    @Override
    public final void c(l lVar, l lVar2) {
        a.putObject(lVar, f, lVar2);
    }

    @Override
    public final void d(l lVar, Thread thread) {
        a.putObject(lVar, e, thread);
    }

    @Override
    public final boolean e(m mVar, e eVar, e eVar2) {
        return l1g.a(a, mVar, b, eVar, eVar2);
    }

    @Override
    public final boolean f(m mVar, Object obj, Object obj2) {
        return l1g.a(a, mVar, d, obj, obj2);
    }

    @Override
    public final boolean g(m mVar, l lVar, l lVar2) {
        return l1g.a(a, mVar, c, lVar, lVar2);
    }
}
