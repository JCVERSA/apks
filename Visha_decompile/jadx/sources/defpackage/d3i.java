package defpackage;

import com.google.android.gms.internal.ads.l6;

public final class d3i extends h3i {
    public final i2i g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d3i(l6 l6Var, CharSequence charSequence, i2i i2iVar) {
        super(l6Var, charSequence);
        this.g = i2iVar;
    }

    @Override
    public final int c(int i) {
        return i + 1;
    }

    @Override
    public final int d(int i) {
        CharSequence charSequence = this.d;
        int length = charSequence.length();
        v2i.b(i, length, "index");
        while (i < length) {
            if (this.g.a(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }
}
