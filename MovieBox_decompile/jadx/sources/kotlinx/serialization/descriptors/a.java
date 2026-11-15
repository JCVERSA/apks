package kotlinx.serialization.descriptors;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final String f65072a;

    private List f65073b;

    private final List f65074c;

    private final Set f65075d;

    private final List f65076e;

    private final List f65077f;

    private final List f65078g;

    public a(String serialName) {
        Intrinsics.h(serialName, "serialName");
        this.f65072a = serialName;
        this.f65073b = CollectionsKt.l();
        this.f65074c = new ArrayList();
        this.f65075d = new HashSet();
        this.f65076e = new ArrayList();
        this.f65077f = new ArrayList();
        this.f65078g = new ArrayList();
    }

    public static void b(a aVar, String str, f fVar, List list, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            list = CollectionsKt.l();
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        aVar.a(str, fVar, list, z10);
    }

    public final void a(String elementName, f descriptor, List annotations, boolean z10) {
        Intrinsics.h(elementName, "elementName");
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(annotations, "annotations");
        if (!this.f65075d.add(elementName)) {
            throw new IllegalArgumentException(("Element with name '" + elementName + "' is already registered").toString());
        }
        this.f65074c.add(elementName);
        this.f65076e.add(descriptor);
        this.f65077f.add(annotations);
        this.f65078g.add(Boolean.valueOf(z10));
    }

    public final List c() {
        return this.f65073b;
    }

    public final List d() {
        return this.f65077f;
    }

    public final List e() {
        return this.f65076e;
    }

    public final List f() {
        return this.f65074c;
    }

    public final List g() {
        return this.f65078g;
    }

    public final void h(List list) {
        Intrinsics.h(list, "<set-?>");
        this.f65073b = list;
    }
}
