package org.mvel2.ast;

import java.lang.reflect.Array;
import java.util.Iterator;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.DefaultLocalVariableResolverFactory;
import org.mvel2.integration.impl.ItemResolverFactory;
import org.mvel2.util.m;

public class ForEachNode extends BlockNode {
    private static final int ARRAY = 1;
    private static final int CHARSEQUENCE = 2;
    private static final int INTEGER = 3;
    private static final int ITERABLE = 0;
    protected ExecutableStatement condition;
    protected String item;
    protected Class itemType;
    private int type;

    public ForEachNode(char[] cArr, int i10, int i11, int i12, int i13, int i14, ParserContext parserContext) {
        super(parserContext);
        this.type = -1;
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        this.fields = i14;
        handleCond(cArr, i10, i11, i14, parserContext);
        this.blockStart = i12;
        this.blockOffset = i13;
        if ((i14 & 16) != 0) {
            if (parserContext.isStrictTypeEnforcement() && this.itemType != null) {
                parserContext = parserContext.createSubcontext();
                parserContext.addInput(this.item, this.itemType);
            }
            parserContext.pushVariableScope();
            parserContext.makeVisible(this.item);
            this.compiledBlock = (ExecutableStatement) m.I0(cArr, i12, i13, parserContext);
            parserContext.popVariableScope();
        }
    }

    private void determineIterType(Class cls) {
        if (Iterable.class.isAssignableFrom(cls)) {
            this.type = 0;
            return;
        }
        if (cls.isArray()) {
            this.type = 1;
            return;
        }
        if (CharSequence.class.isAssignableFrom(cls)) {
            this.type = 2;
        } else {
            if (Integer.class.isAssignableFrom(cls)) {
                this.type = 3;
                return;
            }
            throw new CompileException("non-iterable type: " + cls.getName(), this.expr, this.start);
        }
    }

    private void enforceTypeSafety(Class cls, Class cls2) {
        if (cls.isAssignableFrom(cls2) || org.mvel2.b.a(cls2, cls)) {
            return;
        }
        throw new CompileException("type mismatch in foreach: expected: " + cls.getName() + "; but found: " + m.I(cls2), this.expr, this.start);
    }

