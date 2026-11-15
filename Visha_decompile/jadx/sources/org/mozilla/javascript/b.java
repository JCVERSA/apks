package org.mozilla.javascript;

import androidx.core.view.InputDeviceCompat;
import defpackage.hx4;
import org.mozilla.javascript.ast.AstNode;
import org.mozilla.javascript.ast.AstRoot;
import org.mozilla.javascript.ast.Block;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.Jump;
import org.mozilla.javascript.ast.Scope;
import org.mozilla.javascript.ast.ScriptNode;
import org.mozilla.javascript.ast.VariableInitializer;

public class b extends hx4 {
    public CompilerEnvirons a;
    public boolean b;
    public boolean c;
    public InterpreterData d;
    public ScriptNode e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int k;
    public int[] l;
    public int m;
    public long[] n;
    public int o;
    public int q;
    public ObjToIntMap j = new ObjToIntMap(20);
    public ObjArray p = new ObjArray();

    public static RuntimeException p(Node node) {
        throw new RuntimeException(node.toString());
    }

    public static int y(Node node) {
        return ((Node) node.getProp(3)).getExistingIntProp(2);
    }

    public final byte[] A(int i) {
        byte[] bArr = this.d.itsICode;
        int length = bArr.length;
        int i2 = this.f;
        int i3 = i + i2;
        if (i3 <= length) {
            throw Kit.codeBug();
        }
        int i4 = length * 2;
        if (i3 <= i4) {
            i3 = i4;
        }
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        this.d.itsICode = bArr2;
        return bArr2;
    }

    public final void B(Node node) {
        int iZ = z(node);
        if (this.l[iZ] != -1) {
            Kit.codeBug();
        }
        this.l[iZ] = this.f;
    }

    public final void C(int i) {
        int i2 = this.k - 1;
        this.k = i2;
        if (i != i2) {
            Kit.codeBug();
        }
    }

    public final void D(int i) {
        int i2 = this.f;
        if (i2 < i + 3) {
            throw Kit.codeBug();
        }
        E(i, i2);
    }

    public final void E(int i, int i2) {
        int i3 = i2 - i;
        if (i3 >= 0 && i3 <= 2) {
            throw Kit.codeBug();
        }
        int i4 = i + 1;
        if (i3 != ((short) i3)) {
            InterpreterData interpreterData = this.d;
            if (interpreterData.longJumps == null) {
                interpreterData.longJumps = new UintMap();
            }
            this.d.longJumps.put(i4, i2);
            i3 = 0;
        }
        byte[] bArr = this.d.itsICode;
        bArr[i4] = (byte) (i3 >> 8);
        bArr[i + 2] = (byte) i3;
    }

    public final void F(int i) {
        if (i <= 0) {
            this.g += i;
            return;
        }
        int i2 = this.g + i;
        InterpreterData interpreterData = this.d;
        if (i2 > interpreterData.itsMaxStack) {
            interpreterData.itsMaxStack = i2;
        }
        this.g = i2;
    }

    public final void G(Node node) {
        int lineno = node.getLineno();
        if (lineno == this.h || lineno < 0) {
            return;
        }
        InterpreterData interpreterData = this.d;
        if (interpreterData.firstLinePC < 0) {
            interpreterData.firstLinePC = lineno;
        }
        this.h = lineno;
        e(-26);
        l(lineno & 65535);
    }

