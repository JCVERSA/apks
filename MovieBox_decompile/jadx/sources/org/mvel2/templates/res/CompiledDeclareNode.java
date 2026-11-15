package org.mvel2.templates.res;

import f00.a;
import g00.c;
import java.io.Serializable;
import org.mvel2.ParserContext;
import org.mvel2.d;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.CompiledTemplate;

public class CompiledDeclareNode extends Node {

    private Serializable f68861ce;
    private Node nestedNode;

    public CompiledDeclareNode(int i10, String str, char[] cArr, int i11, int i12, ParserContext parserContext) {
        this.begin = i10;
        this.name = str;
        this.contents = cArr;
        this.cStart = i11;
        int i13 = i12 - 1;
        this.cEnd = i13;
        this.end = i12;
        this.f68861ce = d.e(cArr, i11, i13 - i11, parserContext);
    }

    @Override
    public boolean demarcate(Node node, char[] cArr) {
        Node node2 = this.next;
        this.nestedNode = node2;
        while (node2.getNext() != null) {
            node2 = node2.next;
        }
        node2.next = new EndNode();
        this.next = this.terminus;
        return false;
    }

    @Override
    public Object eval(f00.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        if (dVar.h() == null) {
            dVar.k(new a());
        }
        dVar.h().b((String) d.s(this.f68861ce, obj, variableResolverFactory, String.class), new CompiledTemplate(dVar.j(), this.nestedNode));
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }
}
