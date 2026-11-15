package org.mvel2.ast;

import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedList;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;
import org.mvel2.util.p;

public class TypeDescriptor implements Serializable {
    private ArraySize[] arraySize;
    private String className;
    private ExecutableStatement[] compiledArraySize;
    int endRange;
    private char[] expr;
    private int offset;
    private int start;

    public TypeDescriptor(char[] cArr, int i10, int i11, int i12) {
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        updateClassName(cArr, i10, i11, i12);
    }

    public static Class getContextFreeImport(String str) {
        return (Class) AbstractParser.LITERALS.get(str);
    }

    public static boolean hasContextFreeImport(String str) {
        return AbstractParser.LITERALS.containsKey(str) && (AbstractParser.LITERALS.get(str) instanceof Class);
    }

    public int getArrayLength() {
        return this.arraySize.length;
    }

    public ArraySize[] getArraySize() {
        return this.arraySize;
    }

    public String getClassName() {
        return this.className;
    }

    public Class<?> getClassReference() throws ClassNotFoundException {
        return getClassReference(null, this);
    }

    public ExecutableStatement[] getCompiledArraySize() {
        return this.compiledArraySize;
    }

    public int getEndRange() {
        return this.endRange;
    }

    public char[] getExpr() {
        return this.expr;
    }

    public int getOffset() {
        return this.offset;
    }

    public int getStart() {
        return this.start;
    }

    public boolean isArray() {
        return this.arraySize != null;
    }

    public boolean isClass() {
        String str = this.className;
        return (str == null || str.length() == 0) ? false : true;
    }

    public boolean isUndimensionedArray() {
        ArraySize[] arraySizeArr = this.arraySize;
        if (arraySizeArr != null) {
            for (ArraySize arraySize : arraySizeArr) {
                if (arraySize.value.length == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public void setClassName(String str) {
        this.className = str;
    }

    public void setEndRange(int i10) {
        this.endRange = i10;
    }

    public void updateClassName(char[] cArr, int i10, int i11, int i12) {
        ArraySize[] arraySizeArr;
        char c10;
        this.expr = cArr;
        if (i11 == 0 || !m.c0(cArr[i10]) || Character.isDigit(cArr[i10])) {
            return;
        }
        int iA = org.mvel2.util.b.a('(', i10, i11, cArr);
        this.endRange = iA;
        if (iA != -1) {
            this.className = new String(cArr, i10, iA - i10).trim();
            return;
        }
        int iA2 = org.mvel2.util.b.a('[', i10, i11, cArr);
        this.endRange = iA2;
        if (iA2 == -1) {
            this.className = new String(cArr, i10, i11).trim();
            return;
        }
        this.className = new String(cArr, i10, iA2 - i10).trim();
        LinkedList linkedList = new LinkedList();
        int i13 = i10 + i11;
        while (this.endRange < i13) {
            while (true) {
                int i14 = this.endRange;
                if (i14 >= i13 || !m.q0(cArr[i14])) {
                    break;
                } else {
                    this.endRange++;
                }
            }
            int i15 = this.endRange;
            if (i15 == i13 || (c10 = cArr[i15]) == '{') {
                break;
            }
            if (c10 != '[') {
                throw new CompileException("unexpected token in constructor", cArr, this.endRange);
            }
            int iD = m.d(cArr, i15, i13, '[');
            int i16 = this.endRange + 1;
            this.endRange = i16;
            linkedList.add(m.K0(cArr, i16, iD - i16));
            this.endRange = iD + 1;
        }
        Iterator it = linkedList.iterator();
        this.arraySize = new ArraySize[linkedList.size()];
        int i17 = 0;
        int i18 = 0;
        while (true) {
            arraySizeArr = this.arraySize;
            if (i18 >= arraySizeArr.length) {
                break;
            }
            arraySizeArr[i18] = new ArraySize((char[]) it.next());
            i18++;
        }
        if ((i12 & 16) == 0) {
            return;
        }
        this.compiledArraySize = new ExecutableStatement[arraySizeArr.length];
        while (true) {
            ExecutableStatement[] executableStatementArr = this.compiledArraySize;
            if (i17 >= executableStatementArr.length) {
                return;
            }
            executableStatementArr[i17] = (ExecutableStatement) m.H0(this.arraySize[i17].value);
            i17++;
        }
    }

    public Class<?> getClassReference(ParserContext parserContext) throws ClassNotFoundException {
        return getClassReference(parserContext, this);
    }

    public static Class getClassReference(Class cls, TypeDescriptor typeDescriptor, VariableResolverFactory variableResolverFactory, ParserContext parserContext) throws ClassNotFoundException {
        return m.D(variableResolverFactory, m.A0('[', typeDescriptor.arraySize.length) + "L" + cls.getName() + ";", parserContext);
    }

    public static Class getClassReference(ParserContext parserContext, Class cls, TypeDescriptor typeDescriptor) throws ClassNotFoundException {
        Class clsD;
        if (!typeDescriptor.isArray()) {
            return cls;
        }
        if (cls.isPrimitive()) {
            clsD = p.j(cls);
        } else {
            clsD = m.D(null, m.A0('[', typeDescriptor.arraySize.length) + "L" + cls.getName() + ";", parserContext);
        }
        return clsD;
    }

    public static Class getClassReference(ParserContext parserContext, TypeDescriptor typeDescriptor) throws ClassNotFoundException {
        Class clsD;
        if (parserContext != null && parserContext.hasImport(typeDescriptor.className)) {
            Class cls = parserContext.getImport(typeDescriptor.className);
            if (!typeDescriptor.isArray()) {
                return cls;
            }
            if (cls.isPrimitive()) {
                clsD = p.j(cls);
            } else {
                clsD = m.D(null, m.A0('[', typeDescriptor.arraySize.length) + "L" + cls.getName() + ";", parserContext);
            }
        } else if (parserContext == null && hasContextFreeImport(typeDescriptor.className)) {
            Class contextFreeImport = getContextFreeImport(typeDescriptor.className);
            if (!typeDescriptor.isArray()) {
                return contextFreeImport;
            }
            if (contextFreeImport.isPrimitive()) {
                clsD = p.j(contextFreeImport);
            } else {
                clsD = m.D(null, m.A0('[', typeDescriptor.arraySize.length) + "L" + contextFreeImport.getName() + ";", parserContext);
            }
        } else {
            Class clsV = m.v(typeDescriptor.getClassName(), parserContext);
            if (!typeDescriptor.isArray()) {
                return clsV;
            }
            if (clsV.isPrimitive()) {
                clsD = p.j(clsV);
            } else {
                clsD = m.D(null, m.A0('[', typeDescriptor.arraySize.length) + "L" + clsV.getName() + ";", parserContext);
            }
        }
        return clsD;
    }
}
