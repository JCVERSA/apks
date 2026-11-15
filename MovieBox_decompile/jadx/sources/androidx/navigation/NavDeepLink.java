package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

public final class NavDeepLink {

    private static final b f13496l = new b(null);

    private static final Pattern f13497m = Pattern.compile("^[a-zA-Z]+[+\\w\\-.]*:");

    private final String f13498a;

    private final String f13499b;

    private final String f13500c;

    private String f13503f;

    private boolean f13505h;

    private String f13506i;

    private boolean f13508k;

    private final List f13501d = new ArrayList();

    private final Map f13502e = new LinkedHashMap();

    private final Lazy f13504g = LazyKt.b(new Function0<Pattern>() {
        {
            super(0);
        }

        @Override
        public final Pattern invoke() {
            String str = this.this$0.f13503f;
            if (str == null) {
                return null;
            }
            return Pattern.compile(str, 2);
        }
    });

    private final Lazy f13507j = LazyKt.b(new Function0<Pattern>() {
        {
            super(0);
        }

        @Override
        public final Pattern invoke() {
            String str = this.this$0.f13506i;
            if (str == null) {
                return null;
            }
            return Pattern.compile(str);
        }
    });

    public static final class a {

        public static final C0100a f13509d = new C0100a(null);

        private String f13510a;

        private String f13511b;

        private String f13512c;

        public static final class C0100a {
            public C0100a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private C0100a() {
            }
        }

        public final NavDeepLink a() {
            return new NavDeepLink(this.f13510a, this.f13511b, this.f13512c);
        }

        public final a b(String action) {
            Intrinsics.h(action, "action");
            if (action.length() <= 0) {
                throw new IllegalArgumentException("The NavDeepLink cannot have an empty action.");
            }
            this.f13511b = action;
            return this;
        }

        public final a c(String mimeType) {
            Intrinsics.h(mimeType, "mimeType");
            this.f13512c = mimeType;
            return this;
        }

        public final a d(String uriPattern) {
            Intrinsics.h(uriPattern, "uriPattern");
            this.f13510a = uriPattern;
            return this;
        }
    }

    private static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    private static final class c implements Comparable {

        private String f13513a;

        private String f13514b;

        public c(String mimeType) {
            List listL;
            Intrinsics.h(mimeType, "mimeType");
            List<String> listSplit = new Regex("/").split(mimeType, 0);
            if (listSplit.isEmpty()) {
                listL = CollectionsKt.l();
            } else {
                ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
                while (listIterator.hasPrevious()) {
                    if (listIterator.previous().length() != 0) {
                        listL = CollectionsKt.K0(listSplit, listIterator.nextIndex() + 1);
                    }
                }
                listL = CollectionsKt.l();
            }
            this.f13513a = (String) listL.get(0);
            this.f13514b = (String) listL.get(1);
        }

        @Override
        public int compareTo(c other) {
            Intrinsics.h(other, "other");
            int i10 = Intrinsics.c(this.f13513a, other.f13513a) ? 2 : 0;
            return Intrinsics.c(this.f13514b, other.f13514b) ? i10 + 1 : i10;
        }

        public final String b() {
            return this.f13514b;
        }

        public final String d() {
            return this.f13513a;
        }
    }

    private static final class d {

        private String f13515a;

        private final List f13516b = new ArrayList();

        public final void a(String name) {
            Intrinsics.h(name, "name");
            this.f13516b.add(name);
        }

        public final String b(int i10) {
            return (String) this.f13516b.get(i10);
        }

        public final List c() {
            return this.f13516b;
        }

        public final String d() {
            return this.f13515a;
        }

        public final void e(String str) {
            this.f13515a = str;
        }

        public final int f() {
            return this.f13516b.size();
        }
    }

