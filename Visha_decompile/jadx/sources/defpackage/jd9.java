package defpackage;

import java.util.List;
import java.util.Map;
import org.mozilla.javascript.ES6Iterator;

public final class jd9 extends td9 {
    public final Map a;
    public final Map b;
    public final Map c;
    public final Map d;
    public final Map e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jd9(Map map, Map map2, Map map3, Map map4, Map map5) {
        super(null);
        y45.j(map, "class2ContextualFactory");
        y45.j(map2, "polyBase2Serializers");
        y45.j(map3, "polyBase2DefaultSerializerProvider");
        y45.j(map4, "polyBase2NamedSerializers");
        y45.j(map5, "polyBase2DefaultDeserializerProvider");
        this.a = map;
        this.b = map2;
        this.c = map3;
        this.d = map4;
        this.e = map5;
    }

    @Override
    public void a(vd9 vd9Var) {
        y45.j(vd9Var, "collector");
        for (Map.Entry entry : this.a.entrySet()) {
            ubc.a(entry.getValue());
        }
        for (Map.Entry entry2 : this.b.entrySet()) {
            de5 de5Var = (de5) entry2.getKey();
            for (Map.Entry entry3 : ((Map) entry2.getValue()).entrySet()) {
                de5 de5Var2 = (de5) entry3.getKey();
                ef5 ef5Var = (ef5) entry3.getValue();
                y45.h(de5Var, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                y45.h(de5Var2, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                y45.h(ef5Var, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                vd9Var.c(de5Var, de5Var2, ef5Var);
            }
        }
        for (Map.Entry entry4 : this.c.entrySet()) {
            de5 de5Var3 = (de5) entry4.getKey();
            e74 e74Var = (e74) entry4.getValue();
            y45.h(de5Var3, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            y45.h(e74Var, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = 'value')] kotlin.Any, kotlinx.serialization.SerializationStrategy<kotlin.Any>?>{ kotlinx.serialization.modules.SerializersModuleKt.PolymorphicSerializerProvider<kotlin.Any> }");
            vd9Var.a(de5Var3, (e74) ccb.f(e74Var, 1));
        }
        for (Map.Entry entry5 : this.e.entrySet()) {
            de5 de5Var4 = (de5) entry5.getKey();
            e74 e74Var2 = (e74) entry5.getValue();
            y45.h(de5Var4, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            y45.h(e74Var2, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = 'className')] kotlin.String?, kotlinx.serialization.DeserializationStrategy<out kotlin.Any>?>{ kotlinx.serialization.modules.SerializersModuleKt.PolymorphicDeserializerProvider<out kotlin.Any> }");
            vd9Var.b(de5Var4, (e74) ccb.f(e74Var2, 1));
        }
    }

    @Override
    public ef5 b(de5 de5Var, List list) {
        y45.j(de5Var, "kClass");
        y45.j(list, "typeArgumentsSerializers");
        ubc.a(this.a.get(de5Var));
        return null;
    }

    @Override
    public k92 d(de5 de5Var, String str) {
        y45.j(de5Var, "baseClass");
        Map map = (Map) this.d.get(de5Var);
        ef5 ef5Var = map != null ? (ef5) map.get(str) : null;
        if (ef5Var == null) {
            ef5Var = null;
        }
        if (ef5Var != null) {
            return ef5Var;
        }
        Object obj = this.e.get(de5Var);
        e74 e74Var = ccb.m(obj, 1) ? (e74) obj : null;
        if (e74Var != null) {
            return (k92) e74Var.invoke(str);
        }
        return null;
    }

    @Override
    public nd9 e(de5 de5Var, Object obj) {
        y45.j(de5Var, "baseClass");
        y45.j(obj, ES6Iterator.VALUE_PROPERTY);
        if (!de5Var.n(obj)) {
            return null;
        }
        Map map = (Map) this.b.get(de5Var);
        ef5 ef5Var = map != null ? (ef5) map.get(xq8.b(obj.getClass())) : null;
        if (ef5Var == null) {
            ef5Var = null;
        }
        if (ef5Var != null) {
            return ef5Var;
        }
        Object obj2 = this.c.get(de5Var);
        e74 e74Var = ccb.m(obj2, 1) ? (e74) obj2 : null;
        if (e74Var != null) {
            return (nd9) e74Var.invoke(obj);
        }
        return null;
    }
}
