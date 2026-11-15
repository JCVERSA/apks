package org.mozilla.javascript.ast;

import java.util.Iterator;
import org.apache.commons.text.StringSubstitutor;
import org.mozilla.javascript.Node;

public class Block extends AstNode {
    public Block() {
        this.type = 130;
    }

    public void addStatement(AstNode astNode) {
        addChild(astNode);
    }

    @Override
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent(i));
        sb.append("{\n");
        Iterator<Node> it = iterator();
        while (it.hasNext()) {
            AstNode astNode = (AstNode) it.next();
            sb.append(astNode.toSource(i + 1));
            if (astNode.getType() == 162) {
                sb.append("\n");
            }
        }
        sb.append(makeIndent(i));
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
        if (getInlineComment() != null) {
            sb.append(getInlineComment().toSource(i));
        }
        sb.append("\n");
        return sb.toString();
    }

    @Override
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            Iterator<Node> it = iterator();
            while (it.hasNext()) {
                ((AstNode) it.next()).visit(nodeVisitor);
            }
        }
    }

    public Block(int i) {
        super(i);
        this.type = 130;
    }

    public Block(int i, int i2) {
        super(i, i2);
        this.type = 130;
    }
}
