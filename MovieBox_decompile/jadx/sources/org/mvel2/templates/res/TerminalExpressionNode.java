package org.mvel2.templates.res;

import f00.d;
import g00.c;
import org.mvel2.integration.VariableResolverFactory;

public class TerminalExpressionNode extends Node {
    public TerminalExpressionNode() {
    }

    @Override
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        char[] cArr = this.contents;
        int i10 = this.cStart;
        return org.mvel2.d.o(cArr, i10, this.cEnd - i10, obj, variableResolverFactory);
    }

    public TerminalExpressionNode(Node node) {
        this.begin = node.begin;
        this.name = node.name;
        this.contents = node.contents;
        this.cStart = node.cStart;
        this.cEnd = node.cEnd;
    }
}
