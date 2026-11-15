package javassist.compiler.ast;

import defpackage.kpa;
import defpackage.vfc;
import javassist.compiler.CompileError;

public class NewExpr extends ASTList implements kpa {
    private static final long serialVersionUID = 1;
    protected int arrayType;
    protected boolean newArray;

    public NewExpr(ASTList aSTList, ASTList aSTList2) {
        super(aSTList, new ASTList(aSTList2));
        this.newArray = false;
        this.arrayType = 307;
    }

    public static NewExpr makeObjectArray(ASTList aSTList, ASTList aSTList2, ArrayInit arrayInit) {
        NewExpr newExpr = new NewExpr(aSTList, aSTList2);
        newExpr.newArray = true;
        if (arrayInit != null) {
            ASTList.append(newExpr, arrayInit);
        }
        return newExpr;
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    public ASTList getArguments() {
        return (ASTList) getRight().getLeft();
    }

    public ASTList getArraySize() {
        return getArguments();
    }

    public int getArrayType() {
        return this.arrayType;
    }

    public ASTList getClassName() {
        return (ASTList) getLeft();
    }

    public ArrayInit getInitializer() {
        ASTree right = getRight().getRight();
        if (right == null) {
            return null;
        }
        return (ArrayInit) right.getLeft();
    }

    @Override
    public String getTag() {
        return this.newArray ? "new[]" : "new";
    }

    public boolean isArray() {
        return this.newArray;
    }

    public NewExpr(int i, ASTList aSTList, ArrayInit arrayInit) {
        super(null, new ASTList(aSTList));
        this.newArray = true;
        this.arrayType = i;
        if (arrayInit != null) {
            ASTList.append(this, arrayInit);
        }
    }
}
