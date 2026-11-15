package org.mozilla.javascript.optimizer;

import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import org.mozilla.classfile.ByteCode;
import org.mozilla.classfile.ClassFileWriter;
import org.mozilla.javascript.CompilerEnvirons;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.Node;
import org.mozilla.javascript.Token;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.Jump;
import org.mozilla.javascript.ast.ScriptNode;

public class a {
    public short A;
    public short B;
    public short C;
    public boolean D;
    public int E;
    public Map H;
    public List I;
    public ClassFileWriter b;
    public Codegen c;
    public CompilerEnvirons d;
    public ScriptNode e;
    public int f;
    public int g;
    public OptFunctionNode h;
    public int[] i;
    public short j;
    public short k;
    public int l;
    public boolean m;
    public short[] n;
    public boolean o;
    public boolean p;
    public int q;
    public int r;
    public boolean s;
    public short t;
    public short u;
    public short v;
    public short w;
    public short x;
    public short y;
    public short z;
    public C0442a a = new C0442a();
    public int F = 0;
    public int G = 0;
    public int J = 0;
    public IdentityHashMap K = new IdentityHashMap();

    public class C0442a {
        public LinkedList a = new LinkedList();

        public class C0443a {
            public Node a;
            public int[] b = new int[5];
            public int[] c = new int[5];
            public Node d = null;

            public C0443a(Jump jump, Node node) {
                this.a = node;
            }
        }

        public C0442a() {
        }

        public void a(int i, int i2, int i3) {
            C0443a c0443aC = c();
            c0443aC.b[i] = i2;
            c0443aC.c[i] = i3;
        }

        public final void b(C0443a c0443a, int i, int i2) {
            int i3 = c0443a.c[i];
            if (i3 == 0) {
                throw new IllegalStateException("bad exception start");
            }
            if (a.this.b.getLabelPC(i3) != a.this.b.getLabelPC(i2)) {
                a.this.b.addExceptionHandler(c0443a.c[i], i2, c0443a.b[i], a.r(i));
            }
        }

        public final C0443a c() {
            return (C0443a) this.a.getLast();
        }

        public void d(Node node, int i) {
            LinkedList linkedList = this.a;
            ListIterator listIterator = linkedList.listIterator(linkedList.size());
            while (listIterator.hasPrevious()) {
                C0443a c0443a = (C0443a) listIterator.previous();
                for (int i2 = 0; i2 < 5; i2++) {
                    if (c0443a.b[i2] != 0 && c0443a.d == node) {
                        c0443a.c[i2] = i;
                        c0443a.d = null;
                    }
                }
                if (c0443a.a == node) {
                    return;
                }
            }
        }

        public void e(Node node, int i) {
            LinkedList linkedList = this.a;
            ListIterator listIterator = linkedList.listIterator(linkedList.size());
            while (listIterator.hasPrevious()) {
                C0443a c0443a = (C0443a) listIterator.previous();
                for (int i2 = 0; i2 < 5; i2++) {
                    if (c0443a.b[i2] != 0 && c0443a.d == null) {
                        b(c0443a, i2, i);
                        c0443a.c[i2] = 0;
                        c0443a.d = node;
                    }
                }
                if (c0443a.a == node) {
                    return;
                }
            }
        }

        public void f() {
            this.a.removeLast();
        }

        public void g(Jump jump) {
            this.a.add(new C0443a(jump, a.U(jump.getFinally())));
        }

        public int h(int i, int i2) {
            C0443a c0443aC = c();
            int i3 = c0443aC.b[i];
            if (i3 == 0) {
                return 0;
            }
            b(c0443aC, i, i2);
            c0443aC.b[i] = 0;
            return i3;
        }

