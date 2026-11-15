package defpackage;

import com.lzy.okgo.model.Progress;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;

public final class wp8 implements x65 {
    public final ClassLoader a;

    public wp8(ClassLoader classLoader) {
        y45.j(classLoader, "classLoader");
        this.a = classLoader;
    }

    @Override
    public y75 a(o54 o54Var, boolean z) {
        y45.j(o54Var, "fqName");
        return new iq8(o54Var);
    }

    @Override
    public s65 b(x65.a aVar) {
        y45.j(aVar, Progress.REQUEST);
        xw0 xw0VarA = aVar.a();
        o54 o54VarH = xw0VarA.h();
        y45.i(o54VarH, "classId.packageFqName");
        String strB = xw0VarA.i().b();
        y45.i(strB, "classId.relativeClassName.asString()");
        String strM = g1a.M(strB, '.', '$', false, 4, null);
        if (!o54VarH.d()) {
            strM = o54VarH.b() + '.' + strM;
        }
        Class clsA = xp8.a(this.a, strM);
        if (clsA != null) {
            return new ReflectJavaClass(clsA);
        }
        return null;
    }

    @Override
    public Set c(o54 o54Var) {
        y45.j(o54Var, "packageFqName");
        return null;
    }
}
