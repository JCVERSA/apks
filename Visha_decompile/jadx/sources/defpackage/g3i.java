package defpackage;

import com.google.android.gms.internal.ads.l6;
import java.util.Iterator;

public final class g3i implements Iterable {
    public final CharSequence b;
    public final l6 c;

    public g3i(l6 l6Var, CharSequence charSequence) {
        this.b = charSequence;
        this.c = l6Var;
    }

    @Override
    public final Iterator iterator() {
        return this.c.g(this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        o2i.b(sb, this, ", ");
        sb.append(']');
        return sb.toString();
    }
}
