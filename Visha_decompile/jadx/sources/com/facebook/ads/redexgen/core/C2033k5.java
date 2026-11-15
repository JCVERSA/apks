package com.facebook.ads.redexgen.core;

import java.util.Collections;
import java.util.List;

public final class C2033k5 implements J7 {
    public static String[] A01 = {"5dk9XJP2wGzKf", "t9Sqq8YLjeTrFPP9jF9lF", "ZSSLQReFK2RnB4Tl20", "6LiPtiUXCvNXZPkDmbiLO", "ML1syn76y5DaiFADQPhnbgz9k8Qidn9e", "l6QdmjZcy6MGH", "", "GeXYkzAGCbUHzEIcx9bq6WN7r3"};
    public static final C2033k5 A02 = new C2033k5();
    public final List<C2263o2> A00;

    public C2033k5() {
        this.A00 = Collections.emptyList();
    }

    public C2033k5(C2263o2 c2263o2) {
        this.A00 = Collections.singletonList(c2263o2);
    }

    @Override
    public final List<C2263o2> A7P(long j) {
        return j >= 0 ? this.A00 : Collections.emptyList();
    }

    @Override
    public final long A7v(int i) {
        C3M.A07(i == 0);
        if (A01[5].length() != 13) {
            throw new RuntimeException();
        }
        A01[7] = "BSEyCnkUJKVAglTMpAGc69o360";
        return 0L;
    }

    @Override
    public final int A7w() {
        return 1;
    }

    @Override
    public final int A8S(long j) {
        return j < 0 ? 0 : -1;
    }
}
