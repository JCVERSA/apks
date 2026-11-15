package kotlinx.serialization.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public class PluginGeneratedSerialDescriptor implements kotlinx.serialization.descriptors.f, n {

    private final String f65117a;

    private final i0 f65118b;

    private final int f65119c;

    private int f65120d;

    private final String[] f65121e;

    private final List[] f65122f;

    private List f65123g;

    private final boolean[] f65124h;

    private Map f65125i;

    private final Lazy f65126j;

    private final Lazy f65127k;

    private final Lazy f65128l;

    public PluginGeneratedSerialDescriptor(String serialName, i0 i0Var, int i10) {
        Intrinsics.h(serialName, "serialName");
        this.f65117a = serialName;
        this.f65118b = i0Var;
        this.f65119c = i10;
        this.f65120d = -1;
        String[] strArr = new String[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            strArr[i11] = "[UNINITIALIZED]";
        }
        this.f65121e = strArr;
        int i12 = this.f65119c;
        this.f65122f = new List[i12];
        this.f65124h = new boolean[i12];
        this.f65125i = MapsKt.h();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.f65126j = LazyKt.a(lazyThreadSafetyMode, new Function0<kotlinx.serialization.b[]>() {
            {
                super(0);
            }

            @Override
            public final kotlinx.serialization.b[] invoke() {
                kotlinx.serialization.b[] bVarArrChildSerializers;
                i0 i0Var2 = this.this$0.f65118b;
                return (i0Var2 == null || (bVarArrChildSerializers = i0Var2.childSerializers()) == null) ? o1.f65208a : bVarArrChildSerializers;
            }
        });
        this.f65127k = LazyKt.a(lazyThreadSafetyMode, new Function0<kotlinx.serialization.descriptors.f[]>() {
            {
                super(0);
            }

            @Override
            public final kotlinx.serialization.descriptors.f[] invoke() {
                ArrayList arrayList;
                kotlinx.serialization.b[] bVarArrTypeParametersSerializers;
                i0 i0Var2 = this.this$0.f65118b;
                if (i0Var2 == null || (bVarArrTypeParametersSerializers = i0Var2.typeParametersSerializers()) == null) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(bVarArrTypeParametersSerializers.length);
                    for (kotlinx.serialization.b bVar : bVarArrTypeParametersSerializers) {
                        arrayList.add(bVar.getDescriptor());
                    }
                }
                return l1.b(arrayList);
            }
        });
        this.f65128l = LazyKt.a(lazyThreadSafetyMode, new Function0<Integer>() {
            {
                super(0);
            }

            @Override
            public final Integer invoke() {
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = this.this$0;
                return Integer.valueOf(n1.a(pluginGeneratedSerialDescriptor, pluginGeneratedSerialDescriptor.p()));
            }
        });
    }

    public static void m(PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor, String str, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addElement");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        pluginGeneratedSerialDescriptor.l(str, z10);
    }

    private final Map n() {
        HashMap map = new HashMap();
        int length = this.f65121e.length;
        for (int i10 = 0; i10 < length; i10++) {
            map.put(this.f65121e[i10], Integer.valueOf(i10));
        }
        return map;
    }

    private final kotlinx.serialization.b[] o() {
        return (kotlinx.serialization.b[]) this.f65126j.getValue();
    }

    private final int q() {
        return ((Number) this.f65128l.getValue()).intValue();
    }

    @Override
    public Set a() {
        return this.f65125i.keySet();
    }

    @Override
    public boolean b() {
        return kotlinx.serialization.descriptors.f.a.c(this);
    }

    @Override
    public int c(String name) {
        Intrinsics.h(name, "name");
        Integer num = (Integer) this.f65125i.get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override
    public kotlinx.serialization.descriptors.h d() {
        return kotlinx.serialization.descriptors.i.a.f65101a;
    }

    @Override
    public final int e() {
        return this.f65119c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PluginGeneratedSerialDescriptor) {
            kotlinx.serialization.descriptors.f fVar = (kotlinx.serialization.descriptors.f) obj;
            if (Intrinsics.c(i(), fVar.i()) && Arrays.equals(p(), ((PluginGeneratedSerialDescriptor) obj).p()) && e() == fVar.e()) {
                int iE = e();
                for (int i10 = 0; i10 < iE; i10++) {
                    if (Intrinsics.c(h(i10).i(), fVar.h(i10).i()) && Intrinsics.c(h(i10).d(), fVar.h(i10).d())) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override
    public String f(int i10) {
        return this.f65121e[i10];
    }

    @Override
    public List g(int i10) {
        List list = this.f65122f[i10];
        return list == null ? CollectionsKt.l() : list;
    }

    @Override
    public List getAnnotations() {
        List list = this.f65123g;
        return list == null ? CollectionsKt.l() : list;
    }

    @Override
    public kotlinx.serialization.descriptors.f h(int i10) {
        return o()[i10].getDescriptor();
    }

    public int hashCode() {
        return q();
    }

    @Override
    public String i() {
        return this.f65117a;
    }

    @Override
    public boolean isInline() {
        return kotlinx.serialization.descriptors.f.a.b(this);
    }

    @Override
    public boolean j(int i10) {
        return this.f65124h[i10];
    }

    public final void l(String name, boolean z10) {
        Intrinsics.h(name, "name");
        String[] strArr = this.f65121e;
        int i10 = this.f65120d + 1;
        this.f65120d = i10;
        strArr[i10] = name;
        this.f65124h[i10] = z10;
        this.f65122f[i10] = null;
        if (i10 == this.f65119c - 1) {
            this.f65125i = n();
        }
    }

    public final kotlinx.serialization.descriptors.f[] p() {
        return (kotlinx.serialization.descriptors.f[]) this.f65127k.getValue();
    }

    public String toString() {
        return CollectionsKt.s0(RangesKt.s(0, this.f65119c), ", ", i() + '(', ")", 0, null, new Function1<Integer, CharSequence>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                return invoke(((Number) obj).intValue());
            }

            public final CharSequence invoke(int i10) {
                return PluginGeneratedSerialDescriptor.this.f(i10) + ": " + PluginGeneratedSerialDescriptor.this.h(i10).i();
            }
        }, 24, null);
    }

    public PluginGeneratedSerialDescriptor(String str, i0 i0Var, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? null : i0Var, i10);
    }
}
