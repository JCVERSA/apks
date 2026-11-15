package org.mvel2.templates.res;

import f00.d;
import g00.c;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public class IfNode extends Node {
    protected Node elseNode;
    protected Node trueNode;

    public IfNode(int i10, String str, char[] cArr, int i11, int i12) {
        super(i10, str, cArr, i11, i12);
        while (true) {
            int i13 = this.cEnd;
            if (i13 <= this.cStart || !m.q0(cArr[i13])) {
                return;
            } else {
                this.cEnd--;
            }
        }
    }

    @Override
    public boolean demarcate(Node node, char[] cArr) {
        this.trueNode = this.next;
        this.next = this.terminus;
        return true;
    }

    @Override
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        int i10 = this.cEnd;
        int i11 = this.cStart;
        if (i10 == i11 || ((Boolean) org.mvel2.d.p(this.contents, i11, i10 - i11, obj, variableResolverFactory, Boolean.class)).booleanValue()) {
            return this.trueNode.eval(dVar, cVar, obj, variableResolverFactory);
        }
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }

    public Node getElseNode() {
        return this.elseNode;
    }

    public Node getTrueNode() {
        return this.trueNode;
    }

    public void setElseNode(ExpressionNode expressionNode) {
        this.elseNode = expressionNode;
    }

    public void setTrueNode(ExpressionNode expressionNode) {
        this.trueNode = expressionNode;
    }
}
