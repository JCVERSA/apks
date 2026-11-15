package javassist.compiler;

import defpackage.mk5;
import javassist.CannotCompileException;
import javassist.NotFoundException;

public class CompileError extends Exception {
    private static final long serialVersionUID = 1;
    private mk5 lex;
    private String reason;

    public CompileError(String str, mk5 mk5Var) {
        this.reason = str;
    }

    public mk5 getLex() {
        return null;
    }

    @Override
    public String getMessage() {
        return this.reason;
    }

    @Override
    public String toString() {
        return "compile error: " + this.reason;
    }

    public CompileError(String str) {
        this.reason = str;
    }

    public CompileError(CannotCompileException cannotCompileException) {
        this(cannotCompileException.getReason());
    }

    public CompileError(NotFoundException notFoundException) {
        this("cannot find " + notFoundException.getMessage());
    }
}
