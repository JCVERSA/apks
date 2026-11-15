package com.google.api;

import com.google.protobuf.y;

public enum MetricDescriptor$MetricKind implements y.c {
    METRIC_KIND_UNSPECIFIED(0),
    GAUGE(1),
    DELTA(2),
    CUMULATIVE(3),
    UNRECOGNIZED(-1);

    public static final int CUMULATIVE_VALUE = 3;
    public static final int DELTA_VALUE = 2;
    public static final int GAUGE_VALUE = 1;
    public static final int METRIC_KIND_UNSPECIFIED_VALUE = 0;
    private static final y.d internalValueMap = new y.d() {
        @Override
        public MetricDescriptor$MetricKind findValueByNumber(int i10) {
            return MetricDescriptor$MetricKind.forNumber(i10);
        }
    };
    private final int value;

    private static final class b implements y.e {

        static final y.e f29372a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return MetricDescriptor$MetricKind.forNumber(i10) != null;
        }
    }

    MetricDescriptor$MetricKind(int i10) {
        this.value = i10;
    }

    public static MetricDescriptor$MetricKind forNumber(int i10) {
        if (i10 == 0) {
            return METRIC_KIND_UNSPECIFIED;
        }
        if (i10 == 1) {
            return GAUGE;
        }
        if (i10 == 2) {
            return DELTA;
        }
        if (i10 != 3) {
            return null;
        }
        return CUMULATIVE;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f29372a;
    }

    @Override
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Deprecated
    public static MetricDescriptor$MetricKind valueOf(int i10) {
        return forNumber(i10);
    }
}
