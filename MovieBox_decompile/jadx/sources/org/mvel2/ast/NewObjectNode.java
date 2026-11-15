package org.mvel2.ast;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.compiler.PropertyVerifier;
import org.mvel2.g;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.e;
import org.mvel2.util.f;
import org.mvel2.util.m;
import org.mvel2.util.p;

public class NewObjectNode extends ASTNode {
    private char[] name;
    private transient org.mvel2.compiler.a newObjectOptimizer;
    private TypeDescriptor typeDescr;
    private static final Logger LOG = Logger.getLogger(NewObjectNode.class.getName());
    private static final Class[] EMPTYCLS = new Class[0];

    public static class NewObjectArray implements org.mvel2.compiler.a, Serializable {
        private Class arrayType;
        private ExecutableStatement[] sizes;

        public NewObjectArray(Class cls, ExecutableStatement[] executableStatementArr) {
            this.arrayType = cls;
            this.sizes = executableStatementArr;
        }

        @Override
        public Class getKnownEgressType() {
            try {
                return Class.forName("[L" + this.arrayType.getName() + ";");
            } catch (ClassNotFoundException unused) {
                return null;
            }
        }

        @Override
        public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
            int length = this.sizes.length;
            int[] iArr = new int[length];
            for (int i10 = 0; i10 < length; i10++) {
                iArr[i10] = ((Integer) org.mvel2.b.b(this.sizes[i10].getValue(obj, obj2, variableResolverFactory), Integer.class)).intValue();
            }
            return Array.newInstance((Class<?>) this.arrayType, iArr);
        }

