package org.mvel2.templates.res;

import g00.c;
import java.io.Serializable;
import org.mvel2.ParserContext;
import org.mvel2.d;
import org.mvel2.integration.VariableResolverFactory;

public class CompiledExpressionNode extends ExpressionNode {

    private Serializable f68863ce;

    public CompiledExpressionNode(int i10, String str, char[] cArr, int i11, int i12, ParserContext parserContext) {
        this.begin = i10;
        this.name = str;
        this.contents = cArr;
        this.cStart = i11;
        int i13 = i12 - 1;
        this.cEnd = i13;
        this.end = i12;
        this.f68863ce = d.e(cArr, i11, i13 - i11, parserContext);
    }

    @Override
    public Object eval(f00.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        cVar.append(String.valueOf(d.r(this.f68863ce, obj, variableResolverFactory)));
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }

    @Override
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ExpressionNode:");
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
}
