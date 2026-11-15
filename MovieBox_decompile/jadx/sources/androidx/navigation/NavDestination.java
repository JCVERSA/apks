package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.collection.a1;
import androidx.collection.y0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;

public abstract class NavDestination {

    public static final Companion f13517j = new Companion(null);

    private static final Map f13518k = new LinkedHashMap();

    private final String f13519a;

    private NavGraph f13520b;

    private String f13521c;

    private CharSequence f13522d;

    private final List f13523e;

    private final y0 f13524f;

    private Map f13525g;

    private int f13526h;

    private String f13527i;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(String str) {
            return str != null ? Intrinsics.q("android-app://androidx.navigation/", str) : "";
        }

        public final String b(Context context, int i10) {
            String strValueOf;
            Intrinsics.h(context, "context");
            if (i10 <= 16777215) {
                return String.valueOf(i10);
            }
            try {
                strValueOf = context.getResources().getResourceName(i10);
            } catch (Resources.NotFoundException unused) {
                strValueOf = String.valueOf(i10);
            }
            Intrinsics.g(strValueOf, "try {\n                co….toString()\n            }");
            return strValueOf;
        }

        public final Sequence c(NavDestination navDestination) {
            Intrinsics.h(navDestination, "<this>");
            return SequencesKt.h(navDestination, new Function1<NavDestination, NavDestination>() {
                @Override
                public final NavDestination invoke(NavDestination it) {
                    Intrinsics.h(it, "it");
                    return it.p();
                }
            });
        }

