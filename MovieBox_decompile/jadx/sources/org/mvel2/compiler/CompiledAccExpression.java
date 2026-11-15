package org.mvel2.compiler;

import java.io.Serializable;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;

public class CompiledAccExpression implements ExecutableStatement, Serializable {
    private transient a accessor;
    private ParserContext context;
    private char[] expression;
    private Class ingressType;
    private int offset;
    private int start;

    public CompiledAccExpression(char[] cArr, Class cls, ParserContext parserContext) {
        this(cArr, 0, cArr.length, cls, parserContext);
    }

    public a getAccessor() {
        return this.accessor;
    }

    @Override
    public Class getKnownEgressType() {
        return null;
    }

    @Override
    public Class getKnownIngressType() {
        return this.ingressType;
    }

    @Override
    public Object getValue(Object obj, VariableResolverFactory variableResolverFactory) {
        a aVar = this.accessor;
        if (aVar != null) {
            return aVar.getValue(obj, obj, variableResolverFactory);
        }
        try {
            org.mvel2.optimizers.a aVarD = org.mvel2.optimizers.b.d();
            ParserContext parserContext = this.context;
            char[] cArr = this.expression;
            this.accessor = aVarD.optimizeAccessor(parserContext, cArr, 0, cArr.length, obj, obj, variableResolverFactory, false, this.ingressType);
            return getValue(obj, variableResolverFactory);
        } finally {
            org.mvel2.optimizers.b.a();
        }
    }

    @Override
    public boolean intOptimized() {
        return false;
    }

    @Override
    public boolean isConvertableIngressEgress() {
        return false;
    }

    @Override
    public boolean isEmptyStatement() {
        return this.accessor == null;
    }

    @Override
    public boolean isExplicitCast() {
        return false;
    }

    @Override
    public boolean isLiteralOnly() {
        return false;
    }

    @Override
    public void setKnownIngressType(Class cls) {
        this.ingressType = cls;
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        a aVar = this.accessor;
        if (aVar == null) {
            if (this.ingressType == Object.class && obj3 != null) {
                this.ingressType = obj3.getClass();
            }
            org.mvel2.optimizers.a aVarD = org.mvel2.optimizers.b.d();
            ParserContext parserContext = this.context;
            char[] cArr = this.expression;
            this.accessor = aVarD.optimizeSetAccessor(parserContext, cArr, 0, cArr.length, obj, obj, variableResolverFactory, false, obj3, this.ingressType);
        } else {
            aVar.setValue(obj, obj2, variableResolverFactory, obj3);
        }
        return obj3;
    }

    public CompiledAccExpression(char[] cArr, int i10, int i11, Class cls, ParserContext parserContext) {
        this.expression = cArr;
        this.start = i10;
        this.offset = i11;
        this.context = parserContext;
        this.ingressType = cls == null ? Object.class : cls;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        a aVar = this.accessor;
        if (aVar == null) {
            try {
                this.accessor = org.mvel2.optimizers.b.d().optimizeAccessor(this.context, this.expression, this.start, this.offset, obj, obj2, variableResolverFactory, false, this.ingressType);
                return getValue(obj, obj2, variableResolverFactory);
            } finally {
                org.mvel2.optimizers.b.a();
            }
        }
        return aVar.getValue(obj, obj2, variableResolverFactory);
    }

    @Override
    public void computeTypeConversionRule() {
    }

    @Override
    public void setKnownEgressType(Class cls) {
    }
}
