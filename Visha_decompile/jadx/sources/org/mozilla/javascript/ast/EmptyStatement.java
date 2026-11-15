package org.mozilla.javascript.ast;

public class EmptyStatement extends AstNode {
    public EmptyStatement() {
        this.type = 129;
    }

    @Override
    public String toSource(int i) {
        return makeIndent(i) + ";\n";
    }

    @Override
    public void visit(NodeVisitor nodeVisitor) {
        nodeVisitor.visit(this);
    }

    public EmptyStatement(int i) {
        super(i);
        this.type = 129;
    }

    public EmptyStatement(int i, int i2) {
        super(i, i2);
        this.type = 129;
    }
}
