package defpackage;

import freemarker.ext.beans.b;
import freemarker.template.TemplateModelException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;

public final class lx9 implements pfa {
    public static final pq5 e = pq5.k("freemarker.beans");
    public final Class b;
    public final b c;
    public final Map d = new HashMap();

    public lx9(Class cls, b bVar) throws TemplateModelException {
        this.b = cls;
        this.c = bVar;
        b();
    }

    public final void b() throws TemplateModelException {
        if (!Modifier.isPublic(this.b.getModifiers())) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Can't wrap the non-public class ");
            stringBuffer.append(this.b.getName());
            throw new TemplateModelException(stringBuffer.toString());
        }
        if (this.c.t() == 3) {
            return;
        }
        for (Field field : this.b.getFields()) {
            int modifiers = field.getModifiers();
            if (Modifier.isPublic(modifiers) && Modifier.isStatic(modifiers)) {
                if (Modifier.isFinal(modifiers)) {
                    try {
                        this.d.put(field.getName(), this.c.w().c(field.get(null)));
                    } catch (IllegalAccessException unused) {
                    }
                } else {
                    this.d.put(field.getName(), field);
                }
            }
        }
        if (this.c.t() < 2) {
            for (Method method : this.b.getMethods()) {
                int modifiers2 = method.getModifiers();
                if (Modifier.isPublic(modifiers2) && Modifier.isStatic(modifiers2) && this.c.q().t(method)) {
                    String name = method.getName();
                    Object obj = this.d.get(name);
                    if (obj instanceof Method) {
                        fu7 fu7Var = new fu7(this.c.z());
                        fu7Var.e((Method) obj);
                        fu7Var.e(method);
                        this.d.put(name, fu7Var);
                    } else if (obj instanceof fu7) {
                        ((fu7) obj).e(method);
                    } else {
                        if (obj != null) {
                            pq5 pq5Var = e;
                            if (pq5Var.s()) {
                                StringBuffer stringBuffer2 = new StringBuffer();
                                stringBuffer2.append("Overwriting value [");
                                stringBuffer2.append(obj);
                                stringBuffer2.append("] for ");
                                stringBuffer2.append(" key '");
                                stringBuffer2.append(name);
                                stringBuffer2.append("' with [");
                                stringBuffer2.append(method);
                                stringBuffer2.append("] in static model for ");
                                stringBuffer2.append(this.b.getName());
                                pq5Var.n(stringBuffer2.toString());
                            }
                        }
                        this.d.put(name, method);
                    }
                }
            }
            for (Map.Entry entry : this.d.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof Method) {
                    Method method2 = (Method) value;
                    entry.setValue(new lm9(null, method2, method2.getParameterTypes(), this.c));
                } else if (value instanceof fu7) {
                    entry.setValue(new gu7(null, (fu7) value, this.c));
                }
            }
        }
    }

    @Override
    public zfa get(String str) throws TemplateModelException {
        Object obj = this.d.get(str);
        if (obj instanceof zfa) {
            return (zfa) obj;
        }
        if (!(obj instanceof Field)) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("No such key: ");
            stringBuffer.append(str);
            stringBuffer.append(" in class ");
            stringBuffer.append(this.b.getName());
            throw new TemplateModelException(stringBuffer.toString());
        }
        try {
            return this.c.w().c(((Field) obj).get(null));
        } catch (IllegalAccessException unused) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Illegal access for field ");
            stringBuffer2.append(str);
            stringBuffer2.append(" of class ");
            stringBuffer2.append(this.b.getName());
            throw new TemplateModelException(stringBuffer2.toString());
        }
    }

    @Override
    public boolean isEmpty() {
        return this.d.isEmpty();
    }

    @Override
    public bfa keys() {
        return (bfa) this.c.w().c(this.d.keySet());
    }

    @Override
    public int size() {
        return this.d.size();
    }

    @Override
    public bfa values() {
        return (bfa) this.c.w().c(this.d.values());
    }
}
