package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.compiler.BlankLiteral;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.l;

public class LiteralNode extends ASTNode {
    public LiteralNode(Object obj, Class cls, ParserContext parserContext) {
        this(obj, parserContext);
        this.egressType = cls;
    }

    @Override
    public Object getLiteralValue() {
        return this.literal;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return this.literal;
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return this.literal;
    }

    @Override
    public boolean isLiteral() {
        return true;
    }

    @Override
    public void setLiteralValue(Object obj) {
        this.literal = obj;
    }

    @Override
    public String toString() {
        return "Literal<" + this.literal + ">";
    }

    public LiteralNode(Object obj, ParserContext parserContext) {
        super(parserContext);
        this.literal = obj;
        if (obj != null) {
            Class<?> cls = obj.getClass();
            this.egressType = cls;
            if (cls == BlankLiteral.class) {
                this.egressType = Object.class;
                return;
            }
            return;
        }
        this.egressType = l.class;
    }
}
