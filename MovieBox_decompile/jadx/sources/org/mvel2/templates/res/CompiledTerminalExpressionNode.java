package org.mvel2.templates.res;

import g00.c;
import java.io.Serializable;
import org.mvel2.ParserContext;
import org.mvel2.d;
import org.mvel2.integration.VariableResolverFactory;

public class CompiledTerminalExpressionNode extends TerminalExpressionNode {

    private Serializable f68866ce;

    public CompiledTerminalExpressionNode(Node node, ParserContext parserContext) {
        this.begin = node.begin;
        this.name = node.name;
        char[] cArr = node.contents;
        int i10 = node.cStart;
        this.f68866ce = d.e(cArr, i10, node.cEnd - i10, parserContext);
    }

    @Override
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override
    public Object eval(f00.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        return d.r(this.f68866ce, obj, variableResolverFactory);
    }
}
