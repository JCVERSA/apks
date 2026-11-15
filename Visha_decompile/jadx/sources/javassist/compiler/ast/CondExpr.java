package javassist.compiler.ast;

import defpackage.vfc;
import javassist.compiler.CompileError;

public class CondExpr extends ASTList {
    private static final long serialVersionUID = 1;

    public CondExpr(ASTree aSTree, ASTree aSTree2, ASTree aSTree3) {
        super(aSTree, new ASTList(aSTree2, new ASTList(aSTree3)));
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    public ASTree condExpr() {
        return head();
    }

    public ASTree elseExpr() {
        return tail().tail().head();
    }

    @Override
    public String getTag() {
        return "?:";
    }

    public void setCond(ASTree aSTree) {
        setHead(aSTree);
    }

    public void setElse(ASTree aSTree) {
        tail().tail().setHead(aSTree);
    }

    public void setThen(ASTree aSTree) {
        tail().setHead(aSTree);
    }

    public ASTree thenExpr() {
        return tail().head();
    }
}
