package p0;

import android.os.Build;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import v0.h;

public final class d extends p0.a {

    public static class a {

        public String f1323a;

        public long f1324b;

        public long f1325c;

        public int f1326d;

        public String f1327e;

        public String f1328f;

        public boolean f1329g;

        public boolean f1330h;

        public String f1331i;
    }

    public static int c(String str) {
        try {
            int i2 = 4;
            int i3 = str.charAt(1) == 'r' ? 4 : 0;
            if (str.charAt(2) == 'w') {
                i3 += 2;
            }
            if (str.charAt(3) == 'x') {
                i3++;
            }
            int i4 = (i3 * 100) + 0;
            int i5 = str.charAt(4) == 'r' ? 4 : 0;
            if (str.charAt(5) == 'w') {
                i5 += 2;
            }
            if (str.charAt(6) == 'x') {
                i5++;
            }
            int i6 = (i5 * 10) + i4;
            if (str.charAt(7) != 'r') {
                i2 = 0;
            }
            if (str.charAt(8) == 'w') {
                i2 += 2;
            }
            if (str.charAt(9) == 'x') {
                i2++;
            }
            return i6 + i2;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static boolean d(o0.a aVar, ArrayList arrayList, String str, int i2, boolean z2) {
        if (!p0.a.b()) {
            return f(aVar, arrayList, str, i2, z2);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(p0.a.a());
        sb.append(" ls -l");
        if ((i2 & 1) == 1) {
            sb.append("d");
        }
        if ((i2 & 2) == 2) {
            sb.append("L");
        }
        if ((i2 & 4) == 4) {
            sb.append("A");
        }
        sb.append(" '");
        if ((i2 & 16) == 16) {
            sb.append(str);
        } else {
            sb.append(str.replace("'", "'\\''"));
        }
        sb.append("'");
        if (!aVar.b(sb.toString())) {
            return false;
        }
        while (true) {
            String strK = aVar.k(true);
            if (strK == null) {
                break;
            }
            try {
                String[] strArrH = h.h(strK, '\t');
                if (strArrH.length >= 6) {
                    String str2 = strArrH[0];
                    if (str2 != null && str2.length() >= 10 && strArrH[5] != null) {
                        a aVar2 = new a();
                        aVar2.f1329g = strArrH[0].charAt(0) == 'd';
                        boolean z3 = strArrH[0].charAt(0) == 'l';
                        aVar2.f1330h = z3;
                        if (aVar2.f1329g || z3) {
                            aVar2.f1324b = 0L;
                        } else {
                            try {
                                aVar2.f1324b = a0.c.j0(0L, strArrH[3]);
                            } catch (Exception unused) {
                            }
                        }
                        aVar2.f1325c = a0.c.j0(0L, strArrH[4]) * 1000;
                        aVar2.f1323a = strArrH[5];
                        if (z2) {
                            aVar2.f1326d = c(strArrH[0]);
                            aVar2.f1327e = strArrH[1];
                            aVar2.f1328f = strArrH[2];
                        }
                        if (!aVar2.f1330h || strArrH.length <= 6) {
                            aVar2.f1331i = null;
                        } else {
                            aVar2.f1331i = strArrH[6].substring(2);
                            aVar2.f1329g = strArrH[6].charAt(0) == 'd';
                        }
                        try {
                            arrayList.add(aVar2);
                        } catch (Exception unused2) {
                        }
                    }
                }
            } catch (Exception unused3) {
            }
        }
        return aVar.f1294h == 0;
    }

    public static boolean e(o0.a aVar, ArrayList arrayList, String str, String[] strArr, int i2, boolean z2) {
        String strD = a0.c.d(str.replace("'", "'\\''"));
        StringBuilder sb = new StringBuilder();
        boolean z3 = true;
        for (String str2 : strArr) {
            if (z3) {
                z3 = false;
            } else {
                sb.append("' '");
            }
            sb.append(strD);
            sb.append(str2.replace("'", "'\\''"));
        }
        if (!d(aVar, arrayList, sb.toString(), i2 | 1 | 16, z2)) {
            return false;
        }
        int length = strD.length();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            a aVar2 = (a) it.next();
            if (aVar2.f1323a.length() > length) {
                aVar2.f1323a = aVar2.f1323a.substring(length);
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:75:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ff A[Catch: Exception -> 0x01ab, TryCatch #1 {Exception -> 0x01ab, blocks: (B:81:0x0106, B:84:0x012d, B:85:0x0131, B:100:0x018b, B:102:0x018f, B:104:0x0197, B:76:0x00fb, B:78:0x00ff, B:80:0x0104), top: B:142:0x0106 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0102 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x0104 A[Catch: Exception -> 0x01ab, TryCatch #1 {Exception -> 0x01ab, blocks: (B:81:0x0106, B:84:0x012d, B:85:0x0131, B:100:0x018b, B:102:0x018f, B:104:0x0197, B:76:0x00fb, B:78:0x00ff, B:80:0x0104), top: B:142:0x0106 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0134 A[Catch: Exception -> 0x00f4, TRY_ENTER, TryCatch #5 {Exception -> 0x00f4, blocks: (B:70:0x00ea, B:87:0x0134, B:89:0x0138, B:91:0x013c, B:92:0x0157, B:94:0x0161, B:95:0x0168, B:97:0x016c, B:98:0x0185), top: B:150:0x00ea }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0138 A[Catch: Exception -> 0x00f4, TryCatch #5 {Exception -> 0x00f4, blocks: (B:70:0x00ea, B:87:0x0134, B:89:0x0138, B:91:0x013c, B:92:0x0157, B:94:0x0161, B:95:0x0168, B:97:0x016c, B:98:0x0185), top: B:150:0x00ea }] */
    /* JADX WARN: Code duplicated, block: B:91:0x013c A[Catch: Exception -> 0x00f4, TryCatch #5 {Exception -> 0x00f4, blocks: (B:70:0x00ea, B:87:0x0134, B:89:0x0138, B:91:0x013c, B:92:0x0157, B:94:0x0161, B:95:0x0168, B:97:0x016c, B:98:0x0185), top: B:150:0x00ea }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0157 A[Catch: Exception -> 0x00f4, TryCatch #5 {Exception -> 0x00f4, blocks: (B:70:0x00ea, B:87:0x0134, B:89:0x0138, B:91:0x013c, B:92:0x0157, B:94:0x0161, B:95:0x0168, B:97:0x016c, B:98:0x0185), top: B:150:0x00ea }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0161 A[Catch: Exception -> 0x00f4, TryCatch #5 {Exception -> 0x00f4, blocks: (B:70:0x00ea, B:87:0x0134, B:89:0x0138, B:91:0x013c, B:92:0x0157, B:94:0x0161, B:95:0x0168, B:97:0x016c, B:98:0x0185), top: B:150:0x00ea }] */
    /* JADX WARN: Code duplicated, block: B:95:0x0168 A[Catch: Exception -> 0x00f4, TryCatch #5 {Exception -> 0x00f4, blocks: (B:70:0x00ea, B:87:0x0134, B:89:0x0138, B:91:0x013c, B:92:0x0157, B:94:0x0161, B:95:0x0168, B:97:0x016c, B:98:0x0185), top: B:150:0x00ea }] */
    /* JADX WARN: Code duplicated, block: B:97:0x016c A[Catch: Exception -> 0x00f4, TryCatch #5 {Exception -> 0x00f4, blocks: (B:70:0x00ea, B:87:0x0134, B:89:0x0138, B:91:0x013c, B:92:0x0157, B:94:0x0161, B:95:0x0168, B:97:0x016c, B:98:0x0185), top: B:150:0x00ea }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0185 A[Catch: Exception -> 0x00f4, TRY_LEAVE, TryCatch #5 {Exception -> 0x00f4, blocks: (B:70:0x00ea, B:87:0x0134, B:89:0x0138, B:91:0x013c, B:92:0x0157, B:94:0x0161, B:95:0x0168, B:97:0x016c, B:98:0x0185), top: B:150:0x00ea }] */
    /* JADX WARN: Instruction removed from duplicated block: B:91:0x013c, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:97:0x016c, please report this as an issue */
    public static boolean f(o0.a aVar, ArrayList arrayList, String str, int i2, boolean z2) {
        boolean z3;
        String str2;
        String str3;
        int i3;
        String str4;
        char cCharAt;
        int i4;
        String str5;
        StringBuilder sb = new StringBuilder("ls -l");
        char c2 = 'd';
        if ((i2 & 1) == 1) {
            sb.append('d');
        } else if (Build.VERSION.SDK_INT >= 26) {
            sb.append('H');
        }
        int i5 = Build.VERSION.SDK_INT;
        int i6 = 2;
        if (i5 >= 23 && (i2 & 2) == 2) {
            sb.append('L');
        }
        if ((i2 & 4) == 4) {
            sb.append(i5 >= 28 ? 'A' : 'a');
        }
        sb.append(" '");
        sb.append(str.replace("'", "'\\''"));
        sb.append("'");
        if (!aVar.b(sb.toString())) {
            return false;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.US);
        if (i5 <= 23) {
            z3 = false;
            i6 = 1;
        } else {
            z3 = true;
        }
        while (true) {
            String strK = aVar.k(true);
            if (strK == null) {
                break;
            }
            try {
                String[] strArrH = h.h(strK, ' ');
                if (strArrH.length >= 6 && (str4 = strArrH[0]) != null && str4.length() >= 10 && (cCharAt = strArrH[0].charAt(0)) != '/') {
                    boolean z4 = cCharAt == 'b' || cCharAt == 'c';
                    a aVar2 = new a();
                    aVar2.f1329g = cCharAt == c2;
                    aVar2.f1330h = cCharAt == 'l';
                    if (z2) {
                        try {
                            aVar2.f1326d = c(strArrH[0]);
                        } catch (Exception unused) {
                            i3 = i6;
                        }
                    }
                    int i7 = i6 + 1;
                    aVar2.f1327e = strArrH[i6];
                    int i8 = i7 + 1;
                    aVar2.f1328f = strArrH[i7];
                    if (aVar2.f1329g) {
                        i3 = i6;
                        aVar2.f1324b = 0L;
                        if (z3) {
                            i8++;
                        } else if (z4) {
                            i8 += 2;
                        }
                        aVar2.f1325c = 0L;
                        aVar2.f1325c = simpleDateFormat.parse(strArrH[i8] + ' ' + strArrH[i8 + 1]).getTime();
                        i4 = i8 + 2;
                        aVar2.f1323a = null;
                        aVar2.f1331i = null;
                        while (i4 < strArrH.length) {
                            if (aVar2.f1330h) {
                                if (aVar2.f1331i != null) {
                                    aVar2.f1331i += " " + strArrH[i4];
                                } else if ("->".equals(strArrH[i4])) {
                                    i4++;
                                    aVar2.f1331i = strArrH[i4];
                                } else if (aVar2.f1323a != null) {
                                    aVar2.f1323a += ' ' + strArrH[i4];
                                } else {
                                    aVar2.f1323a = strArrH[i4];
                                }
                            } else if (aVar2.f1323a != null) {
                                aVar2.f1323a += ' ' + strArrH[i4];
                            } else {
                                aVar2.f1323a = strArrH[i4];
                            }
                            i4++;
                        }
                        str5 = aVar2.f1323a;
                        if (str5 == null) {
                        }
                    } else {
                        try {
                            if (aVar2.f1330h || z4) {
                                i3 = i6;
                                aVar2.f1324b = 0L;
                                if (z3) {
                                    i8++;
                                } else if (z4) {
                                    i8 += 2;
                                }
                            } else {
                                int i9 = i8 + 1;
                                i3 = i6;
                                try {
                                    aVar2.f1324b = a0.c.j0(0L, strArrH[i8]);
                                    i8 = i9;
                                } catch (Exception unused2) {
                                }
                            }
                            try {
                                aVar2.f1325c = 0L;
                                try {
                                    aVar2.f1325c = simpleDateFormat.parse(strArrH[i8] + ' ' + strArrH[i8 + 1]).getTime();
                                } catch (Exception unused3) {
                                }
                                i4 = i8 + 2;
                                aVar2.f1323a = null;
                                aVar2.f1331i = null;
                                while (i4 < strArrH.length) {
                                    if (aVar2.f1330h) {
                                        if (aVar2.f1323a != null) {
                                            aVar2.f1323a += ' ' + strArrH[i4];
                                        } else {
                                            aVar2.f1323a = strArrH[i4];
                                        }
                                    } else if (aVar2.f1331i != null) {
                                        aVar2.f1331i += " " + strArrH[i4];
                                    } else if ("->".equals(strArrH[i4])) {
                                        i4++;
                                        aVar2.f1331i = strArrH[i4];
                                    } else if (aVar2.f1323a != null) {
                                        aVar2.f1323a += ' ' + strArrH[i4];
                                    } else {
                                        aVar2.f1323a = strArrH[i4];
                                    }
                                    i4++;
                                }
                                str5 = aVar2.f1323a;
                                if (str5 == null && !".".equals(str5) && !"..".equals(aVar2.f1323a)) {
                                    try {
                                        arrayList.add(aVar2);
                                    } catch (Exception unused4) {
                                    }
                                }
                            } catch (Exception unused5) {
                            }
                        } catch (Exception unused6) {
                            i3 = i6;
                        }
                    }
                } else {
                    i3 = i6;
                }
            } catch (Exception unused7) {
                i3 = i6;
            }
            i6 = i3;
            c2 = 'd';
        }
        if (aVar.f1294h != 0) {
            return false;
        }
        if ((i2 & 8) == 8) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                a aVar3 = (a) it.next();
                if (aVar3.f1330h && (str2 = aVar3.f1331i) != null) {
                    if (str2.startsWith("/")) {
                        str3 = aVar3.f1331i;
                    } else {
                        str3 = str + '/' + aVar3.f1331i;
                    }
                    arrayList2.clear();
                    f(aVar, arrayList2, str3, 7, false);
                    if (arrayList2.size() == 1) {
                        aVar3.f1329g = ((a) arrayList2.get(0)).f1329g;
                        aVar3.f1324b = ((a) arrayList2.get(0)).f1324b;
                    } else if (arrayList2.size() > 1) {
                        aVar3.f1329g = true;
                    }
                }
            }
        }
        return true;
    }
}
