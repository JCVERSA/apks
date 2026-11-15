package org.mvel2.templates.res;

import g00.c;
import java.io.Serializable;
import org.mvel2.ParserContext;
import org.mvel2.d;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public class CompiledIfNode extends IfNode {

    private Serializable f68865ce;

    public CompiledIfNode(int i10, String str, char[] cArr, int i11, int i12, ParserContext parserContext) {
        super(i10, str, cArr, i11, i12);
        while (true) {
            int i13 = this.cEnd;
            if (i13 <= this.cStart || !m.q0(cArr[i13])) {
                break;
            } else {
                this.cEnd--;
            }
        }
        int i14 = this.cStart;
        int i15 = this.cEnd;
        if (i14 != i15) {
            this.f68865ce = d.e(cArr, i14, i15 - i11, parserContext);
        }
    }

    @Override
    public Object eval(f00.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        Serializable serializable = this.f68865ce;
        if (serializable == null || ((Boolean) d.s(serializable, obj, variableResolverFactory, Boolean.class)).booleanValue()) {
            return this.trueNode.eval(dVar, cVar, obj, variableResolverFactory);
        }
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }
}
