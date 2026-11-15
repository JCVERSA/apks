package org.mozilla.javascript.ast;

public class EmptyExpression extends AstNode {
    public EmptyExpression() {
        this.type = 129;
    }

    @Override
    public String toSource(int i) {
        return makeIndent(i);
    }

    @Override
    public void visit(NodeVisitor nodeVisitor) {
        nodeVisitor.visit(this);
    }

    public EmptyExpression(int i) {
        super(i);
        this.type = 129;
    }

    public EmptyExpression(int i, int i2) {
        super(i, i2);
        this.type = 129;
    }
}
