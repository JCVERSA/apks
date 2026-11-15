package org.mvel2.templates.res;

import f00.d;
import g00.c;
import org.mvel2.integration.VariableResolverFactory;

public class EvalNode extends Node {
    public EvalNode() {
    }

    @Override
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        char[] cArr = this.contents;
        int i10 = this.cStart;
        cVar.append(String.valueOf(d.a(String.valueOf(org.mvel2.d.o(cArr, i10, this.cEnd - i10, obj, variableResolverFactory)), obj, variableResolverFactory)));
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("EvalNode:");
        sb2.append(this.name);
        sb2.append("{");
        char[] cArr = this.contents;
        if (cArr == null) {
            str = "";
        } else {
            int i10 = this.cStart;
            str = new String(cArr, i10, this.cEnd - i10);
        }
        sb2.append(str);
        sb2.append("} (start=");
        sb2.append(this.begin);
        sb2.append(";end=");
        sb2.append(this.end);
        sb2.append(")");
        return sb2.toString();
    }

    public EvalNode(int i10, String str, char[] cArr, int i11, int i12) {
        this.begin = i10;
        this.name = str;
        this.contents = cArr;
        this.cStart = i11;
        this.cEnd = i12 - 1;
        this.end = i12;
    }

    public EvalNode(int i10, String str, char[] cArr, int i11, int i12, Node node) {
        this.name = str;
        this.begin = i10;
        this.contents = cArr;
        this.cStart = i11;
        this.cEnd = i12 - 1;
        this.end = i12;
        this.next = node;
    }
}
