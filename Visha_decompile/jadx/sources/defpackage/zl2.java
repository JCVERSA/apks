package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div2.Div;

public final class zl2 {
    public final Div a;
    public final oj3 b;

    public zl2(Div div, oj3 oj3Var) {
        y45.j(div, TtmlNode.TAG_DIV);
        y45.j(oj3Var, "expressionResolver");
        this.a = div;
        this.b = oj3Var;
    }

    public final Div a() {
        return this.a;
    }

    public final oj3 b() {
        return this.b;
    }

    public final Div c() {
        return this.a;
    }

    public final oj3 d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zl2)) {
            return false;
        }
        zl2 zl2Var = (zl2) obj;
        return y45.e(this.a, zl2Var.a) && y45.e(this.b, zl2Var.b);
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b.hashCode();
    }

    public String toString() {
        return "DivItemBuilderResult(div=" + this.a + ", expressionResolver=" + this.b + ')';
    }
}
