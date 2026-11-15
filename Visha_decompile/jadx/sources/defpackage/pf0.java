package defpackage;

import java.util.BitSet;
import java.util.HashMap;
import org.mozilla.javascript.Node;
import org.mozilla.javascript.ObjArray;
import org.mozilla.javascript.ObjToIntMap;
import org.mozilla.javascript.ast.Jump;
import org.mozilla.javascript.optimizer.OptFunctionNode;

public class pf0 {
    public pf0[] a;
    public pf0[] b;
    public int c;
    public int d;
    public int e;
    public BitSet f;
    public BitSet g;
    public BitSet h;
    public BitSet i;

    public static class b {
        public ObjToIntMap a;
        public ObjToIntMap b;
        public pf0 c;

        public b() {
            this.a = new ObjToIntMap();
            this.b = new ObjToIntMap();
        }

        public static pf0[] e(ObjToIntMap objToIntMap) {
            if (objToIntMap.isEmpty()) {
                return null;
            }
            pf0[] pf0VarArr = new pf0[objToIntMap.size()];
            ObjToIntMap.Iterator iteratorNewIterator = objToIntMap.newIterator();
            iteratorNewIterator.start();
            int i = 0;
            while (!iteratorNewIterator.done()) {
                pf0VarArr[i] = ((b) iteratorNewIterator.getKey()).c;
                iteratorNewIterator.next();
                i++;
            }
            return pf0VarArr;
        }

        public void a(b bVar) {
            this.b.put(bVar, 0);
        }

        public void b(b bVar) {
            this.a.put(bVar, 0);
        }

        public pf0[] c() {
            return e(this.b);
        }

        public pf0[] d() {
            return e(this.a);
        }
    }

    public pf0(int i, int i2) {
        this.c = i;
        this.d = i2;
    }

    public static boolean a(int[] iArr, int i, int i2) {
        int i3 = iArr[i];
        int i4 = i2 | i3;
        iArr[i] = i4;
        return i3 != i4;
    }

    public static pf0[] b(Node[] nodeArr) {
        HashMap map = new HashMap();
        ObjArray objArray = new ObjArray();
        int i = 0;
        for (int i2 = 0; i2 < nodeArr.length; i2++) {
            int type = nodeArr[i2].getType();
            if (type == 5 || type == 6 || type == 7) {
                b bVarJ = j(i, i2);
                if (nodeArr[i].getType() == 132) {
                    map.put(nodeArr[i], bVarJ);
                }
                objArray.add(bVarJ);
                i = i2 + 1;
            } else if (type == 132 && i2 != i) {
                b bVarJ2 = j(i, i2 - 1);
                if (nodeArr[i].getType() == 132) {
                    map.put(nodeArr[i], bVarJ2);
                }
                objArray.add(bVarJ2);
                i = i2;
            }
        }
        if (i != nodeArr.length) {
            b bVarJ3 = j(i, nodeArr.length - 1);
            if (nodeArr[i].getType() == 132) {
                map.put(nodeArr[i], bVarJ3);
            }
            objArray.add(bVarJ3);
        }
        for (int i3 = 0; i3 < objArray.size(); i3++) {
            b bVar = (b) objArray.get(i3);
            Node node = nodeArr[bVar.c.d];
            int type2 = node.getType();
            if (type2 != 5 && i3 < objArray.size() - 1) {
                b bVar2 = (b) objArray.get(i3 + 1);
                bVar.b(bVar2);
                bVar2.a(bVar);
            }
            if (type2 == 7 || type2 == 6 || type2 == 5) {
                Node node2 = ((Jump) node).target;
                b bVar3 = (b) map.get(node2);
                node2.putProp(6, bVar3.c);
                bVar.b(bVar3);
                bVar3.a(bVar);
            }
        }
        pf0[] pf0VarArr = new pf0[objArray.size()];
        for (int i4 = 0; i4 < objArray.size(); i4++) {
            b bVar4 = (b) objArray.get(i4);
            pf0 pf0Var = bVar4.c;
            pf0Var.a = bVar4.d();
            pf0Var.b = bVar4.c();
            pf0Var.e = i4;
            pf0VarArr[i4] = pf0Var;
        }
        return pf0VarArr;
    }

