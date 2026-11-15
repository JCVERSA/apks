package kotlin.reflect.jvm.internal.impl.utils;

import defpackage.e74;
import defpackage.s74;
import defpackage.u74;
import defpackage.zfb;

public abstract class FunctionsKt {
    public static final e74 a = new e74() {
        @Override
        public final Object invoke(Object obj) {
            return obj;
        }
    };
    public static final e74 b = new e74() {
        @Override
        public final Boolean invoke(Object obj) {
            return Boolean.TRUE;
        }
    };
    public static final e74 c = new e74() {
        @Override
        public final Void invoke(Object obj) {
            return null;
        }
    };
    public static final e74 d = new e74() {
        public final void m291invoke(Object obj) {
        }

        @Override
        public Object invoke(Object obj) {
            m291invoke(obj);
            return zfb.a;
        }
    };
    public static final s74 e = new s74() {
        public final void m292invoke(Object obj, Object obj2) {
        }

        @Override
        public Object invoke(Object obj, Object obj2) {
            m292invoke(obj, obj2);
            return zfb.a;
        }
    };
    public static final u74 f = new u74() {
        public final void m293invoke(Object obj, Object obj2, Object obj3) {
        }

        @Override
        public Object invoke(Object obj, Object obj2, Object obj3) {
            m293invoke(obj, obj2, obj3);
            return zfb.a;
        }
    };

    public static final e74 a() {
        return b;
    }

    public static final u74 b() {
        return f;
    }
}
