package defpackage;

import com.google.android.gms.internal.ads.l6;
import java.util.regex.Matcher;

public final class e3i extends h3i {
    public final j2i g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e3i(l6 l6Var, CharSequence charSequence, j2i j2iVar) {
        super(l6Var, charSequence);
        this.g = j2iVar;
    }

    @Override
    public final int c(int i) {
        return ((n2i) this.g).a.end();
    }

    @Override
    public final int d(int i) {
        Matcher matcher = ((n2i) this.g).a;
        if (matcher.find(i)) {
            return matcher.start();
        }
        return -1;
    }
}
