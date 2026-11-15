package org.mvel2.templates.res;

import f00.d;
import g00.a;
import g00.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.mvel2.CompileException;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.templates.TemplateRuntimeError;
import org.mvel2.util.m;

public class ForEachNode extends Node {
    private String[] expression;
    private String[] item;
    public Node nestedNode;
    private char[] sepExpr;

    public ForEachNode(int i10, String str, char[] cArr, int i11, int i12) {
        super(i10, str, cArr, i11, i12);
        configure();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0063  */
    private void configure() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
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
                this.expression = new String[arrayList2.size()];
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    this.expression[i12] = (String) it2.next();
                    i12++;
                }
                return;
            }
            char[] cArr = this.contents;
            char c10 = cArr[iC];
            if (c10 == '\"') {
                iC = m.c(cArr, iC, c10);
            } else {
                if (c10 != ',') {
                    if (c10 == ':') {
                        arrayList.add(m.x(cArr, i10, iC - i10));
                    } else if (c10 == '[' || c10 == '{' || c10 == '\'' || c10 == '(') {
                        iC = m.c(cArr, iC, c10);
                    }
                } else {
                    if (arrayList2.size() != arrayList.size() - 1) {
                        throw new CompileException("unexpected character ',' in foreach tag", this.contents, this.cStart + iC);
                    }
                    arrayList2.add(m.x(this.contents, i10, iC - i10));
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
        if (contents.length != 0) {
            return false;
        }
        this.sepExpr = null;
        return false;
    }

    @Override
    public Object eval(d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        int length = this.item.length;
        Iterator[] itArr = new Iterator[length];
        for (int i10 = 0; i10 < length; i10++) {
            Object objL = org.mvel2.d.l(this.expression[i10], obj, variableResolverFactory);
            if (objL instanceof Iterable) {
                itArr[i10] = ((Iterable) objL).iterator();
            } else {
                if (!(objL instanceof Object[])) {
                    throw new TemplateRuntimeError("cannot iterate object type: " + objL.getClass().getName());
                }
                itArr[i10] = new a((Object[]) objL);
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
                        cVar.append(String.valueOf(org.mvel2.d.q(this.sepExpr, obj, variableResolverFactory)));
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
