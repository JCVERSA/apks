package defpackage;

import com.google.android.gms.internal.ads.l6;
import com.transsion.audiotagger.audio.flac.FlacTagCreator;

public final class f3i extends h3i {
    public f3i(l6 l6Var, CharSequence charSequence, int i) {
        super(l6Var, charSequence);
    }

    @Override
    public final int c(int i) {
        return i;
    }

    @Override
    public final int d(int i) {
        CharSequence charSequence = this.d;
        int i2 = i + FlacTagCreator.DEFAULT_PADDING;
        if (i2 < charSequence.length()) {
            return i2;
        }
        return -1;
    }
}
