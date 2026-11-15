package com.google.android.exoplayer2.upstream;

import defpackage.ih6;
import defpackage.in5;
import java.io.IOException;

public interface f {

    public static final class a {
        public final in5 a;
        public final ih6 b;
        public final IOException c;
        public final int d;

        public a(in5 in5Var, ih6 ih6Var, IOException iOException, int i) {
            this.a = in5Var;
            this.b = ih6Var;
            this.c = iOException;
            this.d = i;
        }
    }

    long a(a aVar);

    int getMinimumLoadableRetryCount(int i);

    default void onLoadTaskConcluded(long j) {
    }
}
