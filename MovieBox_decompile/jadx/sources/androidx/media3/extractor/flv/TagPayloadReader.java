package androidx.media3.extractor.flv;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.j0;
import k2.s0;

abstract class TagPayloadReader {

    protected final s0 f13089a;

    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str, null, false, 1);
        }
    }

    protected TagPayloadReader(s0 s0Var) {
        this.f13089a = s0Var;
    }

    public final boolean a(j0 j0Var, long j10) {
        return b(j0Var) && c(j0Var, j10);
    }

    protected abstract boolean b(j0 j0Var);

    protected abstract boolean c(j0 j0Var, long j10);
}
