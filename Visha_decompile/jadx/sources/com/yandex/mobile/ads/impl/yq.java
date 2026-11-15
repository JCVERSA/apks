package com.yandex.mobile.ads.impl;

import java.util.Comparator;

public abstract class yq {
    private static final yq a = new a();
    private static final yq b = new b(-1);
    private static final yq c = new b(1);

    public class a extends yq {
        public a() {
            super();
        }

        @Override
        public final int a() {
            return 0;
        }

        @Override
        public final yq b(boolean z, boolean z2) {
            byte b;
            if (z2 == z) {
                b = 0;
            } else {
                b = z2 ? (byte) 1 : (byte) -1;
            }
            if (b < 0) {
                return yq.b;
            }
            return b > 0 ? yq.c : yq.a;
        }

        @Override
        public final yq a(int i, int i2) {
            byte b;
            if (i < i2) {
                b = -1;
            } else {
                b = i > i2 ? (byte) 1 : (byte) 0;
            }
            if (b < 0) {
                return yq.b;
            }
            return b > 0 ? yq.c : yq.a;
        }

        @Override
        public final yq a(long j, long j2) {
            byte b;
            if (j < j2) {
                b = -1;
            } else {
                b = j > j2 ? (byte) 1 : (byte) 0;
            }
            if (b < 0) {
                return yq.b;
            }
            return b > 0 ? yq.c : yq.a;
        }

        @Override
        public final <T> yq a(T t, T t2, Comparator<T> comparator) {
            int iCompare = comparator.compare(t, t2);
            if (iCompare < 0) {
                return yq.b;
            }
            return iCompare > 0 ? yq.c : yq.a;
        }

        @Override
        public final yq a(boolean z, boolean z2) {
            byte b;
            if (z == z2) {
                b = 0;
            } else {
                b = z ? (byte) 1 : (byte) -1;
            }
            if (b < 0) {
                return yq.b;
            }
            return b > 0 ? yq.c : yq.a;
        }
    }

    public static final class b extends yq {
        final int d;

        public b(int i) {
            super();
            this.d = i;
        }

        @Override
        public final yq a(int i, int i2) {
            return this;
        }

        @Override
        public final yq b(boolean z, boolean z2) {
            return this;
        }

        @Override
        public final yq a(long j, long j2) {
            return this;
        }

        @Override
        public final <T> yq a(T t, T t2, Comparator<T> comparator) {
            return this;
        }

        @Override
        public final yq a(boolean z, boolean z2) {
            return this;
        }

        @Override
        public final int a() {
            return this.d;
        }
    }

    public static yq b() {
        return a;
    }

    public abstract int a();

    public abstract yq a(int i, int i2);

    public abstract yq a(long j, long j2);

    public abstract <T> yq a(T t, T t2, Comparator<T> comparator);

    public abstract yq a(boolean z, boolean z2);

    public abstract yq b(boolean z, boolean z2);

    private yq() {
    }
}