    public final void H(Node node, Node node2, Node node3) {
        L(node2, this.g);
        I(node3, 0);
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0289  */
    /* JADX WARN: Code duplicated, block: B:105:0x028d  */
    /* JADX WARN: Code duplicated, block: B:106:0x0291  */
    /* JADX WARN: Code duplicated, block: B:110:0x029b A[LOOP:1: B:108:0x0295->B:110:0x029b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:118:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:120:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:129:0x02de  */
    /* JADX WARN: Code duplicated, block: B:130:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:133:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:134:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:135:0x0304  */
    /* JADX WARN: Code duplicated, block: B:136:0x031a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:137:0x031c  */
    /* JADX WARN: Code duplicated, block: B:138:0x0320  */
    /* JADX WARN: Code duplicated, block: B:141:0x032a  */
    /* JADX WARN: Code duplicated, block: B:142:0x032e  */
    /* JADX WARN: Code duplicated, block: B:146:0x037e  */
    /* JADX WARN: Code duplicated, block: B:148:0x0387  */
    /* JADX WARN: Code duplicated, block: B:150:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:152:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:153:0x03ae  */
    /* JADX WARN: Code duplicated, block: B:173:0x02a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x0194  */
    /* JADX WARN: Code duplicated, block: B:85:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:87:0x0208  */
    /* JADX WARN: Code duplicated, block: B:89:0x0226  */
    /* JADX WARN: Code duplicated, block: B:91:0x0239  */
    public final void I(Node node, int i) {
        int i2;
        InterpreterData interpreterData;
        String string;
        int type = node.getType();
        Node firstChild = node.getFirstChild();
        int i3 = this.g;
        if (type == 90) {
            Node lastChild = node.getLastChild();
            while (firstChild != lastChild) {
                I(firstChild, 0);
                e(-4);
                F(-1);
                firstChild = firstChild.getNext();
            }
            I(firstChild, i & 1);
        } else if (type == 103) {
            Node next = firstChild.getNext();
            Node next2 = next.getNext();
            I(firstChild, 0);
            int i4 = this.f;
            d(7);
            F(-1);
            int i5 = i & 1;
            I(next, i5);
            int i6 = this.f;
            d(5);
            D(i4);
            this.g = i3;
            I(next2, i5);
            D(i6);
        } else if (type == 110) {
            int existingIntProp = node.getExistingIntProp(1);
            FunctionNode functionNode = this.e.getFunctionNode(existingIntProp);
            if (functionNode.getFunctionType() != 2 && functionNode.getFunctionType() != 4) {
                throw Kit.codeBug();
            }
            f(-19, existingIntProp);
            F(1);
        } else if (type == 127) {
            I(firstChild, 0);
            if (type != 127) {
                e(-4);
                e(-50);
            } else {
                k(type);
            }
        } else if (type == 143) {
            I(firstChild, 0);
            Node next3 = firstChild.getNext();
            if (type == 143) {
                e(-1);
                F(1);
                k(68);
                F(-1);
            }
            I(next3, 0);
            k(69);
            F(-1);
        } else if (type == 147) {
            G(node);
            I(firstChild, 0);
            e(-53);
            F(-1);
            int i7 = this.f;
            I(firstChild.getNext(), 0);
            a(-54, i7);
        } else if (type == 160) {
            Node firstChild2 = node.getFirstChild();
            Node next4 = firstChild2.getNext();
            I(firstChild2.getFirstChild(), 0);
            k(2);
            F(-1);
            I(next4.getFirstChild(), 0);
            k(3);
        } else if (type != 166) {
            switch (type) {
                case 8:
                    String string2 = firstChild.getString();
                    I(firstChild, 0);
                    I(firstChild.getNext(), 0);
                    i(type, string2);
                    F(-1);
                    break;
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 36:
                case 46:
                case 47:
                    I(firstChild, 0);
                    I(firstChild.getNext(), 0);
                    k(type);
                    F(-1);
                    break;
                case 26:
                case 27:
                case 28:
                case 29:
                case 32:
                    I(firstChild, 0);
                    if (type != 127) {
                        k(type);
                    } else {
                        e(-4);
                        e(-50);
                    }
                    break;
                case 30:
                case 38:
                    if (type == 30) {
                        I(firstChild, 0);
                    } else {
                        s(firstChild);
                    }
                    i2 = 0;
                    while (true) {
                        firstChild = firstChild.getNext();
                        if (firstChild != null) {
                            int intProp = node.getIntProp(10, 0);
                            if (type != 71 || intProp == 0) {
                                if (type == 38 && (i & 1) != 0 && !this.a.isGenerateDebugInfo() && !this.c) {
                                    type = -55;
                                }
                                f(type, i2);
                            } else {
                                f(-21, i2);
                                m(intProp);
                                m(type == 30 ? 1 : 0);
                                l(this.h & 65535);
                            }
                            if (type == 30) {
                                F(-i2);
                            } else {
                                F((-1) - i2);
                            }
                            interpreterData = this.d;
                            if (i2 > interpreterData.itsMaxCalleeArgs) {
                                interpreterData.itsMaxCalleeArgs = i2;
                            }
                        } else {
                            I(firstChild, 0);
                            i2++;
                        }
                        break;
                    }
                    break;
                case 31:
                    boolean z = firstChild.getType() == 49;
                    I(firstChild, 0);
                    I(firstChild.getNext(), 0);
                    if (z) {
                        e(0);
                    } else {
                        k(31);
                    }
                    F(-1);
                    break;
                case 33:
                case 34:
                    I(firstChild, 0);
                    i(type, firstChild.getNext().getString());
                    break;
                case 35:
                    I(firstChild, 0);
                    Node next5 = firstChild.getNext();
                    string = next5.getString();
                    Node next6 = next5.getNext();
                    if (type == 140) {
                        e(-1);
                        F(1);
                        i(33, string);
                        F(-1);
                    }
                    I(next6, 0);
                    i(35, string);
                    F(-1);
                    break;
                case 37:
                    I(firstChild, 0);
                    Node next7 = firstChild.getNext();
                    I(next7, 0);
                    Node next8 = next7.getNext();
                    if (type == 141) {
                        e(-2);
                        F(2);
                        k(36);
                        F(-1);
                        F(-1);
                    }
                    I(next8, 0);
                    k(37);
                    F(-2);
                    break;
                case 39:
                case 41:
                case 49:
                    i(type, node.getString());
                    F(1);
                    break;
                case 40:
                    double d = node.getDouble();
                    int i8 = (int) d;
                    if (i8 != d) {
                        f(40, x(d));
                    } else if (i8 == 0) {
                        e(-51);
                        if (1.0d / d < 0.0d) {
                            k(29);
                        }
                    } else if (i8 == 1) {
                        e(-52);
                    } else if (((short) i8) == i8) {
                        e(-27);
                        l(i8 & 65535);
                    } else {
                        e(-28);
                        h(i8);
                    }
                    F(1);
                    break;
                case 42:
                case 43:
                case 44:
                case 45:
                    k(type);
                    F(1);
                    break;
                case 48:
                    f(48, node.getExistingIntProp(4));
                    F(1);
                    break;
                default:
                    switch (type) {
                        case 52:
                        case 53:
                            I(firstChild, 0);
                            I(firstChild.getNext(), 0);
                            k(type);
                            F(-1);
                            break;
                        case 54:
                            f(54, y(node));
                            F(1);
                            break;
                        case 55:
                            if (this.d.itsNeedsActivation) {
                                Kit.codeBug();
                            }
                            n(55, this.e.getIndexForNameNode(node));
                            F(1);
                            break;
                        case 56:
                            if (this.d.itsNeedsActivation) {
                                Kit.codeBug();
                            }
                            int indexForNameNode = this.e.getIndexForNameNode(firstChild);
                            I(firstChild.getNext(), 0);
                            n(56, indexForNameNode);
                            break;
                        default:
                            switch (type) {
                                case 62:
                                case 63:
                                    f(type, y(node));
                                    F(1);
                                    break;
                                case 64:
                                    k(type);
                                    F(1);
                                    break;
                                default:
                                    switch (type) {
                                        case 66:
                                        case 67:
                                            K(node, firstChild);
                                            break;
                                        case 68:
                                        case 70:
                                            I(firstChild, 0);
                                            k(type);
                                            break;
                                        case 69:
                                            I(firstChild, 0);
                                            Node next9 = firstChild.getNext();
                                            if (type == 143) {
                                                e(-1);
                                                F(1);
                                                k(68);
                                                F(-1);
                                            }
                                            I(next9, 0);
                                            k(69);
                                            F(-1);
                                            break;
                                        case 71:
                                            if (type == 30) {
                                                I(firstChild, 0);
                                            } else {
                                                s(firstChild);
                                            }
                                            i2 = 0;
                                            while (true) {
                                                firstChild = firstChild.getNext();
                                                if (firstChild != null) {
                                                    int intProp2 = node.getIntProp(10, 0);
                                                    if (type != 71) {
                                                        if (type == 38) {
                                                            type = -55;
                                                        }
                                                        f(type, i2);
                                                    } else {
                                                        if (type == 38) {
                                                            type = -55;
                                                        }
                                                        f(type, i2);
                                                    }
                                                    if (type == 30) {
                                                        F(-i2);
                                                    } else {
                                                        F((-1) - i2);
                                                    }
                                                    interpreterData = this.d;
                                                    if (i2 > interpreterData.itsMaxCalleeArgs) {
                                                        interpreterData.itsMaxCalleeArgs = i2;
                                                    }
                                                } else {
                                                    I(firstChild, 0);
                                                    i2++;
                                                }
                                                break;
                                            }
                                            break;
                                        case 72:
                                            I(firstChild, 0);
                                            i(type, (String) node.getProp(17));
                                            break;
                                        case 73:
                                            if (firstChild != null) {
                                                I(firstChild, 0);
                                            } else {
                                                e(-50);
                                                F(1);
                                            }
                                            if (type == 73) {
                                                k(73);
                                            } else {
                                                e(-66);
                                            }
                                            l(node.getLineno() & 65535);
                                            break;
                                        case 74:
                                            String string3 = firstChild.getString();
                                            I(firstChild, 0);
                                            I(firstChild.getNext(), 0);
                                            i(type, string3);
                                            F(-1);
                                            break;
                                        case 75:
                                        case 76:
                                        case 77:
                                            I(firstChild, 0);
                                            k(type);
                                            break;
                                        case 78:
                                        case 79:
                                        case 80:
                                        case 81:
                                            int intProp3 = node.getIntProp(16, 0);
                                            int i9 = 0;
                                            do {
                                                I(firstChild, 0);
                                                i9++;
                                                firstChild = firstChild.getNext();
                                            } while (firstChild != null);
                                            f(type, intProp3);
                                            F(1 - i9);
                                            break;
                                        default:
                                            switch (type) {
                                                case 105:
                                                case 106:
                                                    I(firstChild, 0);
                                                    e(-1);
                                                    F(1);
                                                    int i10 = this.f;
                                                    d(type != 106 ? 6 : 7);
                                                    F(-1);
                                                    e(-4);
                                                    F(-1);
                                                    I(firstChild.getNext(), i & 1);
                                                    D(i10);
                                                    break;
                                                case 107:
                                                case 108:
                                                    J(node, firstChild);
                                                    break;
                                                default:
                                                    switch (type) {
                                                        case 138:
                                                            int indexForNameNode2 = (!this.b || this.d.itsNeedsActivation) ? -1 : this.e.getIndexForNameNode(node);
                                                            if (indexForNameNode2 != -1) {
                                                                n(55, indexForNameNode2);
                                                                F(1);
                                                                k(32);
                                                            } else {
                                                                i(-14, node.getString());
                                                                F(1);
                                                            }
                                                            break;
                                                        case 139:
                                                            F(1);
                                                            break;
                                                        case 140:
                                                            I(firstChild, 0);
                                                            Node next10 = firstChild.getNext();
                                                            string = next10.getString();
                                                            Node next11 = next10.getNext();
                                                            if (type == 140) {
                                                                e(-1);
                                                                F(1);
                                                                i(33, string);
                                                                F(-1);
                                                            }
                                                            I(next11, 0);
                                                            i(35, string);
                                                            F(-1);
                                                            break;
                                                        case 141:
                                                            I(firstChild, 0);
                                                            Node next12 = firstChild.getNext();
                                                            I(next12, 0);
                                                            Node next13 = next12.getNext();
                                                            if (type == 141) {
                                                                e(-2);
                                                                F(2);
                                                                k(36);
                                                                F(-1);
                                                                F(-1);
                                                            }
                                                            I(next13, 0);
                                                            k(37);
                                                            F(-2);
                                                            break;
                                                        default:
                                                            switch (type) {
                                                                case 156:
                                                                    String string4 = firstChild.getString();
                                                                    I(firstChild, 0);
                                                                    I(firstChild.getNext(), 0);
                                                                    i(-59, string4);
                                                                    F(-1);
                                                                    break;
                                                                case 157:
                                                                    if (this.d.itsNeedsActivation) {
                                                                        Kit.codeBug();
                                                                    }
                                                                    int indexForNameNode3 = this.e.getIndexForNameNode(firstChild);
                                                                    I(firstChild.getNext(), 0);
                                                                    n(157, indexForNameNode3);
                                                                    break;
                                                                case 158:
                                                                    H(node, firstChild, firstChild.getNext());
                                                                    break;
                                                                default:
                                                                    throw p(node);
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            if (firstChild != null) {
                I(firstChild, 0);
            } else {
                e(-50);
                F(1);
            }
            if (type == 73) {
                k(73);
            } else {
                e(-66);
            }
            l(node.getLineno() & 65535);
        }
        if (i3 + 1 != this.g) {
            Kit.codeBug();
        }
    }

    public final void J(Node node, Node node2) {
        int existingIntProp = node.getExistingIntProp(13);
        int type = node2.getType();
        if (type == 33) {
            Node firstChild = node2.getFirstChild();
            I(firstChild, 0);
            i(-9, firstChild.getNext().getString());
            m(existingIntProp);
            return;
        }
        if (type == 36) {
            Node firstChild2 = node2.getFirstChild();
            I(firstChild2, 0);
            I(firstChild2.getNext(), 0);
            e(-10);
            m(existingIntProp);
            F(-1);
            return;
        }
        if (type == 39) {
            i(-8, node2.getString());
            m(existingIntProp);
            F(1);
        } else {
            if (type != 55) {
                if (type != 68) {
                    throw p(node);
                }
                I(node2.getFirstChild(), 0);
                e(-11);
                m(existingIntProp);
                return;
            }
            if (this.d.itsNeedsActivation) {
                Kit.codeBug();
            }
            n(-7, this.e.getIndexForNameNode(node2));
            m(existingIntProp);
            F(1);
        }
    }

    public final void K(Node node, Node node2) {
        Object[] objArr;
        int length;
        int type = node.getType();
        if (type == 66) {
            length = 0;
            for (Node next = node2; next != null; next = next.getNext()) {
                length++;
            }
            objArr = null;
        } else {
            if (type != 67) {
                throw p(node);
            }
            objArr = (Object[]) node.getProp(12);
            length = objArr.length;
        }
        f(-29, length);
        F(2);
        while (node2 != null) {
            int type2 = node2.getType();
            if (type2 == 152) {
                I(node2.getFirstChild(), 0);
                e(-57);
            } else if (type2 == 153) {
                I(node2.getFirstChild(), 0);
                e(-58);
            } else if (type2 == 164) {
                I(node2.getFirstChild(), 0);
                e(-30);
            } else {
                I(node2, 0);
                e(-30);
            }
            F(-1);
            node2 = node2.getNext();
        }
        if (type == 66) {
            int[] iArr = (int[]) node.getProp(11);
            if (iArr == null) {
                k(66);
            } else {
                int size = this.p.size();
                this.p.add(iArr);
                f(-31, size);
            }
        } else {
            int size2 = this.p.size();
            this.p.add(objArr);
            f(67, size2);
        }
        F(-1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:67:0x0184  */
    /* JADX WARN: Code duplicated, block: B:69:0x0189 A[LOOP:0: B:68:0x0187->B:69:0x0189, LOOP_END] */
    public final void L(Node node, int i) {
        int type = node.getType();
        Node firstChild = node.getFirstChild();
        if (type != -62) {
            if (type == 65) {
                G(node);
                k(65);
            } else if (type == 82) {
                Jump jump = (Jump) node;
                int iY = y(jump);
                int iO = o();
                f(-13, iO);
                int i2 = this.f;
                boolean z = this.c;
                this.c = true;
                while (firstChild != null) {
                    L(firstChild, i);
                    firstChild = firstChild.getNext();
                }
                this.c = z;
                Node node2 = jump.target;
                if (node2 != null) {
                    int i3 = this.l[z(node2)];
                    b(i2, i3, i3, false, iY, iO);
                }
                Node node3 = jump.getFinally();
                if (node3 != null) {
                    int i4 = this.l[z(node3)];
                    b(i2, i4, i4, true, iY, iO);
                }
                f(-56, iO);
                C(iO);
            } else if (type == 110) {
                int existingIntProp = node.getExistingIntProp(1);
                int functionType = this.e.getFunctionNode(existingIntProp).getFunctionType();
                if (functionType == 3) {
                    f(-20, existingIntProp);
                } else if (functionType != 1) {
                    throw Kit.codeBug();
                }
                if (!this.b) {
                    f(-19, existingIntProp);
                    F(1);
                    e(-5);
                    F(-1);
                }
            } else if (type == 115) {
                G(node);
                I(firstChild, 0);
                for (Jump jump2 = (Jump) firstChild.getNext(); jump2 != null; jump2 = (Jump) jump2.getNext()) {
                    if (jump2.getType() != 116) {
                        throw p(jump2);
                    }
                    Node firstChild2 = jump2.getFirstChild();
                    e(-1);
                    F(1);
                    I(firstChild2, 0);
                    k(46);
                    F(-1);
                    c(jump2.target, -6);
                    F(-1);
                }
                e(-4);
                F(-1);
            } else if (type == 124) {
                G(node);
                while (firstChild != null) {
                    L(firstChild, i);
                    firstChild = firstChild.getNext();
                }
            } else if (type == 126) {
                F(1);
                int iY2 = y(node);
                f(-24, iY2);
                F(-1);
                while (firstChild != null) {
                    L(firstChild, i);
                    firstChild = firstChild.getNext();
                }
                f(-25, iY2);
            } else if (type == 142) {
                int iO2 = o();
                node.putIntProp(2, iO2);
                G(node);
                while (firstChild != null) {
                    L(firstChild, i);
                    firstChild = firstChild.getNext();
                }
                f(-56, iO2);
                C(iO2);
            } else if (type == 161) {
                e(-64);
            } else if (type == 50) {
                G(node);
                I(firstChild, 0);
                k(50);
                l(this.h & 65535);
                F(-1);
            } else if (type != 51) {
                switch (type) {
                    case 2:
                        I(firstChild, 0);
                        k(2);
                        F(-1);
                        break;
                    case 3:
                        k(3);
                        break;
                    case 4:
                        G(node);
                        if (node.getIntProp(20, 0) != 0) {
                            if (firstChild == null || this.a.getLanguageVersion() < 200) {
                                e(-63);
                                l(this.h & 65535);
                            } else {
                                I(firstChild, 1);
                                e(-65);
                                l(this.h & 65535);
                                F(-1);
                            }
                        } else if (firstChild == null) {
                            e(-22);
                        } else {
                            I(firstChild, 1);
                            k(4);
                            F(-1);
                        }
                        break;
                    case 5:
                        c(((Jump) node).target, type);
                        break;
                    case 6:
                    case 7:
                        Node node4 = ((Jump) node).target;
                        I(firstChild, 0);
                        c(node4, type);
                        F(-1);
                        break;
                    default:
                        switch (type) {
                            case 57:
                                int iY3 = y(node);
                                int existingIntProp2 = node.getExistingIntProp(14);
                                String string = firstChild.getString();
                                I(firstChild.getNext(), 0);
                                j(string);
                                g(iY3);
                                k(57);
                                m(existingIntProp2 == 0 ? 0 : 1);
                                F(-1);
                                break;
                            case 58:
                            case 59:
                            case 60:
                            case 61:
                                I(firstChild, 0);
                                f(type, y(node));
                                F(-1);
                                break;
                            default:
                                switch (type) {
                                    case 129:
                                    case 130:
                                    case 131:
                                    case 133:
                                        G(node);
                                        while (firstChild != null) {
                                            L(firstChild, i);
                                            firstChild = firstChild.getNext();
                                        }
                                        break;
                                    case 132:
                                        B(node);
                                        break;
                                    case 134:
                                    case 135:
                                        G(node);
                                        I(firstChild, 0);
                                        e(type == 134 ? -4 : -5);
                                        F(-1);
                                        break;
                                    case 136:
                                        c(((Jump) node).target, -23);
                                        break;
                                    case 137:
                                        while (firstChild != null) {
                                            L(firstChild, i);
                                            firstChild = firstChild.getNext();
                                        }
                                        break;
                                    default:
                                        throw p(node);
                                }
                                break;
                        }
                        break;
                }
            } else {
                G(node);
                f(51, y(node));
            }
        }
        if (this.g != i) {
            throw Kit.codeBug();
        }
    }

    public final void a(int i, int i2) {
        int i3 = this.f;
        if (i3 <= i2) {
            throw Kit.codeBug();
        }
        d(i);
        E(i3, i2);
    }

    public final void b(int i, int i2, int i3, boolean z, int i4, int i5) {
        int i6 = this.q;
        int[] iArr = this.d.itsExceptionTable;
        if (iArr == null) {
            if (i6 != 0) {
                Kit.codeBug();
            }
            iArr = new int[12];
            this.d.itsExceptionTable = iArr;
        } else if (iArr.length == i6) {
            int[] iArr2 = new int[iArr.length * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i6);
            this.d.itsExceptionTable = iArr2;
            iArr = iArr2;
        }
        iArr[i6] = i;
        iArr[i6 + 1] = i2;
        iArr[i6 + 2] = i3;
        iArr[i6 + 3] = z ? 1 : 0;
        iArr[i6 + 4] = i4;
        iArr[i6 + 5] = i5;
        this.q = i6 + 6;
    }

    public final void c(Node node, int i) {
        int iZ = z(node);
        if (iZ >= this.m) {
            Kit.codeBug();
        }
        int i2 = this.l[iZ];
        if (i2 != -1) {
            a(i, i2);
            return;
        }
        int i3 = this.f;
        d(i);
        int i4 = this.o;
        long[] jArr = this.n;
        if (jArr == null || i4 == jArr.length) {
            if (jArr == null) {
                this.n = new long[40];
            } else {
                long[] jArr2 = new long[jArr.length * 2];
                System.arraycopy(jArr, 0, jArr2, 0, i4);
                this.n = jArr2;
            }
        }
        this.o = i4 + 1;
        this.n[i4] = (((long) iZ) << 32) | ((long) i3);
    }

    public final void d(int i) {
        byte[] bArrA = this.d.itsICode;
        int i2 = this.f;
        if (i2 + 3 > bArrA.length) {
            bArrA = A(3);
        }
        bArrA[i2] = (byte) i;
        this.f = i2 + 3;
    }

    public final void e(int i) {
        if (!hx4.validIcode(i)) {
            throw Kit.codeBug();
        }
        m(i & 255);
    }

    public final void f(int i, int i2) {
        g(i2);
        if (hx4.validIcode(i)) {
            e(i);
        } else {
            k(i);
        }
    }

    public final void g(int i) {
        if (i < 0) {
            Kit.codeBug();
        }
        if (i < 6) {
            e((-32) - i);
            return;
        }
        if (i <= 255) {
            e(-38);
            m(i);
        } else if (i <= 65535) {
            e(-39);
            l(i);
        } else {
            e(-40);
            h(i);
        }
    }

    public final void h(int i) {
        byte[] bArrA = this.d.itsICode;
        int i2 = this.f;
        int i3 = i2 + 4;
        if (i3 > bArrA.length) {
            bArrA = A(4);
        }
        bArrA[i2] = (byte) (i >>> 24);
        bArrA[i2 + 1] = (byte) (i >>> 16);
        bArrA[i2 + 2] = (byte) (i >>> 8);
        bArrA[i2 + 3] = (byte) i;
        this.f = i3;
    }

    public final void i(int i, String str) {
        j(str);
        if (hx4.validIcode(i)) {
            e(i);
        } else {
            k(i);
        }
    }

    public final void j(String str) {
        int size = this.j.get(str, -1);
        if (size == -1) {
            size = this.j.size();
            this.j.put(str, size);
        }
        if (size < 4) {
            e((-41) - size);
            return;
        }
        if (size <= 255) {
            e(-45);
            m(size);
        } else if (size <= 65535) {
            e(-46);
            l(size);
        } else {
            e(-47);
            h(size);
        }
    }

    public final void k(int i) {
        if (!hx4.validTokenCode(i)) {
            throw Kit.codeBug();
        }
        m(i);
    }

    public final void l(int i) {
        if (((-65536) & i) != 0) {
            throw Kit.codeBug();
        }
        byte[] bArrA = this.d.itsICode;
        int i2 = this.f;
        int i3 = i2 + 2;
        if (i3 > bArrA.length) {
            bArrA = A(2);
        }
        bArrA[i2] = (byte) (i >>> 8);
        bArrA[i2 + 1] = (byte) i;
        this.f = i3;
    }

    public final void m(int i) {
        if ((i & InputDeviceCompat.SOURCE_ANY) != 0) {
            throw Kit.codeBug();
        }
        byte[] bArrA = this.d.itsICode;
        int i2 = this.f;
        if (i2 == bArrA.length) {
            bArrA = A(1);
        }
        bArrA[i2] = (byte) i;
        this.f = i2 + 1;
    }

    public final void n(int i, int i2) {
        if (i != -7) {
            if (i == 157) {
                if (i2 >= 128) {
                    f(-60, i2);
                    return;
                } else {
                    e(-61);
                    m(i2);
                    return;
                }
            }
            if (i != 55 && i != 56) {
                throw Kit.codeBug();
            }
            if (i2 < 128) {
                e(i == 55 ? -48 : -49);
                m(i2);
                return;
            }
        }
        f(i, i2);
    }

    public final int o() {
        int i = this.k;
        int i2 = i + 1;
        this.k = i2;
        InterpreterData interpreterData = this.d;
        if (i2 > interpreterData.itsMaxLocals) {
            interpreterData.itsMaxLocals = i2;
        }
        return i;
    }

    public InterpreterData q(CompilerEnvirons compilerEnvirons, ScriptNode scriptNode, String str, boolean z) {
        this.a = compilerEnvirons;
        new NodeTransformer().transform(scriptNode, compilerEnvirons);
        if (z) {
            this.e = scriptNode.getFunctionNode(0);
        } else {
            this.e = scriptNode;
        }
        InterpreterData interpreterData = new InterpreterData(compilerEnvirons.getLanguageVersion(), this.e.getSourceName(), str, this.e.isInStrictMode());
        this.d = interpreterData;
        interpreterData.topLevel = true;
        if (z) {
            t();
        } else {
            u(this.e);
        }
        return this.d;
    }

    public final void r() {
        for (int i = 0; i < this.o; i++) {
            long j = this.n[i];
            int i2 = (int) (j >> 32);
            int i3 = (int) j;
            int i4 = this.l[i2];
            if (i4 == -1) {
                throw Kit.codeBug();
            }
            E(i3, i4);
        }
        this.o = 0;
    }

    public final void s(Node node) {
        int type = node.getType();
        if (type != 33 && type != 36) {
            if (type == 39) {
                i(-15, node.getString());
                F(2);
                return;
            } else {
                I(node, 0);
                e(-18);
                F(1);
                return;
            }
        }
        Node firstChild = node.getFirstChild();
        I(firstChild, 0);
        Node next = firstChild.getNext();
        if (type == 33) {
            i(-16, next.getString());
            F(1);
        } else {
            I(next, 0);
            e(-17);
        }
    }

    public final void t() {
        this.b = true;
        FunctionNode functionNode = (FunctionNode) this.e;
        this.d.itsFunctionType = functionNode.getFunctionType();
        this.d.itsNeedsActivation = functionNode.requiresActivation();
        if (functionNode.getFunctionName() != null) {
            this.d.itsName = functionNode.getName();
        }
        if (functionNode.isGenerator()) {
            e(-62);
            l(functionNode.getBaseLineno() & 65535);
        }
        if (functionNode.isInStrictMode()) {
            this.d.isStrict = true;
        }
        if (functionNode.isES6Generator()) {
            this.d.isES6Generator = true;
        }
        this.d.declaredAsVar = functionNode.getParent() instanceof VariableInitializer;
        u(functionNode.getLastChild());
    }

    public final void u(Node node) {
        v();
        w();
        L(node, 0);
        r();
        if (this.d.itsFunctionType == 0) {
            k(65);
        }
        byte[] bArr = this.d.itsICode;
        int length = bArr.length;
        int i = this.f;
        if (length != i) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, i);
            this.d.itsICode = bArr2;
        }
        if (this.j.size() == 0) {
            this.d.itsStringTable = null;
        } else {
            this.d.itsStringTable = new String[this.j.size()];
            ObjToIntMap.Iterator iteratorNewIterator = this.j.newIterator();
            iteratorNewIterator.start();
            while (!iteratorNewIterator.done()) {
                String str = (String) iteratorNewIterator.getKey();
                int value = iteratorNewIterator.getValue();
                if (this.d.itsStringTable[value] != null) {
                    Kit.codeBug();
                }
                this.d.itsStringTable[value] = str;
                iteratorNewIterator.next();
            }
        }
        int i2 = this.i;
        if (i2 == 0) {
            this.d.itsDoubleTable = null;
        } else {
            double[] dArr = this.d.itsDoubleTable;
            if (dArr.length != i2) {
                double[] dArr2 = new double[i2];
                System.arraycopy(dArr, 0, dArr2, 0, i2);
                this.d.itsDoubleTable = dArr2;
            }
        }
        int i3 = this.q;
        if (i3 != 0) {
            int[] iArr = this.d.itsExceptionTable;
            if (iArr.length != i3) {
                int[] iArr2 = new int[i3];
                System.arraycopy(iArr, 0, iArr2, 0, i3);
                this.d.itsExceptionTable = iArr2;
            }
        }
        this.d.itsMaxVars = this.e.getParamAndVarCount();
        InterpreterData interpreterData = this.d;
        interpreterData.itsMaxFrameArray = interpreterData.itsMaxVars + interpreterData.itsMaxLocals + interpreterData.itsMaxStack;
        interpreterData.argNames = this.e.getParamAndVarNames();
        this.d.argIsConst = this.e.getParamAndVarConst();
        this.d.argCount = this.e.getParamCount();
        this.d.encodedSourceStart = this.e.getEncodedSourceStart();
        this.d.encodedSourceEnd = this.e.getEncodedSourceEnd();
        if (this.p.size() != 0) {
            this.d.literalIds = this.p.toArray();
        }
    }

    public final void v() {
        int functionCount = this.e.getFunctionCount();
        if (functionCount == 0) {
            return;
        }
        InterpreterData[] interpreterDataArr = new InterpreterData[functionCount];
        for (int i = 0; i != functionCount; i++) {
            FunctionNode functionNode = this.e.getFunctionNode(i);
            b bVar = new b();
            bVar.a = this.a;
            bVar.e = functionNode;
            bVar.d = new InterpreterData(this.d);
            bVar.t();
            interpreterDataArr[i] = bVar.d;
            AstNode parent = functionNode.getParent();
            if (!(parent instanceof AstRoot) && !(parent instanceof Scope) && !(parent instanceof Block)) {
                bVar.d.declaredAsFunctionExpression = true;
            }
        }
        this.d.itsNestedFunctions = interpreterDataArr;
    }

    public final void w() {
        int regexpCount = this.e.getRegexpCount();
        if (regexpCount == 0) {
            return;
        }
        Context context = Context.getContext();
        RegExpProxy regExpProxyCheckRegExpProxy = ScriptRuntime.checkRegExpProxy(context);
        Object[] objArr = new Object[regexpCount];
        for (int i = 0; i != regexpCount; i++) {
            objArr[i] = regExpProxyCheckRegExpProxy.compileRegExp(context, this.e.getRegexpString(i), this.e.getRegexpFlags(i));
        }
        this.d.itsRegExpLiterals = objArr;
    }

    public final int x(double d) {
        int i = this.i;
        if (i == 0) {
            this.d.itsDoubleTable = new double[64];
        } else {
            double[] dArr = this.d.itsDoubleTable;
            if (dArr.length == i) {
                double[] dArr2 = new double[i * 2];
                System.arraycopy(dArr, 0, dArr2, 0, i);
                this.d.itsDoubleTable = dArr2;
            }
        }
        this.d.itsDoubleTable[i] = d;
        this.i = i + 1;
        return i;
    }

    public final int z(Node node) {
        int iLabelId = node.labelId();
        if (iLabelId != -1) {
            return iLabelId;
        }
        int i = this.m;
        int[] iArr = this.l;
        if (iArr == null || i == iArr.length) {
            if (iArr == null) {
                this.l = new int[32];
            } else {
                int[] iArr2 = new int[iArr.length * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                this.l = iArr2;
            }
        }
        this.m = i + 1;
        this.l[i] = -1;
        node.labelId(i);
        return i;
    }
}
