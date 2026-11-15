package androidx.core.util;

import android.annotation.SuppressLint;
import java.util.Objects;

@SuppressLint({"UnknownNullness"})
public interface Predicate<T> {
    @SuppressLint({"MissingNullability"})
    static <T> Predicate<T> isEqual(@SuppressLint({"MissingNullability"}) final Object obj) {
        return obj == null ? new Predicate() {
            @Override
            public final boolean test(Object obj2) {
                return Objects.isNull(obj2);
            }
        } : new Predicate() {
            @Override
            public final boolean test(Object obj2) {
                return obj.equals(obj2);
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    default boolean lambda$and$0(Predicate predicate, Object obj) {
        return test(obj) && predicate.test(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    default boolean lambda$negate$1(Object obj) {
        return !test(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    default boolean lambda$or$2(Predicate predicate, Object obj) {
        return test(obj) || predicate.test(obj);
    }

    @SuppressLint({"MissingNullability"})
    static <T> Predicate<T> not(@SuppressLint({"MissingNullability"}) Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return predicate.negate();
    }

    @SuppressLint({"MissingNullability"})
    default Predicate<T> and(@SuppressLint({"MissingNullability"}) final Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return this.a.lambda$and$0(predicate, obj);
            }
        };
    }

    @SuppressLint({"MissingNullability"})
    default Predicate<T> negate() {
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return this.a.lambda$negate$1(obj);
            }
        };
    }

    @SuppressLint({"MissingNullability"})
    default Predicate<T> or(@SuppressLint({"MissingNullability"}) final Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return this.a.lambda$or$2(predicate, obj);
            }
        };
    }

    boolean test(T t);
}
