package org.apache.commons.text.lookup;

final class IllegalArgumentExceptions {
    private IllegalArgumentExceptions() {
    }

    public static IllegalArgumentException format(String str, Object... objArr) {
        return new IllegalArgumentException(String.format(str, objArr));
    }

    public static IllegalArgumentException format(Throwable th, String str, Object... objArr) {
        return new IllegalArgumentException(String.format(str, objArr), th);
    }
}
