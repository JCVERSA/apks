package defpackage;

import java.util.List;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.MutablePropertyReference1;
import kotlin.jvm.internal.MutablePropertyReference2;
import kotlin.jvm.internal.PropertyReference0;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference2;

public class br8 {
    public le5 a(FunctionReference functionReference) {
        return functionReference;
    }

    public de5 b(Class cls) {
        return new cx0(cls);
    }

    public ke5 c(Class cls, String str) {
        return new nv7(cls, str);
    }

    public we5 d(MutablePropertyReference0 mutablePropertyReference0) {
        return mutablePropertyReference0;
    }

    public xe5 e(MutablePropertyReference1 mutablePropertyReference1) {
        return mutablePropertyReference1;
    }

    public ye5 f(MutablePropertyReference2 mutablePropertyReference2) {
        return mutablePropertyReference2;
    }

    public bf5 g(PropertyReference0 propertyReference0) {
        return propertyReference0;
    }

    public cf5 h(PropertyReference1 propertyReference1) {
        return propertyReference1;
    }

    public df5 i(PropertyReference2 propertyReference2) {
        return propertyReference2;
    }

    public String j(g84 g84Var) {
        String string = g84Var.getClass().getGenericInterfaces()[0].toString();
        return string.startsWith("kotlin.jvm.functions.") ? string.substring(21) : string;
    }

    public String k(Lambda lambda) {
        return j(lambda);
    }

    public ff5 l(he5 he5Var, List list, boolean z) {
        return new qcb(he5Var, list, z);
    }
}
