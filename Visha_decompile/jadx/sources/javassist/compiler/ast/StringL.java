package javassist.compiler.ast;

import defpackage.vfc;
import javassist.compiler.CompileError;

public class StringL extends ASTree {
    private static final long serialVersionUID = 1;
    protected String text;

    public StringL(String str) {
        this.text = str;
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    public String get() {
        return this.text;
    }

    @Override
    public String toString() {
        return "\"" + this.text + "\"";
    }
}
