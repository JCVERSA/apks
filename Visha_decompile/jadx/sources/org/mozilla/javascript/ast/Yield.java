package org.mozilla.javascript.ast;

public class Yield extends AstNode {
    private AstNode value;

    public Yield() {
        this.type = 73;
    }

    public AstNode getValue() {
        return this.value;
    }

    public void setValue(AstNode astNode) {
        this.value = astNode;
        if (astNode != null) {
            astNode.setParent(this);
        }
    }

    @Override
    public String toSource(int i) {
        if (this.value == null) {
            return "yield";
        }
        return "yield " + this.value.toSource(0);
    }

    @Override
    public void visit(NodeVisitor nodeVisitor) {
        AstNode astNode;
        if (!nodeVisitor.visit(this) || (astNode = this.value) == null) {
            return;
        }
        astNode.visit(nodeVisitor);
    }

    public Yield(int i) {
        super(i);
        this.type = 73;
    }

    public Yield(int i, int i2) {
        super(i, i2);
        this.type = 73;
    }

    public Yield(int i, int i2, AstNode astNode, boolean z) {
        super(i, i2);
        this.type = z ? 166 : 73;
        setValue(astNode);
    }
}
