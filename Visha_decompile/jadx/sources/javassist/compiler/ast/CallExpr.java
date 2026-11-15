package javassist.compiler.ast;

import defpackage.cn6;
import defpackage.vfc;
import javassist.compiler.CompileError;

public class CallExpr extends Expr {
    private static final long serialVersionUID = 1;
    private cn6 method;

    private CallExpr(ASTree aSTree, ASTList aSTList) {
        super(67, aSTree, aSTList);
    }

    public static CallExpr makeCall(ASTree aSTree, ASTree aSTree2) {
        return new CallExpr(aSTree, new ASTList(aSTree2));
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    public cn6 getMethod() {
        return null;
    }

    public void setMethod(cn6 cn6Var) {
    }
}
