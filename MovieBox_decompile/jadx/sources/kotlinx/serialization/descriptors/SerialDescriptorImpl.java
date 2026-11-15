package kotlinx.serialization.descriptors;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.internal.l1;
import kotlinx.serialization.internal.n;
import kotlinx.serialization.internal.n1;

public final class SerialDescriptorImpl implements f, n {

    private final String f65060a;

    private final h f65061b;

    private final int f65062c;

    private final List f65063d;

    private final Set f65064e;

    private final String[] f65065f;

    private final f[] f65066g;

    private final List[] f65067h;

    private final boolean[] f65068i;

    private final Map f65069j;

    private final f[] f65070k;

    private final Lazy f65071l;

    public SerialDescriptorImpl(String serialName, h kind, int i10, List typeParameters, a builder) {
        Intrinsics.h(serialName, "serialName");
        Intrinsics.h(kind, "kind");
        Intrinsics.h(typeParameters, "typeParameters");
        Intrinsics.h(builder, "builder");
        this.f65060a = serialName;
        this.f65061b = kind;
        this.f65062c = i10;
        this.f65063d = builder.c();
        this.f65064e = CollectionsKt.P0(builder.f());
        Object[] array = builder.f().toArray(new String[0]);
        Intrinsics.f(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        String[] strArr = (String[]) array;
        this.f65065f = strArr;
        this.f65066g = l1.b(builder.e());
        Object[] array2 = builder.d().toArray(new List[0]);
        Intrinsics.f(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        this.f65067h = (List[]) array2;
        this.f65068i = CollectionsKt.M0(builder.g());
        Iterable<IndexedValue> iterableM0 = ArraysKt.M0(strArr);
        ArrayList arrayList = new ArrayList(CollectionsKt.v(iterableM0, 10));
        for (IndexedValue indexedValue : iterableM0) {
            arrayList.add(TuplesKt.a(indexedValue.getValue(), Integer.valueOf(indexedValue.getIndex())));
        }
        this.f65069j = MapsKt.s(arrayList);
        this.f65070k = l1.b(typeParameters);
        this.f65071l = LazyKt.b(new Function0<Integer>() {
            {
                super(0);
            }

            @Override
            public final Integer invoke() {
                SerialDescriptorImpl serialDescriptorImpl = this.this$0;
                return Integer.valueOf(n1.a(serialDescriptorImpl, serialDescriptorImpl.f65070k));
            }
        });
    }

    private final int l() {
        return ((Number) this.f65071l.getValue()).intValue();
    }

    @Override
    public Set a() {
        return this.f65064e;
    }

    @Override
    public boolean b() {
        return f.a.c(this);
    }

    @Override
    public int c(String name) {
        Intrinsics.h(name, "name");
        Integer num = (Integer) this.f65069j.get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override
    public h d() {
        return this.f65061b;
    }

    @Override
    public int e() {
        return this.f65062c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SerialDescriptorImpl) {
            f fVar = (f) obj;
            if (Intrinsics.c(i(), fVar.i()) && Arrays.equals(this.f65070k, ((SerialDescriptorImpl) obj).f65070k) && e() == fVar.e()) {
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
        return this.f65065f[i10];
    }

    @Override
    public List g(int i10) {
        return this.f65067h[i10];
    }

    @Override
    public List getAnnotations() {
        return this.f65063d;
    }

    @Override
    public f h(int i10) {
        return this.f65066g[i10];
    }

    public int hashCode() {
        return l();
    }

    @Override
    public String i() {
        return this.f65060a;
    }

    @Override
    public boolean isInline() {
        return f.a.b(this);
    }

    @Override
    public boolean j(int i10) {
        return this.f65068i[i10];
    }

    public String toString() {
        return CollectionsKt.s0(RangesKt.s(0, e()), ", ", i() + '(', ")", 0, null, new Function1<Integer, CharSequence>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                return invoke(((Number) obj).intValue());
            }

            public final CharSequence invoke(int i10) {
                return SerialDescriptorImpl.this.f(i10) + ": " + SerialDescriptorImpl.this.h(i10).i();
            }
        }, 24, null);
    }
}
