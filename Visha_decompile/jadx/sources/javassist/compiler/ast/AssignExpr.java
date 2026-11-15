package javassist.compiler.ast;

import defpackage.vfc;
import javassist.compiler.CompileError;

public class AssignExpr extends Expr {
    private static final long serialVersionUID = 1;

    private AssignExpr(int i, ASTree aSTree, ASTList aSTList) {
        super(i, aSTree, aSTList);
    }

    public static AssignExpr makeAssign(int i, ASTree aSTree, ASTree aSTree2) {
        return new AssignExpr(i, aSTree, new ASTList(aSTree2));
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }
}
