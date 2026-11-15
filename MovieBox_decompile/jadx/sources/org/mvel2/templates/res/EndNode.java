package org.mvel2.templates.res;

import f00.d;
import g00.c;
import org.mvel2.integration.VariableResolverFactory;

public class EndNode extends Node {
    @Override
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        return cVar.toString();
    }

    public String toString() {
        return "EndNode";
    }
}
