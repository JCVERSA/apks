package com.airbnb.lottie.model.layer;

import com.airbnb.lottie.h;
import com.airbnb.lottie.model.content.LBlendMode;
import java.util.List;
import java.util.Locale;
import s4.j;
import s4.k;
import s4.n;

public class Layer {

    private final List f17216a;

    private final h f17217b;

    private final String f17218c;

    private final long f17219d;

    private final LayerType f17220e;

    private final long f17221f;

    private final String f17222g;

    private final List f17223h;

    private final n f17224i;

    private final int f17225j;

    private final int f17226k;

    private final int f17227l;

    private final float f17228m;

    private final float f17229n;

    private final float f17230o;

    private final float f17231p;

    private final j f17232q;

    private final k f17233r;

    private final s4.b f17234s;

    private final List f17235t;

    private final MatteType f17236u;

    private final boolean f17237v;

    private final t4.a f17238w;

    private final w4.j f17239x;

    private final LBlendMode f17240y;

    public enum LayerType {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    public enum MatteType {
        NONE,
        ADD,
        INVERT,
        LUMA,
        LUMA_INVERTED,
        UNKNOWN
    }

    public Layer(List list, h hVar, String str, long j10, LayerType layerType, long j11, String str2, List list2, n nVar, int i10, int i11, int i12, float f10, float f11, float f12, float f13, j jVar, k kVar, List list3, MatteType matteType, s4.b bVar, boolean z10, t4.a aVar, w4.j jVar2, LBlendMode lBlendMode) {
        this.f17216a = list;
        this.f17217b = hVar;
        this.f17218c = str;
        this.f17219d = j10;
        this.f17220e = layerType;
        this.f17221f = j11;
        this.f17222g = str2;
        this.f17223h = list2;
        this.f17224i = nVar;
        this.f17225j = i10;
        this.f17226k = i11;
        this.f17227l = i12;
        this.f17228m = f10;
        this.f17229n = f11;
        this.f17230o = f12;
        this.f17231p = f13;
        this.f17232q = jVar;
        this.f17233r = kVar;
        this.f17235t = list3;
        this.f17236u = matteType;
        this.f17234s = bVar;
        this.f17237v = z10;
        this.f17238w = aVar;
        this.f17239x = jVar2;
        this.f17240y = lBlendMode;
    }

    public LBlendMode a() {
        return this.f17240y;
    }

    public t4.a b() {
        return this.f17238w;
    }

    h c() {
        return this.f17217b;
    }

    public w4.j d() {
        return this.f17239x;
    }

    public long e() {
        return this.f17219d;
    }

    List f() {
        return this.f17235t;
    }

    public LayerType g() {
        return this.f17220e;
    }

    List h() {
        return this.f17223h;
    }

    MatteType i() {
        return this.f17236u;
    }

    public String j() {
        return this.f17218c;
    }

    long k() {
        return this.f17221f;
    }

    float l() {
        return this.f17231p;
    }

    float m() {
        return this.f17230o;
    }

    public String n() {
        return this.f17222g;
    }

    List o() {
        return this.f17216a;
    }

    int p() {
        return this.f17227l;
    }

    int q() {
        return this.f17226k;
    }

    int r() {
        return this.f17225j;
    }

    float s() {
        return this.f17229n / this.f17217b.e();
    }

    j t() {
        return this.f17232q;
    }

    public String toString() {
        return z("");
    }

    k u() {
        return this.f17233r;
    }

    s4.b v() {
        return this.f17234s;
    }

    float w() {
        return this.f17228m;
    }

    n x() {
        return this.f17224i;
    }

    public boolean y() {
        return this.f17237v;
    }

    public String z(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(j());
        sb2.append("\n");
        Layer layerT = this.f17217b.t(k());
        if (layerT != null) {
            sb2.append("\t\tParents: ");
            sb2.append(layerT.j());
            Layer layerT2 = this.f17217b.t(layerT.k());
            while (layerT2 != null) {
                sb2.append("->");
                sb2.append(layerT2.j());
                layerT2 = this.f17217b.t(layerT2.k());
            }
            sb2.append(str);
            sb2.append("\n");
        }
        if (!h().isEmpty()) {
            sb2.append(str);
            sb2.append("\tMasks: ");
            sb2.append(h().size());
            sb2.append("\n");
        }
        if (r() != 0 && q() != 0) {
            sb2.append(str);
            sb2.append("\tBackground: ");
            sb2.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(r()), Integer.valueOf(q()), Integer.valueOf(p())));
        }
        if (!this.f17216a.isEmpty()) {
            sb2.append(str);
            sb2.append("\tShapes:\n");
            for (Object obj : this.f17216a) {
                sb2.append(str);
                sb2.append("\t\t");
                sb2.append(obj);
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }
}
