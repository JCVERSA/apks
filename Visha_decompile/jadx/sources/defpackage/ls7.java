package defpackage;

import org.mozilla.javascript.Node;
import org.mozilla.javascript.ObjArray;
import org.mozilla.javascript.ast.ScriptNode;
import org.mozilla.javascript.optimizer.OptFunctionNode;

public class ls7 {
    public boolean a;
    public OptFunctionNode b;
    public boolean c;

    public static void a(Node node, ObjArray objArray) {
        int type = node.getType();
        if (type != 130 && type != 142 && type != 133 && type != 110) {
            objArray.add(node);
            return;
        }
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNext()) {
            a(firstChild, objArray);
        }
    }

    public final boolean b(Node node) {
        if (!this.a || node.getType() != 55) {
            return false;
        }
        if (!this.b.isParameter(this.b.getVarIndex(node))) {
            return false;
        }
        node.removeProp(8);
        return true;
    }

    public final void c(Node node) {
        if (this.a && node.getType() == 55) {
            if (this.b.isParameter(this.b.getVarIndex(node))) {
                this.c = true;
            }
        }
    }

    public void d(ScriptNode scriptNode) {
        int functionCount = scriptNode.getFunctionCount();
        for (int i = 0; i != functionCount; i++) {
            e(OptFunctionNode.get(scriptNode, i));
        }
    }

    public final void e(OptFunctionNode optFunctionNode) {
        if (optFunctionNode.fnode.requiresActivation()) {
            return;
        }
        this.a = optFunctionNode.isTargetOfDirectCall();
        this.b = optFunctionNode;
        ObjArray objArray = new ObjArray();
        a(optFunctionNode.fnode, objArray);
        int size = objArray.size();
        Node[] nodeArr = new Node[size];
        objArray.toArray(nodeArr);
        pf0.l(optFunctionNode, nodeArr);
        if (optFunctionNode.fnode.requiresActivation()) {
            return;
        }
        this.c = false;
        for (int i = 0; i < size; i++) {
            g(nodeArr[i], 1);
        }
        optFunctionNode.setParameterNumberContext(this.c);
    }

    public final void f(Node node, Node node2) {
        while (node2 != null) {
            Node next = node2.getNext();
            if (g(node2, 0) == 1 && !b(node2)) {
                node.removeChild(node2);
                Node node3 = new Node(150, node2);
                if (next == null) {
                    node.addChildToBack(node3);
                } else {
                    node.addChildBefore(node3, next);
                }
            }
            node2 = next;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0186  */
    /* JADX WARN: Code duplicated, block: B:82:0x0125 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:84:0x013d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x013f  */
    /* JADX WARN: Code duplicated, block: B:87:0x0143  */
    /* JADX WARN: Code duplicated, block: B:89:0x0149  */
    /* JADX WARN: Code duplicated, block: B:91:0x0158 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x015a  */
    /* JADX WARN: Code duplicated, block: B:94:0x0160  */
    /* JADX WARN: Code duplicated, block: B:96:0x016f  */
    /* JADX WARN: Code duplicated, block: B:98:0x0175  */
    public final int g(Node node, int i) {
        Node firstChild;
        Node next;
        int iG;
        int iG2;
        int type = node.getType();
        if (type == 40) {
            node.putIntProp(8, 0);
            return 1;
        }
        if (type == 134) {
            if (g(node.getFirstChild(), 1) == 1) {
                node.putIntProp(8, 0);
            }
            return 0;
        }
        if (type != 141) {
            if (type != 157) {
                if (type == 55) {
                    int varIndex = this.b.getVarIndex(node);
                    if (this.a && this.b.isParameter(varIndex) && i == 1) {
                        node.putIntProp(8, 0);
                        return 1;
                    }
                    if (!this.b.isNumberVar(varIndex)) {
                        return 0;
                    }
                    node.putIntProp(8, 0);
                    return 1;
                }
                if (type != 56) {
                    if (type == 107 || type == 108) {
                        Node firstChild2 = node.getFirstChild();
                        int iG3 = g(firstChild2, 1);
                        if (firstChild2.getType() != 55) {
                            if (firstChild2.getType() == 36 || firstChild2.getType() == 33) {
                                return iG3;
                            }
                            return 0;
                        }
                        if (iG3 != 1 || b(firstChild2)) {
                            return 0;
                        }
                        node.putIntProp(8, 0);
                        c(firstChild2);
                        return 1;
                    }
                    switch (type) {
                        default:
                            switch (type) {
                                case 14:
                                case 15:
                                case 16:
                                case 17:
                                    Node firstChild3 = node.getFirstChild();
                                    Node next2 = firstChild3.getNext();
                                    int iG4 = g(firstChild3, 1);
                                    int iG5 = g(next2, 1);
                                    c(firstChild3);
                                    c(next2);
                                    if (b(firstChild3)) {
                                        if (!b(next2) && iG5 == 1) {
                                            node.putIntProp(8, 2);
                                        }
                                    } else if (b(next2)) {
                                        if (iG4 == 1) {
                                            node.putIntProp(8, 1);
                                        }
                                    } else if (iG4 == 1) {
                                        if (iG5 == 1) {
                                            node.putIntProp(8, 0);
                                        } else {
                                            node.putIntProp(8, 1);
                                        }
                                    } else if (iG5 == 1) {
                                        node.putIntProp(8, 2);
                                    }
                                    return 0;
                                default:
                                    switch (type) {
                                        case 21:
                                            Node firstChild4 = node.getFirstChild();
                                            Node next3 = firstChild4.getNext();
                                            int iG6 = g(firstChild4, 1);
                                            int iG7 = g(next3, 1);
                                            if (b(firstChild4)) {
                                                if (!b(next3) && iG7 == 1) {
                                                    node.putIntProp(8, 2);
                                                }
                                            } else if (b(next3)) {
                                                if (iG6 == 1) {
                                                    node.putIntProp(8, 1);
                                                }
                                            } else if (iG6 == 1) {
                                                if (iG7 == 1) {
                                                    node.putIntProp(8, 0);
                                                    return 1;
                                                }
                                                node.putIntProp(8, 1);
                                            } else if (iG7 == 1) {
                                                node.putIntProp(8, 2);
                                            }
                                            return 0;
                                        case 22:
                                        case 23:
                                        case 24:
                                        case 25:
                                            break;
                                        default:
                                            switch (type) {
                                                case 36:
                                                    Node firstChild5 = node.getFirstChild();
                                                    Node next4 = firstChild5.getNext();
                                                    if (g(firstChild5, 1) == 1 && !b(firstChild5)) {
                                                        node.removeChild(firstChild5);
                                                        node.addChildToFront(new Node(150, firstChild5));
                                                    }
                                                    if (g(next4, 1) == 1 && !b(next4)) {
                                                        node.putIntProp(8, 2);
                                                    }
                                                    return 0;
                                                case 37:
                                                    break;
                                                case 38:
                                                    Node firstChild6 = node.getFirstChild();
                                                    f(firstChild6, firstChild6.getFirstChild());
                                                    Node next5 = firstChild6.getNext();
                                                    if (((OptFunctionNode) node.getProp(9)) != null) {
                                                        while (next5 != null) {
                                                            if (g(next5, 1) == 1) {
                                                                c(next5);
                                                            }
                                                            next5 = next5.getNext();
                                                        }
                                                    } else {
                                                        f(node, next5);
                                                    }
                                                    return 0;
                                                default:
                                                    f(node, node.getFirstChild());
                                                    return 0;
                                            }
                                            break;
                                    }
                                case 18:
                                case 19:
                                    firstChild = node.getFirstChild();
                                    next = firstChild.getNext();
                                    iG = g(firstChild, 1);
                                    iG2 = g(next, 1);
                                    c(firstChild);
                                    c(next);
                                    if (iG == 1) {
                                        if (iG2 == 1) {
                                            node.putIntProp(8, 0);
                                            return 1;
                                        }
                                        if (!b(next)) {
                                            node.removeChild(next);
                                            node.addChildToBack(new Node(151, next));
                                            node.putIntProp(8, 0);
                                        }
                                        return 1;
                                    }
                                    if (iG2 == 1) {
                                        if (!b(firstChild)) {
                                            node.removeChild(firstChild);
                                            node.addChildToFront(new Node(151, firstChild));
                                            node.putIntProp(8, 0);
                                        }
                                        return 1;
                                    }
                                    if (!b(firstChild)) {
                                        node.removeChild(firstChild);
                                        node.addChildToFront(new Node(151, firstChild));
                                    }
                                    if (!b(next)) {
                                        node.removeChild(next);
                                        node.addChildToBack(new Node(151, next));
                                    }
                                    node.putIntProp(8, 0);
                                    return 1;
                            }
                        case 9:
                        case 10:
                        case 11:
                            firstChild = node.getFirstChild();
                            next = firstChild.getNext();
                            iG = g(firstChild, 1);
                            iG2 = g(next, 1);
                            c(firstChild);
                            c(next);
                            if (iG == 1) {
                                if (iG2 == 1) {
                                    node.putIntProp(8, 0);
                                    return 1;
                                }
                                if (!b(next)) {
                                    node.removeChild(next);
                                    node.addChildToBack(new Node(151, next));
                                    node.putIntProp(8, 0);
                                }
                                return 1;
                            }
                            if (iG2 == 1) {
                                if (!b(firstChild)) {
                                    node.removeChild(firstChild);
                                    node.addChildToFront(new Node(151, firstChild));
                                    node.putIntProp(8, 0);
                                }
                                return 1;
                            }
                            if (!b(firstChild)) {
                                node.removeChild(firstChild);
                                node.addChildToFront(new Node(151, firstChild));
                            }
                            if (!b(next)) {
                                node.removeChild(next);
                                node.addChildToBack(new Node(151, next));
                            }
                            node.putIntProp(8, 0);
                            return 1;
                    }
                }
            }
            Node next6 = node.getFirstChild().getNext();
            int iG8 = g(next6, 1);
            int varIndex2 = this.b.getVarIndex(node);
            if (this.a && this.b.isParameter(varIndex2)) {
                if (iG8 != 1) {
                    return iG8;
                }
                if (b(next6)) {
                    c(next6);
                    return 0;
                }
                node.putIntProp(8, 0);
                return 1;
            }
            if (!this.b.isNumberVar(varIndex2)) {
                if (iG8 == 1 && !b(next6)) {
                    node.removeChild(next6);
                    node.addChildToBack(new Node(150, next6));
                }
                return 0;
            }
            if (iG8 != 1) {
                node.removeChild(next6);
                node.addChildToBack(new Node(151, next6));
            }
            node.putIntProp(8, 0);
            c(next6);
            return 1;
        }
        Node firstChild7 = node.getFirstChild();
        Node next7 = firstChild7.getNext();
        Node next8 = next7.getNext();
        if (g(firstChild7, 1) == 1 && !b(firstChild7)) {
            node.removeChild(firstChild7);
            node.addChildToFront(new Node(150, firstChild7));
        }
        if (g(next7, 1) == 1 && !b(next7)) {
            node.putIntProp(8, 1);
        }
        if (g(next8, 1) == 1 && !b(next8)) {
            node.removeChild(next8);
            node.addChildToBack(new Node(150, next8));
        }
        return 0;
    }
}
