package org.mvel2.templates.res;

import g00.a;
import g00.b;
import g00.c;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.d;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.templates.TemplateRuntimeError;
import org.mvel2.util.m;

public class CompiledForEachNode extends Node {
    private Serializable cSepExpr;

    private Serializable[] f68864ce;
    private ParserContext context;
    private String[] item;
    public Node nestedNode;
    private char[] sepExpr;

    public CompiledForEachNode(int i10, String str, char[] cArr, int i11, int i12, ParserContext parserContext) {
        super(i10, str, cArr, i11, i12);
        this.context = parserContext;
        configure();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0063  */
    private void configure() {
        ArrayList arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList();
        int iC = this.cStart;
        int i10 = iC;
        while (true) {
            int i11 = this.cEnd;
            if (iC >= i11) {
                if (i10 < i11) {
                    if (arrayList2.size() != arrayList.size() - 1) {
                        throw new CompileException("expected character ':' in foreach tag", this.contents, this.cEnd);
                    }
                    arrayList2.add(m.x(this.contents, i10, this.cEnd - i10));
                }
                this.item = new String[arrayList.size()];
                Iterator it = arrayList.iterator();
                int i12 = 0;
                int i13 = 0;
                while (it.hasNext()) {
                    this.item[i13] = (String) it.next();
                    i13++;
                }
                int size = arrayList2.size();
                String[] strArr = new String[size];
                this.f68864ce = new Serializable[size];
                for (String str : arrayList2) {
                    Serializable[] serializableArr = this.f68864ce;
                    strArr[i12] = str;
                    serializableArr[i12] = d.d(str, this.context);
                    i12++;
                }
                return;
            }
            char[] cArr = this.contents;
            char c10 = cArr[iC];
            if (c10 == '\"') {
                iC = m.c(cArr, iC, c10);
            } else {
                if (c10 == ',') {
                    if (arrayList2.size() != arrayList.size() - 1) {
                        throw new CompileException("unexpected character ',' in foreach tag", this.contents, this.cStart + iC);
                    }
                    arrayList2.add(m.x(this.contents, i10, iC - i10));
                } else if (c10 == ':') {
                    arrayList.add(m.x(cArr, i10, iC - i10));
                } else if (c10 == '[' || c10 == '{' || c10 == '\'' || c10 == '(') {
                    iC = m.c(cArr, iC, c10);
                }
                i10 = iC + 1;
            }
            iC++;
        }
    }

    @Override
    public boolean demarcate(Node node, char[] cArr) {
        this.nestedNode = this.next;
        this.next = this.terminus;
        char[] contents = node.getContents();
        this.sepExpr = contents;
        if (contents.length == 0) {
            this.sepExpr = null;
            return false;
        }
        this.cSepExpr = d.f(contents, this.context);
        return false;
    }

    @Override
    public Object eval(f00.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        int length = this.item.length;
        Iterator[] itArr = new Iterator[length];
        for (int i10 = 0; i10 < length; i10++) {
            Object objR = d.r(this.f68864ce[i10], obj, variableResolverFactory);
            if (objR instanceof Iterable) {
                itArr[i10] = ((Iterable) objR).iterator();
            } else if (objR instanceof Object[]) {
                itArr[i10] = new a((Object[]) objR);
            } else {
                if (!(objR instanceof Integer)) {
                    throw new TemplateRuntimeError("cannot iterate object type: " + objR.getClass().getName());
                }
                itArr[i10] = new b(((Integer) objR).intValue());
            }
        }
        HashMap map = new HashMap();
        MapVariableResolverFactory mapVariableResolverFactory = new MapVariableResolverFactory(map, variableResolverFactory);
        int i11 = length;
        while (true) {
            for (int i12 = 0; i12 < length; i12++) {
                if (itArr[i12].hasNext()) {
                    map.put(this.item[i12], itArr[i12].next());
                } else {
                    i11--;
                    map.put(this.item[i12], "");
                }
            }
            if (i11 == 0) {
                break;
            }
            this.nestedNode.eval(dVar, cVar, obj, mapVariableResolverFactory);
            if (this.sepExpr != null) {
                for (int i13 = 0; i13 < length; i13++) {
                    if (itArr[i13].hasNext()) {
                        cVar.append(String.valueOf(d.r(this.cSepExpr, obj, variableResolverFactory)));
                        break;
                    }
                }
            }
        }
        Node node = this.next;
        if (node != null) {
            return node.eval(dVar, cVar, obj, variableResolverFactory);
        }
        return null;
    }

    public Node getNestedNode() {
        return this.nestedNode;
    }

    public void setNestedNode(Node node) {
        this.nestedNode = node;
    }
}
