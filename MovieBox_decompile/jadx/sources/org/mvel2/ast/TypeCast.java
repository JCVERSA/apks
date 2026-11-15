package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;
import org.mvel2.util.p;

public class TypeCast extends ASTNode {
    private ExecutableStatement statement;
    private boolean widen;

    public TypeCast(char[] cArr, int i10, int i11, Class cls, int i12, ParserContext parserContext) {
        super(parserContext);
        this.egressType = cls;
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        if ((i12 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i10, i11, parserContext);
            this.statement = executableStatement;
            if (executableStatement.getKnownEgressType() == Object.class || org.mvel2.b.a(cls, this.statement.getKnownEgressType())) {
                return;
            }
            if (canCast(this.statement.getKnownEgressType(), cls)) {
                this.widen = true;
                return;
            }
            throw new CompileException("unable to cast type: " + this.statement.getKnownEgressType() + "; to: " + cls, cArr, i10);
        }
    }

    private boolean canCast(Class cls, Class cls2) {
        return p.f(cls, cls2) || (cls.isInterface() && interfaceAssignable(cls, cls2));
    }

    private boolean interfaceAssignable(Class cls, Class cls2) {
        for (Class<?> cls3 : cls.getInterfaces()) {
            if (cls3.isAssignableFrom(cls2)) {
                return true;
            }
        }
        return false;
    }

    private static Object typeCheck(Object obj, Class cls) {
        if (obj == null) {
            return null;
        }
        if (cls.isInstance(obj)) {
            return obj;
        }
        throw new ClassCastException(obj.getClass().getName() + " cannot be cast to: " + cls.getClass().getName());
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return this.widen ? typeCheck(org.mvel2.d.o(this.expr, this.start, this.offset, obj, variableResolverFactory), this.egressType) : org.mvel2.b.b(org.mvel2.d.o(this.expr, this.start, this.offset, obj, variableResolverFactory), this.egressType);
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return this.widen ? typeCheck(this.statement.getValue(obj, obj2, variableResolverFactory), this.egressType) : org.mvel2.b.b(this.statement.getValue(obj, obj2, variableResolverFactory), this.egressType);
    }

    public ExecutableStatement getStatement() {
        return this.statement;
    }
}
