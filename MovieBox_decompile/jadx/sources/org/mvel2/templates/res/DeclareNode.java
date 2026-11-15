package org.mvel2.templates.res;

import f00.a;
import f00.d;
import g00.c;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.CompiledTemplate;

public class DeclareNode extends Node {
    private Node nestedNode;

    public DeclareNode(int i10, String str, char[] cArr, int i11, int i12) {
        this.begin = i10;
        this.name = str;
        this.contents = cArr;
        this.cStart = i11;
        this.cEnd = i12 - 1;
        this.end = i12;
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
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        if (dVar.h() == null) {
            dVar.k(new a());
        }
        f00.c cVarH = dVar.h();
        char[] cArr = this.contents;
        int i10 = this.cStart;
        cVarH.b((String) org.mvel2.d.p(cArr, i10, this.cEnd - i10, obj, variableResolverFactory, String.class), new CompiledTemplate(dVar.j(), this.nestedNode));
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }
}
