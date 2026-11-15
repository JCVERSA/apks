package k0;

import android.text.Spanned;

public abstract class m0 {
    public static final boolean a(Spanned spanned, Class cls) {
        return spanned.nextSpanTransition(-1, spanned.length(), cls) != spanned.length();
    }

    public static final boolean b(Spanned spanned, Class cls, int i10, int i11) {
        return spanned.nextSpanTransition(i10 - 1, i11, cls) != i11;
    }
}
