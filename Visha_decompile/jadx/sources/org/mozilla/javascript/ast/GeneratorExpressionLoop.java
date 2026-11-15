package org.mozilla.javascript.ast;

public class GeneratorExpressionLoop extends ForInLoop {
    public GeneratorExpressionLoop() {
    }

    @Override
    public boolean isForEach() {
        return false;
    }

    @Override
    public void setIsForEach(boolean z) {
        throw new UnsupportedOperationException("this node type does not support for each");
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

    public GeneratorExpressionLoop(int i) {
        super(i);
    }

    public GeneratorExpressionLoop(int i, int i2) {
        super(i, i2);
    }
}
