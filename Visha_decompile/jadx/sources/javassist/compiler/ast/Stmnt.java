package javassist.compiler.ast;

import defpackage.kpa;
import defpackage.vfc;
import javassist.compiler.CompileError;

public class Stmnt extends ASTList implements kpa {
    private static final long serialVersionUID = 1;
    protected int operatorId;

    public Stmnt(int i, ASTree aSTree, ASTList aSTList) {
        super(aSTree, aSTList);
        this.operatorId = i;
    }

    public static Stmnt make(int i, ASTree aSTree, ASTree aSTree2) {
        return new Stmnt(i, aSTree, new ASTList(aSTree2));
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    public int getOperator() {
        return this.operatorId;
    }

    @Override
    public String getTag() {
        if (this.operatorId < 128) {
            return "stmnt:" + ((char) this.operatorId);
        }
        return "stmnt:" + this.operatorId;
    }

    public static Stmnt make(int i, ASTree aSTree, ASTree aSTree2, ASTree aSTree3) {
        return new Stmnt(i, aSTree, new ASTList(aSTree2, new ASTList(aSTree3)));
    }

    public Stmnt(int i, ASTree aSTree) {
        super(aSTree);
        this.operatorId = i;
    }

    public Stmnt(int i) {
        this(i, null);
    }
}
