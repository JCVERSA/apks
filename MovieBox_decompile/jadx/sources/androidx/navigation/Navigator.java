package androidx.navigation;

import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

public abstract class Navigator {

    private r f13542a;

    private boolean f13543b;

    public interface a {
    }

    @Retention(RetentionPolicy.RUNTIME)
    public @interface b {
        String value();
    }

    public abstract NavDestination a();

    protected final r b() {
        r rVar = this.f13542a;
        if (rVar != null) {
            return rVar;
        }
        throw new IllegalStateException("You cannot access the Navigator's state until the Navigator is attached");
    }

    public final boolean c() {
        return this.f13543b;
    }

    public NavDestination d(NavDestination destination, Bundle bundle, l lVar, a aVar) {
        Intrinsics.h(destination, "destination");
        return destination;
    }

    public void e(List entries, final l lVar, final a aVar) {
        Intrinsics.h(entries, "entries");
        Iterator f64466a = SequencesKt.r(SequencesKt.y(CollectionsKt.Z(entries), new Function1<NavBackStackEntry, NavBackStackEntry>(lVar, aVar) {
            final l $navOptions;
            final Navigator.a $navigatorExtras;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final NavBackStackEntry invoke(NavBackStackEntry backStackEntry) {
                NavDestination navDestinationD;
                Intrinsics.h(backStackEntry, "backStackEntry");
                NavDestination navDestinationF = backStackEntry.f();
                if (!(navDestinationF instanceof NavDestination)) {
                    navDestinationF = null;
                }
                if (navDestinationF != null && (navDestinationD = this.this$0.d(navDestinationF, backStackEntry.d(), this.$navOptions, null)) != null) {
                    return Intrinsics.c(navDestinationD, navDestinationF) ? backStackEntry : this.this$0.b().a(navDestinationD, navDestinationD.f(backStackEntry.d()));
                }
                return null;
            }
        })).getF64466a();
        while (f64466a.hasNext()) {
            b().h((NavBackStackEntry) f64466a.next());
        }
    }

    public void f(r state) {
        Intrinsics.h(state, "state");
        this.f13542a = state;
        this.f13543b = true;
    }

    public void g(NavBackStackEntry backStackEntry) {
        Intrinsics.h(backStackEntry, "backStackEntry");
        NavDestination navDestinationF = backStackEntry.f();
        if (!(navDestinationF instanceof NavDestination)) {
            navDestinationF = null;
        }
        if (navDestinationF == null) {
            return;
        }
        d(navDestinationF, null, n.a(new Function1<m, Unit>() {
            @Override
            public Object invoke(Object obj) {
                invoke((m) obj);
                return Unit.f64096a;
            }

            public final void invoke(m navOptions) {
                Intrinsics.h(navOptions, "$this$navOptions");
                navOptions.h(true);
            }
        }), null);
        b().f(backStackEntry);
    }

    public void h(Bundle savedState) {
        Intrinsics.h(savedState, "savedState");
    }

    public Bundle i() {
        return null;
    }

    public void j(NavBackStackEntry popUpTo, boolean z10) {
        Intrinsics.h(popUpTo, "popUpTo");
        List list = (List) b().b().getValue();
        if (!list.contains(popUpTo)) {
            throw new IllegalStateException(("popBackStack was called with " + popUpTo + " which does not exist in back stack " + list).toString());
        }
        ListIterator listIterator = list.listIterator(list.size());
        NavBackStackEntry navBackStackEntry = null;
        while (k()) {
            navBackStackEntry = (NavBackStackEntry) listIterator.previous();
            if (Intrinsics.c(navBackStackEntry, popUpTo)) {
                break;
            }
        }
        if (navBackStackEntry != null) {
            b().g(navBackStackEntry, z10);
        }
    }

    public boolean k() {
        return true;
    }
}