        @Override
        public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
            return null;
        }
    }

    public NewObjectNode(TypeDescriptor typeDescriptor, int i10, ParserContext parserContext) {
        super(parserContext);
        this.typeDescr = typeDescriptor;
        this.fields = i10;
        this.expr = typeDescriptor.getExpr();
        this.start = typeDescriptor.getStart();
        int offset = typeDescriptor.getOffset();
        this.offset = offset;
        char[] cArr = this.expr;
        if (offset < cArr.length) {
            int i11 = this.start;
            this.name = m.F0(cArr, i11, offset + i11);
        } else {
            this.name = cArr;
        }
        if ((i10 & 16) != 0) {
            if (parserContext == null || !parserContext.hasImport(typeDescriptor.getClassName())) {
                try {
                    this.egressType = Class.forName(typeDescriptor.getClassName(), true, getClassLoader());
                } catch (ClassNotFoundException unused) {
                    if (parserContext.isStrongTyping()) {
                        parserContext.addError(new org.mvel2.c(this.expr, this.start, true, "could not resolve class: " + typeDescriptor.getClassName()));
                        return;
                    }
                    return;
                }
            } else {
                parserContext.setAllowBootstrapBypass(false);
                this.egressType = parserContext.getImport(typeDescriptor.getClassName());
            }
            if (this.egressType != null) {
                rewriteClassReferenceToFQCN(i10);
                if (typeDescriptor.isArray()) {
                    try {
                        this.egressType = this.egressType.isPrimitive() ? p.j(this.egressType) : m.D(null, m.A0('[', typeDescriptor.getArrayLength()) + "L" + this.egressType.getName() + ";", parserContext);
                    } catch (Exception e10) {
                        LOG.log(Level.WARNING, "", (Throwable) e10);
                    }
                }
            }
            if (parserContext != null) {
                if (this.egressType == null) {
                    parserContext.addError(new org.mvel2.c(this.expr, this.start, true, "could not resolve class: " + typeDescriptor.getClassName()));
                    return;
                }
                if (typeDescriptor.isArray()) {
                    return;
                }
                String[] strArrG = m.g(this.expr, this.start, this.offset);
                List listW0 = m.w0(strArrG[0].toCharArray());
                int size = listW0.size();
                Class[] clsArr = new Class[size];
                for (int i12 = 0; i12 < size; i12++) {
                    clsArr[i12] = org.mvel2.d.c((char[]) listW0.get(i12), parserContext);
                }
                if (m.M(clsArr, this.egressType, true) == null && parserContext.isStrongTyping()) {
                    parserContext.addError(new org.mvel2.c(this.expr, this.start, parserContext.isStrongTyping(), "could not resolve constructor " + typeDescriptor.getClassName() + Arrays.toString(clsArr)));
                }
                if (strArrG.length == 2) {
                    String strTrim = strArrG[1].trim();
                    if (strTrim.length() == 0) {
                        return;
                    }
                    this.egressType = new PropertyVerifier(strTrim, parserContext, this.egressType).analyze();
                }
            }
        }
    }

    private Object createPrototypalObject(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return this.pCtx.getFunction(this.typeDescr.getClassName()).getReducedValueAccelerated(obj, obj2, variableResolverFactory);
    }

    private boolean isPrototypeFunction() {
        return this.pCtx.getFunctions().containsKey(this.typeDescr.getClassName());
    }

    private void rewriteClassReferenceToFQCN(int i10) {
        String name = this.egressType.getName();
        if (this.typeDescr.getClassName().indexOf(46) == -1) {
            char[] cArr = this.name;
            int iA = org.mvel2.util.b.a('(', 0, cArr.length, cArr);
            char[] charArray = name.toCharArray();
            if (iA == -1) {
                int length = charArray.length;
                this.name = new char[length];
                for (int i11 = 0; i11 < length; i11++) {
                    this.name[i11] = charArray[i11];
                }
            } else {
                char[] cArr2 = new char[charArray.length + (this.name.length - iA)];
                for (int i12 = 0; i12 < charArray.length; i12++) {
                    cArr2[i12] = charArray[i12];
                }
                int length2 = this.name.length - iA;
                int length3 = charArray.length;
                for (int i13 = 0; i13 < length2; i13++) {
                    cArr2[i13 + length3] = this.name[i13 + iA];
                }
                this.name = cArr2;
            }
            TypeDescriptor typeDescriptor = this.typeDescr;
            char[] cArr3 = this.name;
            typeDescriptor.updateClassName(cArr3, 0, cArr3.length, i10);
        }
    }

    public org.mvel2.compiler.a getNewObjectOptimizer() {
        return this.newObjectOptimizer;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            int i10 = 0;
            if (this.typeDescr.isArray()) {
                Class clsD = m.D(variableResolverFactory, this.typeDescr.getClassName(), this.pCtx);
                int arrayLength = this.typeDescr.getArrayLength();
                int[] iArr = new int[arrayLength];
                ArraySize[] arraySize = this.typeDescr.getArraySize();
                while (i10 < arrayLength) {
                    iArr[i10] = ((Integer) org.mvel2.b.b(org.mvel2.d.q(arraySize[i10].value, obj, variableResolverFactory), Integer.class)).intValue();
                    i10++;
                }
                return Array.newInstance((Class<?>) clsD, iArr);
            }
            char[] cArr = this.name;
            String[] strArrG = m.g(cArr, 0, cArr.length);
            List listW0 = m.w0(strArrG[0].toCharArray());
            if (listW0 == null) {
                Constructor<?> constructor = Class.forName(this.typeDescr.getClassName(), true, this.pCtx.getParserConfiguration().getClassLoader()).getConstructor(EMPTYCLS);
                return strArrG.length > 1 ? g.l(strArrG[1], constructor.newInstance(null), variableResolverFactory, obj2, this.pCtx) : constructor.newInstance(null);
            }
            char[] cArr2 = this.name;
            Class clsD2 = m.D(variableResolverFactory, new String(m.K0(cArr2, 0, org.mvel2.util.b.a('(', 0, cArr2.length, cArr2))).trim(), this.pCtx);
            int size = listW0.size();
            Object[] objArr = new Object[size];
            for (int i11 = 0; i11 < listW0.size(); i11++) {
                objArr[i11] = org.mvel2.d.q((char[]) listW0.get(i11), obj, variableResolverFactory);
            }
            Constructor constructorN = m.N(objArr, clsD2, false);
            if (constructorN != null) {
                while (i10 < size) {
                    objArr[i10] = org.mvel2.b.b(objArr[i10], constructorN.getParameterTypes()[i10]);
                    i10++;
                }
                return strArrG.length > 1 ? g.l(strArrG[1], constructorN.newInstance(objArr), variableResolverFactory, obj2, this.pCtx) : constructorN.newInstance(objArr);
            }
            throw new CompileException("unable to find constructor for: " + clsD2.getName(), this.expr, this.start);
        } catch (ClassNotFoundException e10) {
            throw new CompileException("unable to resolve class: " + e10.getMessage(), this.expr, this.start, e10);
        } catch (NoSuchMethodException e11) {
            throw new CompileException("cannot resolve constructor: " + e11.getMessage(), this.expr, this.start, e11);
        } catch (CompileException e12) {
            throw e12;
        } catch (Exception e13) {
            throw new CompileException("could not instantiate class: " + e13.getMessage(), this.expr, this.start, e13);
        }
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (this.newObjectOptimizer == null) {
            if (this.egressType == null && variableResolverFactory != null && variableResolverFactory.isResolveable(this.typeDescr.getClassName())) {
                try {
                    this.egressType = (Class) variableResolverFactory.getVariableResolver(this.typeDescr.getClassName()).getValue();
                    rewriteClassReferenceToFQCN(16);
                    if (this.typeDescr.isArray()) {
                        try {
                            this.egressType = m.D(variableResolverFactory, m.A0('[', this.typeDescr.getArrayLength()) + "L" + this.egressType.getName() + ";", this.pCtx);
                        } catch (Exception unused) {
                        }
                    }
                } catch (ClassCastException e10) {
                    throw new CompileException("cannot construct object: " + this.typeDescr.getClassName() + " is not a class reference", this.expr, this.start, e10);
                }
            }
            if (this.typeDescr.isArray()) {
                NewObjectArray newObjectArray = new NewObjectArray(m.I(this.egressType.getComponentType()), this.typeDescr.getCompiledArraySize());
                this.newObjectOptimizer = newObjectArray;
                return newObjectArray.getValue(obj, obj2, variableResolverFactory);
            }
            try {
                try {
                    org.mvel2.optimizers.a aVarD = org.mvel2.optimizers.b.d();
                    ParserContext parserContext = this.pCtx;
                    if (parserContext == null) {
                        parserContext = new ParserContext();
                        parserContext.getParserConfiguration().setAllImports(e.e(variableResolverFactory));
                    }
                    ParserContext parserContext2 = parserContext;
                    char[] cArr = this.name;
                    this.newObjectOptimizer = aVarD.optimizeObjectCreation(parserContext2, cArr, 0, cArr.length, obj, obj2, variableResolverFactory);
                    if (aVarD.getResultOptPass() != null) {
                        this.egressType = aVarD.getEgressType();
                        Object resultOptPass = aVarD.getResultOptPass();
                        org.mvel2.optimizers.b.a();
                        return resultOptPass;
                    }
                    org.mvel2.optimizers.b.a();
                } catch (CompileException e11) {
                    throw f.a(e11, this.expr, this.start);
                }
            } catch (Throwable th2) {
                org.mvel2.optimizers.b.a();
                throw th2;
            }
            org.mvel2.optimizers.b.a();
            throw th2;
        }
        return this.newObjectOptimizer.getValue(obj, obj2, variableResolverFactory);
    }

    public TypeDescriptor getTypeDescr() {
        return this.typeDescr;
    }
}
