package org.mozilla.javascript.ast;

import com.transsion.apiinvoke.common.router.ProcessInfo;

public class ExpressionStatement extends AstNode {
    private AstNode expr;

    public ExpressionStatement() {
        this.type = 134;
    }

    public AstNode getExpression() {
        return this.expr;
    }

    @Override
    public boolean hasSideEffects() {
        return this.type == 135 || this.expr.hasSideEffects();
    }

    public void setExpression(AstNode astNode) {
        assertNotNull(astNode);
        this.expr = astNode;
        astNode.setParent(this);
        setLineno(astNode.getLineno());
    }

    public void setHasResult() {
        this.type = 135;
    }

    @Override
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.expr.toSource(i));
        sb.append(ProcessInfo.SPLIT_NEW_VERSION);
        if (getInlineComment() != null) {
            sb.append(getInlineComment().toSource(i));
        }
        sb.append("\n");
        return sb.toString();
    }

    @Override
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.expr.visit(nodeVisitor);
        }
    }

    public ExpressionStatement(AstNode astNode, boolean z) {
        this(astNode);
        if (z) {
            setHasResult();
        }
    }

    public ExpressionStatement(AstNode astNode) {
        this(astNode.getPosition(), astNode.getLength(), astNode);
    }

    public ExpressionStatement(int i, int i2) {
        super(i, i2);
        this.type = 134;
    }

    public ExpressionStatement(int i, int i2, AstNode astNode) {
        super(i, i2);
        this.type = 134;
        setExpression(astNode);
    }
}
