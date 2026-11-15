package gj;

import java.util.HashMap;
import java.util.ServiceLoader;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final C0740a f61068a = new C0740a(null);

    private static final HashMap f61069b = new HashMap();

    public static final class C0740a {
        public C0740a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Object a(Class clazz) {
            Intrinsics.h(clazz, "clazz");
            if (a.f61069b.containsKey(clazz.getName())) {
                Object obj = a.f61069b.get(clazz.getName());
                Intrinsics.f(obj, "null cannot be cast to non-null type T of com.transsion.baselib.service.BusinessServiceManager.Companion.getService");
                return obj;
            }
            ServiceLoader serviceLoaderLoad = ServiceLoader.load(clazz);
            if (serviceLoaderLoad.iterator().hasNext()) {
                Object next = serviceLoaderLoad.iterator().next();
                a.f61069b.put(clazz.getName(), next);
                return next;
            }
            wf.a.C0922a.m(wf.a.f74274a, "Service " + clazz + " has not implemented", false, 2, null);
            return null;
        }

        private C0740a() {
        }
    }
}
