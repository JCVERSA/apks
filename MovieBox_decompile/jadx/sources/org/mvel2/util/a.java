package org.mvel2.util;

import org.mvel2.ast.ASTNode;
import org.mvel2.ast.EndOfStatement;
import org.mvel2.ast.OperatorNode;

public class a {

    private ASTNode f68872a;

    private a f68873b;

    private a f68874c;

    public a(ASTNode aSTNode) {
        this.f68872a = aSTNode;
    }

    public static a b(ASTIterator aSTIterator) {
        ASTLinkedList aSTLinkedList = new ASTLinkedList(aSTIterator.firstNode());
        a aVar = new a(aSTLinkedList.nextNode());
        while (aSTLinkedList.hasMoreNodes()) {
            ASTNode aSTNodeNextNode = aSTLinkedList.nextNode();
            if (!(aSTNodeNextNode instanceof EndOfStatement)) {
                aVar = aVar.a(aSTNodeNextNode);
            } else if (aSTLinkedList.hasMoreNodes()) {
                aVar = new a(aSTLinkedList.nextNode());
            }
        }
        return aVar;
    }

    private int c(ASTNode aSTNode, ASTNode aSTNode2) {
        boolean z10 = aSTNode instanceof OperatorNode;
        if (!z10 && !(aSTNode2 instanceof OperatorNode)) {
            return 0;
        }
        if (!z10 || !(aSTNode2 instanceof OperatorNode)) {
            return z10 ? -1 : 1;
        }
        int[] iArr = org.mvel2.f.f68813a;
        return iArr[((OperatorNode) aSTNode).getOperator().intValue()] - iArr[((OperatorNode) aSTNode2).getOperator().intValue()];
    }

    public a a(ASTNode aSTNode) {
        if (c(this.f68872a, aSTNode) >= 0) {
            a aVar = new a(aSTNode);
            aVar.f68873b = this;
            return aVar;
        }
        if (this.f68873b == null) {
            throw new RuntimeException("Missing left node");
        }
        a aVar2 = this.f68874c;
        if (aVar2 == null) {
            this.f68874c = new a(aSTNode);
        } else {
            this.f68874c = aVar2.a(aSTNode);
        }
        return this;
    }

    public Class d(boolean z10) {
        ASTNode aSTNode = this.f68872a;
        if (!(aSTNode instanceof OperatorNode)) {
            return aSTNode.getEgressType();
        }
        a aVar = this.f68873b;
        if (aVar == null || this.f68874c == null) {
            throw new RuntimeException("Malformed expression");
        }
        Class clsD = aVar.d(z10);
        Class clsD2 = this.f68874c.d(z10);
        int iIntValue = ((OperatorNode) this.f68872a).getOperator().intValue();
        if (iIntValue != 0) {
            if (iIntValue != 1 && iIntValue != 2 && iIntValue != 3) {
                if (iIntValue == 4) {
                    if (!z10 || d.b(clsD, clsD2)) {
                        return Integer.class;
                    }
                    throw new RuntimeException("Associative operation requires compatible types. Found " + clsD + " and " + clsD2);
                }
                if (iIntValue == 21 || iIntValue == 22) {
                    if (z10) {
                        if (clsD != Boolean.class && clsD != Boolean.TYPE) {
                            throw new RuntimeException("Left side of logical operation is not of type boolean. Found " + clsD);
                        }
                        if (clsD2 != Boolean.class && clsD2 != Boolean.TYPE) {
                            throw new RuntimeException("Right side of logical operation is not of type boolean. Found " + clsD2);
                        }
                    }
                    return Boolean.class;
                }
                switch (iIntValue) {
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                        if (!z10 || d.a(clsD, clsD2)) {
                            return Boolean.class;
                        }
                        throw new RuntimeException("Comparison operation requires compatible types. Found " + clsD + " and " + clsD2);
                    case 18:
                    case 19:
                        if (!z10 || d.b(clsD, clsD2)) {
                            return Boolean.class;
                        }
                        throw new RuntimeException("Comparison operation requires compatible types. Found " + clsD + " and " + clsD2);
                    default:
                        switch (iIntValue) {
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                                return Boolean.class;
                            case NOTIFICATION_REDIRECT_VALUE:
                                if (!z10 || clsD == Boolean.class || clsD == Boolean.TYPE) {
                                    return clsD2;
                                }
                                throw new RuntimeException("Condition of ternary operator is not of type boolean. Found " + clsD);
                            case 30:
                                if (!z10 || d.b(clsD, clsD2)) {
                                    return clsD;
                                }
                                throw new RuntimeException("Associative operation requires compatible types. Found " + clsD + " and " + clsD2);
                            default:
                                return this.f68872a.getEgressType();
                        }
                }
            }
        } else if (clsD.equals(String.class) || clsD2.equals(String.class)) {
            return String.class;
        }
        if (!z10 || d.b(clsD, clsD2)) {
            return Double.class;
        }
        throw new RuntimeException("Associative operation requires compatible types. Found " + clsD + " and " + clsD2);
    }
}
