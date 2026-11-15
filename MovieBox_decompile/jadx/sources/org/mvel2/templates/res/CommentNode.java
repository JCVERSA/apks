package org.mvel2.templates.res;

import f00.d;
import g00.c;
import org.mvel2.integration.VariableResolverFactory;

public class CommentNode extends Node {
    public CommentNode() {
    }

    @Override
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }

    public CommentNode(int i10, String str, char[] cArr, int i11, int i12) {
        this.name = str;
        this.cEnd = i12;
        this.end = i12;
    }

    public CommentNode(int i10, String str, char[] cArr, int i11, int i12, Node node) {
        this.begin = i10;
        this.cEnd = i12;
        this.end = i12;
        this.next = node;
    }
}
