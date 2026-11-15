package org.schabi.newpipe.extractor.utils;

import java.io.Serializable;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

public class Pair<F extends Serializable, S extends Serializable> implements Serializable {
    private F firstObject;
    private S secondObject;

    public Pair(F f, S s) {
        this.firstObject = f;
        this.secondObject = s;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Pair pair = (Pair) obj;
        return Objects.equals(this.firstObject, pair.firstObject) && Objects.equals(this.secondObject, pair.secondObject);
    }

    public F getFirst() {
        return this.firstObject;
    }

    public S getSecond() {
        return this.secondObject;
    }

    public int hashCode() {
        return Objects.hash(this.firstObject, this.secondObject);
    }

    public void setFirst(F f) {
        this.firstObject = f;
    }

    public void setSecond(S s) {
        this.secondObject = s;
    }

    public String toString() {
        return "{" + this.firstObject + ", " + this.secondObject + StringSubstitutor.DEFAULT_VAR_END;
    }
}
