package javassist.compiler.ast;

import defpackage.vfc;
import java.io.Serializable;
import javassist.compiler.CompileError;

public abstract class ASTree implements Serializable {
    private static final long serialVersionUID = 1;

    public abstract void accept(vfc vfcVar) throws CompileError;

    public ASTree getLeft() {
        return null;
    }

    public ASTree getRight() {
        return null;
    }

    public String getTag() {
        String name = getClass().getName();
        return name.substring(name.lastIndexOf(46) + 1);
    }

    public void setLeft(ASTree aSTree) {
    }

    public void setRight(ASTree aSTree) {
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('<');
        stringBuffer.append(getTag());
        stringBuffer.append('>');
        return stringBuffer.toString();
    }
}
