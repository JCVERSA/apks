package javassist.compiler.ast;

import defpackage.kpa;
import defpackage.vfc;
import javassist.compiler.CompileError;
import org.apache.commons.io.IOUtils;

public class Declarator extends ASTList implements kpa {
    private static final long serialVersionUID = 1;
    protected int arrayDim;
    protected int localVar;
    protected String qualifiedClass;
    protected int varType;

    public Declarator(int i, int i2) {
        super(null);
        this.varType = i;
        this.arrayDim = i2;
        this.localVar = -1;
        this.qualifiedClass = null;
    }

    public static String astToClassName(ASTList aSTList, char c) {
        if (aSTList == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        astToClassName(stringBuffer, aSTList, c);
        return stringBuffer.toString();
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    public void addArrayDim(int i) {
        this.arrayDim += i;
    }

    public int getArrayDim() {
        return this.arrayDim;
    }

    public String getClassName() {
        return this.qualifiedClass;
    }

    public ASTree getInitializer() {
        ASTList aSTListTail = tail();
        if (aSTListTail != null) {
            return aSTListTail.head();
        }
        return null;
    }

    public int getLocalVar() {
        return this.localVar;
    }

    @Override
    public String getTag() {
        return "decl";
    }

    public int getType() {
        return this.varType;
    }

    public Symbol getVariable() {
        return (Symbol) getLeft();
    }

    public Declarator make(Symbol symbol, int i, ASTree aSTree) {
        Declarator declarator = new Declarator(this.varType, this.arrayDim + i);
        declarator.qualifiedClass = this.qualifiedClass;
        declarator.setLeft(symbol);
        ASTList.append(declarator, aSTree);
        return declarator;
    }

    public void setClassName(String str) {
        this.qualifiedClass = str;
    }

    public void setLocalVar(int i) {
        this.localVar = i;
    }

    public void setVariable(Symbol symbol) {
        setLeft(symbol);
    }

    private static void astToClassName(StringBuffer stringBuffer, ASTList aSTList, char c) {
        while (true) {
            ASTree aSTreeHead = aSTList.head();
            if (aSTreeHead instanceof Symbol) {
                stringBuffer.append(((Symbol) aSTreeHead).get());
            } else if (aSTreeHead instanceof ASTList) {
                astToClassName(stringBuffer, (ASTList) aSTreeHead, c);
            }
            aSTList = aSTList.tail();
            if (aSTList == null) {
                return;
            } else {
                stringBuffer.append(c);
            }
        }
    }

    public Declarator(ASTList aSTList, int i) {
        super(null);
        this.varType = 307;
        this.arrayDim = i;
        this.localVar = -1;
        this.qualifiedClass = astToClassName(aSTList, IOUtils.DIR_SEPARATOR_UNIX);
    }

    public Declarator(int i, String str, int i2, int i3, Symbol symbol) {
        super(null);
        this.varType = i;
        this.arrayDim = i2;
        this.localVar = i3;
        this.qualifiedClass = str;
        setLeft(symbol);
        ASTList.append(this, null);
    }
}
