package javassist.compiler.ast;

import defpackage.vfc;
import javassist.compiler.CompileError;

public class Pair extends ASTree {
    private static final long serialVersionUID = 1;
    protected ASTree left;
    protected ASTree right;

    public Pair(ASTree aSTree, ASTree aSTree2) {
        this.left = aSTree;
        this.right = aSTree2;
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    @Override
    public ASTree getLeft() {
        return this.left;
    }

    @Override
    public ASTree getRight() {
        return this.right;
    }

    @Override
    public void setLeft(ASTree aSTree) {
        this.left = aSTree;
    }

    @Override
    public void setRight(ASTree aSTree) {
        this.right = aSTree;
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("(<Pair> ");
        ASTree aSTree = this.left;
        stringBuffer.append(aSTree == null ? "<null>" : aSTree.toString());
        stringBuffer.append(" . ");
        ASTree aSTree2 = this.right;
        stringBuffer.append(aSTree2 != null ? aSTree2.toString() : "<null>");
        stringBuffer.append(')');
        return stringBuffer.toString();
    }
}
