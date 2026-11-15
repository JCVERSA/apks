package androidx.navigation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.collection.a1;
import androidx.collection.y0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;

public class NavGraph extends NavDestination implements Iterable, KMappedMarker {

    public static final Companion f13533p = new Companion(null);

    private final y0 f13534l;

    private int f13535m;

    private String f13536n;

    private String f13537o;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final NavDestination a(NavGraph navGraph) {
            Intrinsics.h(navGraph, "<this>");
            return (NavDestination) SequencesKt.x(SequencesKt.h(navGraph.A(navGraph.G()), new Function1<NavDestination, NavDestination>() {
                @Override
                public final NavDestination invoke(NavDestination it) {
                    Intrinsics.h(it, "it");
                    if (!(it instanceof NavGraph)) {
                        return null;
                    }
                    NavGraph navGraph2 = (NavGraph) it;
                    return navGraph2.A(navGraph2.G());
                }
            }));
        }

        private Companion() {
        }
    }

    public static final class a implements Iterator, KMutableIterator {

        private int f13538a = -1;

        private boolean f13539b;

        a() {
        }

        @Override
        public NavDestination next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f13539b = true;
            y0 y0VarE = NavGraph.this.E();
            int i10 = this.f13538a + 1;
            this.f13538a = i10;
            Object objQ = y0VarE.q(i10);
            Intrinsics.g(objQ, "nodes.valueAt(++index)");
            return (NavDestination) objQ;
        }

        @Override
        public boolean hasNext() {
            return this.f13538a + 1 < NavGraph.this.E().p();
        }

        @Override
        public void remove() {
            if (!this.f13539b) {
                throw new IllegalStateException("You must call next() before you can remove an element");
            }
            y0 y0VarE = NavGraph.this.E();
            ((NavDestination) y0VarE.q(this.f13538a)).w(null);
            y0VarE.n(this.f13538a);
            this.f13538a--;
            this.f13539b = false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraph(Navigator navGraphNavigator) {
        super(navGraphNavigator);
        Intrinsics.h(navGraphNavigator, "navGraphNavigator");
        this.f13534l = new y0();
    }

    private final void I(int i10) {
        if (i10 != n()) {
            if (this.f13537o != null) {
                J(null);
            }
            this.f13535m = i10;
            this.f13536n = null;
            return;
        }
        throw new IllegalArgumentException(("Start destination " + i10 + " cannot use the same id as the graph " + this).toString());
    }

    private final void J(String str) {
        int iHashCode;
        if (str == null) {
            iHashCode = 0;
        } else {
            if (Intrinsics.c(str, q())) {
                throw new IllegalArgumentException(("Start destination " + ((Object) str) + " cannot use the same route as the graph " + this).toString());
            }
            if (StringsKt.q0(str)) {
                throw new IllegalArgumentException("Cannot have an empty start destination route");
            }
            iHashCode = NavDestination.f13517j.a(str).hashCode();
        }
        this.f13535m = iHashCode;
        this.f13537o = str;
    }

    public final NavDestination A(int i10) {
        return B(i10, true);
    }

    public final NavDestination B(int i10, boolean z10) {
        NavDestination navDestination = (NavDestination) this.f13534l.g(i10);
        if (navDestination != null) {
            return navDestination;
        }
        if (!z10 || p() == null) {
            return null;
        }
        NavGraph navGraphP = p();
        Intrinsics.e(navGraphP);
        return navGraphP.A(i10);
    }

    public final NavDestination C(String str) {
        if (str == null || StringsKt.q0(str)) {
            return null;
        }
        return D(str, true);
    }

    public final NavDestination D(String route, boolean z10) {
        Intrinsics.h(route, "route");
        NavDestination navDestination = (NavDestination) this.f13534l.g(NavDestination.f13517j.a(route).hashCode());
        if (navDestination != null) {
            return navDestination;
        }
        if (!z10 || p() == null) {
            return null;
        }
        NavGraph navGraphP = p();
        Intrinsics.e(navGraphP);
        return navGraphP.C(route);
    }

    public final y0 E() {
        return this.f13534l;
    }

    public final String F() {
        if (this.f13536n == null) {
            String strValueOf = this.f13537o;
            if (strValueOf == null) {
                strValueOf = String.valueOf(this.f13535m);
            }
            this.f13536n = strValueOf;
        }
        String str = this.f13536n;
        Intrinsics.e(str);
        return str;
    }

    public final int G() {
        return this.f13535m;
    }

    public final String H() {
        return this.f13537o;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof NavGraph)) {
            return false;
        }
        List listD = SequencesKt.D(SequencesKt.e(a1.a(this.f13534l)));
        NavGraph navGraph = (NavGraph) obj;
        Iterator itA = a1.a(navGraph.f13534l);
        while (itA.hasNext()) {
            listD.remove((NavDestination) itA.next());
        }
        return super.equals(obj) && this.f13534l.p() == navGraph.f13534l.p() && G() == navGraph.G() && listD.isEmpty();
    }

    @Override
    public int hashCode() {
        int iG = G();
        y0 y0Var = this.f13534l;
        int iP = y0Var.p();
        for (int i10 = 0; i10 < iP; i10++) {
            iG = (((iG * 31) + y0Var.k(i10)) * 31) + ((NavDestination) y0Var.q(i10)).hashCode();
        }
        return iG;
    }

    @Override
    public final Iterator iterator() {
        return new a();
    }

    @Override
    public String m() {
        return n() != 0 ? super.m() : "the root navigation";
    }

    @Override
    public NavDestination.a r(g navDeepLinkRequest) {
        Intrinsics.h(navDeepLinkRequest, "navDeepLinkRequest");
        NavDestination.a aVarR = super.r(navDeepLinkRequest);
        ArrayList arrayList = new ArrayList();
        Iterator it = iterator();
        while (it.hasNext()) {
            NavDestination.a aVarR2 = ((NavDestination) it.next()).r(navDeepLinkRequest);
            if (aVarR2 != null) {
                arrayList.add(aVarR2);
            }
        }
        return (NavDestination.a) CollectionsKt.w0(CollectionsKt.p(aVarR, (NavDestination.a) CollectionsKt.w0(arrayList)));
    }

    @Override
    public void s(Context context, AttributeSet attrs) {
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        super.s(context, attrs);
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attrs, androidx.navigation.common.R$styleable.NavGraphNavigator);
        Intrinsics.g(typedArrayObtainAttributes, "context.resources.obtain…vGraphNavigator\n        )");
        I(typedArrayObtainAttributes.getResourceId(androidx.navigation.common.R$styleable.NavGraphNavigator_startDestination, 0));
        this.f13536n = NavDestination.f13517j.b(context, this.f13535m);
        Unit unit = Unit.f64096a;
        typedArrayObtainAttributes.recycle();
    }

    @Override
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        NavDestination navDestinationC = C(this.f13537o);
        if (navDestinationC == null) {
            navDestinationC = A(G());
        }
        sb2.append(" startDestination=");
        if (navDestinationC == null) {
            String str = this.f13537o;
            if (str != null) {
                sb2.append(str);
            } else {
                String str2 = this.f13536n;
                if (str2 != null) {
                    sb2.append(str2);
                } else {
                    sb2.append(Intrinsics.q("0x", Integer.toHexString(this.f13535m)));
                }
            }
        } else {
            sb2.append("{");
            sb2.append(navDestinationC.toString());
            sb2.append("}");
        }
        String string = sb2.toString();
        Intrinsics.g(string, "sb.toString()");
        return string;
    }

    public final void z(NavDestination node) {
        Intrinsics.h(node, "node");
        int iN = node.n();
        String strQ = node.q();
        if (iN == 0 && strQ == null) {
            throw new IllegalArgumentException("Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML.");
        }
        if (q() != null && Intrinsics.c(strQ, q())) {
            throw new IllegalArgumentException(("Destination " + node + " cannot have the same route as graph " + this).toString());
        }
        if (iN == n()) {
            throw new IllegalArgumentException(("Destination " + node + " cannot have the same id as graph " + this).toString());
        }
        NavDestination navDestination = (NavDestination) this.f13534l.g(iN);
        if (navDestination == node) {
            return;
        }
        if (node.p() != null) {
            throw new IllegalStateException("Destination already has a parent set. Call NavGraph.remove() to remove the previous parent.");
        }
        if (navDestination != null) {
            navDestination.w(null);
        }
        node.w(this);
        this.f13534l.l(node.n(), node);
    }
}
