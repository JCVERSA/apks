package org.reflections;

public class ReflectionsException extends RuntimeException {
    public ReflectionsException(String str) {
        super(str);
    }

    public ReflectionsException(String str, Throwable th) {
        super(str, th);
    }

    public ReflectionsException(Throwable th) {
        super(th);
    }
}