        public void i(int[] iArr, int i) {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                int i3 = iArr[i2];
                if (i3 != 0) {
                    a(i2, i3, i);
                }
            }
        }
    }

    public static class b {
        public List a = new ArrayList();
        public int b = 0;
    }

    public static Node U(Node node) {
        Node next;
        if (node == null) {
            return null;
        }
        if (node.getType() == 126) {
            return node;
        }
        if (node.getType() == 132 && (next = node.getNext()) != null && next.getType() == 126) {
            return next;
        }
        throw Kit.codeBug("bad finally target");
    }

    public static int V(Node node) {
        return ((Node) node.getProp(3)).getExistingIntProp(2);
    }

    public static boolean g0(Node node) {
        int type = node.getType();
        return type == 22 || type == 25 || type == 24 || type == 23;
    }

    public static String r(int i) {
        if (i == 0) {
            return "org/mozilla/javascript/JavaScriptException";
        }
        if (i == 1) {
            return "org/mozilla/javascript/EvaluatorException";
        }
        if (i == 2) {
            return "org/mozilla/javascript/EcmaError";
        }
        if (i == 3) {
            return "java/lang/Throwable";
        }
        if (i == 4) {
            return null;
        }
        throw Kit.codeBug();
    }

    public final void A() {
        if (this.d.isGenerateObserverCount()) {
            f();
        }
        if (this.D) {
            Map<Node, int[]> liveLocals = ((FunctionNode) this.e).getLiveLocals();
            if (liveLocals != null) {
                List<Node> resumptionPoints = ((FunctionNode) this.e).getResumptionPoints();
                for (int i = 0; i < resumptionPoints.size(); i++) {
                    Node node = resumptionPoints.get(i);
                    int[] iArr = liveLocals.get(node);
                    if (iArr != null) {
                        this.b.markTableSwitchCase(this.E, a0(node));
                        E();
                        for (int i2 = 0; i2 < iArr.length; i2++) {
                            this.b.add(89);
                            this.b.addLoadConstant(i2);
                            this.b.add(50);
                            this.b.addAStore(iArr[i2]);
                        }
                        this.b.add(87);
                        this.b.add(167, b0(node));
                    }
                }
            }
            Map map = this.H;
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    if (((Node) entry.getKey()).getType() == 126) {
                        b bVar = (b) entry.getValue();
                        this.b.markLabel(bVar.b, (short) 1);
                        int iAddTableSwitch = this.b.addTableSwitch(0, bVar.a.size() - 1);
                        this.b.markTableSwitchDefault(iAddTableSwitch);
                        int i3 = 0;
                        for (int i4 = 0; i4 < bVar.a.size(); i4++) {
                            this.b.markTableSwitchCase(iAddTableSwitch, i3);
                            this.b.add(167, ((Integer) bVar.a.get(i4)).intValue());
                            i3++;
                        }
                    }
                }
            }
        }
        int i5 = this.r;
        if (i5 != -1) {
            this.b.markLabel(i5);
        }
        if (this.D) {
            if (((FunctionNode) this.e).getResumptionPoints() != null) {
                this.b.markTableSwitchDefault(this.E);
            }
            P(-1);
            this.b.addALoad(this.t);
            this.b.addALoad(this.C);
            m("throwStopIteration", "(Ljava/lang/Object;Ljava/lang/Object;)V");
            Codegen.pushUndefined(this.b);
            this.b.add(176);
            return;
        }
        if (this.m) {
            this.b.add(176);
            return;
        }
        if (this.h == null) {
            this.b.addALoad(this.u);
            this.b.add(176);
            return;
        }
        u();
        this.b.add(176);
        int iAcquireLabel = this.b.acquireLabel();
        this.b.markHandler(iAcquireLabel);
        short sX = X();
        this.b.addAStore(sX);
        u();
        this.b.addALoad(sX);
        i0(sX);
        this.b.add(ByteCode.ATHROW);
        this.b.addExceptionHandler(this.q, this.r, iAcquireLabel, null);
    }

    public final void A0(Node node, Node node2, boolean z) {
        if (!this.m) {
            Kit.codeBug();
        }
        int varIndex = this.h.getVarIndex(node);
        B(node2.getNext(), node);
        boolean z2 = node.getIntProp(8, -1) != -1;
        short s = this.n[varIndex];
        int iAcquireLabel = this.b.acquireLabel();
        int iAcquireLabel2 = this.b.acquireLabel();
        if (z2) {
            int i = s + 2;
            this.b.addILoad(i);
            this.b.add(154, iAcquireLabel2);
            short stackTop = this.b.getStackTop();
            this.b.addPush(1);
            this.b.addIStore(i);
            this.b.addDStore(s);
            if (z) {
                this.b.addDLoad(s);
                this.b.markLabel(iAcquireLabel2, stackTop);
            } else {
                this.b.add(167, iAcquireLabel);
                this.b.markLabel(iAcquireLabel2, stackTop);
                this.b.add(88);
            }
        } else {
            int i2 = s + 1;
            this.b.addILoad(i2);
            this.b.add(154, iAcquireLabel2);
            short stackTop2 = this.b.getStackTop();
            this.b.addPush(1);
            this.b.addIStore(i2);
            this.b.addAStore(s);
            if (z) {
                this.b.addALoad(s);
                this.b.markLabel(iAcquireLabel2, stackTop2);
            } else {
                this.b.add(167, iAcquireLabel);
                this.b.markLabel(iAcquireLabel2, stackTop2);
                this.b.add(87);
            }
        }
        this.b.markLabel(iAcquireLabel);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:140:0x0467  */
    /* JADX WARN: Code duplicated, block: B:88:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:93:0x0305  */
    public final void B(Node node, Node node2) {
        int i;
        int i2;
        int intProp;
        String str;
        String str2;
        int type = node.getType();
        Node firstChild = node.getFirstChild();
        if (type != 90) {
            if (type == 103) {
                Node next = firstChild.getNext();
                Node next2 = next.getNext();
                B(firstChild, node);
                n("toBoolean", "(Ljava/lang/Object;)Z");
                int iAcquireLabel = this.b.acquireLabel();
                this.b.add(153, iAcquireLabel);
                short stackTop = this.b.getStackTop();
                B(next, node);
                int iAcquireLabel2 = this.b.acquireLabel();
                this.b.add(167, iAcquireLabel2);
                this.b.markLabel(iAcquireLabel, stackTop);
                B(next2, node);
                this.b.markLabel(iAcquireLabel2);
                return;
            }
            if (type == 110) {
                if (this.h == null && node2.getType() == 137) {
                    return;
                }
                OptFunctionNode optFunctionNode = OptFunctionNode.get(this.e, node.getExistingIntProp(1));
                int functionType = optFunctionNode.fnode.getFunctionType();
                if (functionType != 2 && functionType != 4) {
                    throw Codegen.badTree();
                }
                q0(optFunctionNode, functionType);
                return;
            }
            if (type == 127) {
                B(firstChild, node);
                this.b.add(87);
                Codegen.pushUndefined(this.b);
                return;
            }
            if (type != 143) {
                if (type == 147) {
                    p0(node, firstChild);
                    return;
                }
                if (type == 160) {
                    Node next3 = firstChild.getNext();
                    Node next4 = next3.getNext();
                    R(firstChild);
                    B(next3.getFirstChild(), next3);
                    R(next4);
                    return;
                }
                if (type != 166) {
                    if (type == 150) {
                        if (firstChild.getType() == 40) {
                            i = 8;
                            i2 = -1;
                            intProp = firstChild.getIntProp(8, -1);
                        } else {
                            i = 8;
                            i2 = -1;
                            intProp = -1;
                        }
                        if (intProp == i2) {
                            B(firstChild, node);
                            c();
                            return;
                        } else {
                            firstChild.removeProp(i);
                            B(firstChild, node);
                            firstChild.putIntProp(i, intProp);
                            return;
                        }
                    }
                    if (type == 151) {
                        B(firstChild, node);
                        l();
                        return;
                    }
                    switch (type) {
                        case 8:
                            C0(node, firstChild);
                            return;
                        case 9:
                        case 10:
                        case 11:
                        case 18:
                        case 19:
                        case 20:
                            o0(node, type, firstChild);
                            return;
                        case 12:
                        case 13:
                        case 46:
                        case 47:
                            int iAcquireLabel3 = this.b.acquireLabel();
                            int iAcquireLabel4 = this.b.acquireLabel();
                            u0(node, firstChild, iAcquireLabel3, iAcquireLabel4);
                            h(iAcquireLabel3, iAcquireLabel4);
                            return;
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                            int iAcquireLabel5 = this.b.acquireLabel();
                            int iAcquireLabel6 = this.b.acquireLabel();
                            v0(node, firstChild, iAcquireLabel5, iAcquireLabel6);
                            h(iAcquireLabel5, iAcquireLabel6);
                            return;
                        case 21:
                            B(firstChild, node);
                            B(firstChild.getNext(), node);
                            int intProp2 = node.getIntProp(8, -1);
                            if (intProp2 == 0) {
                                this.b.add(99);
                                return;
                            }
                            if (intProp2 == 1) {
                                m("add", "(DLjava/lang/Object;)Ljava/lang/Object;");
                                return;
                            }
                            if (intProp2 == 2) {
                                m("add", "(Ljava/lang/Object;D)Ljava/lang/Object;");
                                return;
                            }
                            if (firstChild.getType() == 41) {
                                n("add", "(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;");
                                return;
                            } else if (firstChild.getNext().getType() == 41) {
                                n("add", "(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;");
                                return;
                            } else {
                                this.b.addALoad(this.v);
                                n("add", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
                                return;
                            }
                        case 22:
                            m0(node, 103, firstChild, node2);
                            return;
                        case 23:
                            m0(node, 107, firstChild, node2);
                            return;
                        case 24:
                        case 25:
                            m0(node, type == 24 ? 111 : 115, firstChild, node2);
                            return;
                        case 26:
                            int iAcquireLabel7 = this.b.acquireLabel();
                            int iAcquireLabel8 = this.b.acquireLabel();
                            int iAcquireLabel9 = this.b.acquireLabel();
                            H(firstChild, node, iAcquireLabel7, iAcquireLabel8);
                            this.b.markLabel(iAcquireLabel7);
                            this.b.add(178, "java/lang/Boolean", "FALSE", "Ljava/lang/Boolean;");
                            this.b.add(167, iAcquireLabel9);
                            this.b.markLabel(iAcquireLabel8);
                            this.b.add(178, "java/lang/Boolean", "TRUE", "Ljava/lang/Boolean;");
                            this.b.markLabel(iAcquireLabel9);
                            this.b.adjustStackTop(-1);
                            return;
                        case 27:
                            B(firstChild, node);
                            n("toInt32", "(Ljava/lang/Object;)I");
                            this.b.addPush(-1);
                            this.b.add(130);
                            this.b.add(135);
                            c();
                            return;
                        case 28:
                        case 29:
                            B(firstChild, node);
                            l();
                            if (type == 29) {
                                this.b.add(119);
                            }
                            c();
                            return;
                        case 30:
                        case 38:
                            int intProp3 = node.getIntProp(10, 0);
                            if (intProp3 != 0) {
                                F0(node, type, intProp3, firstChild);
                                return;
                            }
                            OptFunctionNode optFunctionNode2 = (OptFunctionNode) node.getProp(9);
                            if (optFunctionNode2 != null) {
                                y0(node, optFunctionNode2, type, firstChild);
                                return;
                            } else if (type == 38) {
                                G0(node, firstChild);
                                return;
                            } else {
                                H0(node, firstChild);
                                return;
                            }
                        case 31:
                            boolean z = firstChild.getType() == 49;
                            B(firstChild, node);
                            B(firstChild.getNext(), node);
                            this.b.addALoad(this.v);
                            this.b.addPush(z);
                            n("delete", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Z)Ljava/lang/Object;");
                            return;
                        case 32:
                            B(firstChild, node);
                            n("typeof", "(Ljava/lang/Object;)Ljava/lang/String;");
                            return;
                        case 33:
                        case 34:
                            r0(node, firstChild);
                            return;
                        case 35:
                            D0(type, node, firstChild);
                            return;
                        case 36:
                            B(firstChild, node);
                            B(firstChild.getNext(), node);
                            this.b.addALoad(this.v);
                            if (node.getIntProp(8, -1) != -1) {
                                n("getObjectIndex", "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;)Ljava/lang/Object;");
                                return;
                            } else {
                                this.b.addALoad(this.t);
                                n("getObjectElem", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
                                return;
                            }
                        case 37:
                            B0(type, node, firstChild);
                            return;
                        case 39:
                            this.b.addALoad(this.v);
                            this.b.addALoad(this.t);
                            this.b.addPush(node.getString());
                            n("name", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;");
                            return;
                        case 40:
                            double d = node.getDouble();
                            if (node.getIntProp(8, -1) != -1) {
                                this.b.addPush(d);
                                return;
                            } else {
                                this.c.pushNumberAsObject(this.b, d);
                                return;
                            }
                        case 41:
                            this.b.addPush(node.getString());
                            return;
                        case 42:
                            this.b.add(1);
                            return;
                        case 43:
                            this.b.addALoad(this.y);
                            return;
                        case 44:
                            this.b.add(178, "java/lang/Boolean", "FALSE", "Ljava/lang/Boolean;");
                            return;
                        case 45:
                            this.b.add(178, "java/lang/Boolean", "TRUE", "Ljava/lang/Boolean;");
                            return;
                        case 48:
                            this.b.addALoad(this.v);
                            this.b.addALoad(this.t);
                            int existingIntProp = node.getExistingIntProp(4);
                            ClassFileWriter classFileWriter = this.b;
                            Codegen codegen = this.c;
                            classFileWriter.add(178, codegen.mainClassName, codegen.getCompiledRegexpName(this.e, existingIntProp), "Ljava/lang/Object;");
                            this.b.addInvoke(184, "org/mozilla/javascript/ScriptRuntime", "wrapRegExp", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
                            return;
                        case 49:
                            while (firstChild != null) {
                                B(firstChild, node);
                                firstChild = firstChild.getNext();
                            }
                            this.b.addALoad(this.v);
                            this.b.addALoad(this.t);
                            this.b.addPush(node.getString());
                            n("bind", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;");
                            return;
                        default:
                            switch (type) {
                                case 52:
                                case 53:
                                    int iAcquireLabel10 = this.b.acquireLabel();
                                    int iAcquireLabel11 = this.b.acquireLabel();
                                    v0(node, firstChild, iAcquireLabel10, iAcquireLabel11);
                                    h(iAcquireLabel10, iAcquireLabel11);
                                    return;
                                case 54:
                                    this.b.addALoad(V(node));
                                    return;
                                case 55:
                                    s0(node);
                                    return;
                                case 56:
                                    E0(node, firstChild, true);
                                    return;
                                default:
                                    switch (type) {
                                        case 62:
                                        case 63:
                                            this.b.addALoad(V(node));
                                            if (type == 62) {
                                                n("enumNext", "(Ljava/lang/Object;)Ljava/lang/Boolean;");
                                                return;
                                            } else {
                                                this.b.addALoad(this.v);
                                                n("enumId", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
                                                return;
                                            }
                                        case 64:
                                            this.b.add(42);
                                            return;
                                        default:
                                            switch (type) {
                                                case 66:
                                                    n0(node, firstChild, false);
                                                    return;
                                                case 67:
                                                    x0(node, firstChild, false);
                                                    return;
                                                case 68:
                                                    B(firstChild, node);
                                                    this.b.addALoad(this.v);
                                                    n("refGet", "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
                                                    return;
                                                case 69:
                                                    break;
                                                case 70:
                                                    B(firstChild, node);
                                                    this.b.addALoad(this.v);
                                                    n("refDel", "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
                                                    return;
                                                case 71:
                                                    C(firstChild, node);
                                                    x(node, firstChild.getNext(), false);
                                                    this.b.addALoad(this.v);
                                                    n("callRef", "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;");
                                                    return;
                                                case 72:
                                                    String str3 = (String) node.getProp(17);
                                                    B(firstChild, node);
                                                    this.b.addPush(str3);
                                                    this.b.addALoad(this.v);
                                                    this.b.addALoad(this.t);
                                                    n("specialRef", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Ref;");
                                                    return;
                                                case 73:
                                                    break;
                                                case 74:
                                                    I0(node, firstChild);
                                                    return;
                                                case 75:
                                                    B(firstChild, node);
                                                    this.b.addALoad(this.v);
                                                    n("setDefaultNamespace", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
                                                    return;
                                                case 76:
                                                    B(firstChild, node);
                                                    this.b.addALoad(this.v);
                                                    n("escapeAttributeValue", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;");
                                                    return;
                                                case 77:
                                                    B(firstChild, node);
                                                    this.b.addALoad(this.v);
                                                    n("escapeTextValue", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;");
                                                    return;
                                                case 78:
                                                case 79:
                                                case 80:
                                                case 81:
                                                    int intProp4 = node.getIntProp(16, 0);
                                                    do {
                                                        B(firstChild, node);
                                                        firstChild = firstChild.getNext();
                                                    } while (firstChild != null);
                                                    this.b.addALoad(this.v);
                                                    String str4 = "memberRef";
                                                    switch (type) {
                                                        case 78:
                                                            str = "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;";
                                                            this.b.addPush(intProp4);
                                                            n(str4, str);
                                                            return;
                                                        case 79:
                                                            str = "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;";
                                                            this.b.addPush(intProp4);
                                                            n(str4, str);
                                                            return;
                                                        case 80:
                                                            this.b.addALoad(this.t);
                                                            str2 = "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;";
                                                            str = str2;
                                                            str4 = "nameRef";
                                                            this.b.addPush(intProp4);
                                                            n(str4, str);
                                                            return;
                                                        case 81:
                                                            this.b.addALoad(this.t);
                                                            str2 = "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;";
                                                            str = str2;
                                                            str4 = "nameRef";
                                                            this.b.addPush(intProp4);
                                                            n(str4, str);
                                                            return;
                                                        default:
                                                            throw Kit.codeBug();
                                                    }
                                                default:
                                                    switch (type) {
                                                        case 105:
                                                        case 106:
                                                            B(firstChild, node);
                                                            this.b.add(89);
                                                            n("toBoolean", "(Ljava/lang/Object;)Z");
                                                            int iAcquireLabel12 = this.b.acquireLabel();
                                                            if (type == 106) {
                                                                this.b.add(153, iAcquireLabel12);
                                                            } else {
                                                                this.b.add(154, iAcquireLabel12);
                                                            }
                                                            this.b.add(87);
                                                            B(firstChild.getNext(), node);
                                                            this.b.markLabel(iAcquireLabel12);
                                                            return;
                                                        case 107:
                                                        case 108:
                                                            w0(node);
                                                            return;
                                                        default:
                                                            switch (type) {
                                                                case 138:
                                                                    L0(node);
                                                                    return;
                                                                case 139:
                                                                    return;
                                                                case 140:
                                                                    D0(type, node, firstChild);
                                                                    return;
                                                                case 141:
                                                                    B0(type, node, firstChild);
                                                                    return;
                                                                default:
                                                                    switch (type) {
                                                                        case 156:
                                                                            z0(node, firstChild);
                                                                            return;
                                                                        case 157:
                                                                            A0(node, firstChild, true);
                                                                            return;
                                                                        case 158:
                                                                            Node next5 = firstChild.getNext();
                                                                            R(firstChild);
                                                                            B(next5, node);
                                                                            return;
                                                                        default:
                                                                            throw new RuntimeException("Unexpected node type " + type);
                                                                    }
                                                            }
                                                    }
                                            }
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                }
                T(node, true);
                return;
            }
            B(firstChild, node);
            Node next6 = firstChild.getNext();
            if (type == 143) {
                this.b.add(89);
                this.b.addALoad(this.v);
                n("refGet", "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
            }
            B(next6, node);
            this.b.addALoad(this.v);
            this.b.addALoad(this.t);
            n("refSet", "(Lorg/mozilla/javascript/Ref;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
            return;
        }
        Node next7 = firstChild.getNext();
        while (true) {
            Node node3 = firstChild;
            firstChild = next7;
            if (firstChild == null) {
                B(node3, node);
                return;
            } else {
                B(node3, node);
                this.b.add(87);
                next7 = firstChild.getNext();
            }
        }
    }

    public final void B0(int i, Node node, Node node2) {
        B(node2, node);
        Node next = node2.getNext();
        if (i == 141) {
            this.b.add(89);
        }
        B(next, node);
        Node next2 = next.getNext();
        boolean z = node.getIntProp(8, -1) != -1;
        if (i == 141) {
            if (z) {
                this.b.add(93);
                this.b.addALoad(this.v);
                this.b.addALoad(this.t);
                n("getObjectIndex", "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
            } else {
                this.b.add(90);
                this.b.addALoad(this.v);
                this.b.addALoad(this.t);
                n("getObjectElem", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
            }
        }
        B(next2, node);
        this.b.addALoad(this.v);
        this.b.addALoad(this.t);
        if (z) {
            n("setObjectIndex", "(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        } else {
            n("setObjectElem", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x004e  */
    /* JADX WARN: Code duplicated, block: B:16:0x005b  */
    /* JADX WARN: Code duplicated, block: B:17:0x007a  */
    /* JADX WARN: Code duplicated, block: B:19:0x0086  */
    public final void C(Node node, Node node2) {
        Node next;
        int type = node.getType();
        int type2 = node.getType();
        if (type2 == 33) {
            Node firstChild = node.getFirstChild();
            B(firstChild, node);
            next = firstChild.getNext();
            if (type == 33) {
                this.b.addPush(next.getString());
                this.b.addALoad(this.v);
                this.b.addALoad(this.t);
                n("getPropFunctionAndThis", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;");
            } else {
                B(next, node);
                if (node.getIntProp(8, -1) != -1) {
                    c();
                }
                this.b.addALoad(this.v);
                this.b.addALoad(this.t);
                n("getElemFunctionAndThis", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;");
            }
        } else {
            if (type2 == 34) {
                throw Kit.codeBug();
            }
            if (type2 == 36) {
                Node firstChild2 = node.getFirstChild();
                B(firstChild2, node);
                next = firstChild2.getNext();
                if (type == 33) {
                    this.b.addPush(next.getString());
                    this.b.addALoad(this.v);
                    this.b.addALoad(this.t);
                    n("getPropFunctionAndThis", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;");
                } else {
                    B(next, node);
                    if (node.getIntProp(8, -1) != -1) {
                        c();
                    }
                    this.b.addALoad(this.v);
                    this.b.addALoad(this.t);
                    n("getElemFunctionAndThis", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;");
                }
            } else if (type2 != 39) {
                B(node, node2);
                this.b.addALoad(this.v);
                n("getValueFunctionAndThis", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;");
            } else {
                this.b.addPush(node.getString());
                this.b.addALoad(this.v);
                this.b.addALoad(this.t);
                n("getNameFunctionAndThis", "(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;");
            }
        }
        this.b.addALoad(this.v);
        n("lastStoredScriptable", "(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;");
    }

    public final void C0(Node node, Node node2) {
        String string = node.getFirstChild().getString();
        while (node2 != null) {
            B(node2, node);
            node2 = node2.getNext();
        }
        this.b.addALoad(this.v);
        this.b.addALoad(this.t);
        this.b.addPush(string);
        n("setName", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;");
    }

    public final void D() {
        this.b.startMethod(this.c.getBodyMethodName(this.e), this.c.getBodyMethodSignature(this.e), (short) 10);
        d0();
        short s = this.j;
        short s2 = (short) (s + 1);
        this.j = s2;
        this.w = s;
        this.k = s2;
        if (this.h != null) {
            this.b.addALoad(this.z);
            this.b.addInvoke(185, "org/mozilla/javascript/Scriptable", "getParentScope", "()Lorg/mozilla/javascript/Scriptable;");
            this.b.addAStore(this.t);
        }
        this.b.addALoad(this.z);
        this.b.addALoad(this.t);
        this.b.addALoad(this.w);
        this.b.addPush(this.e.isInStrictMode());
        n("createFunctionActivation", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Lorg/mozilla/javascript/Scriptable;");
        this.b.addAStore(this.t);
        this.b.add(187, this.c.mainClassName);
        this.b.add(89);
        this.b.addALoad(this.t);
        this.b.addALoad(this.v);
        this.b.addPush(this.f);
        this.b.addInvoke(183, this.c.mainClassName, MethodDecl.initName, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V");
        L();
        this.b.addALoad(this.t);
        this.b.addALoad(this.y);
        this.b.addLoadConstant(this.F);
        this.b.addLoadConstant(this.G);
        m("createNativeGenerator", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/Scriptable;");
        this.b.add(176);
        this.b.stopMethod((short) (this.k + 1));
    }

    public final void D0(int i, Node node, Node node2) {
        B(node2, node);
        Node next = node2.getNext();
        if (i == 140) {
            this.b.add(89);
        }
        B(next, node);
        Node next2 = next.getNext();
        if (i == 140) {
            this.b.add(90);
            if (node2.getType() == 43 && next.getType() == 41) {
                this.b.addALoad(this.v);
                n("getObjectProp", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
            } else {
                this.b.addALoad(this.v);
                this.b.addALoad(this.t);
                n("getObjectProp", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
            }
        }
        B(next2, node);
        this.b.addALoad(this.v);
        this.b.addALoad(this.t);
        n("setObjectProp", "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
    }

    public final void E() {
        this.b.addALoad(this.C);
        m("getGeneratorLocalsState", "(Ljava/lang/Object;)[Ljava/lang/Object;");
    }

    public final void E0(Node node, Node node2, boolean z) {
        if (!this.m) {
            Kit.codeBug();
        }
        int varIndex = this.h.getVarIndex(node);
        B(node2.getNext(), node);
        boolean z2 = node.getIntProp(8, -1) != -1;
        short s = this.n[varIndex];
        if (this.h.fnode.getParamAndVarConst()[varIndex]) {
            if (z) {
                return;
            }
            if (z2) {
                this.b.add(88);
                return;
            } else {
                this.b.add(87);
                return;
            }
        }
        if (l0(varIndex)) {
            if (!z2) {
                if (z) {
                    this.b.add(89);
                }
                this.b.addAStore(s);
                return;
            }
            if (z) {
                this.b.add(92);
            }
            this.b.addALoad(s);
            this.b.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
            int iAcquireLabel = this.b.acquireLabel();
            int iAcquireLabel2 = this.b.acquireLabel();
            this.b.add(165, iAcquireLabel);
            short stackTop = this.b.getStackTop();
            c();
            this.b.addAStore(s);
            this.b.add(167, iAcquireLabel2);
            this.b.markLabel(iAcquireLabel, stackTop);
            this.b.addDStore(s + 1);
            this.b.markLabel(iAcquireLabel2);
            return;
        }
        boolean zIsNumberVar = this.h.isNumberVar(varIndex);
        if (!z2) {
            if (zIsNumberVar) {
                Kit.codeBug();
            }
            this.b.addAStore(s);
            if (z) {
                this.b.addALoad(s);
                return;
            }
            return;
        }
        if (zIsNumberVar) {
            this.b.addDStore(s);
            if (z) {
                this.b.addDLoad(s);
                return;
            }
            return;
        }
        if (z) {
            this.b.add(92);
        }
        c();
        this.b.addAStore(s);
    }

    public final void F() {
        this.b.addALoad(this.C);
        this.b.add(180, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState", "resumptionPoint", "I");
    }

    public final void F0(Node node, int i, int i2, Node node2) {
        String str;
        String str2;
        this.b.addALoad(this.v);
        if (i == 30) {
            B(node2, node);
        } else {
            C(node2, node);
        }
        x(node, node2.getNext(), false);
        if (i == 30) {
            this.b.addALoad(this.t);
            this.b.addALoad(this.y);
            this.b.addPush(i2);
            str = "newObjectSpecial";
            str2 = "(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;";
        } else {
            this.b.addALoad(this.t);
            this.b.addALoad(this.y);
            this.b.addPush(i2);
            String sourceName = this.e.getSourceName();
            ClassFileWriter classFileWriter = this.b;
            if (sourceName == null) {
                sourceName = "";
            }
            classFileWriter.addPush(sourceName);
            this.b.addPush(this.l);
            str = "callSpecial";
            str2 = "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;I)Ljava/lang/Object;";
        }
        m(str, str2);
    }

    public final void G() {
        this.b.addALoad(this.C);
        m("getGeneratorStackState", "(Ljava/lang/Object;)[Ljava/lang/Object;");
    }

    public final void G0(Node node, Node node2) {
        String str;
        String str2;
        if (node.getType() != 38) {
            throw Codegen.badTree();
        }
        Node next = node2.getNext();
        int type = node2.getType();
        if (next == null) {
            if (type == 39) {
                this.b.addPush(node2.getString());
                str = "callName0";
                str2 = "(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            } else if (type == 33) {
                Node firstChild = node2.getFirstChild();
                B(firstChild, node);
                this.b.addPush(firstChild.getNext().getString());
                str = "callProp0";
                str2 = "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            } else {
                if (type == 34) {
                    throw Kit.codeBug();
                }
                C(node2, node);
                str = "call0";
                str2 = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            }
        } else if (type == 39) {
            String string = node2.getString();
            x(node, next, false);
            this.b.addPush(string);
            str = "callName";
            str2 = "([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
        } else {
            int i = 0;
            for (Node next2 = next; next2 != null; next2 = next2.getNext()) {
                i++;
            }
            C(node2, node);
            if (i == 1) {
                B(next, node);
                str = "call1";
                str2 = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            } else if (i == 2) {
                B(next, node);
                B(next.getNext(), node);
                str = "call2";
                str2 = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            } else {
                x(node, next, false);
                str = "callN";
                str2 = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            }
        }
        this.b.addALoad(this.v);
        this.b.addALoad(this.t);
        m(str, str2);
    }

    public final void H(Node node, Node node2, int i, int i2) {
        int type = node.getType();
        Node firstChild = node.getFirstChild();
        if (type == 26) {
            H(firstChild, node, i2, i);
            return;
        }
        if (type != 46 && type != 47) {
            if (type != 52 && type != 53) {
                if (type == 105 || type == 106) {
                    int iAcquireLabel = this.b.acquireLabel();
                    if (type == 106) {
                        H(firstChild, node, iAcquireLabel, i2);
                    } else {
                        H(firstChild, node, i, iAcquireLabel);
                    }
                    this.b.markLabel(iAcquireLabel);
                    H(firstChild.getNext(), node, i, i2);
                    return;
                }
                switch (type) {
                    case 12:
                    case 13:
                        break;
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                        break;
                    default:
                        B(node, node2);
                        n("toBoolean", "(Ljava/lang/Object;)Z");
                        this.b.add(154, i);
                        this.b.add(167, i2);
                        break;
                }
                return;
            }
            v0(node, firstChild, i, i2);
            return;
        }
        u0(node, firstChild, i, i2);
    }

    public final void H0(Node node, Node node2) {
        if (node.getType() != 30) {
            throw Codegen.badTree();
        }
        Node next = node2.getNext();
        B(node2, node);
        this.b.addALoad(this.v);
        this.b.addALoad(this.t);
        x(node, next, false);
        n("newObject", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
    }

    public final void I() {
        this.b.addInvoke(182, "java/lang/Integer", "intValue", "()I");
    }

    public final void I0(Node node, Node node2) {
        String string = node.getFirstChild().getString();
        while (node2 != null) {
            B(node2, node);
            node2 = node2.getNext();
        }
        this.b.addALoad(this.v);
        this.b.addALoad(this.t);
        this.b.addPush(string);
        n("strictSetName", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;");
    }

    public final void J() {
        this.b.addInvoke(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
    }

    public final void J0(Jump jump, Node node) {
        B(node, jump);
        short sX = X();
        this.b.addAStore(sX);
        for (Jump jump2 = (Jump) node.getNext(); jump2 != null; jump2 = (Jump) jump2.getNext()) {
            if (jump2.getType() != 116) {
                throw Codegen.badTree();
            }
            B(jump2.getFirstChild(), jump2);
            this.b.addALoad(sX);
            n("shallowEq", "(Ljava/lang/Object;Ljava/lang/Object;)Z");
            d(jump2.target, 154);
        }
        i0(sX);
    }

    public final void K(Node node, boolean z) {
        short stackTop = this.b.getStackTop();
        int i = this.G;
        if (i <= stackTop) {
            i = stackTop;
        }
        this.G = i;
        if (stackTop != 0) {
            G();
            for (int i2 = 0; i2 < stackTop; i2++) {
                this.b.add(90);
                this.b.add(95);
                this.b.addLoadConstant(i2);
                this.b.add(95);
                this.b.add(83);
            }
            this.b.add(87);
        }
        Node firstChild = node.getFirstChild();
        if (firstChild != null) {
            B(firstChild, node);
        } else {
            Codegen.pushUndefined(this.b);
        }
        if (node.getType() == 166) {
            this.b.add(187, "org/mozilla/javascript/ES6Generator$YieldStarResult");
            this.b.add(90);
            this.b.add(95);
            this.b.addInvoke(183, "org/mozilla/javascript/ES6Generator$YieldStarResult", MethodDecl.initName, "(Ljava/lang/Object;)V");
        }
        int iA0 = a0(node);
        P(iA0);
        boolean zO = O(node);
        this.b.add(176);
        z(b0(node), zO, iA0);
        if (stackTop != 0) {
            G();
            for (int i3 = stackTop - 1; i3 >= 0; i3--) {
                this.b.add(89);
                this.b.addLoadConstant(i3);
                this.b.add(50);
                this.b.add(95);
            }
            this.b.add(87);
        }
        if (z) {
            this.b.addALoad(this.w);
        }
    }

    public final void K0(Jump jump, Node node) {
        int i;
        int i2;
        short sX = X();
        this.b.addALoad(this.t);
        this.b.addAStore(sX);
        int iAcquireLabel = this.b.acquireLabel();
        this.b.markLabel(iAcquireLabel, (short) 0);
        Node node2 = jump.target;
        Node node3 = jump.getFinally();
        int[] iArr = new int[5];
        this.a.g(jump);
        if (node2 != null) {
            iArr[0] = this.b.acquireLabel();
            iArr[1] = this.b.acquireLabel();
            iArr[2] = this.b.acquireLabel();
            Context currentContext = Context.getCurrentContext();
            if (currentContext != null && currentContext.hasFeature(13)) {
                iArr[3] = this.b.acquireLabel();
            }
        }
        if (node3 != null) {
            iArr[4] = this.b.acquireLabel();
        }
        this.a.i(iArr, iAcquireLabel);
        if (this.D && node3 != null) {
            b bVar = new b();
            if (this.H == null) {
                this.H = new HashMap();
            }
            this.H.put(node3, bVar);
            this.H.put(node3.getNext(), bVar);
        }
        for (Node next = node; next != null; next = next.getNext()) {
            if (next == node2) {
                int iB0 = b0(node2);
                this.a.h(0, iB0);
                this.a.h(1, iB0);
                this.a.h(2, iB0);
                this.a.h(3, iB0);
            }
            R(next);
        }
        int iAcquireLabel2 = this.b.acquireLabel();
        this.b.add(167, iAcquireLabel2);
        int iV = V(jump);
        if (node2 != null) {
            int iLabelId = node2.labelId();
            i = iV;
            i2 = iAcquireLabel2;
            y(0, sX, iLabelId, iV, iArr[0]);
            y(1, sX, iLabelId, iV, iArr[1]);
            y(2, sX, iLabelId, iV, iArr[2]);
            Context currentContext2 = Context.getCurrentContext();
            if (currentContext2 != null && currentContext2.hasFeature(13)) {
                y(3, sX, iLabelId, i, iArr[3]);
            }
        } else {
            i = iV;
            i2 = iAcquireLabel2;
        }
        if (node3 != null) {
            int iAcquireLabel3 = this.b.acquireLabel();
            int iAcquireLabel4 = this.b.acquireLabel();
            this.b.markHandler(iAcquireLabel3);
            if (!this.D) {
                this.b.markLabel(iArr[4]);
            }
            int i3 = i;
            this.b.addAStore(i3);
            this.b.addALoad(sX);
            this.b.addAStore(this.t);
            int iLabelId2 = node3.labelId();
            if (this.D) {
                e(node3);
            } else {
                f0(node3, iArr[4], iAcquireLabel4);
            }
            this.b.addALoad(i3);
            if (this.D) {
                this.b.add(192, "java/lang/Throwable");
            }
            this.b.add(ByteCode.ATHROW);
            this.b.markLabel(iAcquireLabel4);
            if (this.D) {
                this.b.addExceptionHandler(iAcquireLabel, iLabelId2, iAcquireLabel3, null);
            }
        }
        i0(sX);
        this.b.markLabel(i2);
        if (this.D) {
            return;
        }
        this.a.f();
    }

    public final void L() {
        int functionCount = this.e.getFunctionCount();
        for (int i = 0; i != functionCount; i++) {
            OptFunctionNode optFunctionNode = OptFunctionNode.get(this.e, i);
            if (optFunctionNode.fnode.getFunctionType() == 1) {
                q0(optFunctionNode, 1);
            }
        }
    }

    public final void L0(Node node) {
        int indexForNameNode;
        if (!this.m || (indexForNameNode = this.h.fnode.getIndexForNameNode(node)) < 0) {
            this.b.addALoad(this.t);
            this.b.addPush(node.getString());
            n("typeofName", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/String;");
            return;
        }
        if (this.h.isNumberVar(indexForNameNode)) {
            this.b.addPush("number");
            return;
        }
        if (!l0(indexForNameNode)) {
            this.b.addALoad(this.n[indexForNameNode]);
            n("typeof", "(Ljava/lang/Object;)Ljava/lang/String;");
            return;
        }
        short s = this.n[indexForNameNode];
        this.b.addALoad(s);
        this.b.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
        int iAcquireLabel = this.b.acquireLabel();
        this.b.add(165, iAcquireLabel);
        short stackTop = this.b.getStackTop();
        this.b.addALoad(s);
        n("typeof", "(Ljava/lang/Object;)Ljava/lang/String;");
        int iAcquireLabel2 = this.b.acquireLabel();
        this.b.add(167, iAcquireLabel2);
        this.b.markLabel(iAcquireLabel, stackTop);
        this.b.addPush("number");
        this.b.markLabel(iAcquireLabel2);
    }

    public final void M(Node node, int i) {
        String str = this.c.getBodyMethodName(this.e) + "_literal" + i;
        d0();
        short s = this.j;
        short s2 = (short) (s + 1);
        this.j = s2;
        this.w = s;
        this.k = s2;
        this.b.startMethod(str, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;", (short) 2);
        x0(node, node.getFirstChild(), true);
        this.b.add(176);
        this.b.stopMethod((short) (this.k + 1));
    }

    public final void N() {
        String str;
        short sY;
        if (this.o) {
            int paramCount = this.e.getParamCount();
            if (this.j != 4) {
                Kit.codeBug();
            }
            for (int i = 0; i != paramCount; i++) {
                short[] sArr = this.n;
                short s = this.j;
                sArr[i] = s;
                this.j = (short) (s + 3);
            }
            if (!this.h.getParameterNumberContext()) {
                this.p = true;
                for (int i2 = 0; i2 != paramCount; i2++) {
                    short s2 = this.n[i2];
                    this.b.addALoad(s2);
                    this.b.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
                    int iAcquireLabel = this.b.acquireLabel();
                    this.b.add(166, iAcquireLabel);
                    this.b.addDLoad(s2 + 1);
                    c();
                    this.b.addAStore(s2);
                    this.b.markLabel(iAcquireLabel);
                }
            }
        }
        if (this.h != null) {
            this.b.addALoad(this.z);
            this.b.addInvoke(185, "org/mozilla/javascript/Scriptable", "getParentScope", "()Lorg/mozilla/javascript/Scriptable;");
            this.b.addAStore(this.t);
        }
        short s3 = this.j;
        short s4 = (short) (s3 + 1);
        this.j = s4;
        this.w = s3;
        this.k = s4;
        if (this.D) {
            short s5 = (short) (s4 + 1);
            this.j = s5;
            this.x = s4;
            this.k = s5;
            this.b.addALoad(this.y);
            short s6 = this.j;
            short s7 = (short) (s6 + 1);
            this.j = s7;
            this.C = s6;
            this.k = s7;
            this.b.add(192, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState");
            this.b.add(89);
            this.b.addAStore(this.C);
            this.b.add(180, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState", "thisObj", "Lorg/mozilla/javascript/Scriptable;");
            this.b.addAStore(this.y);
            if (this.r == -1) {
                this.r = this.b.acquireLabel();
            }
            List<Node> resumptionPoints = ((FunctionNode) this.e).getResumptionPoints();
            if (resumptionPoints != null) {
                F();
                this.E = this.b.addTableSwitch(0, resumptionPoints.size());
                z(-1, false, 0);
            }
        }
        if (this.h == null && this.e.getRegexpCount() != 0) {
            this.b.addALoad(this.v);
            this.b.addInvoke(184, this.c.mainClassName, "_reInit", "(Lorg/mozilla/javascript/Context;)V");
        }
        if (this.d.isGenerateObserverCount()) {
            j0();
        }
        if (this.D) {
            return;
        }
        if (!this.m) {
            ScriptNode scriptNode = this.e;
            boolean z = (scriptNode instanceof FunctionNode) && ((FunctionNode) scriptNode).getFunctionType() == 4;
            if (this.h != null) {
                this.b.addALoad(this.z);
                this.b.addALoad(this.t);
                this.b.addALoad(this.w);
                String str2 = z ? "createArrowFunctionActivation" : "createFunctionActivation";
                this.b.addPush(this.e.isInStrictMode());
                n(str2, "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Lorg/mozilla/javascript/Scriptable;");
                this.b.addAStore(this.t);
                this.b.addALoad(this.v);
                this.b.addALoad(this.t);
                n("enterActivationFunction", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V");
                str = "activation";
            } else {
                this.b.addALoad(this.z);
                this.b.addALoad(this.y);
                this.b.addALoad(this.v);
                this.b.addALoad(this.t);
                this.b.addPush(0);
                n("initScript", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V");
                str = "global";
            }
            this.q = this.b.acquireLabel();
            this.r = this.b.acquireLabel();
            this.b.markLabel(this.q);
            L();
            if (this.d.isGenerateDebugInfo()) {
                ClassFileWriter classFileWriter = this.b;
                classFileWriter.addVariableDescriptor(str, "Lorg/mozilla/javascript/Scriptable;", classFileWriter.getCurrentCodeOffset(), this.t);
            }
            OptFunctionNode optFunctionNode = this.h;
            if (optFunctionNode == null) {
                this.u = X();
                Codegen.pushUndefined(this.b);
                this.b.addAStore(this.u);
                int endLineno = this.e.getEndLineno();
                if (endLineno != -1) {
                    this.b.addLineNumberEntry((short) endLineno);
                    return;
                }
                return;
            }
            if (optFunctionNode.itsContainsCalls0) {
                this.A = X();
                this.b.add(178, "org/mozilla/javascript/ScriptRuntime", "emptyArgs", "[Ljava/lang/Object;");
                this.b.addAStore(this.A);
            }
            if (this.h.itsContainsCalls1) {
                this.B = X();
                this.b.addPush(1);
                this.b.add(189, "java/lang/Object");
                this.b.addAStore(this.B);
                return;
            }
            return;
        }
        int paramCount2 = this.e.getParamCount();
        if (paramCount2 > 0 && !this.o) {
            this.b.addALoad(this.w);
            this.b.add(ByteCode.ARRAYLENGTH);
            this.b.addPush(paramCount2);
            int iAcquireLabel2 = this.b.acquireLabel();
            this.b.add(162, iAcquireLabel2);
            this.b.addALoad(this.w);
            this.b.addPush(paramCount2);
            n("padArguments", "([Ljava/lang/Object;I)[Ljava/lang/Object;");
            this.b.addAStore(this.w);
            this.b.markLabel(iAcquireLabel2);
        }
        int paramCount3 = this.h.fnode.getParamCount();
        int paramAndVarCount = this.h.fnode.getParamAndVarCount();
        boolean[] paramAndVarConst = this.h.fnode.getParamAndVarConst();
        short s8 = -1;
        for (int i3 = 0; i3 != paramAndVarCount; i3++) {
            if (i3 < paramCount3) {
                if (this.o) {
                    sY = -1;
                } else {
                    sY = X();
                    this.b.addALoad(this.w);
                    this.b.addPush(i3);
                    this.b.add(50);
                    this.b.addAStore(sY);
                }
            } else if (this.h.isNumberVar(i3)) {
                sY = Z(paramAndVarConst[i3]);
                this.b.addPush(0.0d);
                this.b.addDStore(sY);
            } else {
                sY = Y(paramAndVarConst[i3]);
                if (s8 == -1) {
                    Codegen.pushUndefined(this.b);
                    s8 = sY;
                } else {
                    this.b.addALoad(s8);
                }
                this.b.addAStore(sY);
            }
            if (sY >= 0) {
                if (paramAndVarConst[i3]) {
                    this.b.addPush(0);
                    this.b.addIStore((this.h.isNumberVar(i3) ? (short) 2 : (short) 1) + sY);
                }
                this.n[i3] = sY;
            }
            if (this.d.isGenerateDebugInfo()) {
                String paramOrVarName = this.h.fnode.getParamOrVarName(i3);
                String str3 = this.h.isNumberVar(i3) ? "D" : "Ljava/lang/Object;";
                int currentCodeOffset = this.b.getCurrentCodeOffset();
                if (sY < 0) {
                    sY = this.n[i3];
                }
                this.b.addVariableDescriptor(paramOrVarName, str3, currentCodeOffset, sY);
            }
        }
    }

    public final boolean O(Node node) {
        int i = 0;
        for (int i2 = 0; i2 < this.j; i2++) {
            if (this.i[i2] != 0) {
                i++;
            }
        }
        if (i == 0) {
            ((FunctionNode) this.e).addLiveLocals(node, null);
            return false;
        }
        int i3 = this.F;
        if (i3 <= i) {
            i3 = i;
        }
        this.F = i3;
        int[] iArr = new int[i];
        int i4 = 0;
        for (int i5 = 0; i5 < this.j; i5++) {
            if (this.i[i5] != 0) {
                iArr[i4] = i5;
                i4++;
            }
        }
        ((FunctionNode) this.e).addLiveLocals(node, iArr);
        E();
        for (int i6 = 0; i6 < i; i6++) {
            this.b.add(89);
            this.b.addLoadConstant(i6);
            this.b.addALoad(iArr[i6]);
            this.b.add(83);
        }
        this.b.add(87);
        return true;
    }

    public final void P(int i) {
        this.b.addALoad(this.C);
        this.b.addLoadConstant(i);
        this.b.add(181, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState", "resumptionPoint", "I");
    }

    public final void Q() {
        this.b.addALoad(this.C);
        this.b.add(95);
        m("setGeneratorReturnValue", "(Ljava/lang/Object;Ljava/lang/Object;)V");
    }

    public final void R(Node node) {
        k0(node);
        int type = node.getType();
        Node firstChild = node.getFirstChild();
        if (type == 50) {
            B(firstChild, node);
            if (this.d.isGenerateObserverCount()) {
                f();
            }
            S();
            return;
        }
        if (type == 51) {
            if (this.d.isGenerateObserverCount()) {
                f();
            }
            this.b.addALoad(V(node));
            this.b.add(ByteCode.ATHROW);
            return;
        }
        if (type != 65) {
            if (type == 82) {
                K0((Jump) node, firstChild);
                return;
            }
            int i = 1;
            if (type == 110) {
                OptFunctionNode optFunctionNode = OptFunctionNode.get(this.e, node.getExistingIntProp(1));
                int functionType = optFunctionNode.fnode.getFunctionType();
                if (functionType == 3) {
                    q0(optFunctionNode, functionType);
                    return;
                } else {
                    if (functionType != 1) {
                        throw Codegen.badTree();
                    }
                    return;
                }
            }
            if (type == 115) {
                if (this.d.isGenerateObserverCount()) {
                    f();
                }
                J0((Jump) node, firstChild);
                return;
            }
            if (type != 124) {
                if (type == 126) {
                    if (this.D) {
                        if (this.d.isGenerateObserverCount()) {
                            j0();
                        }
                        this.b.setStackTop((short) 1);
                        short sX = X();
                        int iAcquireLabel = this.b.acquireLabel();
                        int iAcquireLabel2 = this.b.acquireLabel();
                        this.b.markLabel(iAcquireLabel);
                        J();
                        this.b.addAStore(sX);
                        while (firstChild != null) {
                            R(firstChild);
                            firstChild = firstChild.getNext();
                        }
                        this.b.addALoad(sX);
                        this.b.add(192, "java/lang/Integer");
                        I();
                        b bVar = (b) this.H.get(node);
                        int iAcquireLabel3 = this.b.acquireLabel();
                        bVar.b = iAcquireLabel3;
                        this.b.add(167, iAcquireLabel3);
                        this.b.setStackTop((short) 0);
                        i0(sX);
                        this.b.markLabel(iAcquireLabel2);
                        return;
                    }
                    return;
                }
                if (type == 142) {
                    boolean z = this.s;
                    this.s = true;
                    short sX2 = X();
                    if (this.D) {
                        this.b.add(1);
                        this.b.addAStore(sX2);
                    }
                    node.putIntProp(2, sX2);
                    while (firstChild != null) {
                        R(firstChild);
                        firstChild = firstChild.getNext();
                    }
                    i0(sX2);
                    node.removeProp(2);
                    this.s = z;
                    return;
                }
                if (type != 161) {
                    switch (type) {
                        case 2:
                            B(firstChild, node);
                            this.b.addALoad(this.v);
                            this.b.addALoad(this.t);
                            n("enterWith", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
                            this.b.addAStore(this.t);
                            c0(this.t);
                            return;
                        case 3:
                            this.b.addALoad(this.t);
                            n("leaveWith", "(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
                            this.b.addAStore(this.t);
                            q(this.t);
                            return;
                        case 4:
                            break;
                        default:
                            switch (type) {
                                case 57:
                                    this.b.setStackTop((short) 0);
                                    int iV = V(node);
                                    int existingIntProp = node.getExistingIntProp(14);
                                    String string = firstChild.getString();
                                    B(firstChild.getNext(), node);
                                    if (existingIntProp == 0) {
                                        this.b.add(1);
                                    } else {
                                        this.b.addALoad(iV);
                                    }
                                    this.b.addPush(string);
                                    this.b.addALoad(this.v);
                                    this.b.addALoad(this.t);
                                    n("newCatchScope", "(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
                                    this.b.addAStore(iV);
                                    return;
                                case 58:
                                case 59:
                                case 60:
                                case 61:
                                    B(firstChild, node);
                                    this.b.addALoad(this.v);
                                    this.b.addALoad(this.t);
                                    if (type == 58) {
                                        i = 0;
                                    } else if (type != 59) {
                                        i = type == 61 ? 6 : 2;
                                    }
                                    this.b.addPush(i);
                                    n("enumInit", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
                                    this.b.addAStore(V(node));
                                    return;
                                default:
                                    switch (type) {
                                        case 129:
                                        case 130:
                                        case 131:
                                        case 133:
                                        case 137:
                                            break;
                                        case 132:
                                            if (this.d.isGenerateObserverCount()) {
                                                f();
                                            }
                                            this.b.markLabel(b0(node));
                                            if (this.d.isGenerateObserverCount()) {
                                                j0();
                                                return;
                                            }
                                            return;
                                        case 134:
                                            if (firstChild.getType() == 56) {
                                                E0(firstChild, firstChild.getFirstChild(), false);
                                                return;
                                            }
                                            if (firstChild.getType() == 157) {
                                                A0(firstChild, firstChild.getFirstChild(), false);
                                                return;
                                            }
                                            if (firstChild.getType() == 73 || firstChild.getType() == 166) {
                                                T(firstChild, false);
                                                return;
                                            }
                                            B(firstChild, node);
                                            if (node.getIntProp(8, -1) != -1) {
                                                this.b.add(88);
                                                return;
                                            } else {
                                                this.b.add(87);
                                                return;
                                            }
                                        case 135:
                                            B(firstChild, node);
                                            if (this.u < 0) {
                                                this.u = X();
                                            }
                                            this.b.addAStore(this.u);
                                            return;
                                        case 136:
                                            break;
                                        default:
                                            throw Codegen.badTree();
                                    }
                                    break;
                            }
                        case 5:
                        case 6:
                        case 7:
                            if (this.d.isGenerateObserverCount()) {
                                f();
                            }
                            t0((Jump) node, type, firstChild);
                            return;
                    }
                } else {
                    return;
                }
            }
            if (this.d.isGenerateObserverCount()) {
                g(1);
            }
            while (firstChild != null) {
                R(firstChild);
                firstChild = firstChild.getNext();
            }
            return;
        }
        if (firstChild != null) {
            B(firstChild, node);
        } else if (type == 4) {
            Codegen.pushUndefined(this.b);
        } else {
            short s = this.u;
            if (s < 0) {
                throw Codegen.badTree();
            }
            this.b.addALoad(s);
        }
        if (this.D) {
            Q();
        }
        if (this.d.isGenerateObserverCount()) {
            f();
        }
        if (this.r == -1) {
            if (!this.m) {
                throw Codegen.badTree();
            }
            this.r = this.b.acquireLabel();
        }
        this.b.add(167, this.r);
    }

    public final void S() {
        this.b.add(187, "org/mozilla/javascript/JavaScriptException");
        this.b.add(90);
        this.b.add(95);
        this.b.addPush(this.e.getSourceName());
        this.b.addPush(this.l);
        this.b.addInvoke(183, "org/mozilla/javascript/JavaScriptException", MethodDecl.initName, "(Ljava/lang/Object;Ljava/lang/String;I)V");
        this.b.add(ByteCode.ATHROW);
    }

    public final void T(Node node, boolean z) {
        if (this.K.containsKey(node)) {
            if (z) {
                this.b.addALoad(this.t);
                this.b.addLoadConstant((String) this.K.get(node));
                this.b.addALoad(this.v);
                this.b.addALoad(this.t);
                n("getObjectPropNoWarn", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
                return;
            }
            return;
        }
        Node nodeS = s(node);
        if (nodeS != null) {
            T(nodeS, true);
            String str = "__nested__yield__" + this.J;
            this.J++;
            this.b.addALoad(this.t);
            this.b.add(95);
            this.b.addLoadConstant(str);
            this.b.add(95);
            this.b.addALoad(this.v);
            n("setObjectProp", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
            this.b.add(87);
            this.K.put(nodeS, str);
        }
        K(node, z);
    }

    public final short W(int i) {
        int i2;
        int[] iArr = this.i;
        if (i > 1) {
            i2 = this.j;
            loop0: while (true) {
                if (i2 + i > 1024) {
                    i2 = -1;
                    break;
                }
                int i3 = 0;
                while (true) {
                    if (i3 >= i) {
                        break loop0;
                    }
                    if (iArr[i2 + i3] != 0) {
                        break;
                    }
                    i3++;
                }
                i2 += i3 + 1;
            }
        } else {
            i2 = this.j;
        }
        if (i2 != -1) {
            iArr[i2] = 1;
            if (i > 1) {
                iArr[i2 + 1] = 1;
            }
            if (i > 2) {
                iArr[i2 + 2] = 1;
            }
            if (i2 != this.j) {
                return (short) i2;
            }
            for (int i4 = i + i2; i4 < 1024; i4++) {
                if (iArr[i4] == 0) {
                    short s = (short) i4;
                    this.j = s;
                    if (this.k < s) {
                        this.k = s;
                    }
                    return (short) i2;
                }
            }
        }
        throw Context.reportRuntimeError("Program too complex (out of locals)");
    }

    public final short X() {
        return W(1);
    }

    public final short Y(boolean z) {
        return W(z ? 2 : 1);
    }

    public final short Z(boolean z) {
        return W(z ? 3 : 2);
    }

    public final int a0(Node node) {
        return ((FunctionNode) this.e).getResumptionPoints().indexOf(node) + 1;
    }

    public final int b0(Node node) {
        int iLabelId = node.labelId();
        if (iLabelId != -1) {
            return iLabelId;
        }
        int iAcquireLabel = this.b.acquireLabel();
        node.labelId(iAcquireLabel);
        return iAcquireLabel;
    }

    public final void c() {
        m("wrapDouble", "(D)Ljava/lang/Double;");
    }

    public final void c0(short s) {
        int[] iArr = this.i;
        iArr[s] = iArr[s] + 1;
    }

    public final void d(Node node, int i) {
        this.b.add(i, b0(node));
    }

    public final void d0() {
        int paramAndVarCount;
        this.n = null;
        if (this.e.getType() == 110) {
            OptFunctionNode optFunctionNode = OptFunctionNode.get(this.e);
            this.h = optFunctionNode;
            boolean zRequiresActivation = optFunctionNode.fnode.requiresActivation();
            this.m = !zRequiresActivation;
            if (!zRequiresActivation && (paramAndVarCount = this.h.fnode.getParamAndVarCount()) != 0) {
                this.n = new short[paramAndVarCount];
            }
            boolean zIsTargetOfDirectCall = this.h.isTargetOfDirectCall();
            this.o = zIsTargetOfDirectCall;
            if (zIsTargetOfDirectCall && !this.m) {
                Codegen.badTree();
            }
        } else {
            this.h = null;
            this.m = false;
            this.o = false;
        }
        this.i = new int[1024];
        this.z = (short) 0;
        this.v = (short) 1;
        this.t = (short) 2;
        this.y = (short) 3;
        this.k = (short) 4;
        this.j = (short) 4;
        this.u = (short) -1;
        this.w = (short) -1;
        this.A = (short) -1;
        this.B = (short) -1;
        this.r = -1;
        this.q = -1;
        this.C = (short) -1;
    }

    public final void e(Node node) {
        b bVar = (b) this.H.get(node);
        this.b.addLoadConstant(bVar.a.size());
        d(node, 167);
        this.b.add(87);
        int iAcquireLabel = this.b.acquireLabel();
        this.b.markLabel(iAcquireLabel);
        bVar.a.add(Integer.valueOf(iAcquireLabel));
    }

    public final void e0(Node node) {
        int iAcquireLabel = this.b.acquireLabel();
        int iAcquireLabel2 = this.b.acquireLabel();
        this.b.markLabel(iAcquireLabel);
        f0(node, iAcquireLabel, iAcquireLabel2);
        this.b.markLabel(iAcquireLabel2);
    }

    public final void f() {
        g(Math.max(this.b.getCurrentCodeOffset() - this.g, 1));
    }

    public final void f0(Node node, int i, int i2) {
        Node nodeU = U(node);
        nodeU.resetTargets();
        this.a.e(nodeU, i);
        for (Node firstChild = nodeU.getFirstChild(); firstChild != null; firstChild = firstChild.getNext()) {
            R(firstChild);
        }
        this.a.d(nodeU, i2);
    }

    public final void g(int i) {
        this.b.addALoad(this.v);
        this.b.addPush(i);
        n("addInstructionCount", "(Lorg/mozilla/javascript/Context;I)V");
    }

    public final void h(int i, int i2) {
        this.b.markLabel(i2);
        int iAcquireLabel = this.b.acquireLabel();
        this.b.add(178, "java/lang/Boolean", "FALSE", "Ljava/lang/Boolean;");
        this.b.add(167, iAcquireLabel);
        this.b.markLabel(i);
        this.b.add(178, "java/lang/Boolean", "TRUE", "Ljava/lang/Boolean;");
        this.b.markLabel(iAcquireLabel);
        this.b.adjustStackTop(-1);
    }

    public final int h0(Node node) {
        if (node.getType() != 55 || !this.o || this.p) {
            return -1;
        }
        int varIndex = this.h.getVarIndex(node);
        if (this.h.isParameter(varIndex)) {
            return this.n[varIndex];
        }
        return -1;
    }

    public final void i(Object[] objArr, int i) {
        k(i);
        for (int i2 = 0; i2 != i; i2++) {
            this.b.add(89);
            this.b.addPush(i2);
            Object obj = objArr[i2];
            if (obj instanceof String) {
                this.b.addPush((String) obj);
            } else {
                this.b.addPush(((Integer) obj).intValue());
                n("wrapInt", "(I)Ljava/lang/Integer;");
            }
            this.b.add(83);
        }
    }

    public final void i0(short s) {
        if (s < this.j) {
            this.j = s;
        }
        this.i[s] = 0;
    }

    public final void j(Node node, Node node2, int i) {
        int i2 = 0;
        if (!this.D) {
            k(i);
            while (i2 != i) {
                this.b.add(89);
                this.b.addPush(i2);
                int type = node2.getType();
                if (type == 152 || type == 153 || type == 164) {
                    B(node2.getFirstChild(), node);
                } else {
                    B(node2, node);
                }
                this.b.add(83);
                node2 = node2.getNext();
                i2++;
            }
            return;
        }
        for (int i3 = 0; i3 != i; i3++) {
            int type2 = node2.getType();
            if (type2 == 152 || type2 == 153 || type2 == 164) {
                B(node2.getFirstChild(), node);
            } else {
                B(node2, node);
            }
            node2 = node2.getNext();
        }
        k(i);
        while (i2 != i) {
            this.b.add(90);
            this.b.add(95);
            this.b.addPush((i - i2) - 1);
            this.b.add(95);
            this.b.add(83);
            i2++;
        }
    }

    public final void j0() {
        this.g = this.b.getCurrentCodeOffset();
    }

    public final void k(int i) {
        if (i != 0) {
            this.b.addPush(i);
            this.b.add(189, "java/lang/Object");
            return;
        }
        short s = this.A;
        if (s >= 0) {
            this.b.addALoad(s);
        } else {
            this.b.add(178, "org/mozilla/javascript/ScriptRuntime", "emptyArgs", "[Ljava/lang/Object;");
        }
    }

    public final void k0(Node node) {
        int lineno = node.getLineno();
        this.l = lineno;
        if (lineno == -1) {
            return;
        }
        this.b.addLineNumberEntry((short) lineno);
    }

    public final void l() {
        n("toNumber", "(Ljava/lang/Object;)D");
    }

    public final boolean l0(int i) {
        return this.h.isParameter(i) && this.o && !this.p;
    }

    public final void m(String str, String str2) {
        this.b.addInvoke(184, "org/mozilla/javascript/optimizer/OptRuntime", str, str2);
    }

    public final void m0(Node node, int i, Node node2, Node node3) {
        if (node.getIntProp(8, -1) != -1) {
            B(node2, node);
            B(node2.getNext(), node);
            this.b.add(i);
            return;
        }
        boolean zG0 = g0(node3);
        B(node2, node);
        if (!g0(node2)) {
            l();
        }
        B(node2.getNext(), node);
        if (!g0(node2.getNext())) {
            l();
        }
        this.b.add(i);
        if (zG0) {
            return;
        }
        c();
    }

    public final void n(String str, String str2) {
        this.b.addInvoke(184, "org.mozilla.javascript.ScriptRuntime", str, str2);
    }

    public final void n0(Node node, Node node2, boolean z) {
        int i = 0;
        int i2 = 0;
        for (Node next = node2; next != null; next = next.getNext()) {
            i2++;
        }
        if (!z && ((i2 > 10 || this.b.getCurrentCodeOffset() > 30000) && !this.m && !this.D && !this.s)) {
            if (this.I == null) {
                this.I = new LinkedList();
            }
            this.I.add(node);
            String str = this.c.getBodyMethodName(this.e) + "_literal" + this.I.size();
            this.b.addALoad(this.z);
            this.b.addALoad(this.v);
            this.b.addALoad(this.t);
            this.b.addALoad(this.y);
            this.b.addALoad(this.w);
            this.b.addInvoke(182, this.c.mainClassName, str, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
            return;
        }
        if (this.D) {
            for (int i3 = 0; i3 != i2; i3++) {
                B(node2, node);
                node2 = node2.getNext();
            }
            k(i2);
            while (i != i2) {
                this.b.add(90);
                this.b.add(95);
                this.b.addPush((i2 - i) - 1);
                this.b.add(95);
                this.b.add(83);
                i++;
            }
        } else {
            k(i2);
            while (i != i2) {
                this.b.add(89);
                this.b.addPush(i);
                B(node2, node);
                this.b.add(83);
                node2 = node2.getNext();
                i++;
            }
        }
        int[] iArr = (int[]) node.getProp(11);
        if (iArr == null) {
            this.b.add(1);
            this.b.add(3);
        } else {
            this.b.addPush(OptRuntime.encodeIntArray(iArr));
            this.b.addPush(iArr.length);
        }
        this.b.addALoad(this.v);
        this.b.addALoad(this.t);
        m("newArrayLiteral", "([Ljava/lang/Object;Ljava/lang/String;ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
    }

    public final void o(int i) {
        this.b.addALoad(i);
        this.b.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
        int iAcquireLabel = this.b.acquireLabel();
        this.b.add(165, iAcquireLabel);
        short stackTop = this.b.getStackTop();
        this.b.addALoad(i);
        l();
        int iAcquireLabel2 = this.b.acquireLabel();
        this.b.add(167, iAcquireLabel2);
        this.b.markLabel(iAcquireLabel, stackTop);
        this.b.addDLoad(i + 1);
        this.b.markLabel(iAcquireLabel2);
    }

    public final void o0(Node node, int i, Node node2) {
        int intProp = node.getIntProp(8, -1);
        B(node2, node);
        if (i == 20) {
            n("toUint32", "(Ljava/lang/Object;)J");
            B(node2.getNext(), node);
            n("toInt32", "(Ljava/lang/Object;)I");
            this.b.addPush(31);
            this.b.add(126);
            this.b.add(125);
            this.b.add(138);
            c();
            return;
        }
        if (intProp == -1) {
            n("toInt32", "(Ljava/lang/Object;)I");
            B(node2.getNext(), node);
            n("toInt32", "(Ljava/lang/Object;)I");
        } else {
            n("toInt32", "(D)I");
            B(node2.getNext(), node);
            n("toInt32", "(D)I");
        }
        if (i == 18) {
            this.b.add(120);
        } else if (i != 19) {
            switch (i) {
                case 9:
                    this.b.add(128);
                    break;
                case 10:
                    this.b.add(130);
                    break;
                case 11:
                    this.b.add(126);
                    break;
                default:
                    throw Codegen.badTree();
            }
        } else {
            this.b.add(122);
        }
        this.b.add(135);
        if (intProp == -1) {
            c();
        }
    }

    public final void p(int i) {
        this.b.addALoad(i);
        this.b.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
        int iAcquireLabel = this.b.acquireLabel();
        this.b.add(165, iAcquireLabel);
        short stackTop = this.b.getStackTop();
        this.b.addALoad(i);
        int iAcquireLabel2 = this.b.acquireLabel();
        this.b.add(167, iAcquireLabel2);
        this.b.markLabel(iAcquireLabel, stackTop);
        this.b.addDLoad(i + 1);
        c();
        this.b.markLabel(iAcquireLabel2);
    }

    public final void p0(Node node, Node node2) {
        k0(node);
        B(node2, node);
        this.b.addALoad(this.t);
        n("enterDotQuery", "(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
        this.b.addAStore(this.t);
        this.b.add(1);
        int iAcquireLabel = this.b.acquireLabel();
        this.b.markLabel(iAcquireLabel);
        this.b.add(87);
        B(node2.getNext(), node);
        n("toBoolean", "(Ljava/lang/Object;)Z");
        this.b.addALoad(this.t);
        n("updateDotQuery", "(ZLorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        this.b.add(89);
        this.b.add(198, iAcquireLabel);
        this.b.addALoad(this.t);
        n("leaveDotQuery", "(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
        this.b.addAStore(this.t);
    }

    public final void q(short s) {
        int[] iArr = this.i;
        iArr[s] = iArr[s] - 1;
    }

    public final void q0(OptFunctionNode optFunctionNode, int i) {
        int index = this.c.getIndex(optFunctionNode.fnode);
        this.b.add(187, this.c.mainClassName);
        this.b.add(89);
        this.b.addALoad(this.t);
        this.b.addALoad(this.v);
        this.b.addPush(index);
        this.b.addInvoke(183, this.c.mainClassName, MethodDecl.initName, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V");
        if (i == 4) {
            this.b.addALoad(this.v);
            this.b.addALoad(this.t);
            this.b.addALoad(this.y);
            m("bindThis", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Function;");
        }
        if (i == 2 || i == 4) {
            return;
        }
        this.b.addPush(i);
        this.b.addALoad(this.t);
        this.b.addALoad(this.v);
        m("initFunction", "(Lorg/mozilla/javascript/NativeFunction;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)V");
    }

    public final void r0(Node node, Node node2) {
        B(node2, node);
        Node next = node2.getNext();
        B(next, node);
        if (node.getType() == 34) {
            this.b.addALoad(this.v);
            this.b.addALoad(this.t);
            n("getObjectPropNoWarn", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        } else if (node2.getType() == 43 && next.getType() == 41) {
            this.b.addALoad(this.v);
            n("getObjectProp", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
        } else {
            this.b.addALoad(this.v);
            this.b.addALoad(this.t);
            n("getObjectProp", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        }
    }

    public final Node s(Node node) {
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNext()) {
            if (firstChild.getType() == 73 || firstChild.getType() == 166) {
                return firstChild;
            }
            Node nodeS = s(firstChild);
            if (nodeS != null) {
                return nodeS;
            }
        }
        return null;
    }

    public final void s0(Node node) {
        if (!this.m) {
            Kit.codeBug();
        }
        int varIndex = this.h.getVarIndex(node);
        short s = this.n[varIndex];
        if (l0(varIndex)) {
            if (node.getIntProp(8, -1) != -1) {
                o(s);
                return;
            } else {
                p(s);
                return;
            }
        }
        if (this.h.isNumberVar(varIndex)) {
            this.b.addDLoad(s);
        } else {
            this.b.addALoad(s);
        }
    }

    public final void t(int i, int i2, int i3) {
        if (i2 == -1) {
            throw Codegen.badTree();
        }
        switch (i) {
            case 14:
                this.b.add(152);
                this.b.add(155, i2);
                break;
            case 15:
                this.b.add(152);
                this.b.add(158, i2);
                break;
            case 16:
                this.b.add(151);
                this.b.add(157, i2);
                break;
            case 17:
                this.b.add(151);
                this.b.add(156, i2);
                break;
            default:
                throw Codegen.badTree();
        }
        if (i3 != -1) {
            this.b.add(167, i3);
        }
    }

    public final void t0(Jump jump, int i, Node node) {
        Node node2 = jump.target;
        if (i != 6 && i != 7) {
            if (i != 136) {
                d(node2, 167);
                return;
            } else if (this.D) {
                e(node2);
                return;
            } else {
                e0(node2);
                return;
            }
        }
        if (node == null) {
            throw Codegen.badTree();
        }
        int iB0 = b0(node2);
        int iAcquireLabel = this.b.acquireLabel();
        if (i == 6) {
            H(node, jump, iB0, iAcquireLabel);
        } else {
            H(node, jump, iAcquireLabel, iB0);
        }
        this.b.markLabel(iAcquireLabel);
    }

    public final void u() {
        if (this.h == null || this.m) {
            throw Kit.codeBug();
        }
        this.b.addALoad(this.v);
        n("exitActivationFunction", "(Lorg/mozilla/javascript/Context;)V");
    }

    /* JADX WARN: Code duplicated, block: B:21:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c4 A[PHI: r1
      0x00c4: PHI (r1v10 java.lang.String) = (r1v9 java.lang.String), (r1v15 java.lang.String) binds: [B:23:0x00ad, B:27:0x00b7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:51:0x013a  */
    public final void u0(Node node, Node node2, int i, int i2) {
        int i3;
        int i4;
        int i5;
        Node node3 = node2;
        int i6 = i;
        int i7 = i2;
        if (i6 == -1 || i7 == -1) {
            throw Codegen.badTree();
        }
        short stackTop = this.b.getStackTop();
        int type = node.getType();
        Node next = node2.getNext();
        if (node2.getType() == 42 || next.getType() == 42) {
            if (node2.getType() == 42) {
                node3 = next;
            }
            B(node3, node);
            int i8 = 46;
            if (type == 46) {
                this.b.add(type == i8 ? 198 : 199, i6);
            } else if (type == 47) {
                i8 = 46;
                this.b.add(type == i8 ? 198 : 199, i6);
            } else {
                if (type != 12) {
                    if (type != 13) {
                        throw Codegen.badTree();
                    }
                    i7 = i6;
                    i6 = i7;
                }
                this.b.add(89);
                int iAcquireLabel = this.b.acquireLabel();
                this.b.add(199, iAcquireLabel);
                short stackTop2 = this.b.getStackTop();
                this.b.add(87);
                this.b.add(167, i6);
                this.b.markLabel(iAcquireLabel, stackTop2);
                Codegen.pushUndefined(this.b);
                this.b.add(165, i6);
            }
            this.b.add(167, i7);
        } else {
            int iH0 = h0(node3);
            if (iH0 == -1 || next.getType() != 150) {
                i3 = 153;
                i4 = 154;
            } else {
                Node firstChild = next.getFirstChild();
                if (firstChild.getType() == 40) {
                    this.b.addALoad(iH0);
                    this.b.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
                    int iAcquireLabel2 = this.b.acquireLabel();
                    this.b.add(166, iAcquireLabel2);
                    this.b.addDLoad(iH0 + 1);
                    this.b.addPush(firstChild.getDouble());
                    this.b.add(151);
                    if (type == 12) {
                        i3 = 153;
                        this.b.add(153, i6);
                        i4 = 154;
                    } else {
                        i3 = 153;
                        i4 = 154;
                        this.b.add(154, i6);
                    }
                    this.b.add(167, i7);
                    this.b.markLabel(iAcquireLabel2);
                } else {
                    i3 = 153;
                    i4 = 154;
                }
            }
            B(node3, node);
            B(next, node);
            String str = "eq";
            if (type == 12) {
                i5 = i4;
            } else {
                if (type != 13) {
                    str = "shallowEq";
                    if (type == 46) {
                        i5 = i4;
                    } else if (type != 47) {
                        throw Codegen.badTree();
                    }
                }
                i5 = i3;
            }
            n(str, "(Ljava/lang/Object;Ljava/lang/Object;)Z");
            this.b.add(i5, i6);
            this.b.add(167, i7);
        }
        if (stackTop != this.b.getStackTop()) {
            throw Codegen.badTree();
        }
    }

    public final void v(Node node, int i) {
        String str = this.c.getBodyMethodName(this.e) + "_literal" + i;
        d0();
        short s = this.j;
        short s2 = (short) (s + 1);
        this.j = s2;
        this.w = s;
        this.k = s2;
        this.b.startMethod(str, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;", (short) 2);
        n0(node, node.getFirstChild(), true);
        this.b.add(176);
        this.b.stopMethod((short) (this.k + 1));
    }

    public final void v0(Node node, Node node2, int i, int i2) {
        if (i == -1 || i2 == -1) {
            throw Codegen.badTree();
        }
        int type = node.getType();
        Node next = node2.getNext();
        if (type == 53 || type == 52) {
            B(node2, node);
            B(next, node);
            this.b.addALoad(this.v);
            n(type == 53 ? "instanceOf" : "in", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z");
            this.b.add(154, i);
            this.b.add(167, i2);
            return;
        }
        int intProp = node.getIntProp(8, -1);
        int iH0 = h0(node2);
        int iH1 = h0(next);
        if (intProp != -1) {
            if (intProp != 2) {
                B(node2, node);
            } else if (iH0 != -1) {
                o(iH0);
            } else {
                B(node2, node);
                l();
            }
            if (intProp != 1) {
                B(next, node);
            } else if (iH1 != -1) {
                o(iH1);
            } else {
                B(next, node);
                l();
            }
            t(type, i, i2);
            return;
        }
        if (iH0 == -1 || iH1 == -1) {
            B(node2, node);
            B(next, node);
        } else {
            short stackTop = this.b.getStackTop();
            int iAcquireLabel = this.b.acquireLabel();
            this.b.addALoad(iH0);
            this.b.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
            this.b.add(166, iAcquireLabel);
            this.b.addDLoad(iH0 + 1);
            o(iH1);
            t(type, i, i2);
            if (stackTop != this.b.getStackTop()) {
                throw Codegen.badTree();
            }
            this.b.markLabel(iAcquireLabel);
            int iAcquireLabel2 = this.b.acquireLabel();
            this.b.addALoad(iH1);
            this.b.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
            this.b.add(166, iAcquireLabel2);
            this.b.addALoad(iH0);
            l();
            this.b.addDLoad(iH1 + 1);
            t(type, i, i2);
            if (stackTop != this.b.getStackTop()) {
                throw Codegen.badTree();
            }
            this.b.markLabel(iAcquireLabel2);
            this.b.addALoad(iH0);
            this.b.addALoad(iH1);
        }
        if (type == 17 || type == 16) {
            this.b.add(95);
        }
        n((type == 14 || type == 16) ? "cmp_LT" : "cmp_LE", "(Ljava/lang/Object;Ljava/lang/Object;)Z");
        this.b.add(154, i);
        this.b.add(167, i2);
    }

    public void w() {
        this.D = Codegen.isGenerator(this.e);
        d0();
        if (this.D) {
            String str = "(" + this.c.mainClassSignature + "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;";
            this.b.startMethod(this.c.getBodyMethodName(this.e) + "_gen", str, (short) 10);
        } else {
            this.b.startMethod(this.c.getBodyMethodName(this.e), this.c.getBodyMethodSignature(this.e), (short) 10);
        }
        N();
        R(this.h != null ? this.e.getLastChild() : this.e);
        A();
        this.b.stopMethod((short) (this.k + 1));
        if (this.D) {
            D();
        }
        if (this.I != null) {
            for (int i = 0; i < this.I.size(); i++) {
                Node node = (Node) this.I.get(i);
                int type = node.getType();
                if (type == 66) {
                    v(node, i + 1);
                } else if (type != 67) {
                    Kit.codeBug(Token.typeToName(type));
                } else {
                    M(node, i + 1);
                }
            }
        }
    }

    public final void w0(Node node) {
        int existingIntProp = node.getExistingIntProp(13);
        Node firstChild = node.getFirstChild();
        int type = firstChild.getType();
        if (type == 33) {
            Node firstChild2 = firstChild.getFirstChild();
            B(firstChild2, node);
            B(firstChild2.getNext(), node);
            this.b.addALoad(this.v);
            this.b.addALoad(this.t);
            this.b.addPush(existingIntProp);
            n("propIncrDecr", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
            return;
        }
        if (type == 34) {
            throw Kit.codeBug();
        }
        if (type == 36) {
            Node firstChild3 = firstChild.getFirstChild();
            B(firstChild3, node);
            B(firstChild3.getNext(), node);
            this.b.addALoad(this.v);
            this.b.addALoad(this.t);
            this.b.addPush(existingIntProp);
            if (firstChild3.getNext().getIntProp(8, -1) != -1) {
                m("elemIncrDecr", "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
                return;
            } else {
                n("elemIncrDecr", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
                return;
            }
        }
        if (type == 39) {
            this.b.addALoad(this.t);
            this.b.addPush(firstChild.getString());
            this.b.addALoad(this.v);
            this.b.addPush(existingIntProp);
            n("nameIncrDecr", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;");
            return;
        }
        if (type != 55) {
            if (type != 68) {
                Codegen.badTree();
                return;
            }
            B(firstChild.getFirstChild(), node);
            this.b.addALoad(this.v);
            this.b.addALoad(this.t);
            this.b.addPush(existingIntProp);
            n("refIncrDecr", "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
            return;
        }
        if (!this.m) {
            Kit.codeBug();
        }
        boolean z = (existingIntProp & 2) != 0;
        int varIndex = this.h.getVarIndex(firstChild);
        short s = this.n[varIndex];
        if (this.h.fnode.getParamAndVarConst()[varIndex]) {
            if (node.getIntProp(8, -1) != -1) {
                this.b.addDLoad(s + (l0(varIndex) ? 1 : 0));
                if (z) {
                    return;
                }
                this.b.addPush(1.0d);
                if ((existingIntProp & 1) == 0) {
                    this.b.add(99);
                    return;
                } else {
                    this.b.add(103);
                    return;
                }
            }
            if (l0(varIndex)) {
                p(s);
            } else {
                this.b.addALoad(s);
            }
            if (z) {
                this.b.add(89);
                l();
                this.b.add(88);
                return;
            } else {
                l();
                this.b.addPush(1.0d);
                if ((existingIntProp & 1) == 0) {
                    this.b.add(99);
                } else {
                    this.b.add(103);
                }
                c();
                return;
            }
        }
        if (node.getIntProp(8, -1) != -1) {
            boolean zL0 = l0(varIndex);
            ClassFileWriter classFileWriter = this.b;
            int i = s + (zL0 ? 1 : 0);
            classFileWriter.addDLoad(i);
            if (z) {
                this.b.add(92);
            }
            this.b.addPush(1.0d);
            if ((existingIntProp & 1) == 0) {
                this.b.add(99);
            } else {
                this.b.add(103);
            }
            if (!z) {
                this.b.add(92);
            }
            this.b.addDStore(i);
            return;
        }
        if (l0(varIndex)) {
            p(s);
        } else {
            this.b.addALoad(s);
        }
        l();
        if (z) {
            this.b.add(92);
        }
        this.b.addPush(1.0d);
        if ((existingIntProp & 1) == 0) {
            this.b.add(99);
        } else {
            this.b.add(103);
        }
        c();
        if (!z) {
            this.b.add(89);
        }
        this.b.addAStore(s);
        if (z) {
            c();
        }
    }

    public final void x(Node node, Node node2, boolean z) {
        short s;
        int i = 0;
        for (Node next = node2; next != null; next = next.getNext()) {
            i++;
        }
        if (i != 1 || (s = this.B) < 0) {
            k(i);
        } else {
            this.b.addALoad(s);
        }
        for (int i2 = 0; i2 != i; i2++) {
            if (!this.D) {
                this.b.add(89);
                this.b.addPush(i2);
            }
            if (z) {
                int iH0 = h0(node2);
                if (iH0 >= 0) {
                    p(iH0);
                } else {
                    B(node2, node);
                    if (node2.getIntProp(8, -1) == 0) {
                        c();
                    }
                }
            } else {
                B(node2, node);
            }
            if (this.D) {
                short sX = X();
                this.b.addAStore(sX);
                this.b.add(192, "[Ljava/lang/Object;");
                this.b.add(89);
                this.b.addPush(i2);
                this.b.addALoad(sX);
                i0(sX);
            }
            this.b.add(83);
            node2 = node2.getNext();
        }
    }

    public final void x0(Node node, Node node2, boolean z) {
        Object[] objArr = (Object[]) node.getProp(12);
        int length = objArr.length;
        if (!z && ((length > 10 || this.b.getCurrentCodeOffset() > 30000) && !this.m && !this.D && !this.s)) {
            if (this.I == null) {
                this.I = new LinkedList();
            }
            this.I.add(node);
            String str = this.c.getBodyMethodName(this.e) + "_literal" + this.I.size();
            this.b.addALoad(this.z);
            this.b.addALoad(this.v);
            this.b.addALoad(this.t);
            this.b.addALoad(this.y);
            this.b.addALoad(this.w);
            this.b.addInvoke(182, this.c.mainClassName, str, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
            return;
        }
        if (this.D) {
            j(node, node2, length);
            i(objArr, length);
            this.b.add(95);
        } else {
            i(objArr, length);
            j(node, node2, length);
        }
        Node next = node2;
        for (int i = 0; i != length; i++) {
            int type = next.getType();
            if (type == 152 || type == 153) {
                this.b.addPush(length);
                this.b.add(188, 10);
                for (int i2 = 0; i2 != length; i2++) {
                    this.b.add(89);
                    this.b.addPush(i2);
                    int type2 = node2.getType();
                    if (type2 == 152) {
                        this.b.add(2);
                    } else if (type2 == 153) {
                        this.b.add(4);
                    } else {
                        this.b.add(3);
                    }
                    this.b.add(79);
                    node2 = node2.getNext();
                }
                this.b.addALoad(this.v);
                this.b.addALoad(this.t);
                n("newObjectLiteral", "([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
            }
            next = next.getNext();
        }
        this.b.add(1);
        this.b.addALoad(this.v);
        this.b.addALoad(this.t);
        n("newObjectLiteral", "([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
    }

    public final void y(int i, short s, int i2, int i3, int i4) {
        if (i4 == 0) {
            i4 = this.b.acquireLabel();
        }
        this.b.markHandler(i4);
        this.b.addAStore(i3);
        this.b.addALoad(s);
        this.b.addAStore(this.t);
        this.b.add(167, i2);
    }

    public final void y0(Node node, OptFunctionNode optFunctionNode, int i, Node node2) {
        short sX;
        Node next = node2.getNext();
        String str = this.c.mainClassName;
        if (i == 30) {
            B(node2, node);
            sX = 0;
        } else {
            C(node2, node);
            sX = X();
            this.b.addAStore(sX);
        }
        int iAcquireLabel = this.b.acquireLabel();
        int iAcquireLabel2 = this.b.acquireLabel();
        this.b.add(89);
        this.b.add(193, str);
        this.b.add(153, iAcquireLabel2);
        this.b.add(192, str);
        this.b.add(89);
        this.b.add(180, str, "_id", "I");
        this.b.addPush(this.c.getIndex(optFunctionNode.fnode));
        this.b.add(160, iAcquireLabel2);
        this.b.addALoad(this.v);
        this.b.addALoad(this.t);
        if (i == 30) {
            this.b.add(1);
        } else {
            this.b.addALoad(sX);
        }
        for (Node next2 = next; next2 != null; next2 = next2.getNext()) {
            int iH0 = h0(next2);
            if (iH0 >= 0) {
                this.b.addALoad(iH0);
                this.b.addDLoad(iH0 + 1);
            } else if (next2.getIntProp(8, -1) == 0) {
                this.b.add(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
                B(next2, node);
            } else {
                B(next2, node);
                this.b.addPush(0.0d);
            }
        }
        this.b.add(178, "org/mozilla/javascript/ScriptRuntime", "emptyArgs", "[Ljava/lang/Object;");
        ClassFileWriter classFileWriter = this.b;
        Codegen codegen = this.c;
        classFileWriter.addInvoke(184, codegen.mainClassName, i == 30 ? codegen.getDirectCtorName(optFunctionNode.fnode) : codegen.getBodyMethodName(optFunctionNode.fnode), this.c.getBodyMethodSignature(optFunctionNode.fnode));
        this.b.add(167, iAcquireLabel);
        this.b.markLabel(iAcquireLabel2);
        this.b.addALoad(this.v);
        this.b.addALoad(this.t);
        if (i != 30) {
            this.b.addALoad(sX);
            i0(sX);
        }
        x(node, next, true);
        if (i == 30) {
            n("newObject", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
        } else {
            this.b.addInvoke(185, "org/mozilla/javascript/Callable", NotificationCompat.CATEGORY_CALL, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;");
        }
        this.b.markLabel(iAcquireLabel);
    }

    public final void z(int i, boolean z, int i2) {
        int iAcquireLabel = this.b.acquireLabel();
        int iAcquireLabel2 = this.b.acquireLabel();
        this.b.markLabel(iAcquireLabel);
        this.b.addALoad(this.w);
        S();
        this.b.markLabel(iAcquireLabel2);
        this.b.addALoad(this.w);
        this.b.add(192, "java/lang/Throwable");
        this.b.add(ByteCode.ATHROW);
        if (i != -1) {
            this.b.markLabel(i);
        }
        if (!z) {
            this.b.markTableSwitchCase(this.E, i2);
        }
        this.b.addILoad(this.x);
        this.b.addLoadConstant(2);
        this.b.add(159, iAcquireLabel2);
        this.b.addILoad(this.x);
        this.b.addLoadConstant(1);
        this.b.add(159, iAcquireLabel);
    }

    public final void z0(Node node, Node node2) {
        String string = node.getFirstChild().getString();
        while (node2 != null) {
            B(node2, node);
            node2 = node2.getNext();
        }
        this.b.addALoad(this.v);
        this.b.addPush(string);
        n("setConst", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;");
    }
}
