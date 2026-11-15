package androidx.navigation;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.l0;
import androidx.p009lifecycle.q0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.w;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class NavBackStackEntry implements u, y0, androidx.p009lifecycle.m, androidx.p010savedstate.e {

    public static final a f13451n = new a(null);

    private final Context f13452a;

    private NavDestination f13453b;

    private final Bundle f13454c;

    private Lifecycle.State f13455d;

    private final p f13456e;

    private final String f13457f;

    private final Bundle f13458g;

    private w f13459h;

    private final androidx.p010savedstate.d f13460i;

    private boolean f13461j;

    private final Lazy f13462k;

    private final Lazy f13463l;

    private Lifecycle.State f13464m;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static NavBackStackEntry b(a aVar, Context context, NavDestination navDestination, Bundle bundle, Lifecycle.State state, p pVar, String str, Bundle bundle2, int i10, Object obj) {
            String str2;
            Bundle bundle3 = (i10 & 4) != 0 ? null : bundle;
            Lifecycle.State state2 = (i10 & 8) != 0 ? Lifecycle.State.CREATED : state;
            p pVar2 = (i10 & 16) != 0 ? null : pVar;
            if ((i10 & 32) != 0) {
                String string = UUID.randomUUID().toString();
                Intrinsics.g(string, "randomUUID().toString()");
                str2 = string;
            } else {
                str2 = str;
            }
            return aVar.a(context, navDestination, bundle3, state2, pVar2, str2, (i10 & 64) != 0 ? null : bundle2);
        }

        public final NavBackStackEntry a(Context context, NavDestination destination, Bundle bundle, Lifecycle.State hostLifecycleState, p pVar, String id2, Bundle bundle2) {
            Intrinsics.h(destination, "destination");
            Intrinsics.h(hostLifecycleState, "hostLifecycleState");
            Intrinsics.h(id2, "id");
            return new NavBackStackEntry(context, destination, bundle, hostLifecycleState, pVar, id2, bundle2, null);
        }

        private a() {
        }
    }

    static final class b extends androidx.p009lifecycle.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(androidx.p010savedstate.e owner, Bundle bundle) {
            super(owner, bundle);
            Intrinsics.h(owner, "owner");
        }

        @Override
        protected t0 c(String key, Class modelClass, l0 handle) {
            Intrinsics.h(key, "key");
            Intrinsics.h(modelClass, "modelClass");
            Intrinsics.h(handle, "handle");
            return new c(handle);
        }
    }

    static final class c extends t0 {

        private final l0 f13465a;

        public c(l0 handle) {
            Intrinsics.h(handle, "handle");
            this.f13465a = handle;
        }

        public final l0 b() {
            return this.f13465a;
        }
    }

    public NavBackStackEntry(Context context, NavDestination navDestination, Bundle bundle, Lifecycle.State state, p pVar, String str, Bundle bundle2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, navDestination, bundle, state, pVar, str, bundle2);
    }

    private final q0 e() {
        return (q0) this.f13462k.getValue();
    }

    public final Bundle d() {
        return this.f13454c;
    }

    public boolean equals(Object obj) {
        Set<String> setKeySet;
        if (obj == null || !(obj instanceof NavBackStackEntry)) {
            return false;
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
        if (!Intrinsics.c(this.f13457f, navBackStackEntry.f13457f) || !Intrinsics.c(this.f13453b, navBackStackEntry.f13453b) || !Intrinsics.c(this.f13459h, navBackStackEntry.f13459h) || !Intrinsics.c(getSavedStateRegistry(), navBackStackEntry.getSavedStateRegistry())) {
            return false;
        }
        if (!Intrinsics.c(this.f13454c, navBackStackEntry.f13454c)) {
            Bundle bundle = this.f13454c;
            if (bundle == null || (setKeySet = bundle.keySet()) == null) {
                return false;
            }
            Set<String> set = setKeySet;
            if (!(set instanceof Collection) || !set.isEmpty()) {
                for (String str : set) {
                    Object obj2 = d().get(str);
                    Bundle bundleD = navBackStackEntry.d();
                    if (!Intrinsics.c(obj2, bundleD == null ? null : bundleD.get(str))) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public final NavDestination f() {
        return this.f13453b;
    }

    public final String g() {
        return this.f13457f;
    }

    @Override
    public p1.a getDefaultViewModelCreationExtras() {
        return androidx.p009lifecycle.l.a(this);
    }

    @Override
    public v0.c getDefaultViewModelProviderFactory() {
        return e();
    }

    @Override
    public Lifecycle getLifecycle() {
        return this.f13459h;
    }

    @Override
    public androidx.p010savedstate.c getSavedStateRegistry() {
        androidx.p010savedstate.c cVarB = this.f13460i.b();
        Intrinsics.g(cVarB, "savedStateRegistryController.savedStateRegistry");
        return cVarB;
    }

    @Override
    public x0 getViewModelStore() {
        if (!this.f13461j) {
            throw new IllegalStateException("You cannot access the NavBackStackEntry's ViewModels until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).");
        }
        if (this.f13459h.b() == Lifecycle.State.DESTROYED) {
            throw new IllegalStateException("You cannot access the NavBackStackEntry's ViewModels after the NavBackStackEntry is destroyed.");
        }
        p pVar = this.f13456e;
        if (pVar != null) {
            return pVar.a(this.f13457f);
        }
        throw new IllegalStateException("You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph.");
    }

    public final Lifecycle.State h() {
        return this.f13464m;
    }

    public int hashCode() {
        Set<String> setKeySet;
        int iHashCode = (this.f13457f.hashCode() * 31) + this.f13453b.hashCode();
        Bundle bundle = this.f13454c;
        if (bundle != null && (setKeySet = bundle.keySet()) != null) {
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                int i10 = iHashCode * 31;
                Object obj = d().get((String) it.next());
                iHashCode = i10 + (obj == null ? 0 : obj.hashCode());
            }
        }
        return (((iHashCode * 31) + this.f13459h.hashCode()) * 31) + getSavedStateRegistry().hashCode();
    }

    public final void i(Lifecycle.Event event) {
        Intrinsics.h(event, "event");
        Lifecycle.State targetState = event.getTargetState();
        Intrinsics.g(targetState, "event.targetState");
        this.f13455d = targetState;
        m();
    }

    public final void j(Bundle outBundle) {
        Intrinsics.h(outBundle, "outBundle");
        this.f13460i.e(outBundle);
    }

    public final void k(NavDestination navDestination) {
        Intrinsics.h(navDestination, "<set-?>");
        this.f13453b = navDestination;
    }

    public final void l(Lifecycle.State maxState) {
        Intrinsics.h(maxState, "maxState");
        this.f13464m = maxState;
        m();
    }

    public final void m() {
        if (!this.f13461j) {
            this.f13460i.d(this.f13458g);
            this.f13461j = true;
        }
        if (this.f13455d.ordinal() < this.f13464m.ordinal()) {
            this.f13459h.n(this.f13455d);
        } else {
            this.f13459h.n(this.f13464m);
        }
    }

    private NavBackStackEntry(Context context, NavDestination navDestination, Bundle bundle, Lifecycle.State state, p pVar, String str, Bundle bundle2) {
        this.f13452a = context;
        this.f13453b = navDestination;
        this.f13454c = bundle;
        this.f13455d = state;
        this.f13456e = pVar;
        this.f13457f = str;
        this.f13458g = bundle2;
        this.f13459h = new w(this);
        androidx.p010savedstate.d dVarA = androidx.p010savedstate.d.a(this);
        Intrinsics.g(dVarA, "create(this)");
        this.f13460i = dVarA;
        this.f13462k = LazyKt.b(new Function0<q0>() {
            {
                super(0);
            }

            @Override
            public final q0 invoke() {
                Context context2 = this.this$0.f13452a;
                Context applicationContext = context2 == null ? null : context2.getApplicationContext();
                Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                NavBackStackEntry navBackStackEntry = this.this$0;
                return new q0(application, navBackStackEntry, navBackStackEntry.d());
            }
        });
        this.f13463l = LazyKt.b(new Function0<l0>() {
            {
                super(0);
            }

            @Override
            public final l0 invoke() {
                if (!this.this$0.f13461j) {
                    throw new IllegalStateException("You cannot access the NavBackStackEntry's SavedStateHandle until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).");
                }
                if (this.this$0.f13459h.b() == Lifecycle.State.DESTROYED) {
                    throw new IllegalStateException("You cannot access the NavBackStackEntry's SavedStateHandle after the NavBackStackEntry is destroyed.");
                }
                NavBackStackEntry navBackStackEntry = this.this$0;
                return ((NavBackStackEntry.c) new v0(navBackStackEntry, new NavBackStackEntry.b(navBackStackEntry, null)).a(NavBackStackEntry.c.class)).b();
            }
        });
        this.f13464m = Lifecycle.State.INITIALIZED;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavBackStackEntry(NavBackStackEntry entry, Bundle bundle) {
        this(entry.f13452a, entry.f13453b, bundle, entry.f13455d, entry.f13456e, entry.f13457f, entry.f13458g);
        Intrinsics.h(entry, "entry");
        this.f13455d = entry.f13455d;
        l(entry.f13464m);
    }
}
