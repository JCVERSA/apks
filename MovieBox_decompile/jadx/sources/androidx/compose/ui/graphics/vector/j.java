package androidx.compose.ui.graphics.vector;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

public final class j extends l implements Iterable, KMappedMarker {

    private final String f4534a;

    private final float f4535b;

    private final float f4536c;

    private final float f4537d;

    private final float f4538e;

    private final float f4539f;

    private final float f4540g;

    private final float f4541h;

    private final List f4542i;

    private final List f4543j;

    public static final class a implements Iterator, KMappedMarker {

        private final Iterator f4544a;

        a(j jVar) {
            this.f4544a = jVar.f4543j.iterator();
        }

        @Override
        public l next() {
            return (l) this.f4544a.next();
        }

        @Override
        public boolean hasNext() {
            return this.f4544a.hasNext();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public j() {
        this(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, null, null, 1023, null);
    }

    public final l c(int i10) {
        return (l) this.f4543j.get(i10);
    }

    public final List e() {
        return this.f4542i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof j)) {
            j jVar = (j) obj;
            return Intrinsics.c(this.f4534a, jVar.f4534a) && this.f4535b == jVar.f4535b && this.f4536c == jVar.f4536c && this.f4537d == jVar.f4537d && this.f4538e == jVar.f4538e && this.f4539f == jVar.f4539f && this.f4540g == jVar.f4540g && this.f4541h == jVar.f4541h && Intrinsics.c(this.f4542i, jVar.f4542i) && Intrinsics.c(this.f4543j, jVar.f4543j);
        }
        return false;
    }

    public final String f() {
        return this.f4534a;
    }

    public int hashCode() {
        return (((((((((((((((((this.f4534a.hashCode() * 31) + Float.floatToIntBits(this.f4535b)) * 31) + Float.floatToIntBits(this.f4536c)) * 31) + Float.floatToIntBits(this.f4537d)) * 31) + Float.floatToIntBits(this.f4538e)) * 31) + Float.floatToIntBits(this.f4539f)) * 31) + Float.floatToIntBits(this.f4540g)) * 31) + Float.floatToIntBits(this.f4541h)) * 31) + this.f4542i.hashCode()) * 31) + this.f4543j.hashCode();
    }

    public final float i() {
        return this.f4536c;
    }

    @Override
    public Iterator iterator() {
        return new a(this);
    }

    public final float j() {
        return this.f4537d;
    }

    public final float l() {
        return this.f4535b;
    }

    public final float m() {
        return this.f4538e;
    }

    public final float n() {
        return this.f4539f;
    }

    public final int o() {
        return this.f4543j.size();
    }

    public final float p() {
        return this.f4540g;
    }

    public final float q() {
        return this.f4541h;
    }

    public j(String str, float f10, float f11, float f12, float f13, float f14, float f15, float f16, List list, List list2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? 0.0f : f10, (i10 & 4) != 0 ? 0.0f : f11, (i10 & 8) != 0 ? 0.0f : f12, (i10 & 16) != 0 ? 1.0f : f13, (i10 & 32) == 0 ? f14 : 1.0f, (i10 & 64) != 0 ? 0.0f : f15, (i10 & 128) == 0 ? f16 : 0.0f, (i10 & 256) != 0 ? k.d() : list, (i10 & 512) != 0 ? CollectionsKt.l() : list2);
    }

    public j(String str, float f10, float f11, float f12, float f13, float f14, float f15, float f16, List list, List list2) {
        super(null);
        this.f4534a = str;
        this.f4535b = f10;
        this.f4536c = f11;
        this.f4537d = f12;
        this.f4538e = f13;
        this.f4539f = f14;
        this.f4540g = f15;
        this.f4541h = f16;
        this.f4542i = list;
        this.f4543j = list2;
    }
}
