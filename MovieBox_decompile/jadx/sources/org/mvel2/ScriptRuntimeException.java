package org.mvel2;

public class ScriptRuntimeException extends RuntimeException {
    public ScriptRuntimeException() {
    }

    public ScriptRuntimeException(String str) {
        super(str);
    }

    public ScriptRuntimeException(String str, Throwable th2) {
        super(str, th2);
    }

    public ScriptRuntimeException(Throwable th2) {
        super(th2);
    }
}
