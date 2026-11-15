package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.ParserException;
import defpackage.fva;
import defpackage.qw7;

public abstract class TagPayloadReader {
    public final fva a;

    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str, null, false, 1);
        }
    }

    public TagPayloadReader(fva fvaVar) {
        this.a = fvaVar;
    }

    public final boolean a(qw7 qw7Var, long j) {
        return b(qw7Var) && c(qw7Var, j);
    }

    public abstract boolean b(qw7 qw7Var);

    public abstract boolean c(qw7 qw7Var, long j);
}
