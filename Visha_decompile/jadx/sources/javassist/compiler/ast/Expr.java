package javassist.compiler.ast;

import defpackage.kpa;
import defpackage.vfc;
import javassist.compiler.CompileError;

public class Expr extends ASTList implements kpa {
    private static final long serialVersionUID = 1;
    protected int operatorId;

    public Expr(int i, ASTree aSTree, ASTList aSTList) {
        super(aSTree, aSTList);
        this.operatorId = i;
    }

    public static Expr make(int i, ASTree aSTree, ASTree aSTree2) {
        return new Expr(i, aSTree, new ASTList(aSTree2));
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    public String getName() {
        int i = this.operatorId;
        if (i < 128) {
            return String.valueOf((char) i);
        }
        if (350 > i || i > 371) {
            return i == 323 ? "instanceof" : String.valueOf(i);
        }
        return kpa.Z4[i - 350];
    }

    public int getOperator() {
        return this.operatorId;
    }

    @Override
    public String getTag() {
        return "op:" + getName();
    }

    public ASTree oprand1() {
        return getLeft();
    }

    public ASTree oprand2() {
        return getRight().getLeft();
    }

    public void setOperator(int i) {
        this.operatorId = i;
    }

    public void setOprand1(ASTree aSTree) {
        setLeft(aSTree);
    }

    public void setOprand2(ASTree aSTree) {
        getRight().setLeft(aSTree);
    }

    public static Expr make(int i, ASTree aSTree) {
        return new Expr(i, aSTree);
    }

    public Expr(int i, ASTree aSTree) {
        super(aSTree);
        this.operatorId = i;
    }
}
