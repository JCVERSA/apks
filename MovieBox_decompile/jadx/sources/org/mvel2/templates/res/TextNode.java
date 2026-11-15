package org.mvel2.templates.res;

import f00.d;
import g00.c;
import org.mvel2.integration.VariableResolverFactory;

public class TextNode extends Node {
    public TextNode(int i10, int i11) {
        this.begin = i10;
        this.end = i11;
    }

    @Override
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        int i10 = this.end - this.begin;
        if (i10 != 0) {
            cVar.append(new String(dVar.j(), this.begin, i10));
        }
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }

    public String toString() {
        return "TextNode(" + this.begin + "," + this.end + ")";
    }

    public TextNode(int i10, int i11, ExpressionNode expressionNode) {
        this.begin = i10;
        this.end = i11;
        this.next = expressionNode;
    }

    @Override
    public void calculateContents(char[] cArr) {
    }
}
