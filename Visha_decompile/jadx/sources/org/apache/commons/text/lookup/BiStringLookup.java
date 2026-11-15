package org.apache.commons.text.lookup;

@FunctionalInterface
public interface BiStringLookup<U> extends StringLookup {
    default String lookup(String str, U u) {
        return lookup(str);
    }
}
