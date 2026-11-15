package org.mvel2.templates.res;

import f00.d;
import g00.c;
import org.mvel2.integration.VariableResolverFactory;

public class CodeNode extends Node {
    private int offset;
    private int start;

    public CodeNode() {
    }

    @Override
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        org.mvel2.d.o(this.contents, this.start, this.offset, obj, variableResolverFactory);
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("CodeNode:");
        sb2.append(this.name);
        sb2.append("{");
        char[] cArr = this.contents;
        sb2.append(cArr == null ? "" : new String(cArr));
        sb2.append("} (start=");
        sb2.append(this.begin);
        sb2.append(";end=");
        sb2.append(this.end);
        sb2.append(")");
        return sb2.toString();
    }

    public CodeNode(int i10, String str, char[] cArr, int i11, int i12) {
        this.begin = i10;
        this.name = str;
        this.contents = cArr;
        this.start = i11;
        this.offset = (i12 - i11) - 1;
    }

    public CodeNode(int i10, String str, char[] cArr, int i11, int i12, Node node) {
        this.name = str;
        this.begin = i10;
        this.next = node;
        this.start = i11;
        this.offset = (i12 - i11) - 1;
    }
}
