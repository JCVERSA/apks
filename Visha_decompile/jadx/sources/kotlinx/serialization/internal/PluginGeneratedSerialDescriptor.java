package kotlinx.serialization.internal;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.c74;
import defpackage.cc8;
import defpackage.dc8;
import defpackage.e28;
import defpackage.e74;
import defpackage.ef5;
import defpackage.gq0;
import defpackage.i81;
import defpackage.id9;
import defpackage.od4;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.LazyThreadSafetyMode;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.descriptors.a;

public class PluginGeneratedSerialDescriptor implements a, gq0 {
    public final String a;
    public final od4 b;
    public final int c;
    public int d;
    public final String[] e;
    public final List[] f;
    public List g;
    public final boolean[] h;
    public Map i;
    public final yi5 j;
    public final yi5 k;
    public final yi5 l;

    public PluginGeneratedSerialDescriptor(String str, od4 od4Var, int i) {
        y45.j(str, "serialName");
        this.a = str;
        this.b = od4Var;
        this.c = i;
        this.d = -1;
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            strArr[i2] = "[UNINITIALIZED]";
        }
        this.e = strArr;
        int i3 = this.c;
        this.f = new List[i3];
        this.h = new boolean[i3];
        this.i = kotlin.collections.a.l();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.j = b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            @Override
            public final ef5[] invoke() {
                ef5[] ef5VarArrChildSerializers;
                od4 od4Var2 = this.this$0.b;
                return (od4Var2 == null || (ef5VarArrChildSerializers = od4Var2.childSerializers()) == null) ? dc8.a : ef5VarArrChildSerializers;
            }
        });
        this.k = b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            @Override
            public final a[] invoke() {
                ArrayList arrayList;
                ef5[] ef5VarArrTypeParametersSerializers;
                od4 od4Var2 = this.this$0.b;
                if (od4Var2 == null || (ef5VarArrTypeParametersSerializers = od4Var2.typeParametersSerializers()) == null) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(ef5VarArrTypeParametersSerializers.length);
                    for (ef5 ef5Var : ef5VarArrTypeParametersSerializers) {
                        arrayList.add(ef5Var.getDescriptor());
                    }
                }
                return e28.b(arrayList);
            }
        });
        this.l = b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            @Override
            public final Integer invoke() {
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = this.this$0;
                return Integer.valueOf(cc8.a(pluginGeneratedSerialDescriptor, pluginGeneratedSerialDescriptor.o()));
            }
        });
    }

    public static void l(PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor, String str, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addElement");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        pluginGeneratedSerialDescriptor.k(str, z);
    }

    private final int p() {
        return ((Number) this.l.getValue()).intValue();
    }

    @Override
    public Set a() {
        return this.i.keySet();
    }

    @Override
    public boolean b() {
        return a.C0417a.c(this);
    }

    @Override
    public int c(String str) {
        y45.j(str, "name");
        Integer num = (Integer) this.i.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override
    public a d(int i) {
        return n()[i].getDescriptor();
    }

    @Override
    public final int e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PluginGeneratedSerialDescriptor) {
            a aVar = (a) obj;
            if (y45.e(h(), aVar.h()) && Arrays.equals(o(), ((PluginGeneratedSerialDescriptor) obj).o()) && e() == aVar.e()) {
                int iE = e();
                for (int i = 0; i < iE; i++) {
                    if (y45.e(d(i).h(), aVar.d(i).h()) && y45.e(d(i).getKind(), aVar.d(i).getKind())) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override
    public String f(int i) {
        return this.e[i];
    }

    @Override
    public List g(int i) {
        List list = this.f[i];
        return list == null ? y71.k() : list;
    }

    @Override
    public List getAnnotations() {
        List list = this.g;
        return list == null ? y71.k() : list;
    }

    @Override
    public id9 getKind() {
        return kotlinx.serialization.descriptors.b.a.a;
    }

    @Override
    public String h() {
        return this.a;
    }

    public int hashCode() {
        return p();
    }

    @Override
    public boolean i(int i) {
        return this.h[i];
    }

    @Override
    public boolean isInline() {
        return a.C0417a.b(this);
    }

    public final void k(String str, boolean z) {
        y45.j(str, "name");
        String[] strArr = this.e;
        int i = this.d + 1;
        this.d = i;
        strArr[i] = str;
        this.h[i] = z;
        this.f[i] = null;
        if (i == this.c - 1) {
            this.i = m();
        }
    }

    public final Map m() {
        HashMap map = new HashMap();
        int length = this.e.length;
        for (int i = 0; i < length; i++) {
            map.put(this.e[i], Integer.valueOf(i));
        }
        return map;
    }

    public final ef5[] n() {
        return (ef5[]) this.j.getValue();
    }

    public final a[] o() {
        return (a[]) this.k.getValue();
    }

    public final void q(Annotation annotation) {
        y45.j(annotation, "annotation");
        List arrayList = this.f[this.d];
        if (arrayList == null) {
            arrayList = new ArrayList(1);
            this.f[this.d] = arrayList;
        }
        arrayList.add(annotation);
    }

    public final void r(Annotation annotation) {
        y45.j(annotation, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        if (this.g == null) {
            this.g = new ArrayList(1);
        }
        List list = this.g;
        y45.g(list);
        list.add(annotation);
    }

    public String toString() {
        return i81.y0(wn8.q(0, this.c), ", ", h() + '(', ")", 0, null, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                return invoke(((Number) obj).intValue());
            }

            public final CharSequence invoke(int i) {
                return PluginGeneratedSerialDescriptor.this.f(i) + ": " + PluginGeneratedSerialDescriptor.this.d(i).h();
            }
        }, 24, null);
    }

    public PluginGeneratedSerialDescriptor(String str, od4 od4Var, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : od4Var, i);
    }
}
