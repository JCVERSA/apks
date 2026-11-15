package javassist.compiler;

import javassist.compiler.ast.ASTree;

public class NoFieldException extends CompileError {
    private static final long serialVersionUID = 1;
    private ASTree expr;
    private String fieldName;

    public NoFieldException(String str, ASTree aSTree) {
        super("no such field: " + str);
        this.fieldName = str;
        this.expr = aSTree;
    }

    public ASTree getExpr() {
        return this.expr;
    }

    public String getField() {
        return this.fieldName;
    }
}
