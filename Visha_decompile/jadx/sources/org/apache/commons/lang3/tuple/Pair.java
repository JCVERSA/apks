package org.apache.commons.lang3.tuple;

import java.io.Serializable;
import java.util.Map;
import java.util.Objects;
import org.apache.commons.lang3.builder.CompareToBuilder;

public abstract class Pair<L, R> implements Map.Entry<L, R>, Comparable<Pair<L, R>>, Serializable {
    public static final Pair<?, ?>[] EMPTY_ARRAY = new PairAdapter[0];
    private static final long serialVersionUID = 4954918890077093841L;

    public static final class PairAdapter<L, R> extends Pair<L, R> {
        private static final long serialVersionUID = 1;

        private PairAdapter() {
        }

        @Override
        public int compareTo(Object obj) {
            return super.compareTo((Pair) obj);
        }

        @Override
        public L getLeft() {
            return null;
        }

        @Override
        public R getRight() {
            return null;
        }

        @Override
        public R setValue(R r) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <L, R> Pair<L, R>[] emptyArray() {
        return (Pair<L, R>[]) EMPTY_ARRAY;
    }

    public static <L, R> Pair<L, R> of(L l, R r) {
        return ImmutablePair.of((Object) l, (Object) r);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return Objects.equals(getKey(), entry.getKey()) && Objects.equals(getValue(), entry.getValue());
    }

    @Override
    public final L getKey() {
        return getLeft();
    }

    public abstract L getLeft();

    public abstract R getRight();

    @Override
    public R getValue() {
        return getRight();
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(getValue()) ^ Objects.hashCode(getKey());
    }

    public String toString() {
        return "(" + getLeft() + ',' + getRight() + ')';
    }

    public static <L, R> Pair<L, R> of(Map.Entry<L, R> entry) {
        return ImmutablePair.of((Map.Entry) entry);
    }

    @Override
    public int compareTo(Pair<L, R> pair) {
        return new CompareToBuilder().append(getLeft(), pair.getLeft()).append(getRight(), pair.getRight()).toComparison();
    }

    public String toString(String str) {
        return String.format(str, getLeft(), getRight());
    }
}
