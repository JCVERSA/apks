package defpackage;

import freemarker.core.Configurable;
import freemarker.core.Environment;
import freemarker.ext.util.IdentityHashMap;
import freemarker.template.SimpleCollection;
import freemarker.template.SimpleScalar;
import freemarker.template.Template;
import freemarker.template.TemplateModelException;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.rmi.Remote;
import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class lv8 extends jv8 implements ut1 {
    public static final zp0 e = new xr9(new IdentityHashMap());
    public static final Object f = new Object();
    public static long g = 1;
    public static Set h = new HashSet();
    public boolean c;
    public final long d;

    public static class a extends d {
        public static final List c = Arrays.asList("arithmetic_engine", "boolean_format", "classic_compatible", CommonUrlParts.LOCALE, "number_format", "object_wrapper", "template_exception_handler");
        public final Configurable b;

        public a(Configurable configurable) {
            super();
            this.b = configurable;
        }

        @Override
        public zfa get(String str) {
            String strY = this.b.y(str);
            if (strY == null) {
                return null;
            }
            return new SimpleScalar(strY);
        }
    }

    public static class b extends a {
        public static final List e = d.b(a.c, Collections.singleton("sharedVariables"));
        public zfa d;

        public b(xe1 xe1Var) {
            super(xe1Var);
            this.d = new mv8(this);
        }

        @Override
        public Collection c() {
            return e;
        }

        @Override
        public zfa get(String str) {
            return "sharedVariables".equals(str) ? this.d : super.get(str);
        }
    }

    public static class c extends a {
        public static final List e = d.b(a.c, Arrays.asList("currentNamespace", "dataModel", "globalNamespace", "knownVariables", "mainNamespace", "template"));
        public zfa d;

        public c(Environment environment) {
            super(environment);
            this.d = new nv8(this);
        }

        @Override
        public Collection c() {
            return e;
        }

        @Override
        public zfa get(String str) throws TemplateModelException {
            if ("currentNamespace".equals(str)) {
                return ((Environment) this.b).A0();
            }
            if ("dataModel".equals(str)) {
                return ((Environment) this.b).E0();
            }
            if ("globalNamespace".equals(str)) {
                return ((Environment) this.b).J0();
            }
            if ("knownVariables".equals(str)) {
                return this.d;
            }
            if ("mainNamespace".equals(str)) {
                return ((Environment) this.b).T0();
            }
            if (!"template".equals(str)) {
                return super.get(str);
            }
            try {
                return (zfa) lv8.b(((Environment) this.b).c1());
            } catch (RemoteException e2) {
                throw new TemplateModelException((Exception) e2);
            }
        }
    }

    public static abstract class d implements pfa {
        public d() {
        }

        public static List b(Collection collection, Collection collection2) {
            ArrayList arrayList = new ArrayList(collection);
            arrayList.addAll(collection2);
            Collections.sort(arrayList);
            return arrayList;
        }

        public abstract Collection c();

        @Override
        public boolean isEmpty() {
            return size() == 0;
        }

        @Override
        public bfa keys() {
            return new SimpleCollection(c());
        }

        @Override
        public int size() {
            return c().size();
        }

        @Override
        public bfa values() {
            Collection collectionC = c();
            ArrayList arrayList = new ArrayList(collectionC.size());
            Iterator it = collectionC.iterator();
            while (it.hasNext()) {
                arrayList.add(get((String) it.next()));
            }
            return new SimpleCollection(arrayList);
        }
    }

    public static class e extends a {
        public static final List e = d.b(a.c, Arrays.asList("configuration", "name"));
        public final SimpleScalar d;

        public e(Template template) {
            super(template);
            this.d = new SimpleScalar(template.y0());
        }

        @Override
        public Collection c() {
            return e;
        }

        @Override
        public zfa get(String str) throws TemplateModelException {
            if (!"configuration".equals(str)) {
                return "name".equals(str) ? this.d : super.get(str);
            }
            try {
                return (zfa) lv8.b(((Template) this.b).t0());
            } catch (RemoteException e2) {
                throw new TemplateModelException((Exception) e2);
            }
        }
    }

    public lv8(Environment environment) {
        super(new c(environment), 2048);
        this.c = false;
        synchronized (f) {
            long j = g;
            g = 1 + j;
            this.d = j;
        }
    }

    public static synchronized Object b(Object obj) {
        Object bVar;
        int i;
        try {
            zp0 zp0Var = e;
            bVar = zp0Var.get(obj);
            if (bVar == null) {
                if (obj instanceof zfa) {
                    if (obj instanceof b) {
                        i = 8192;
                    } else {
                        i = obj instanceof e ? 4096 : 0;
                    }
                    bVar = new jv8((zfa) obj, i);
                } else if (obj instanceof Environment) {
                    bVar = new lv8((Environment) obj);
                } else if (obj instanceof Template) {
                    bVar = new e((Template) obj);
                } else if (obj instanceof xe1) {
                    bVar = new b((xe1) obj);
                }
            }
            if (bVar != null) {
                zp0Var.put(obj, bVar);
            }
            if (bVar instanceof Remote) {
                h.add(bVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return bVar;
    }

    public boolean c() {
        return this.c;
    }
}
