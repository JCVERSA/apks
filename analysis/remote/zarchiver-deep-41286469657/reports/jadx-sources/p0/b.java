package p0;

import android.os.Build;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import v0.h;

public final class b extends a {
    /* JADX WARN: Code duplicated, block: B:23:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:70:0x0165  */
    public static int c(o0.a aVar, boolean z2, int i2, boolean z3, String str, String str2) {
        String str3;
        byte b2;
        int iJAskOverwrite;
        boolean z4;
        String string;
        if (!a.b()) {
            if (str != null && str2 != null) {
                if (z2) {
                    string = "mv " + (Build.VERSION.SDK_INT < 21 ? "" : "-f ") + "'" + str + "' '" + str2 + "'";
                } else if (Build.VERSION.SDK_INT < 17) {
                    StringBuilder sb = new StringBuilder("cat '");
                    sb.append(str.replace("'", "'\\''"));
                    sb.append("' > '");
                    sb.append((str2 + "/" + a0.c.y(str)).replace("'", "'\\''"));
                    sb.append("'");
                    string = sb.toString();
                } else {
                    string = "cp -Rf '" + str.replace("'", "'\\''") + "' '" + str2.replace("'", "'\\''") + "'";
                }
                if (aVar.b(string)) {
                    aVar.k(false);
                    z4 = aVar.f1294h == 0;
                }
            }
            return z4 ? 0 : -1;
        }
        int i3 = i2;
        boolean zK = a0.c.K(i3, 17);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(a.a());
        if (z2) {
            sb2.append(zK ? " mv -f" : " mv -i");
        } else {
            sb2.append(zK ? " cp -Rf" : " cp -Ri");
        }
        if (z3) {
            sb2.append('d');
        }
        sb2.append('p');
        sb2.append(" '");
        sb2.append(str.replace("'", "'\\''"));
        sb2.append("' '");
        sb2.append(str2.replace("'", "'\\''"));
        sb2.append("'");
        if (!aVar.b(sb2.toString())) {
            return -1;
        }
        while (true) {
            try {
                String strK = aVar.k(true);
                if (strK == null) {
                    break;
                }
                if (!strK.isEmpty() && strK.charAt(0) == '~') {
                    String[] strArrH = h.h(strK, '\t');
                    if (strArrH.length >= 2 && (str3 = strArrH[1]) != null) {
                        int iHashCode = str3.hashCode();
                        if (iHashCode != 2094) {
                            if (iHashCode != 2560) {
                                if (iHashCode == 2564 && str3.equals("PT")) {
                                    b2 = 0;
                                } else {
                                    b2 = -1;
                                }
                            } else if (str3.equals("PP")) {
                                b2 = 1;
                            } else {
                                b2 = -1;
                            }
                        } else if (str3.equals("AO")) {
                            b2 = 2;
                        } else {
                            b2 = -1;
                        }
                        if (b2 == 0) {
                            C2JBridge.jSetProcessText(aVar.f1287a, strArrH[2]);
                        } else if (b2 == 1) {
                            C2JBridge.jSetProcessPercent(aVar.f1287a, a0.c.i0(0, strArrH[2]));
                        } else if (b2 == 2 && strArrH.length >= 7) {
                            if (i3 == 0) {
                                try {
                                    iJAskOverwrite = C2JBridge.jAskOverwrite(aVar.f1287a, strArrH[6], a0.c.j0(0L, strArrH[2]), a0.c.i0(0, strArrH[3]), strArrH[6], a0.c.j0(0L, strArrH[4]), a0.c.i0(0, strArrH[5]));
                                } catch (Exception unused) {
                                    iJAskOverwrite = 8;
                                }
                            } else {
                                iJAskOverwrite = i3;
                            }
                            String str4 = "$";
                            if ((iJAskOverwrite & 1) != 0) {
                                str4 = "$Y";
                            }
                            if ((iJAskOverwrite & 2) != 0) {
                                str4 = str4 + 'N';
                            }
                            if ((iJAskOverwrite & 8) != 0) {
                                str4 = str4 + 'C';
                                i3 = -2;
                            }
                            if ((iJAskOverwrite & 4) != 0) {
                                str4 = str4 + 'R';
                            }
                            if ((iJAskOverwrite & 16) != 0) {
                                str4 = str4 + 'A';
                                i3 = iJAskOverwrite | i3;
                            }
                            aVar.m(str4);
                        }
                    }
                }
            } catch (Exception unused2) {
            }
        }
        if (aVar.f1294h == 0) {
            return i3;
        }
        return -1;
    }
}
