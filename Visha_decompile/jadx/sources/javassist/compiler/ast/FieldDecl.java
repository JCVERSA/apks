package javassist.compiler.ast;

import defpackage.vfc;
import javassist.compiler.CompileError;

public class FieldDecl extends ASTList {
    private static final long serialVersionUID = 1;

    public FieldDecl(ASTree aSTree, ASTList aSTList) {
        super(aSTree, aSTList);
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    public Declarator getDeclarator() {
        return (Declarator) tail().head();
    }

    public ASTree getInit() {
        return sublist(2).head();
    }

    public ASTList getModifiers() {
        return (ASTList) getLeft();
    }
}
