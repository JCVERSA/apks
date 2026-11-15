package defpackage;

import freemarker.core.CollectionAndSequence;
import freemarker.core._TemplateModelException;
import freemarker.ext.beans.InvalidPropertyException;
import freemarker.ext.beans.b;
import freemarker.ext.beans.c;
import freemarker.template.SimpleScalar;
import freemarker.template.SimpleSequence;
import freemarker.template.TemplateModelException;
import java.beans.IndexedPropertyDescriptor;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class rd0 implements pfa, c8, lpc, dga {
    public static final pq5 e = pq5.k("freemarker.beans");
    public static final zfa f = new SimpleScalar("UNKNOWN");
    public static final fq6 g = new qd0();
    public final Object b;
    public final b c;
    public HashMap d;

    public rd0(Object obj, b bVar) {
        this(obj, bVar, true);
    }

    public String b() {
        Object obj = this.b;
        return obj == null ? "null" : obj.toString();
    }

    public zfa c(Map map, Class cls, String str) {
        Method method = (Method) map.get(c.t);
        return method == null ? f : this.c.y(this.b, method, new Object[]{str});
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0082  */
    /* JADX WARN: Code duplicated, block: B:33:0x0087 A[Catch: all -> 0x008f, TryCatch #1 {all -> 0x008f, blocks: (B:31:0x0083, B:33:0x0087, B:36:0x0091, B:37:0x0096), top: B:46:0x0083 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0083 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final zfa e(Object obj, Map map) {
        zfa gu7Var;
        lm9 lm9Var;
        synchronized (this) {
            try {
                HashMap map2 = this.d;
                gu7Var = map2 != null ? (zfa) map2.get(obj) : null;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (gu7Var != null) {
            return gu7Var;
        }
        zfa zfaVarC = f;
        if (!(obj instanceof IndexedPropertyDescriptor)) {
            if (obj instanceof PropertyDescriptor) {
                zfaVarC = this.c.y(this.b, ((PropertyDescriptor) obj).getReadMethod(), null);
            } else if (obj instanceof Field) {
                zfaVarC = this.c.c(((Field) obj).get(this.b));
            } else if (obj instanceof Method) {
                Method method = (Method) obj;
                lm9Var = new lm9(this.b, method, c.m(map, method), this.c);
            } else if (obj instanceof fu7) {
                gu7Var = new gu7(this.b, (fu7) obj, this.c);
                zfaVarC = gu7Var;
            }
            if (gu7Var != null) {
                synchronized (this) {
                    try {
                        if (this.d == null) {
                            this.d = new HashMap();
                        }
                        this.d.put(obj, gu7Var);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            return zfaVarC;
        }
        Method indexedReadMethod = ((IndexedPropertyDescriptor) obj).getIndexedReadMethod();
        lm9Var = new lm9(this.b, indexedReadMethod, c.m(map, indexedReadMethod), this.c);
        gu7Var = lm9Var;
        zfaVarC = gu7Var;
        if (gu7Var != null) {
            synchronized (this) {
                if (this.d == null) {
                    this.d = new HashMap();
                }
                this.d.put(obj, gu7Var);
            }
        }
        return zfaVarC;
    }

    @Override
    public zfa get(String str) throws TemplateModelException {
        zfa zfaVarE;
        Class<?> cls = this.b.getClass();
        Map mapK = this.c.q().k(cls);
        try {
            if (this.c.B()) {
                Object obj = mapK.get(str);
                zfaVarE = obj != null ? e(obj, mapK) : c(mapK, cls, str);
            } else {
                zfa zfaVarC = c(mapK, cls, str);
                zfa zfaVarC2 = this.c.c(null);
                if (zfaVarC != zfaVarC2 && zfaVarC != f) {
                    return zfaVarC;
                }
                Object obj2 = mapK.get(str);
                if (obj2 != null) {
                    zfa zfaVarE2 = e(obj2, mapK);
                    zfaVarE = (zfaVarE2 == f && zfaVarC == zfaVarC2) ? zfaVarC2 : zfaVarE2;
                } else {
                    zfaVarE = null;
                }
            }
            if (zfaVarE != f) {
                return zfaVarE;
            }
            if (!this.c.C()) {
                if (e.q()) {
                    m(str, mapK);
                }
                return this.c.c(null);
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("No such bean property: ");
            stringBuffer.append(str);
            throw new InvalidPropertyException(stringBuffer.toString());
        } catch (TemplateModelException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new _TemplateModelException(e3, new Object[]{"An error has occurred when reading existing sub-variable ", new k0d(str), "; see cause exception! The type of the containing value was: ", new g0d(this)});
        }
    }

    @Override
    public zfa getAPI() {
        return this.c.a(this.b);
    }

    @Override
    public Object getAdaptedObject(Class cls) {
        return this.b;
    }

    @Override
    public Object getWrappedObject() {
        return this.b;
    }

    @Override
    public boolean isEmpty() {
        Object obj = this.b;
        if (obj instanceof String) {
            return ((String) obj).length() == 0;
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).isEmpty();
        }
        if (obj instanceof Map) {
            return ((Map) obj).isEmpty();
        }
        return obj == null || Boolean.FALSE.equals(obj);
    }

    @Override
    public bfa keys() {
        return new CollectionAndSequence(new SimpleSequence(l(), this.c));
    }

    public Set l() {
        return this.c.q().w(this.b.getClass());
    }

    public final void m(String str, Map map) {
        pq5 pq5Var = e;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Key ");
        stringBuffer.append(n0a.F(str));
        stringBuffer.append(" was not found on instance of ");
        stringBuffer.append(this.b.getClass().getName());
        stringBuffer.append(". Introspection information for ");
        stringBuffer.append("the class is: ");
        stringBuffer.append(map);
        pq5Var.d(stringBuffer.toString());
    }

    public Object n(zfa zfaVar) {
        return this.c.b(zfaVar);
    }

    public zfa o(Object obj) {
        return this.c.w().c(obj);
    }

    @Override
    public int size() {
        return this.c.q().v(this.b.getClass());
    }

    public String toString() {
        return this.b.toString();
    }

    @Override
    public bfa values() {
        ArrayList arrayList = new ArrayList(size());
        bga it = keys().iterator();
        while (it.hasNext()) {
            arrayList.add(get(((mga) it.next()).getAsString()));
        }
        return new CollectionAndSequence(new SimpleSequence(arrayList, this.c));
    }

    public rd0(Object obj, b bVar, boolean z) {
        this.b = obj;
        this.c = bVar;
        if (!z || obj == null) {
            return;
        }
        bVar.q().k(obj.getClass());
    }
}
