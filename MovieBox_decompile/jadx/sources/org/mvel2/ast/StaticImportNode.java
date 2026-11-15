package org.mvel2.ast;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;

public class StaticImportNode extends ASTNode {
    private Class declaringClass;
    private transient Method method;
    private String methodName;

    public StaticImportNode(char[] cArr, int i10, int i11, ParserContext parserContext) {
        super(parserContext);
        try {
            this.expr = cArr;
            this.start = i10;
            this.offset = i11;
            ClassLoader classLoader = getClassLoader();
            this.expr = cArr;
            int iB = org.mvel2.util.b.b('.', i10, i11, cArr);
            this.declaringClass = Class.forName(new String(cArr, i10, iB - i10), true, classLoader);
            int i12 = iB + 1;
            this.methodName = new String(cArr, i12, i11 - (i12 - i10));
            if (resolveMethod() != null) {
                return;
            }
            throw new CompileException("can not find method for static import: " + this.declaringClass.getName() + "." + this.methodName, cArr, i10);
        } catch (Exception e10) {
            throw new CompileException("unable to import class", cArr, i10, e10);
        }
    }

    private Method resolveMethod() {
        for (Method method : this.declaringClass.getMethods()) {
            if (Modifier.isStatic(method.getModifiers()) && this.methodName.equals(method.getName())) {
                this.method = method;
                return method;
            }
        }
        return null;
    }

    public Method getMethod() {
        return this.method;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return getReducedValueAccelerated(obj, obj2, variableResolverFactory);
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        String str = this.methodName;
        Method methodResolveMethod = this.method;
        if (methodResolveMethod == null) {
            methodResolveMethod = resolveMethod();
            this.method = methodResolveMethod;
        }
        variableResolverFactory.createVariable(str, methodResolveMethod);
        return null;
    }
}
