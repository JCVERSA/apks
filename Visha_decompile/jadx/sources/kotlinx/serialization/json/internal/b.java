package kotlinx.serialization.json.internal;

import com.lzy.okgo.model.Progress;
import defpackage.e3;
import defpackage.fd1;
import defpackage.id9;
import defpackage.la5;
import defpackage.mc8;
import defpackage.oa5;
import defpackage.u95;
import defpackage.ua5;
import defpackage.vb5;
import defpackage.y45;
import defpackage.ye9;
import defpackage.ze9;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.c;
import org.mozilla.javascript.ES6Iterator;

public class b extends e3 {
    public final JsonObject f;
    public final String g;
    public final kotlinx.serialization.descriptors.a h;
    public int i;
    public boolean j;

    public b(u95 u95Var, JsonObject jsonObject, String str, kotlinx.serialization.descriptors.a aVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(u95Var, jsonObject, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : aVar);
    }

    @Override
    public boolean E() {
        return !this.j && super.E();
    }

    @Override
    public String a0(kotlinx.serialization.descriptors.a aVar, int i) {
        Object next;
        y45.j(aVar, "descriptor");
        JsonNamesMapKt.k(aVar, d());
        String strF = aVar.f(i);
        if (!this.e.k() || s0().keySet().contains(strF)) {
            return strF;
        }
        Map mapD = JsonNamesMapKt.d(d(), aVar);
        Iterator<T> it = s0().keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            Integer num = (Integer) mapD.get((String) next);
            if (num != null && num.intValue() == i) {
                break;
            }
        }
        String str = (String) next;
        return str != null ? str : strF;
    }

    @Override
    public fd1 b(kotlinx.serialization.descriptors.a aVar) {
        y45.j(aVar, "descriptor");
        return aVar == this.h ? this : super.b(aVar);
    }

    @Override
    public void c(kotlinx.serialization.descriptors.a aVar) {
        Set setM;
        y45.j(aVar, "descriptor");
        if (this.e.g() || (aVar.getKind() instanceof mc8)) {
            return;
        }
        JsonNamesMapKt.k(aVar, d());
        if (this.e.k()) {
            Set setA = ua5.a(aVar);
            Map map = (Map) vb5.a(d()).a(aVar, JsonNamesMapKt.e());
            Set setKeySet = map != null ? map.keySet() : null;
            if (setKeySet == null) {
                setKeySet = ye9.f();
            }
            setM = ze9.m(setA, setKeySet);
        } else {
            setM = ua5.a(aVar);
        }
        for (String str : s0().keySet()) {
            if (!setM.contains(str) && !y45.e(str, this.g)) {
                throw oa5.f(str, s0().toString());
            }
        }
    }

    @Override
    public kotlinx.serialization.json.b e0(String str) {
        y45.j(str, Progress.TAG);
        return (kotlinx.serialization.json.b) kotlin.collections.a.m(s0(), str);
    }

    public final boolean u0(kotlinx.serialization.descriptors.a aVar, int i) {
        boolean z = (d().d().f() || aVar.i(i) || !aVar.d(i).b()) ? false : true;
        this.j = z;
        return z;
    }

    public int v(kotlinx.serialization.descriptors.a aVar) {
        y45.j(aVar, "descriptor");
        while (this.i < aVar.e()) {
            int i = this.i;
            this.i = i + 1;
            String strV = V(aVar, i);
            int i2 = this.i - 1;
            this.j = false;
            if (s0().containsKey(strV) || u0(aVar, i2)) {
                if (!this.e.d() || !v0(aVar, i2, strV)) {
                    return i2;
                }
            }
        }
        return -1;
    }

    public final boolean v0(kotlinx.serialization.descriptors.a aVar, int i, String str) {
        u95 u95VarD = d();
        kotlinx.serialization.descriptors.a aVarD = aVar.d(i);
        if (!aVarD.b() && (e0(str) instanceof JsonNull)) {
            return true;
        }
        if (y45.e(aVarD.getKind(), id9.b.a) && (!aVarD.b() || !(e0(str) instanceof JsonNull))) {
            kotlinx.serialization.json.b bVarE0 = e0(str);
            c cVar = bVarE0 instanceof c ? (c) bVarE0 : null;
            String strF = cVar != null ? la5.f(cVar) : null;
            if (strF != null && JsonNamesMapKt.g(aVarD, u95VarD, strF) == -3) {
                return true;
            }
        }
        return false;
    }

    @Override
    public JsonObject s0() {
        return this.f;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(u95 u95Var, JsonObject jsonObject, String str, kotlinx.serialization.descriptors.a aVar) {
        super(u95Var, jsonObject, null);
        y45.j(u95Var, "json");
        y45.j(jsonObject, ES6Iterator.VALUE_PROPERTY);
        this.f = jsonObject;
        this.g = str;
        this.h = aVar;
    }
}