        private Companion() {
        }
    }

    public static final class a implements Comparable {

        private final NavDestination f13528a;

        private final Bundle f13529b;

        private final boolean f13530c;

        private final boolean f13531d;

        private final int f13532e;

        public a(NavDestination destination, Bundle bundle, boolean z10, boolean z11, int i10) {
            Intrinsics.h(destination, "destination");
            this.f13528a = destination;
            this.f13529b = bundle;
            this.f13530c = z10;
            this.f13531d = z11;
            this.f13532e = i10;
        }

        @Override
        public int compareTo(a other) {
            Intrinsics.h(other, "other");
            boolean z10 = this.f13530c;
            if (z10 && !other.f13530c) {
                return 1;
            }
            if (!z10 && other.f13530c) {
                return -1;
            }
            Bundle bundle = this.f13529b;
            if (bundle != null && other.f13529b == null) {
                return 1;
            }
            if (bundle == null && other.f13529b != null) {
                return -1;
            }
            if (bundle != null) {
                int size = bundle.size();
                Bundle bundle2 = other.f13529b;
                Intrinsics.e(bundle2);
                int size2 = size - bundle2.size();
                if (size2 > 0) {
                    return 1;
                }
                if (size2 < 0) {
                    return -1;
                }
            }
            boolean z11 = this.f13531d;
            if (z11 && !other.f13531d) {
                return 1;
            }
            if (z11 || !other.f13531d) {
                return this.f13532e - other.f13532e;
            }
            return -1;
        }

        public final NavDestination b() {
            return this.f13528a;
        }

        public final Bundle d() {
            return this.f13529b;
        }
    }

    public NavDestination(String navigatorName) {
        Intrinsics.h(navigatorName, "navigatorName");
        this.f13519a = navigatorName;
        this.f13523e = new ArrayList();
        this.f13524f = new y0();
        this.f13525g = new LinkedHashMap();
    }

    public static int[] j(NavDestination navDestination, NavDestination navDestination2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: buildDeepLinkIds");
        }
        if ((i10 & 1) != 0) {
            navDestination2 = null;
        }
        return navDestination.i(navDestination2);
    }

    public final void a(String argumentName, d argument) {
        Intrinsics.h(argumentName, "argumentName");
        Intrinsics.h(argument, "argument");
        this.f13525g.put(argumentName, argument);
    }

    public final void c(NavDeepLink navDeepLink) {
        Intrinsics.h(navDeepLink, "navDeepLink");
        Map mapL = l();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : mapL.entrySet()) {
            d dVar = (d) entry.getValue();
            if (!dVar.c() && !dVar.b()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Set setKeySet = linkedHashMap.keySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setKeySet) {
            if (!navDeepLink.e().contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            this.f13523e.add(navDeepLink);
            return;
        }
        throw new IllegalArgumentException(("Deep link " + ((Object) navDeepLink.k()) + " can't be used to open destination " + this + ".\nFollowing required arguments are missing: " + arrayList).toString());
    }

    public final void e(String uriPattern) {
        Intrinsics.h(uriPattern, "uriPattern");
        c(new NavDeepLink.a().d(uriPattern).a());
    }

    public boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        if (obj == null || !(obj instanceof NavDestination)) {
            return false;
        }
        NavDestination navDestination = (NavDestination) obj;
        boolean z12 = CollectionsKt.o0(this.f13523e, navDestination.f13523e).size() == this.f13523e.size();
        if (this.f13524f.p() != navDestination.f13524f.p()) {
            z10 = false;
            break;
        }
        Iterator it = SequencesKt.e(a1.a(this.f13524f)).getF64466a();
        while (true) {
            if (!it.hasNext()) {
                Iterator it2 = SequencesKt.e(a1.a(navDestination.f13524f)).getF64466a();
                while (true) {
                    if (!it2.hasNext()) {
                        z10 = true;
                        break;
                    }
                    if (!this.f13524f.e((c) it2.next())) {
                    }
                }
            } else {
                if (!navDestination.f13524f.e((c) it.next())) {
                }
            }
            z10 = false;
            break;
        }
        if (l().size() != navDestination.l().size()) {
            z11 = false;
            break;
        }
        Iterator it3 = MapsKt.x(l()).getF64466a();
        while (true) {
            if (!it3.hasNext()) {
                Iterator it4 = MapsKt.x(navDestination.l()).getF64466a();
                while (true) {
                    if (!it4.hasNext()) {
                        z11 = true;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it4.next();
                    if (!l().containsKey(entry.getKey()) || !Intrinsics.c(l().get(entry.getKey()), entry.getValue())) {
                    }
                }
            } else {
                Map.Entry entry2 = (Map.Entry) it3.next();
                if (!navDestination.l().containsKey(entry2.getKey()) || !Intrinsics.c(navDestination.l().get(entry2.getKey()), entry2.getValue())) {
                }
            }
            z11 = false;
            break;
        }
        return this.f13526h == navDestination.f13526h && Intrinsics.c(this.f13527i, navDestination.f13527i) && z12 && z10 && z11;
    }

    public final Bundle f(Bundle bundle) {
        Map map;
        if (bundle == null && ((map = this.f13525g) == null || map.isEmpty())) {
            return null;
        }
        Bundle bundle2 = new Bundle();
        for (Map.Entry entry : this.f13525g.entrySet()) {
            ((d) entry.getValue()).d((String) entry.getKey(), bundle2);
        }
        if (bundle != null) {
            bundle2.putAll(bundle);
            for (Map.Entry entry2 : this.f13525g.entrySet()) {
                String str = (String) entry2.getKey();
                d dVar = (d) entry2.getValue();
                if (!dVar.e(str, bundle2)) {
                    throw new IllegalArgumentException(("Wrong argument type for '" + str + "' in argument bundle. " + dVar.a().b() + " expected.").toString());
                }
            }
        }
        return bundle2;
    }

    public int hashCode() {
        Set<String> setKeySet;
        int i10 = this.f13526h * 31;
        String str = this.f13527i;
        int iHashCode = i10 + (str == null ? 0 : str.hashCode());
        for (NavDeepLink navDeepLink : this.f13523e) {
            int i11 = iHashCode * 31;
            String strK = navDeepLink.k();
            int iHashCode2 = (i11 + (strK == null ? 0 : strK.hashCode())) * 31;
            String strD = navDeepLink.d();
            int iHashCode3 = (iHashCode2 + (strD == null ? 0 : strD.hashCode())) * 31;
            String strG = navDeepLink.g();
            iHashCode = iHashCode3 + (strG == null ? 0 : strG.hashCode());
        }
        Iterator itA = a1.a(this.f13524f);
        while (itA.hasNext()) {
            c cVar = (c) itA.next();
            int iB = ((iHashCode * 31) + cVar.b()) * 31;
            l lVarC = cVar.c();
            iHashCode = iB + (lVarC == null ? 0 : lVarC.hashCode());
            Bundle bundleA = cVar.a();
            if (bundleA != null && (setKeySet = bundleA.keySet()) != null) {
                for (String str2 : setKeySet) {
                    int i12 = iHashCode * 31;
                    Bundle bundleA2 = cVar.a();
                    Intrinsics.e(bundleA2);
                    Object obj = bundleA2.get(str2);
                    iHashCode = i12 + (obj == null ? 0 : obj.hashCode());
                }
            }
        }
        for (String str3 : l().keySet()) {
            int iHashCode4 = ((iHashCode * 31) + str3.hashCode()) * 31;
            Object obj2 = l().get(str3);
            iHashCode = iHashCode4 + (obj2 == null ? 0 : obj2.hashCode());
        }
        return iHashCode;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0024  */
    /* JADX WARN: Code duplicated, block: B:14:0x002e  */
    public final int[] i(NavDestination navDestination) {
        ArrayDeque arrayDeque = new ArrayDeque();
        NavDestination navDestination2 = this;
        while (true) {
            Intrinsics.e(navDestination2);
            NavGraph navGraph = navDestination2.f13520b;
            if ((navDestination == null ? null : navDestination.f13520b) != null) {
                NavGraph navGraph2 = navDestination.f13520b;
                Intrinsics.e(navGraph2);
                if (navGraph2.A(navDestination2.f13526h) != navDestination2) {
                    if (navGraph != null || navGraph.G() != navDestination2.f13526h) {
                        arrayDeque.addFirst(navDestination2);
                    }
                    if (!Intrinsics.c(navGraph, navDestination) || navGraph == null) {
                        break;
                    }
                    navDestination2 = navGraph;
                } else {
                    arrayDeque.addFirst(navDestination2);
                    break;
                }
            } else {
                if (navGraph != null) {
                    arrayDeque.addFirst(navDestination2);
                } else {
                    arrayDeque.addFirst(navDestination2);
                }
                if (!Intrinsics.c(navGraph, navDestination)) {
                    break;
                }
                navDestination2 = navGraph;
            }
        }
        List listR0 = CollectionsKt.R0(arrayDeque);
        ArrayList arrayList = new ArrayList(CollectionsKt.v(listR0, 10));
        Iterator it = listR0.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((NavDestination) it.next()).n()));
        }
        return CollectionsKt.Q0(arrayList);
    }

    public final Map l() {
        return MapsKt.u(this.f13525g);
    }

    public String m() {
        String str = this.f13521c;
        return str == null ? String.valueOf(this.f13526h) : str;
    }

    public final int n() {
        return this.f13526h;
    }

    public final String o() {
        return this.f13519a;
    }

    public final NavGraph p() {
        return this.f13520b;
    }

    public final String q() {
        return this.f13527i;
    }

    public a r(g navDeepLinkRequest) {
        Intrinsics.h(navDeepLinkRequest, "navDeepLinkRequest");
        if (this.f13523e.isEmpty()) {
            return null;
        }
        a aVar = null;
        for (NavDeepLink navDeepLink : this.f13523e) {
            Uri uriC = navDeepLinkRequest.c();
            Bundle bundleF = uriC != null ? navDeepLink.f(uriC, l()) : null;
            String strA = navDeepLinkRequest.a();
            boolean z10 = strA != null && Intrinsics.c(strA, navDeepLink.d());
            String strB = navDeepLinkRequest.b();
            int iH = strB != null ? navDeepLink.h(strB) : -1;
            if (bundleF != null || z10 || iH > -1) {
                a aVar2 = new a(this, bundleF, navDeepLink.l(), z10, iH);
                if (aVar == null || aVar2.compareTo(aVar) > 0) {
                    aVar = aVar2;
                }
            }
        }
        return aVar;
    }

    public void s(Context context, AttributeSet attrs) {
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attrs, androidx.navigation.common.R$styleable.Navigator);
        Intrinsics.g(typedArrayObtainAttributes, "context.resources.obtain…s, R.styleable.Navigator)");
        x(typedArrayObtainAttributes.getString(androidx.navigation.common.R$styleable.Navigator_route));
        if (typedArrayObtainAttributes.hasValue(androidx.navigation.common.R$styleable.Navigator_android_id)) {
            u(typedArrayObtainAttributes.getResourceId(androidx.navigation.common.R$styleable.Navigator_android_id, 0));
            this.f13521c = f13517j.b(context, n());
        }
        v(typedArrayObtainAttributes.getText(androidx.navigation.common.R$styleable.Navigator_android_label));
        Unit unit = Unit.f64096a;
        typedArrayObtainAttributes.recycle();
    }

    public final void t(int i10, c action) {
        Intrinsics.h(action, "action");
        if (y()) {
            if (i10 == 0) {
                throw new IllegalArgumentException("Cannot have an action with actionId 0");
            }
            this.f13524f.l(i10, action);
        } else {
            throw new UnsupportedOperationException("Cannot add action " + i10 + " to " + this + " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions.");
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append("(");
        String str = this.f13521c;
        if (str == null) {
            sb2.append("0x");
            sb2.append(Integer.toHexString(this.f13526h));
        } else {
            sb2.append(str);
        }
        sb2.append(")");
        String str2 = this.f13527i;
        if (str2 != null && !StringsKt.q0(str2)) {
            sb2.append(" route=");
            sb2.append(this.f13527i);
        }
        if (this.f13522d != null) {
            sb2.append(" label=");
            sb2.append(this.f13522d);
        }
        String string = sb2.toString();
        Intrinsics.g(string, "sb.toString()");
        return string;
    }

    public final void u(int i10) {
        this.f13526h = i10;
        this.f13521c = null;
    }

    public final void v(CharSequence charSequence) {
        this.f13522d = charSequence;
    }

    public final void w(NavGraph navGraph) {
        this.f13520b = navGraph;
    }

    public final void x(String str) {
        if (str == null) {
            u(0);
        } else {
            if (StringsKt.q0(str)) {
                throw new IllegalArgumentException("Cannot have an empty route");
            }
            String strA = f13517j.a(str);
            u(strA.hashCode());
            e(strA);
        }
        List list = this.f13523e;
        List list2 = list;
        for (Object obj : list) {
            if (Intrinsics.c(((NavDeepLink) obj).k(), f13517j.a(this.f13527i))) {
                list2.remove(obj);
                this.f13527i = str;
            }
        }
        obj = null;
        list2.remove(obj);
        this.f13527i = str;
    }

    public boolean y() {
        return true;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDestination(Navigator navigator) {
        this(q.f13643b.a(navigator.getClass()));
        Intrinsics.h(navigator, "navigator");
    }
}
