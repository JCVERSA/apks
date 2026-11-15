package androidx.p010savedstate;

import android.os.Bundle;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.r;
import androidx.p009lifecycle.u;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a implements r {

    public static final C0115a f14494b = new C0115a(null);

    private final e f14495a;

    public static final class C0115a {
        public C0115a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0115a() {
        }
    }

    public static final class b implements c.InterfaceC0116c {

        private final Set f14496a;

        public b(c registry) {
            Intrinsics.h(registry, "registry");
            this.f14496a = new LinkedHashSet();
            registry.h("androidx.savedstate.Restarter", this);
        }

        public final void a(String className) {
            Intrinsics.h(className, "className");
            this.f14496a.add(className);
        }

        @Override
        public Bundle saveState() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f14496a));
            return bundle;
        }
    }

    public a(e owner) {
        Intrinsics.h(owner, "owner");
        this.f14495a = owner;
    }

    private final void a(String str) {
        try {
            Class<? extends U> clsAsSubclass = Class.forName(str, false, a.class.getClassLoader()).asSubclass(c.a.class);
            Intrinsics.g(clsAsSubclass, "{\n                Class.…class.java)\n            }");
            try {
                Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(null);
                declaredConstructor.setAccessible(true);
                try {
                    Object objNewInstance = declaredConstructor.newInstance(null);
                    Intrinsics.g(objNewInstance, "{\n                constr…wInstance()\n            }");
                    ((c.a) objNewInstance).a(this.f14495a);
                } catch (Exception e10) {
                    throw new RuntimeException("Failed to instantiate " + str, e10);
                }
            } catch (NoSuchMethodException e11) {
                throw new IllegalStateException("Class " + clsAsSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e11);
            }
        } catch (ClassNotFoundException e12) {
            throw new RuntimeException("Class " + str + " wasn't found", e12);
        }
    }

    @Override
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (event != Lifecycle.Event.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        source.getLifecycle().d(this);
        Bundle bundleB = this.f14495a.getSavedStateRegistry().b("androidx.savedstate.Restarter");
        if (bundleB == null) {
            return;
        }
        ArrayList<String> stringArrayList = bundleB.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        Iterator<String> it = stringArrayList.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }
}
