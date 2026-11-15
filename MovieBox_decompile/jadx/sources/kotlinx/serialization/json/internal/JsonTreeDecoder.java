package kotlinx.serialization.json.internal;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.internal.s0;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;

class JsonTreeDecoder extends c {

    private final JsonObject f65309f;

    private final String f65310g;

    private final kotlinx.serialization.descriptors.f f65311h;

    private int f65312i;

    private boolean f65313j;

    public JsonTreeDecoder(kotlinx.serialization.json.a aVar, JsonObject jsonObject, String str, kotlinx.serialization.descriptors.f fVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, jsonObject, (i10 & 4) != 0 ? null : str, (i10 & 8) != 0 ? null : fVar);
    }

    private final boolean x0(kotlinx.serialization.descriptors.f fVar, int i10) {
        boolean z10 = (d().e().f() || fVar.j(i10) || !fVar.h(i10).b()) ? false : true;
        this.f65313j = z10;
        return z10;
    }

    private final boolean y0(kotlinx.serialization.descriptors.f fVar, int i10, String str) {
        kotlinx.serialization.json.a aVarD = d();
        kotlinx.serialization.descriptors.f fVarH = fVar.h(i10);
        if (!fVarH.b() && (g0(str) instanceof JsonNull)) {
            return true;
        }
        if (Intrinsics.c(fVarH.d(), kotlinx.serialization.descriptors.h.b.f65100a)) {
            kotlinx.serialization.json.h hVarG0 = g0(str);
            kotlinx.serialization.json.u uVar = hVarG0 instanceof kotlinx.serialization.json.u ? (kotlinx.serialization.json.u) hVarG0 : null;
            String strF = uVar != null ? kotlinx.serialization.json.j.f(uVar) : null;
            if (strF != null && JsonNamesMapKt.d(fVarH, aVarD, strF) == -3) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean D() {
        return !this.f65313j && super.D();
    }

    @Override
    public sy.c b(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return descriptor == this.f65311h ? this : super.b(descriptor);
    }

    @Override
    public void c(kotlinx.serialization.descriptors.f descriptor) {
        Set setL;
        Intrinsics.h(descriptor, "descriptor");
        if (this.f65325e.g() || (descriptor.d() instanceof kotlinx.serialization.descriptors.d)) {
            return;
        }
        if (this.f65325e.j()) {
            Set setA = s0.a(descriptor);
            Map map = (Map) kotlinx.serialization.json.w.a(d()).a(descriptor, JsonNamesMapKt.c());
            Set setKeySet = map != null ? map.keySet() : null;
            if (setKeySet == null) {
                setKeySet = SetsKt.f();
            }
            setL = SetsKt.l(setA, setKeySet);
        } else {
            setL = s0.a(descriptor);
        }
        for (String str : v0().keySet()) {
            if (!setL.contains(str) && !Intrinsics.c(str, this.f65310g)) {
                throw w.g(str, v0().toString());
            }
        }
    }

    @Override
    protected String c0(kotlinx.serialization.descriptors.f desc, int i10) {
        Object next;
        Intrinsics.h(desc, "desc");
        String strF = desc.f(i10);
        if (!this.f65325e.j() || v0().keySet().contains(strF)) {
            return strF;
        }
        Map map = (Map) kotlinx.serialization.json.w.a(d()).b(desc, JsonNamesMapKt.c(), new JsonTreeDecoder$elementName$alternativeNamesMap$1(desc));
        Iterator it = v0().keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            Integer num = (Integer) map.get((String) next);
            if (num != null && num.intValue() == i10) {
                break;
            }
        }
        String str = (String) next;
        return str == null ? strF : str;
    }

    @Override
    protected kotlinx.serialization.json.h g0(String tag) {
        Intrinsics.h(tag, "tag");
        return (kotlinx.serialization.json.h) MapsKt.i(v0(), tag);
    }

    @Override
    public int o(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        while (this.f65312i < descriptor.e()) {
            int i10 = this.f65312i;
            this.f65312i = i10 + 1;
            String strX = X(descriptor, i10);
            int i11 = this.f65312i - 1;
            this.f65313j = false;
            if (v0().containsKey(strX) || x0(descriptor, i11)) {
                if (!this.f65325e.d() || !y0(descriptor, i11, strX)) {
                    return i11;
                }
            }
        }
        return -1;
    }

    @Override
    public JsonObject v0() {
        return this.f65309f;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeDecoder(kotlinx.serialization.json.a json, JsonObject value, String str, kotlinx.serialization.descriptors.f fVar) {
        super(json, value, null);
        Intrinsics.h(json, "json");
        Intrinsics.h(value, "value");
        this.f65309f = value;
        this.f65310g = str;
        this.f65311h = fVar;
    }
}
