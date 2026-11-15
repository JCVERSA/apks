package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.json.c;

public final class wa5 extends c {
    public final boolean b;
    public final a c;
    public final String d;

    public wa5(Object obj, boolean z, a aVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, z, (i & 4) != 0 ? null : aVar);
    }

    @Override
    public String b() {
        return this.d;
    }

    public final a c() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || wa5.class != obj.getClass()) {
            return false;
        }
        wa5 wa5Var = (wa5) obj;
        return f() == wa5Var.f() && y45.e(b(), wa5Var.b());
    }

    public boolean f() {
        return this.b;
    }

    public int hashCode() {
        return (Boolean.hashCode(f()) * 31) + b().hashCode();
    }

    @Override
    public String toString() {
        if (!f()) {
            return b();
        }
        StringBuilder sb = new StringBuilder();
        zz9.c(sb, b());
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wa5(Object obj, boolean z, a aVar) {
        super(null);
        y45.j(obj, TtmlNode.TAG_BODY);
        this.b = z;
        this.c = aVar;
        this.d = obj.toString();
        if (aVar != null && !aVar.isInline()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }
}