    public static boolean e(OptFunctionNode optFunctionNode, Node node, int[] iArr) {
        boolean zA;
        Node firstChild = node.getFirstChild();
        boolean zE = false;
        for (Node next = firstChild; next != null; next = next.getNext()) {
            zE |= e(optFunctionNode, next, iArr);
        }
        int type = node.getType();
        if (type == 56 || type == 157) {
            int iF = f(optFunctionNode, firstChild.getNext(), iArr);
            int varIndex = optFunctionNode.getVarIndex(node);
            if (node.getType() == 56 && optFunctionNode.fnode.getParamAndVarConst()[varIndex]) {
                return zE;
            }
            zA = a(iArr, varIndex, iF);
        } else {
            if ((type != 107 && type != 108) || firstChild.getType() != 55) {
                return zE;
            }
            int varIndex2 = optFunctionNode.getVarIndex(firstChild);
            if (optFunctionNode.fnode.getParamAndVarConst()[varIndex2]) {
                return zE;
            }
            zA = a(iArr, varIndex2, 1);
        }
        return zE | zA;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:28:0x0057 A[FALL_THROUGH, RETURN] */
    public static int f(OptFunctionNode optFunctionNode, Node node, int[] iArr) {
        int type = node.getType();
        if (type != 35 && type != 37) {
            if (type == 40) {
                return 1;
            }
            if (type != 90) {
                if (type == 103) {
                    Node next = node.getFirstChild().getNext();
                    Node next2 = next.getNext();
                    return f(optFunctionNode, next2, iArr) | f(optFunctionNode, next, iArr);
                }
                if (type != 157) {
                    if (type == 55) {
                        return iArr[optFunctionNode.getVarIndex(node)];
                    }
                    if (type != 56) {
                        switch (type) {
                            case 8:
                                break;
                            default:
                                switch (type) {
                                    case 18:
                                    case 19:
                                    case 20:
                                    case 22:
                                    case 23:
                                    case 24:
                                    case 25:
                                        break;
                                    case 21:
                                        Node firstChild = node.getFirstChild();
                                        return f(optFunctionNode, firstChild.getNext(), iArr) | f(optFunctionNode, firstChild, iArr);
                                    default:
                                        switch (type) {
                                            default:
                                                switch (type) {
                                                    case 105:
                                                    case 106:
                                                        Node firstChild2 = node.getFirstChild();
                                                        return f(optFunctionNode, firstChild2.getNext(), iArr) | f(optFunctionNode, firstChild2, iArr);
                                                    case 107:
                                                    case 108:
                                                        break;
                                                    default:
                                                        return 3;
                                                }
                                            case 27:
                                            case 28:
                                            case 29:
                                                return 1;
                                        }
                                        break;
                                }
                            case 9:
                            case 10:
                            case 11:
                                return 1;
                        }
                    }
                }
            }
        }
        return f(optFunctionNode, node.getLastChild(), iArr);
    }

    public static b j(int i, int i2) {
        b bVar = new b();
        bVar.c = new pf0(i, i2);
        return bVar;
    }

    public static void k(OptFunctionNode optFunctionNode, Node[] nodeArr, pf0[] pf0VarArr, int[] iArr) {
        pf0[] pf0VarArr2;
        for (pf0 pf0Var : pf0VarArr) {
            pf0Var.g(optFunctionNode, nodeArr);
        }
        boolean[] zArr = new boolean[pf0VarArr.length];
        boolean[] zArr2 = new boolean[pf0VarArr.length];
        int length = pf0VarArr.length - 1;
        zArr[length] = true;
        while (true) {
            boolean z = false;
            while (true) {
                if (zArr[length] || !zArr2[length]) {
                    zArr2[length] = true;
                    zArr[length] = false;
                    if (pf0VarArr[length].c() && (pf0VarArr2 = pf0VarArr[length].b) != null) {
                        for (pf0 pf0Var2 : pf0VarArr2) {
                            int i = pf0Var2.e;
                            zArr[i] = true;
                            z |= i > length;
                        }
                    }
                }
                if (length == 0) {
                    break;
                } else {
                    length--;
                }
            }
            if (!z) {
                pf0VarArr[0].i(iArr);
                return;
            }
            length = pf0VarArr.length - 1;
        }
    }

    public static void l(OptFunctionNode optFunctionNode, Node[] nodeArr) {
        int paramCount = optFunctionNode.fnode.getParamCount();
        int paramAndVarCount = optFunctionNode.fnode.getParamAndVarCount();
        int[] iArr = new int[paramAndVarCount];
        for (int i = 0; i != paramCount; i++) {
            iArr[i] = 3;
        }
        for (int i2 = paramCount; i2 != paramAndVarCount; i2++) {
            iArr[i2] = 0;
        }
        pf0[] pf0VarArrB = b(nodeArr);
        k(optFunctionNode, nodeArr, pf0VarArrB, iArr);
        m(optFunctionNode, nodeArr, pf0VarArrB, iArr);
        while (paramCount != paramAndVarCount) {
            if (iArr[paramCount] == 1) {
                optFunctionNode.setIsNumberVar(paramCount);
            }
            paramCount++;
        }
    }

    public static void m(OptFunctionNode optFunctionNode, Node[] nodeArr, pf0[] pf0VarArr, int[] iArr) {
        boolean z;
        pf0[] pf0VarArr2;
        boolean[] zArr = new boolean[pf0VarArr.length];
        boolean[] zArr2 = new boolean[pf0VarArr.length];
        zArr[0] = true;
        do {
            int i = 0;
            z = false;
            while (true) {
                if (zArr[i] || !zArr2[i]) {
                    zArr2[i] = true;
                    zArr[i] = false;
                    if (pf0VarArr[i].d(optFunctionNode, nodeArr, iArr) && (pf0VarArr2 = pf0VarArr[i].a) != null) {
                        for (pf0 pf0Var : pf0VarArr2) {
                            int i2 = pf0Var.e;
                            zArr[i2] = true;
                            z |= i2 < i;
                        }
                    }
                }
                if (i == pf0VarArr.length - 1) {
                    break;
                } else {
                    i++;
                }
            }
        } while (z);
    }

    public static boolean n(BitSet bitSet, BitSet bitSet2, BitSet bitSet3, BitSet bitSet4) {
        int iCardinality = bitSet.cardinality();
        bitSet.or(bitSet2);
        bitSet.and(bitSet4);
        bitSet.or(bitSet3);
        return bitSet.cardinality() != iCardinality;
    }

    public final boolean c() {
        this.g.clear();
        if (this.a != null) {
            int i = 0;
            while (true) {
                pf0[] pf0VarArr = this.a;
                if (i >= pf0VarArr.length) {
                    break;
                }
                this.g.or(pf0VarArr[i].f);
                i++;
            }
        }
        return n(this.f, this.g, this.h, this.i);
    }

    public final boolean d(OptFunctionNode optFunctionNode, Node[] nodeArr, int[] iArr) {
        boolean zE = false;
        for (int i = this.c; i <= this.d; i++) {
            Node node = nodeArr[i];
            if (node != null) {
                zE |= e(optFunctionNode, node, iArr);
            }
        }
        return zE;
    }

    public final void g(OptFunctionNode optFunctionNode, Node[] nodeArr) {
        int varCount = optFunctionNode.getVarCount();
        this.h = new BitSet(varCount);
        this.i = new BitSet(varCount);
        this.f = new BitSet(varCount);
        this.g = new BitSet(varCount);
        for (int i = this.c; i <= this.d; i++) {
            h(optFunctionNode, nodeArr[i]);
        }
        this.i.flip(0, varCount);
    }

    public final void h(OptFunctionNode optFunctionNode, Node node) {
        int type = node.getType();
        if (type == 55) {
            int varIndex = optFunctionNode.getVarIndex(node);
            if (this.i.get(varIndex)) {
                return;
            }
            this.h.set(varIndex);
            return;
        }
        if (type != 56) {
            if (type == 107 || type == 108) {
                Node firstChild = node.getFirstChild();
                if (firstChild.getType() != 55) {
                    h(optFunctionNode, firstChild);
                    return;
                }
                int varIndex2 = optFunctionNode.getVarIndex(firstChild);
                if (!this.i.get(varIndex2)) {
                    this.h.set(varIndex2);
                }
                this.i.set(varIndex2);
                return;
            }
            if (type == 138) {
                int indexForNameNode = optFunctionNode.fnode.getIndexForNameNode(node);
                if (indexForNameNode <= -1 || this.i.get(indexForNameNode)) {
                    return;
                }
                this.h.set(indexForNameNode);
                return;
            }
            if (type != 157) {
                for (Node firstChild2 = node.getFirstChild(); firstChild2 != null; firstChild2 = firstChild2.getNext()) {
                    h(optFunctionNode, firstChild2);
                }
                return;
            }
        }
        h(optFunctionNode, node.getFirstChild().getNext());
        this.i.set(optFunctionNode.getVarIndex(node));
    }

    public final void i(int[] iArr) {
        for (int i = 0; i != iArr.length; i++) {
            if (this.f.get(i)) {
                a(iArr, i, 3);
            }
        }
    }
}
