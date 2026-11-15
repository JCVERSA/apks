package org.mvel2.templates.res;

import g00.c;
import g00.d;
import org.mvel2.integration.VariableResolverFactory;

public class NamedIncludeNode extends Node {
    int includeOffset;
    int includeStart;
    int preOffset;
    int preStart;

    public NamedIncludeNode(int i10, String str, char[] cArr, int i11, int i12) {
        this.begin = i10;
        this.name = str;
        this.contents = cArr;
        this.cStart = i11;
        this.cEnd = i12 - 1;
        this.end = i12;
        int iA = d.a(cArr, 0);
        int i13 = this.cStart;
        this.includeStart = i13;
        this.includeOffset = iA - i13;
        int i14 = iA + 1;
        this.preStart = i14;
        this.preOffset = this.cEnd - i14;
    }

    @Override
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override
    public Object eval(f00.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        int i10 = this.preOffset;
        if (i10 != 0) {
            org.mvel2.d.o(this.contents, this.preStart, i10, obj, variableResolverFactory);
        }
        Node node = this.next;
        return node != null ? node.eval(dVar, cVar.append(String.valueOf(f00.d.e(dVar.h().a((String) org.mvel2.d.p(this.contents, this.includeStart, this.includeOffset, obj, variableResolverFactory, String.class)), obj, variableResolverFactory))), obj, variableResolverFactory) : cVar.append(String.valueOf(f00.d.e(dVar.h().a((String) org.mvel2.d.p(this.contents, this.includeStart, this.includeOffset, obj, variableResolverFactory, String.class)), obj, variableResolverFactory)));
    }
}