    private void handleCond(char[] cArr, int i10, int i11, int i12, ParserContext parserContext) {
        int i13 = i10 + i11;
        int i14 = i10;
        while (i14 < i13 && cArr[i14] != ':') {
            i14++;
        }
        if (i14 == i13 || cArr[i14] != ':') {
            throw new CompileException("expected : in foreach", cArr, i14);
        }
        int i15 = i14 - i10;
        String strX = m.x(cArr, i10, i15);
        this.item = strX;
        int iIndexOf = strX.indexOf(32);
        if (iIndexOf != -1) {
            String strTrim = new String(cArr, i10, iIndexOf).trim();
            try {
                this.itemType = m.D(null, strTrim, parserContext);
                this.item = new String(cArr, i10 + iIndexOf, i15 - iIndexOf).trim();
            } catch (ClassNotFoundException unused) {
                throw new CompileException("cannot resolve identifier: " + strTrim, cArr, i10);
            }
        }
        int i16 = i14 + 1;
        this.start = i16;
        int i17 = (i11 - i15) - 1;
        this.offset = i17;
        if ((i12 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) m.I0(this.expr, i16, i17, parserContext);
            this.condition = executableStatement;
            Class knownEgressType = executableStatement.getKnownEgressType();
            if (this.itemType != null && knownEgressType.isArray()) {
                enforceTypeSafety(this.itemType, m.I(this.condition.getKnownEgressType()));
            } else if (parserContext.isStrongTyping()) {
                determineIterType(knownEgressType);
            }
        }
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        ItemResolverFactory.ItemResolver itemResolver = new ItemResolverFactory.ItemResolver(this.item);
        ItemResolverFactory itemResolverFactory = new ItemResolverFactory(itemResolver, new DefaultLocalVariableResolverFactory(variableResolverFactory));
        Object objO = org.mvel2.d.o(this.expr, this.start, this.offset, obj2, variableResolverFactory);
        Class cls = this.itemType;
        if (cls != null && cls.isArray()) {
            enforceTypeSafety(this.itemType, m.I(objO.getClass()));
        }
        this.compiledBlock = (ExecutableStatement) m.I0(this.expr, this.blockStart, this.blockOffset, this.pCtx);
        if (objO instanceof Iterable) {
            Iterator it = ((Iterable) objO).iterator();
            while (it.hasNext()) {
                itemResolver.setValue(it.next());
                Object value = this.compiledBlock.getValue(obj, obj2, itemResolverFactory);
                if (itemResolverFactory.tiltFlag()) {
                    return value;
                }
            }
            return null;
        }
        int i10 = 0;
        if (objO != null && objO.getClass().isArray()) {
            int length = Array.getLength(objO);
            while (i10 < length) {
                itemResolver.setValue(Array.get(objO, i10));
                Object value2 = this.compiledBlock.getValue(obj, obj2, itemResolverFactory);
                if (itemResolverFactory.tiltFlag()) {
                    return value2;
                }
                i10++;
            }
            return null;
        }
        if (objO instanceof CharSequence) {
            char[] charArray = objO.toString().toCharArray();
            int length2 = charArray.length;
            while (i10 < length2) {
                itemResolver.setValue(Character.valueOf(charArray[i10]));
                Object value3 = this.compiledBlock.getValue(obj, obj2, itemResolverFactory);
                if (itemResolverFactory.tiltFlag()) {
                    return value3;
                }
                i10++;
            }
            return null;
        }
        if (!(objO instanceof Integer)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("non-iterable type: ");
            sb2.append(objO != null ? objO.getClass().getName() : "null");
            throw new CompileException(sb2.toString(), this.expr, this.start);
        }
        int iIntValue = ((Integer) objO).intValue() + 1;
        for (int i11 = 1; i11 != iIntValue; i11++) {
            itemResolver.setValue(Integer.valueOf(i11));
            Object value4 = this.compiledBlock.getValue(obj, obj2, itemResolverFactory);
            if (itemResolverFactory.tiltFlag()) {
                return value4;
            }
        }
        return null;
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        ItemResolverFactory.ItemResolver itemResolver = new ItemResolverFactory.ItemResolver(this.item);
        ItemResolverFactory itemResolverFactory = new ItemResolverFactory(itemResolver, new DefaultLocalVariableResolverFactory(variableResolverFactory));
        Object value = this.condition.getValue(obj, obj2, variableResolverFactory);
        if (this.type == -1) {
            determineIterType(value.getClass());
        }
        int i10 = this.type;
        if (i10 == 0) {
            Iterator it = ((Iterable) value).iterator();
            while (it.hasNext()) {
                itemResolver.setValue(it.next());
                Object value2 = this.compiledBlock.getValue(obj, obj2, itemResolverFactory);
                if (itemResolverFactory.tiltFlag()) {
                    return value2;
                }
            }
            return null;
        }
        int i11 = 0;
        if (i10 == 1) {
            int length = Array.getLength(value);
            while (i11 < length) {
                itemResolver.setValue(Array.get(value, i11));
                Object value3 = this.compiledBlock.getValue(obj, obj2, itemResolverFactory);
                if (itemResolverFactory.tiltFlag()) {
                    return value3;
                }
                i11++;
            }
            return null;
        }
        if (i10 == 2) {
            char[] charArray = value.toString().toCharArray();
            int length2 = charArray.length;
            while (i11 < length2) {
                itemResolver.setValue(Character.valueOf(charArray[i11]));
                Object value4 = this.compiledBlock.getValue(obj, obj2, itemResolverFactory);
                if (itemResolverFactory.tiltFlag()) {
                    return value4;
                }
                i11++;
            }
            return null;
        }
        if (i10 != 3) {
            return null;
        }
        int iIntValue = ((Integer) value).intValue() + 1;
        for (int i12 = 1; i12 != iIntValue; i12++) {
            itemResolver.setValue(Integer.valueOf(i12));
            Object value5 = this.compiledBlock.getValue(obj, obj2, itemResolverFactory);
            if (itemResolverFactory.tiltFlag()) {
                return value5;
            }
        }
        return null;
    }
}
