package yz;

import java.util.Iterator;
import java.util.List;
import org.mvel2.integration.VariableResolverFactory;

public class a {

    private static List f76434a;

    private static List f76435b;

    public static boolean a() {
        List list = f76434a;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public static boolean b() {
        List list = f76435b;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public static void c(Object obj, String str, VariableResolverFactory variableResolverFactory) {
        List list = f76434a;
        if (list != null) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
    }

    public static void d(Object obj, String str, VariableResolverFactory variableResolverFactory, Object obj2) {
        List list = f76435b;
        if (list != null) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
    }
}
