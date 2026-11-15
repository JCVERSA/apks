package org.mozilla.javascript.ast;

public class ArrayComprehensionLoop extends ForInLoop {
    public ArrayComprehensionLoop() {
    }

    @Override
    public AstNode getBody() {
        return null;
    }

    @Override
    public void setBody(AstNode astNode) {
        throw new UnsupportedOperationException("this node type has no body");
    }

    @Override
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent(i));
        sb.append(" for ");
        sb.append(isForEach() ? "each " : "");
        sb.append("(");
        sb.append(this.iterator.toSource(0));
        sb.append(isForOf() ? " of " : " in ");
        sb.append(this.iteratedObject.toSource(0));
        sb.append(")");
        return sb.toString();
    }

    @Override
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.iterator.visit(nodeVisitor);
            this.iteratedObject.visit(nodeVisitor);
        }
    }

    public ArrayComprehensionLoop(int i) {
        super(i);
    }

    public ArrayComprehensionLoop(int i, int i2) {
        super(i, i2);
    }
}
