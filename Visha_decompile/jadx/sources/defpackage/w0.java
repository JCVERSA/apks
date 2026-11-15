package defpackage;

import java.math.BigInteger;

public abstract class w0 {
    public static void a(String str, boolean z, p1 p1Var, StringBuffer stringBuffer) {
        StringBuilder sb;
        String string;
        p1 p1VarC;
        String string2;
        BigInteger bigIntegerY;
        StringBuilder sb2;
        String str2;
        String strE;
        String strZ;
        StringBuilder sb3;
        int length;
        String str3;
        String str4;
        String str5;
        String strD = u0a.d();
        if (!(p1Var instanceof h1)) {
            int i = 0;
            if (p1Var instanceof s1) {
                stringBuffer.append(str);
                if (p1Var instanceof l40) {
                    str5 = "BER Sequence";
                } else {
                    str5 = p1Var instanceof aq1 ? "DER Sequence" : "Sequence";
                }
                stringBuffer.append(str5);
                stringBuffer.append(strD);
                s1 s1Var = (s1) p1Var;
                String str6 = str + "    ";
                int size = s1Var.size();
                while (i < size) {
                    a(str6, z, s1Var.A(i).j(), stringBuffer);
                    i++;
                }
                return;
            }
            if (p1Var instanceof t1) {
                stringBuffer.append(str);
                if (p1Var instanceof n40) {
                    str4 = "BER Set";
                } else {
                    str4 = p1Var instanceof bq1 ? "DER Set" : "Set";
                }
                stringBuffer.append(str4);
                stringBuffer.append(strD);
                t1 t1Var = (t1) p1Var;
                String str7 = str + "    ";
                int size2 = t1Var.size();
                while (i < size2) {
                    a(str7, z, t1Var.z(i).j(), stringBuffer);
                    i++;
                }
                return;
            }
            if (p1Var instanceof y1) {
                stringBuffer.append(str);
                if (p1Var instanceof p40) {
                    str3 = "BER Tagged ";
                } else {
                    str3 = p1Var instanceof dq1 ? "DER Tagged " : "Tagged ";
                }
                stringBuffer.append(str3);
                y1 y1Var = (y1) p1Var;
                stringBuffer.append(f2.h(y1Var));
                if (!y1Var.N()) {
                    stringBuffer.append(" IMPLICIT ");
                }
                stringBuffer.append(strD);
                string = str + "    ";
                p1VarC = y1Var.B().j();
            } else {
                if (!(p1Var instanceof m1)) {
                    if (!(p1Var instanceof l1)) {
                        if (p1Var instanceof r1) {
                            sb = new StringBuilder();
                            sb.append(str);
                            sb.append("RelativeOID(");
                            strZ = ((r1) p1Var).z();
                        } else {
                            if (p1Var instanceof u0) {
                                sb = new StringBuilder();
                                sb.append(str);
                                sb.append("Boolean(");
                                sb.append(((u0) p1Var).A());
                            } else {
                                if (p1Var instanceof g1) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("Integer(");
                                    bigIntegerY = ((g1) p1Var).A();
                                } else if (p1Var instanceof s0) {
                                    s0 s0Var = (s0) p1Var;
                                    byte[] bArrX = s0Var.x();
                                    int i2 = s0Var.i();
                                    if (s0Var instanceof np1) {
                                        sb2 = new StringBuilder();
                                        sb2.append(str);
                                        str2 = "DER Bit String[";
                                    } else if (s0Var instanceof sq1) {
                                        sb2 = new StringBuilder();
                                        sb2.append(str);
                                        str2 = "DL Bit String[";
                                    } else {
                                        sb2 = new StringBuilder();
                                        sb2.append(str);
                                        str2 = "BER Bit String[";
                                    }
                                    sb2.append(str2);
                                    sb2.append(bArrX.length);
                                    sb2.append(", ");
                                    sb2.append(i2);
                                    sb2.append("] ");
                                    stringBuffer.append(sb2.toString());
                                    if (z) {
                                        strE = e(str, bArrX);
                                    }
                                } else {
                                    if (p1Var instanceof e1) {
                                        sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append("IA5String(");
                                        string2 = ((e1) p1Var).getString();
                                    } else if (p1Var instanceof b2) {
                                        sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append("UTF8String(");
                                        string2 = ((b2) p1Var).getString();
                                    } else if (p1Var instanceof i1) {
                                        sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append("NumericString(");
                                        string2 = ((i1) p1Var).getString();
                                    } else if (p1Var instanceof q1) {
                                        sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append("PrintableString(");
                                        string2 = ((q1) p1Var).getString();
                                    } else if (p1Var instanceof h2) {
                                        sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append("VisibleString(");
                                        string2 = ((h2) p1Var).getString();
                                    } else if (p1Var instanceof r0) {
                                        sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append("BMPString(");
                                        string2 = ((r0) p1Var).getString();
                                    } else if (p1Var instanceof w1) {
                                        sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append("T61String(");
                                        string2 = ((w1) p1Var).getString();
                                    } else if (p1Var instanceof d1) {
                                        sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append("GraphicString(");
                                        string2 = ((d1) p1Var).getString();
                                    } else if (p1Var instanceof g2) {
                                        sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append("VideotexString(");
                                        string2 = ((g2) p1Var).getString();
                                    } else if (p1Var instanceof a2) {
                                        sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append("UTCTime(");
                                        string2 = ((a2) p1Var).A();
                                    } else if (p1Var instanceof c1) {
                                        sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append("GeneralizedTime(");
                                        string2 = ((c1) p1Var).C();
                                    } else {
                                        if (p1Var instanceof z0) {
                                            sb = new StringBuilder();
                                            sb.append(str);
                                            sb.append("DER Enumerated(");
                                            bigIntegerY = ((z0) p1Var).y();
                                        } else if (p1Var instanceof k1) {
                                            sb = new StringBuilder();
                                            sb.append(str);
                                            sb.append("ObjectDescriptor(");
                                            string2 = ((k1) p1Var).x().getString();
                                        } else if (p1Var instanceof a1) {
                                            a1 a1Var = (a1) p1Var;
                                            stringBuffer.append(str + "External " + strD);
                                            StringBuilder sb4 = new StringBuilder();
                                            sb4.append(str);
                                            sb4.append("    ");
                                            string = sb4.toString();
                                            if (a1Var.A() != null) {
                                                stringBuffer.append(string + "Direct Reference: " + a1Var.A().B() + strD);
                                            }
                                            if (a1Var.E() != null) {
                                                stringBuffer.append(string + "Indirect Reference: " + a1Var.E().toString() + strD);
                                            }
                                            if (a1Var.z() != null) {
                                                a(string, z, a1Var.z(), stringBuffer);
                                            }
                                            stringBuffer.append(string + "Encoding: " + a1Var.B() + strD);
                                            p1VarC = a1Var.C();
                                        } else {
                                            sb = new StringBuilder();
                                            sb.append(str);
                                            sb.append(p1Var.toString());
                                        }
                                        sb.append(strD);
                                        strE = sb.toString();
                                    }
                                    sb.append(string2);
                                    sb.append(") ");
                                    sb.append(strD);
                                    strE = sb.toString();
                                }
                                sb.append(bigIntegerY);
                            }
                            sb.append(")");
                            sb.append(strD);
                            strE = sb.toString();
                        }
                        stringBuffer.append(strE);
                        return;
                    }
                    sb = new StringBuilder();
                    sb.append(str);
                    sb.append("ObjectIdentifier(");
                    strZ = ((l1) p1Var).B();
                    sb.append(strZ);
                    sb.append(")");
                    sb.append(strD);
                    strE = sb.toString();
                    stringBuffer.append(strE);
                    return;
                }
                m1 m1Var = (m1) p1Var;
                if (p1Var instanceof j40) {
                    sb3 = new StringBuilder();
                    sb3.append(str);
                    sb3.append("BER Constructed Octet String[");
                    length = m1Var.z().length;
                } else {
                    sb3 = new StringBuilder();
                    sb3.append(str);
                    sb3.append("DER Octet String[");
                    length = m1Var.z().length;
                }
                sb3.append(length);
                sb3.append("] ");
                stringBuffer.append(sb3.toString());
                if (z) {
                    strE = e(str, m1Var.z());
                    stringBuffer.append(strE);
                    return;
                }
            }
            a(string, z, p1VarC, stringBuffer);
            return;
        }
        stringBuffer.append(str);
        stringBuffer.append("NULL");
        stringBuffer.append(strD);
    }

    public static String b(byte[] bArr, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = i; i3 != i + i2; i3++) {
            byte b = bArr[i3];
            if (b >= 32 && b <= 126) {
                stringBuffer.append((char) b);
            }
        }
        return stringBuffer.toString();
    }

    public static String c(Object obj) {
        return d(obj, false);
    }

    public static String d(Object obj, boolean z) {
        p1 p1VarJ;
        if (obj instanceof p1) {
            p1VarJ = (p1) obj;
        } else {
            if (!(obj instanceof x0)) {
                return "unknown object type " + obj.toString();
            }
            p1VarJ = ((x0) obj).j();
        }
        StringBuffer stringBuffer = new StringBuffer();
        a("", z, p1VarJ, stringBuffer);
        return stringBuffer.toString();
    }

    public static String e(String str, byte[] bArr) {
        String strB;
        String strD = u0a.d();
        StringBuffer stringBuffer = new StringBuffer();
        String str2 = str + "    ";
        stringBuffer.append(strD);
        for (int i = 0; i < bArr.length; i += 32) {
            int length = bArr.length - i;
            stringBuffer.append(str2);
            if (length > 32) {
                stringBuffer.append(u0a.b(jp4.e(bArr, i, 32)));
                stringBuffer.append("    ");
                strB = b(bArr, i, 32);
            } else {
                stringBuffer.append(u0a.b(jp4.e(bArr, i, bArr.length - i)));
                for (int length2 = bArr.length - i; length2 != 32; length2++) {
                    stringBuffer.append("  ");
                }
                stringBuffer.append("    ");
                strB = b(bArr, i, bArr.length - i);
            }
            stringBuffer.append(strB);
            stringBuffer.append(strD);
        }
        return stringBuffer.toString();
    }
}
