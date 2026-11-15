package org.libtorrent4j;

import java.util.Objects;
import org.libtorrent4j.swig.string_int_pair;
import org.libtorrent4j.swig.string_string_pair;

public final class Pair<T1, T2> {
    public final T1 first;
    public final T2 second;

    public Pair(T1 t1, T2 t2) {
        this.first = t1;
        this.second = t2;
    }

    public static <T1, T2> Pair<T1, T2> of(T1 t1, T2 t2) {
        return new Pair<>(t1, t2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return this.first.equals(pair.first) && this.second.equals(pair.second);
    }

    public int hashCode() {
        return Objects.hash(this.first, this.second);
    }

    public string_int_pair to_string_int_pair() {
        if (String.class.equals(this.first.getClass()) && Integer.class.equals(this.second.getClass())) {
            return new string_int_pair((String) this.first, ((Integer) this.second).intValue());
        }
        throw new IllegalArgumentException("Incompatible types");
    }

    public string_string_pair to_string_string_pair() {
        if (String.class.equals(this.first.getClass()) && String.class.equals(this.second.getClass())) {
            return new string_string_pair((String) this.first, (String) this.second);
        }
        throw new IllegalArgumentException("Incompatible types");
    }
}
