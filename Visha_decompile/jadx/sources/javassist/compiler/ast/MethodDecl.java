package javassist.compiler.ast;

import defpackage.vfc;
import javassist.compiler.CompileError;

public class MethodDecl extends ASTList {
    public static final String initName = "<init>";
    private static final long serialVersionUID = 1;

    public MethodDecl(ASTree aSTree, ASTList aSTList) {
        super(aSTree, aSTList);
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    public Stmnt getBody() {
        return (Stmnt) sublist(4).head();
    }

    public ASTList getModifiers() {
        return (ASTList) getLeft();
    }

    public ASTList getParams() {
        return (ASTList) sublist(2).head();
    }

    public Declarator getReturn() {
        return (Declarator) tail().head();
    }

    public ASTList getThrows() {
        return (ASTList) sublist(3).head();
    }

    public boolean isConstructor() {
        Symbol variable = getReturn().getVariable();
        return variable != null && initName.equals(variable.get());
    }
}
