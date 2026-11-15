package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import com.cloud.tmc.integration.event.EventConstants;
import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.xmlpull.v1.XmlPullParserException;

public final class k {

    public static final a f13593c = new a(null);

    private static final ThreadLocal f13594d = new ThreadLocal();

    private final Context f13595a;

    private final q f13596b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final o a(TypedValue value, o oVar, o expectedNavType, String str, String foundType) throws XmlPullParserException {
            Intrinsics.h(value, "value");
            Intrinsics.h(expectedNavType, "expectedNavType");
            Intrinsics.h(foundType, "foundType");
            if (oVar == null || oVar == expectedNavType) {
                return oVar == null ? expectedNavType : oVar;
            }
            throw new XmlPullParserException("Type is " + ((Object) str) + " but found " + foundType + ": " + value.data);
        }

        private a() {
        }
    }

    public k(Context context, q navigatorProvider) {
        Intrinsics.h(context, "context");
        Intrinsics.h(navigatorProvider, "navigatorProvider");
        this.f13595a = context;
        this.f13596b = navigatorProvider;
    }

    private final NavDestination a(Resources resources, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, int i10) throws XmlPullParserException, IOException {
        int depth;
        q qVar = this.f13596b;
        String name = xmlResourceParser.getName();
        Intrinsics.g(name, "parser.name");
        NavDestination navDestinationA = qVar.d(name).a();
        navDestinationA.s(this.f13595a, attributeSet);
        int depth2 = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || ((depth = xmlResourceParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2) {
                String name2 = xmlResourceParser.getName();
                if (Intrinsics.c("argument", name2)) {
                    f(resources, navDestinationA, attributeSet, i10);
                } else if (Intrinsics.c("deepLink", name2)) {
                    g(resources, navDestinationA, attributeSet);
                } else if (Intrinsics.c(EventConstants.KEY_ACTION, name2)) {
                    c(resources, navDestinationA, attributeSet, xmlResourceParser, i10);
                } else if (Intrinsics.c("include", name2) && (navDestinationA instanceof NavGraph)) {
                    TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, R$styleable.NavInclude);
                    Intrinsics.g(typedArrayObtainAttributes, "res.obtainAttributes(att…n.R.styleable.NavInclude)");
                    ((NavGraph) navDestinationA).z(b(typedArrayObtainAttributes.getResourceId(R$styleable.NavInclude_graph, 0)));
                    Unit unit = Unit.f64096a;
                    typedArrayObtainAttributes.recycle();
                } else if (navDestinationA instanceof NavGraph) {
                    ((NavGraph) navDestinationA).z(a(resources, xmlResourceParser, attributeSet, i10));
                }
            }
        }
        return navDestinationA;
    }

    private final void c(Resources resources, NavDestination navDestination, AttributeSet attributeSet, XmlResourceParser xmlResourceParser, int i10) throws XmlPullParserException, IOException {
        int depth;
        Context context = this.f13595a;
        int[] NavAction = androidx.navigation.common.R$styleable.NavAction;
        Intrinsics.g(NavAction, "NavAction");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, NavAction, 0, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R$styleable.NavAction_android_id, 0);
        c cVar = new c(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R$styleable.NavAction_destination, 0), null, null, 6, null);
        l.a aVar = new l.a();
        aVar.d(typedArrayObtainStyledAttributes.getBoolean(androidx.navigation.common.R$styleable.NavAction_launchSingleTop, false));
        aVar.j(typedArrayObtainStyledAttributes.getBoolean(androidx.navigation.common.R$styleable.NavAction_restoreState, false));
        aVar.g(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R$styleable.NavAction_popUpTo, -1), typedArrayObtainStyledAttributes.getBoolean(androidx.navigation.common.R$styleable.NavAction_popUpToInclusive, false), typedArrayObtainStyledAttributes.getBoolean(androidx.navigation.common.R$styleable.NavAction_popUpToSaveState, false));
        aVar.b(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R$styleable.NavAction_enterAnim, -1));
        aVar.c(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R$styleable.NavAction_exitAnim, -1));
        aVar.e(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R$styleable.NavAction_popEnterAnim, -1));
        aVar.f(typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.common.R$styleable.NavAction_popExitAnim, -1));
        cVar.e(aVar.a());
        Bundle bundle = new Bundle();
        int depth2 = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || ((depth = xmlResourceParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && Intrinsics.c("argument", xmlResourceParser.getName())) {
                e(resources, bundle, attributeSet, i10);
            }
        }
        if (!bundle.isEmpty()) {
            cVar.d(bundle);
        }
        navDestination.t(resourceId, cVar);
        typedArrayObtainStyledAttributes.recycle();
    }

    private final d d(TypedArray typedArray, Resources resources, int i10) throws XmlPullParserException {
        d.a aVar = new d.a();
        int i11 = 0;
        aVar.c(typedArray.getBoolean(androidx.navigation.common.R$styleable.NavArgument_nullable, false));
        ThreadLocal threadLocal = f13594d;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        String string = typedArray.getString(androidx.navigation.common.R$styleable.NavArgument_argType);
        Object objH = null;
        o oVarA = string != null ? o.f13624c.a(string, resources.getResourcePackageName(i10)) : null;
        if (typedArray.getValue(androidx.navigation.common.R$styleable.NavArgument_android_defaultValue, typedValue)) {
            o oVar = o.f13626e;
            if (oVarA == oVar) {
                int i12 = typedValue.resourceId;
                if (i12 != 0) {
                    i11 = i12;
                } else if (typedValue.type != 16 || typedValue.data != 0) {
                    throw new XmlPullParserException("unsupported value '" + ((Object) typedValue.string) + "' for " + oVarA.b() + ". Must be a reference to a resource.");
                }
                objH = Integer.valueOf(i11);
            } else {
                int i13 = typedValue.resourceId;
                if (i13 != 0) {
                    if (oVarA != null) {
                        throw new XmlPullParserException("unsupported value '" + ((Object) typedValue.string) + "' for " + oVarA.b() + ". You must use a \"" + oVar.b() + "\" type to reference other resources.");
                    }
                    objH = Integer.valueOf(i13);
                    oVarA = oVar;
                } else if (oVarA == o.f13634m) {
                    objH = typedArray.getString(androidx.navigation.common.R$styleable.NavArgument_android_defaultValue);
                } else {
                    int i14 = typedValue.type;
                    if (i14 == 3) {
                        String string2 = typedValue.string.toString();
                        if (oVarA == null) {
                            oVarA = o.f13624c.b(string2);
                        }
                        objH = oVarA.h(string2);
                    } else if (i14 == 4) {
                        oVarA = f13593c.a(typedValue, oVarA, o.f13630i, string, "float");
                        objH = Float.valueOf(typedValue.getFloat());
                    } else if (i14 == 5) {
                        oVarA = f13593c.a(typedValue, oVarA, o.f13625d, string, "dimension");
                        objH = Integer.valueOf((int) typedValue.getDimension(resources.getDisplayMetrics()));
                    } else if (i14 == 18) {
                        oVarA = f13593c.a(typedValue, oVarA, o.f13632k, string, "boolean");
                        objH = Boolean.valueOf(typedValue.data != 0);
                    } else {
                        if (i14 < 16 || i14 > 31) {
                            throw new XmlPullParserException(Intrinsics.q("unsupported argument type ", Integer.valueOf(typedValue.type)));
                        }
                        o oVar2 = o.f13630i;
                        if (oVarA == oVar2) {
                            oVarA = f13593c.a(typedValue, oVarA, oVar2, string, "float");
                            objH = Float.valueOf(typedValue.data);
                        } else {
                            oVarA = f13593c.a(typedValue, oVarA, o.f13625d, string, "integer");
                            objH = Integer.valueOf(typedValue.data);
                        }
                    }
                }
            }
        }
        if (objH != null) {
            aVar.b(objH);
        }
        if (oVarA != null) {
            aVar.d(oVarA);
        }
        return aVar.a();
    }

    private final void e(Resources resources, Bundle bundle, AttributeSet attributeSet, int i10) throws XmlPullParserException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, androidx.navigation.common.R$styleable.NavArgument);
        Intrinsics.g(typedArrayObtainAttributes, "res.obtainAttributes(att… R.styleable.NavArgument)");
        String string = typedArrayObtainAttributes.getString(androidx.navigation.common.R$styleable.NavArgument_android_name);
        if (string == null) {
            throw new XmlPullParserException("Arguments must have a name");
        }
        d dVarD = d(typedArrayObtainAttributes, resources, i10);
        if (dVarD.b()) {
            dVarD.d(string, bundle);
        }
        Unit unit = Unit.f64096a;
        typedArrayObtainAttributes.recycle();
    }

    private final void f(Resources resources, NavDestination navDestination, AttributeSet attributeSet, int i10) throws XmlPullParserException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, androidx.navigation.common.R$styleable.NavArgument);
        Intrinsics.g(typedArrayObtainAttributes, "res.obtainAttributes(att… R.styleable.NavArgument)");
        String string = typedArrayObtainAttributes.getString(androidx.navigation.common.R$styleable.NavArgument_android_name);
        if (string == null) {
            throw new XmlPullParserException("Arguments must have a name");
        }
        navDestination.a(string, d(typedArrayObtainAttributes, resources, i10));
        Unit unit = Unit.f64096a;
        typedArrayObtainAttributes.recycle();
    }

    private final void g(Resources resources, NavDestination navDestination, AttributeSet attributeSet) throws XmlPullParserException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, androidx.navigation.common.R$styleable.NavDeepLink);
        Intrinsics.g(typedArrayObtainAttributes, "res.obtainAttributes(att… R.styleable.NavDeepLink)");
        String string = typedArrayObtainAttributes.getString(androidx.navigation.common.R$styleable.NavDeepLink_uri);
        String string2 = typedArrayObtainAttributes.getString(androidx.navigation.common.R$styleable.NavDeepLink_action);
        String string3 = typedArrayObtainAttributes.getString(androidx.navigation.common.R$styleable.NavDeepLink_mimeType);
        if ((string == null || string.length() == 0) && ((string2 == null || string2.length() == 0) && (string3 == null || string3.length() == 0))) {
            throw new XmlPullParserException("Every <deepLink> must include at least one of app:uri, app:action, or app:mimeType");
        }
        NavDeepLink.a aVar = new NavDeepLink.a();
        if (string != null) {
            String packageName = this.f13595a.getPackageName();
            Intrinsics.g(packageName, "context.packageName");
            aVar.d(StringsKt.Q(string, "${applicationId}", packageName, false, 4, null));
        }
        if (string2 != null && string2.length() != 0) {
            String packageName2 = this.f13595a.getPackageName();
            Intrinsics.g(packageName2, "context.packageName");
            aVar.b(StringsKt.Q(string2, "${applicationId}", packageName2, false, 4, null));
        }
        if (string3 != null) {
            String packageName3 = this.f13595a.getPackageName();
            Intrinsics.g(packageName3, "context.packageName");
            aVar.c(StringsKt.Q(string3, "${applicationId}", packageName3, false, 4, null));
        }
        navDestination.c(aVar.a());
        Unit unit = Unit.f64096a;
        typedArrayObtainAttributes.recycle();
    }

    public final NavGraph b(int i10) {
        int next;
        Resources res = this.f13595a.getResources();
        XmlResourceParser xml = res.getXml(i10);
        Intrinsics.g(xml, "res.getXml(graphResId)");
        AttributeSet attrs = Xml.asAttributeSet(xml);
        do {
            try {
                try {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } catch (Exception e10) {
                    throw new RuntimeException("Exception inflating " + ((Object) res.getResourceName(i10)) + " line " + xml.getLineNumber(), e10);
                }
            } catch (Throwable th2) {
                xml.close();
                throw th2;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xml.getName();
        Intrinsics.g(res, "res");
        Intrinsics.g(attrs, "attrs");
        NavDestination navDestinationA = a(res, xml, attrs, i10);
        if (navDestinationA instanceof NavGraph) {
            NavGraph navGraph = (NavGraph) navDestinationA;
            xml.close();
            return navGraph;
        }
        throw new IllegalArgumentException(("Root element <" + ((Object) name) + "> did not inflate into a NavGraph").toString());
    }
}
