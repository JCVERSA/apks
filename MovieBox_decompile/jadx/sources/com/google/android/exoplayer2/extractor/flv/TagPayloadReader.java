package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.d0;
import i9.e0;

abstract class TagPayloadReader {

    protected final e0 f24386a;

    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str, null, false, 1);
        }
    }

    protected TagPayloadReader(e0 e0Var) {
        this.f24386a = e0Var;
    }

    public final boolean a(d0 d0Var, long j10) {
        return b(d0Var) && c(d0Var, j10);
    }

    protected abstract boolean b(d0 d0Var);

    protected abstract boolean c(d0 d0Var, long j10);
}
