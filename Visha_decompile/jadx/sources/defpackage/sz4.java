package defpackage;

import com.yandex.div.internal.widget.indicator.IndicatorParams$Animation;
import com.yandex.div.internal.widget.indicator.a;
import com.yandex.div.internal.widget.indicator.c;

public final class sz4 {
    public final IndicatorParams$Animation a;
    public final c b;
    public final c c;
    public final c d;
    public final a e;

    public sz4(IndicatorParams$Animation indicatorParams$Animation, c cVar, c cVar2, c cVar3, a aVar) {
        y45.j(indicatorParams$Animation, "animation");
        y45.j(cVar, "activeShape");
        y45.j(cVar2, "inactiveShape");
        y45.j(cVar3, "minimumShape");
        y45.j(aVar, "itemsPlacement");
        this.a = indicatorParams$Animation;
        this.b = cVar;
        this.c = cVar2;
        this.d = cVar3;
        this.e = aVar;
    }

    public final c a() {
        return this.b;
    }

    public final IndicatorParams$Animation b() {
        return this.a;
    }

    public final c c() {
        return this.c;
    }

    public final a d() {
        return this.e;
    }

    public final c e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sz4)) {
            return false;
        }
        sz4 sz4Var = (sz4) obj;
        return this.a == sz4Var.a && y45.e(this.b, sz4Var.b) && y45.e(this.c, sz4Var.c) && y45.e(this.d, sz4Var.d) && y45.e(this.e, sz4Var.e);
    }

    public int hashCode() {
        return (((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31) + this.e.hashCode();
    }

    public String toString() {
        return "Style(animation=" + this.a + ", activeShape=" + this.b + ", inactiveShape=" + this.c + ", minimumShape=" + this.d + ", itemsPlacement=" + this.e + ')';
    }
}
