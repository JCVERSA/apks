package org.mvel2.ast;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public class InlineCollectionNode extends ASTNode {
    private Object collectionGraph;
    int trailingOffset;
    int trailingStart;

    public InlineCollectionNode(char[] cArr, int i10, int i11, int i12, ParserContext parserContext) {
        super(cArr, i10, i11, i12 | 1024, parserContext);
        if ((i12 & 16) != 0) {
            parseGraph(true, null, parserContext);
            try {
                org.mvel2.optimizers.a aVarD = org.mvel2.optimizers.b.d();
                this.accessor = aVarD.optimizeCollection(parserContext, this.collectionGraph, this.egressType, cArr, this.trailingStart, this.trailingOffset, null, null, null);
                this.egressType = aVarD.getEgressType();
            } finally {
                org.mvel2.optimizers.b.a();
            }
        }
    }

    private Object execGraph(Object obj, Class cls, Object obj2, VariableResolverFactory variableResolverFactory) {
        int i10;
        Class clsD;
        if (obj instanceof List) {
            List list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(execGraph(it.next(), cls, obj2, variableResolverFactory));
            }
            return arrayList;
        }
        if (obj instanceof Map) {
            HashMap map = new HashMap();
            Map map2 = (Map) obj;
            for (Object obj3 : map2.keySet()) {
                map.put(execGraph(obj3, cls, obj2, variableResolverFactory), execGraph(map2.get(obj3), cls, obj2, variableResolverFactory));
            }
            return map;
        }
        if (!(obj instanceof Object[])) {
            return cls.isArray() ? org.mvel2.d.m((String) obj, obj2, variableResolverFactory, m.I(cls)) : org.mvel2.d.l((String) obj, obj2, variableResolverFactory);
        }
        int i11 = 0;
        if (cls != null) {
            i10 = 0;
            while (cls.getName().charAt(i10) == '[') {
                i10++;
            }
        } else {
            cls = Object[].class;
            i10 = 1;
        }
        Object objNewInstance = Array.newInstance((Class<?>) m.T(cls), ((Object[]) obj).length);
        if (i10 > 1) {
            try {
                clsD = m.D(null, m.A0('[', i10 - 1) + "L" + m.I(cls).getName() + ";", this.pCtx);
            } catch (ClassNotFoundException e10) {
                throw new RuntimeException("this error should never throw:" + m.I(cls).getName(), e10);
            } catch (IllegalArgumentException e11) {
                throw new CompileException("type mismatch in array", this.expr, this.start, e11);
            }
        } else {
            clsD = cls;
        }
        Object[] objArr = (Object[]) obj;
        int length = objArr.length;
        int i12 = 0;
        while (i11 < length) {
            int i13 = i12 + 1;
            Array.set(objNewInstance, i12, execGraph(objArr[i11], clsD, obj2, variableResolverFactory));
            i11++;
            i12 = i13;
        }
        return objNewInstance;
    }

    private void parseGraph(boolean z10, Class cls, ParserContext parserContext) {
        org.mvel2.util.c cVar = new org.mvel2.util.c();
        if (cls == null) {
            this.collectionGraph = ((List) cVar.e(this.expr, this.start, this.offset, z10, parserContext)).get(0);
        } else {
            this.collectionGraph = ((List) cVar.d(this.expr, this.start, this.offset, z10, cls, parserContext)).get(0);
        }
        int iA = cVar.a() + 2;
        this.trailingStart = iA;
        this.trailingOffset = this.offset - (iA - this.start);
        if (this.egressType == null) {
            this.egressType = this.collectionGraph.getClass();
        }
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        parseGraph(false, this.egressType, this.pCtx);
        return execGraph(this.collectionGraph, this.egressType, obj, variableResolverFactory);
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (this.accessor != null) {
            return this.accessor.getValue(obj, obj2, variableResolverFactory);
        }
        try {
            org.mvel2.optimizers.a aVarD = org.mvel2.optimizers.b.d();
            if (this.collectionGraph == null) {
                parseGraph(true, null, null);
            }
            this.accessor = aVarD.optimizeCollection(this.pCtx, this.collectionGraph, this.egressType, this.expr, this.trailingStart, this.trailingOffset, obj, obj2, variableResolverFactory);
            this.egressType = aVarD.getEgressType();
            return this.accessor.getValue(obj, obj2, variableResolverFactory);
        } finally {
            org.mvel2.optimizers.b.a();
        }
    }

    public InlineCollectionNode(char[] cArr, int i10, int i11, int i12, Class cls, ParserContext parserContext) {
        super(cArr, i10, i11, i12 | 1024, parserContext);
        this.egressType = cls;
        if ((i12 & 16) != 0) {
            try {
                parseGraph(true, cls, parserContext);
                org.mvel2.optimizers.a aVarD = org.mvel2.optimizers.b.d();
                this.accessor = aVarD.optimizeCollection(parserContext, this.collectionGraph, this.egressType, cArr, this.trailingStart, this.trailingOffset, null, null, null);
                this.egressType = aVarD.getEgressType();
            } finally {
                org.mvel2.optimizers.b.a();
            }
        }
    }
}
