package com.facebook.ads.redexgen.core;

public class BK implements InterfaceC1983jG {
    public final BZ A00;

    public BK(final BZ val$separatorMatcher) {
        this.A00 = val$separatorMatcher;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.1o] */
    @Override
    public final C05621o AAc(final C1984jH splitter, final CharSequence toSplit) {
        return new BJ(splitter, toSplit) {
            @Override
            public final int A04(int separatorPosition) {
                return separatorPosition + 1;
            }

            @Override
            public final int A05(int start) {
                return this.A00.A00.A08(this.A03, start);
            }
        };
    }
}
