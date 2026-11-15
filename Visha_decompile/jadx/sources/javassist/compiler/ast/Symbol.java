package javassist.compiler.ast;

import defpackage.vfc;
import javassist.compiler.CompileError;

public class Symbol extends ASTree {
    private static final long serialVersionUID = 1;
    protected String identifier;

    public Symbol(String str) {
        this.identifier = str;
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    public String get() {
        return this.identifier;
    }

    @Override
    public String toString() {
        return this.identifier;
    }
}
