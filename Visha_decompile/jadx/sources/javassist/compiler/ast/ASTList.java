package javassist.compiler.ast;

import defpackage.vfc;
import javassist.compiler.CompileError;

public class ASTList extends ASTree {
    private static final long serialVersionUID = 1;
    private ASTree left;
    private ASTList right;

    public ASTList(ASTree aSTree, ASTList aSTList) {
        this.left = aSTree;
        this.right = aSTList;
    }

    public static ASTList append(ASTList aSTList, ASTree aSTree) {
        return concat(aSTList, new ASTList(aSTree));
    }

    public static ASTList concat(ASTList aSTList, ASTList aSTList2) {
        if (aSTList == null) {
            return aSTList2;
        }
        ASTList aSTList3 = aSTList;
        while (true) {
            ASTList aSTList4 = aSTList3.right;
            if (aSTList4 == null) {
                aSTList3.right = aSTList2;
                return aSTList;
            }
            aSTList3 = aSTList4;
        }
    }

    public static ASTList make(ASTree aSTree, ASTree aSTree2, ASTree aSTree3) {
        return new ASTList(aSTree, new ASTList(aSTree2, new ASTList(aSTree3)));
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

    public ASTree head() {
        return this.left;
    }

    public int length() {
        return length(this);
    }

    public void setHead(ASTree aSTree) {
        this.left = aSTree;
    }

    @Override
    public void setLeft(ASTree aSTree) {
        this.left = aSTree;
    }

    @Override
    public void setRight(ASTree aSTree) {
        this.right = (ASTList) aSTree;
    }

    public void setTail(ASTList aSTList) {
        this.right = aSTList;
    }

    public ASTList sublist(int i) {
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                return this;
            }
            this = this.right;
            i = i2;
        }
    }

    public boolean subst(ASTree aSTree, ASTree aSTree2) {
        while (this != null) {
            if (this.left == aSTree2) {
                this.left = aSTree;
                return true;
            }
            this = this.right;
        }
        return false;
    }

    public ASTList tail() {
        return this.right;
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("(<");
        stringBuffer.append(getTag());
        stringBuffer.append('>');
        while (this != null) {
            stringBuffer.append(' ');
            ASTree aSTree = this.left;
            stringBuffer.append(aSTree == null ? "<null>" : aSTree.toString());
            this = this.right;
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    public static int length(ASTList aSTList) {
        int i = 0;
        if (aSTList == null) {
            return 0;
        }
        while (aSTList != null) {
            aSTList = aSTList.right;
            i++;
        }
        return i;
    }

    public ASTList(ASTree aSTree) {
        this.left = aSTree;
        this.right = null;
    }
}
