package javassist.compiler.ast;

import defpackage.vfc;
import javassist.compiler.CompileError;

public class Keyword extends ASTree {
    private static final long serialVersionUID = 1;
    protected int tokenId;

    public Keyword(int i) {
        this.tokenId = i;
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    public int get() {
        return this.tokenId;
    }

    @Override
    public String toString() {
        return "id:" + this.tokenId;
    }
}
