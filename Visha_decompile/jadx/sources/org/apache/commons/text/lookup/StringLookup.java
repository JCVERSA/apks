package org.apache.commons.text.lookup;

@FunctionalInterface
public interface StringLookup {
    String lookup(String str);
}
