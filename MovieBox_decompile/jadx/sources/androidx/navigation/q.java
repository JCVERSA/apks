package androidx.navigation;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class q {

    public static final a f13643b = new a(null);

    private static final Map f13644c = new LinkedHashMap();

    private final Map f13645a = new LinkedHashMap();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(Class navigatorClass) {
            Intrinsics.h(navigatorClass, "navigatorClass");
            String strValue = (String) q.f13644c.get(navigatorClass);
            if (strValue == null) {
                Navigator.b bVar = (Navigator.b) navigatorClass.getAnnotation(Navigator.b.class);
                strValue = bVar == null ? null : bVar.value();
                if (!b(strValue)) {
                    throw new IllegalArgumentException(Intrinsics.q("No @Navigator.Name annotation found for ", navigatorClass.getSimpleName()).toString());
                }
                q.f13644c.put(navigatorClass, strValue);
            }
            Intrinsics.e(strValue);
            return strValue;
        }

        public final boolean b(String str) {
            return str != null && str.length() > 0;
        }

        private a() {
        }
    }

    public final Navigator b(Navigator navigator) {
        Intrinsics.h(navigator, "navigator");
        return c(f13643b.a(navigator.getClass()), navigator);
    }

    public Navigator c(String name, Navigator navigator) {
        Intrinsics.h(name, "name");
        Intrinsics.h(navigator, "navigator");
        if (!f13643b.b(name)) {
            throw new IllegalArgumentException("navigator name cannot be an empty string");
        }
        Navigator navigator2 = (Navigator) this.f13645a.get(name);
        if (Intrinsics.c(navigator2, navigator)) {
            return navigator;
        }
        boolean z10 = false;
        if (navigator2 != null && navigator2.c()) {
            z10 = true;
        }
        if (z10) {
            throw new IllegalStateException(("Navigator " + navigator + " is replacing an already attached " + navigator2).toString());
        }
        if (!navigator.c()) {
            return (Navigator) this.f13645a.put(name, navigator);
        }
        throw new IllegalStateException(("Navigator " + navigator + " is already attached to another NavController").toString());
    }

    public Navigator d(String name) {
        Intrinsics.h(name, "name");
        if (!f13643b.b(name)) {
            throw new IllegalArgumentException("navigator name cannot be an empty string");
        }
        Navigator navigator = (Navigator) this.f13645a.get(name);
        if (navigator != null) {
            return navigator;
        }
        throw new IllegalStateException("Could not find Navigator with name \"" + name + "\". You must call NavController.addNavigator() for each navigation type.");
    }

    public final Map e() {
        return MapsKt.u(this.f13645a);
    }
}
