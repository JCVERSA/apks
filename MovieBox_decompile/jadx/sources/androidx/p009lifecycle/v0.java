package androidx.p009lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import q1.g;

public class v0 {

    public static final b f9337b = new b(null);

    public static final p1.a.b f9338c = g.a.f69330a;

    private final p1.c f9339a;

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final v0 a(x0 store, c factory, p1.a extras) {
            Intrinsics.h(store, "store");
            Intrinsics.h(factory, "factory");
            Intrinsics.h(extras, "extras");
            return new v0(store, factory, extras);
        }

        private b() {
        }
    }

    public interface c {
        t0 create(Class cls);

        t0 create(Class cls, p1.a aVar);

        t0 create(KClass kClass, p1.a aVar);
    }

    public static class d implements c {

        private static d f9345b;

        public static final a f9344a = new a(null);

        public static final p1.a.b f9346c = g.a.f69330a;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final d a() {
                if (d.f9345b == null) {
                    d.f9345b = new d();
                }
                d dVar = d.f9345b;
                Intrinsics.e(dVar);
                return dVar;
            }

            private a() {
            }
        }

        @Override
        public t0 create(Class modelClass) {
            Intrinsics.h(modelClass, "modelClass");
            return q1.d.f69324a.a(modelClass);
        }

        @Override
        public t0 create(Class modelClass, p1.a extras) {
            Intrinsics.h(modelClass, "modelClass");
            Intrinsics.h(extras, "extras");
            return create(modelClass);
        }

        @Override
        public t0 create(KClass modelClass, p1.a extras) {
            Intrinsics.h(modelClass, "modelClass");
            Intrinsics.h(extras, "extras");
            return create(JvmClassMappingKt.a(modelClass), extras);
        }
    }

    public static class e {
        public void a(t0 viewModel) {
            Intrinsics.h(viewModel, "viewModel");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public v0(x0 store, c factory) {
        this(store, factory, null, 4, null);
        Intrinsics.h(store, "store");
        Intrinsics.h(factory, "factory");
    }

    public t0 a(Class modelClass) {
        Intrinsics.h(modelClass, "modelClass");
        return c(JvmClassMappingKt.c(modelClass));
    }

    public t0 b(String key, Class modelClass) {
        Intrinsics.h(key, "key");
        Intrinsics.h(modelClass, "modelClass");
        return this.f9339a.a(JvmClassMappingKt.c(modelClass), key);
    }

    public final t0 c(KClass modelClass) {
        Intrinsics.h(modelClass, "modelClass");
        return p1.c.b(this.f9339a, modelClass, null, 2, null);
    }

    public static class a extends d {

        private static a f9341f;

        private final Application f9343d;

        public static final b f9340e = new b(null);

        public static final p1.a.b f9342g = new C0077a();

        public static final class C0077a implements p1.a.b {
            C0077a() {
            }
        }

        public static final class b {
            public b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final a a(Application application) {
                Intrinsics.h(application, "application");
                if (a.f9341f == null) {
                    a.f9341f = new a(application);
                }
                a aVar = a.f9341f;
                Intrinsics.e(aVar);
                return aVar;
            }

            private b() {
            }
        }

        private a(Application application, int i10) {
            this.f9343d = application;
        }

        private final t0 e(Class cls, Application application) {
            if (!androidx.p009lifecycle.b.class.isAssignableFrom(cls)) {
                return super.create(cls);
            }
            try {
                t0 t0Var = (t0) cls.getConstructor(Application.class).newInstance(application);
                Intrinsics.g(t0Var, "{\n                try {\n…          }\n            }");
                return t0Var;
            } catch (IllegalAccessException e10) {
                throw new RuntimeException("Cannot create an instance of " + cls, e10);
            } catch (InstantiationException e11) {
                throw new RuntimeException("Cannot create an instance of " + cls, e11);
            } catch (NoSuchMethodException e12) {
                throw new RuntimeException("Cannot create an instance of " + cls, e12);
            } catch (InvocationTargetException e13) {
                throw new RuntimeException("Cannot create an instance of " + cls, e13);
            }
        }

        @Override
        public t0 create(Class modelClass, p1.a extras) {
            Intrinsics.h(modelClass, "modelClass");
            Intrinsics.h(extras, "extras");
            if (this.f9343d != null) {
                return create(modelClass);
            }
            Application application = (Application) extras.a(f9342g);
            if (application != null) {
                return e(modelClass, application);
            }
            if (androidx.p009lifecycle.b.class.isAssignableFrom(modelClass)) {
                throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
            }
            return super.create(modelClass);
        }

        public a() {
            this(null, 0);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public a(Application application) {
            this(application, 0);
            Intrinsics.h(application, "application");
        }

        @Override
        public t0 create(Class modelClass) {
            Intrinsics.h(modelClass, "modelClass");
            Application application = this.f9343d;
            if (application != null) {
                return e(modelClass, application);
            }
            throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
        }
    }

    private v0(p1.c cVar) {
        this.f9339a = cVar;
    }

    public v0(x0 x0Var, c cVar, p1.a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(x0Var, cVar, (i10 & 4) != 0 ? p1.a.C0848a.f68963b : aVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public v0(x0 store, c factory, p1.a defaultCreationExtras) {
        this(new p1.c(store, factory, defaultCreationExtras));
        Intrinsics.h(store, "store");
        Intrinsics.h(factory, "factory");
        Intrinsics.h(defaultCreationExtras, "defaultCreationExtras");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public v0(y0 owner) {
        Intrinsics.h(owner, "owner");
        x0 viewModelStore = owner.getViewModelStore();
        g gVar = g.f69329a;
        this(viewModelStore, gVar.b(owner), gVar.a(owner));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public v0(y0 owner, c factory) {
        this(owner.getViewModelStore(), factory, g.f69329a.a(owner));
        Intrinsics.h(owner, "owner");
        Intrinsics.h(factory, "factory");
    }
}