    public NavDeepLink(String str, String str2, String str3) {
        this.f13498a = str;
        this.f13499b = str2;
        this.f13500c = str3;
        if (str != null) {
            Uri uri = Uri.parse(str);
            this.f13505h = uri.getQuery() != null;
            StringBuilder sb2 = new StringBuilder("^");
            if (!f13497m.matcher(str).find()) {
                sb2.append("http[s]?://");
            }
            Pattern fillInPattern = Pattern.compile("\\{(.+?)\\}");
            if (this.f13505h) {
                Matcher matcher = Pattern.compile("(\\?)").matcher(str);
                if (matcher.find()) {
                    String strSubstring = str.substring(0, matcher.start());
                    Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    Intrinsics.g(fillInPattern, "fillInPattern");
                    this.f13508k = c(strSubstring, sb2, fillInPattern);
                }
                for (String paramName : uri.getQueryParameterNames()) {
                    StringBuilder sb3 = new StringBuilder();
                    String queryParameter = uri.getQueryParameter(paramName);
                    if (queryParameter == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                    }
                    Matcher matcher2 = fillInPattern.matcher(queryParameter);
                    d dVar = new d();
                    int iEnd = 0;
                    while (matcher2.find()) {
                        String strGroup = matcher2.group(1);
                        if (strGroup == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                        }
                        dVar.a(strGroup);
                        String strSubstring2 = queryParameter.substring(iEnd, matcher2.start());
                        Intrinsics.g(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                        sb3.append(Pattern.quote(strSubstring2));
                        sb3.append("(.+?)?");
                        iEnd = matcher2.end();
                    }
                    if (iEnd < queryParameter.length()) {
                        String strSubstring3 = queryParameter.substring(iEnd);
                        Intrinsics.g(strSubstring3, "this as java.lang.String).substring(startIndex)");
                        sb3.append(Pattern.quote(strSubstring3));
                    }
                    String string = sb3.toString();
                    Intrinsics.g(string, "argRegex.toString()");
                    dVar.e(StringsKt.Q(string, ".*", "\\E.*\\Q", false, 4, null));
                    Map map = this.f13502e;
                    Intrinsics.g(paramName, "paramName");
                    map.put(paramName, dVar);
                }
            } else {
                Intrinsics.g(fillInPattern, "fillInPattern");
                this.f13508k = c(str, sb2, fillInPattern);
            }
            String string2 = sb2.toString();
            Intrinsics.g(string2, "uriRegex.toString()");
            this.f13503f = StringsKt.Q(string2, ".*", "\\E.*\\Q", false, 4, null);
        }
        if (this.f13500c != null) {
            if (!Pattern.compile("^[\\s\\S]+/[\\s\\S]+$").matcher(this.f13500c).matches()) {
                throw new IllegalArgumentException(("The given mimeType " + ((Object) g()) + " does not match to required \"type/subtype\" format").toString());
            }
            c cVar = new c(this.f13500c);
            this.f13506i = StringsKt.Q("^(" + cVar.d() + "|[*]+)/(" + cVar.b() + "|[*]+)$", "*|[*]", "[\\s\\S]", false, 4, null);
        }
    }

    private final boolean c(String str, StringBuilder sb2, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        boolean z10 = !StringsKt.c0(str, ".*", false, 2, null);
        int iEnd = 0;
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            if (strGroup == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            }
            this.f13501d.add(strGroup);
            String strSubstring = str.substring(iEnd, matcher.start());
            Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            sb2.append(Pattern.quote(strSubstring));
            sb2.append("([^/]+?)");
            iEnd = matcher.end();
            z10 = false;
        }
        if (iEnd < str.length()) {
            String strSubstring2 = str.substring(iEnd);
            Intrinsics.g(strSubstring2, "this as java.lang.String).substring(startIndex)");
            sb2.append(Pattern.quote(strSubstring2));
        }
        sb2.append("($|(\\?(.)*)|(\\#(.)*))");
        return z10;
    }

    private final Pattern i() {
        return (Pattern) this.f13507j.getValue();
    }

    private final Pattern j() {
        return (Pattern) this.f13504g.getValue();
    }

    private final boolean m(Bundle bundle, String str, String str2, androidx.navigation.d dVar) {
        if (dVar != null) {
            dVar.a().d(bundle, str, str2);
            return false;
        }
        bundle.putString(str, str2);
        return false;
    }

