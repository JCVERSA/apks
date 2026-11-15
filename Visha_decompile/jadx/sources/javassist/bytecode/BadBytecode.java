package javassist.bytecode;

import defpackage.io6;

public class BadBytecode extends Exception {
    private static final long serialVersionUID = 1;

    public BadBytecode(int i) {
        super("bytecode " + i);
    }

    public BadBytecode(String str) {
        super(str);
    }

    public BadBytecode(String str, Throwable th) {
        super(str, th);
    }

    public BadBytecode(io6 io6Var, Throwable th) {
        throw null;
    }
}
