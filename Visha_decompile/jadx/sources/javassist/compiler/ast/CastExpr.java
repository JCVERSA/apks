package javassist.compiler.ast;

import defpackage.kpa;
import defpackage.vfc;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import javassist.compiler.CompileError;

public class CastExpr extends ASTList implements kpa {
    private static final long serialVersionUID = 1;
    protected int arrayDim;
    protected int castType;

    public CastExpr(ASTList aSTList, int i, ASTree aSTree) {
        super(aSTList, new ASTList(aSTree));
        this.castType = 307;
        this.arrayDim = i;
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    public int getArrayDim() {
        return this.arrayDim;
    }

    public ASTList getClassName() {
        return (ASTList) getLeft();
    }

    public ASTree getOprand() {
        return getRight().getLeft();
    }

    @Override
    public String getTag() {
        return "cast:" + this.castType + StringUtils.PROCESS_POSTFIX_DELIMITER + this.arrayDim;
    }

    public int getType() {
        return this.castType;
    }

    public void setOprand(ASTree aSTree) {
        getRight().setLeft(aSTree);
    }

    public CastExpr(int i, int i2, ASTree aSTree) {
        super(null, new ASTList(aSTree));
        this.castType = i;
        this.arrayDim = i2;
    }
}