    public final String d() {
        return this.f13499b;
    }

    public final List e() {
        List list = this.f13501d;
        Collection collectionValues = this.f13502e.values();
        ArrayList arrayList = new ArrayList();
        Iterator it = collectionValues.iterator();
        while (it.hasNext()) {
            CollectionsKt.B(arrayList, ((d) it.next()).c());
        }
        return CollectionsKt.B0(list, arrayList);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof NavDeepLink)) {
            return false;
        }
        NavDeepLink navDeepLink = (NavDeepLink) obj;
        return Intrinsics.c(this.f13498a, navDeepLink.f13498a) && Intrinsics.c(this.f13499b, navDeepLink.f13499b) && Intrinsics.c(this.f13500c, navDeepLink.f13500c);
    }

    public final Bundle f(Uri deepLink, Map arguments) {
        Matcher matcher;
        String strGroup;
        Intrinsics.h(deepLink, "deepLink");
        Intrinsics.h(arguments, "arguments");
        Pattern patternJ = j();
        Matcher matcher2 = patternJ == null ? null : patternJ.matcher(deepLink.toString());
        if (matcher2 == null || !matcher2.matches()) {
            return null;
        }
        Bundle bundle = new Bundle();
        int size = this.f13501d.size();
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            String str = (String) this.f13501d.get(i10);
            String value = Uri.decode(matcher2.group(i11));
            androidx.navigation.d dVar = (androidx.navigation.d) arguments.get(str);
            try {
                Intrinsics.g(value, "value");
                if (m(bundle, str, value, dVar)) {
                    return null;
                }
                i10 = i11;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        if (this.f13505h) {
            for (String str2 : this.f13502e.keySet()) {
                d dVar2 = (d) this.f13502e.get(str2);
                String queryParameter = deepLink.getQueryParameter(str2);
                if (queryParameter != null) {
                    Intrinsics.e(dVar2);
                    matcher = Pattern.compile(dVar2.d(), 32).matcher(queryParameter);
                    if (!matcher.matches()) {
                        return null;
                    }
                } else {
                    matcher = null;
                }
                Bundle bundle2 = new Bundle();
                try {
                    Intrinsics.e(dVar2);
                    int iF = dVar2.f();
                    int i12 = 0;
                    while (i12 < iF) {
                        int i13 = i12 + 1;
                        if (matcher != null) {
                            strGroup = matcher.group(i13);
                            if (strGroup == null) {
                                strGroup = "";
                            }
                        } else {
                            strGroup = null;
                        }
                        String strB = dVar2.b(i12);
                        androidx.navigation.d dVar3 = (androidx.navigation.d) arguments.get(strB);
                        if (strGroup != null) {
                            if (!Intrinsics.c(strGroup, '{' + strB + '}') && m(bundle2, strB, strGroup, dVar3)) {
                                return null;
                            }
                        }
                        i12 = i13;
                    }
                    bundle.putAll(bundle2);
                } catch (IllegalArgumentException unused2) {
                }
            }
        }
        for (Map.Entry entry : arguments.entrySet()) {
            String str3 = (String) entry.getKey();
            androidx.navigation.d dVar4 = (androidx.navigation.d) entry.getValue();
            if (dVar4 != null && !dVar4.c() && !dVar4.b() && !bundle.containsKey(str3)) {
                return null;
            }
        }
        return bundle;
    }

    public final String g() {
        return this.f13500c;
    }

    public final int h(String mimeType) {
        Intrinsics.h(mimeType, "mimeType");
        if (this.f13500c != null) {
            Pattern patternI = i();
            Intrinsics.e(patternI);
            if (patternI.matcher(mimeType).matches()) {
                return new c(this.f13500c).compareTo(new c(mimeType));
            }
        }
        return -1;
    }

    public int hashCode() {
        String str = this.f13498a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f13499b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f13500c;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String k() {
        return this.f13498a;
    }

    public final boolean l() {
        return this.f13508k;
    }
}
