package javassist.compiler.ast;

import defpackage.vfc;
import javassist.compiler.CompileError;

public class ArrayInit extends ASTList {
    private static final long serialVersionUID = 1;

    public ArrayInit(ASTree aSTree) {
        super(aSTree);
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    @Override
    public String getTag() {
        return "array";
    }
}
