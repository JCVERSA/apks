package javassist.compiler.ast;

import defpackage.vfc;
import javassist.compiler.CompileError;

public class BinExpr extends Expr {
    private static final long serialVersionUID = 1;

    private BinExpr(int i, ASTree aSTree, ASTList aSTList) {
        super(i, aSTree, aSTList);
    }

    public static BinExpr makeBin(int i, ASTree aSTree, ASTree aSTree2) {
        return new BinExpr(i, aSTree, new ASTList(aSTree2));
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }
}
