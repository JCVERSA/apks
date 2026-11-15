package com.alibaba.fastjson.asm;

public class j {

    public static final j f17512e = new j(0, null, 1443168256, 1);

    public static final j f17513f = new j(1, null, 1509950721, 1);

    public static final j f17514g = new j(2, null, 1124075009, 1);

    public static final j f17515h = new j(3, null, 1107297537, 1);

    public static final j f17516i = new j(4, null, 1392510721, 1);

    public static final j f17517j = new j(5, null, 1224736769, 1);

    public static final j f17518k = new j(6, null, 1174536705, 1);

    public static final j f17519l = new j(7, null, 1241579778, 1);

    public static final j f17520m = new j(8, null, 1141048066, 1);

    protected final int f17521a;

    private final char[] f17522b;

    private final int f17523c;

    private final int f17524d;

    private j(int i10, char[] cArr, int i11, int i12) {
        this.f17521a = i10;
        this.f17522b = cArr;
        this.f17523c = i11;
        this.f17524d = i12;
    }

    static j[] a(String str) {
        char[] charArray = str.toCharArray();
        int i10 = 1;
        int i11 = 1;
        int i12 = 0;
        while (true) {
            int i13 = i11 + 1;
            char c10 = charArray[i11];
            if (c10 == ')') {
                break;
            }
            if (c10 == 'L') {
                while (true) {
                    i11 = i13 + 1;
                    if (charArray[i13] == ';') {
                        break;
                    }
                    i13 = i11;
                }
                i12++;
            } else {
                if (c10 != '[') {
                    i12++;
                }
                i11 = i13;
            }
        }
        j[] jVarArr = new j[i12];
        int i14 = 0;
        while (charArray[i10] != ')') {
            j jVarH = h(charArray, i10);
            jVarArr[i14] = jVarH;
            i10 += jVarH.f17524d + (jVarH.f17521a == 10 ? 2 : 0);
            i14++;
        }
        return jVarArr;
    }

    public static int b(String str) {
        int i10;
        int i11 = 1;
        int i12 = 1;
        int i13 = 1;
        while (true) {
            i10 = i12 + 1;
            char cCharAt = str.charAt(i12);
            if (cCharAt == ')') {
                break;
            }
            if (cCharAt == 'L') {
                while (true) {
                    i12 = i10 + 1;
                    if (str.charAt(i10) == ';') {
                        break;
                    }
                    i10 = i12;
                }
                i13++;
            } else {
                i13 = (cCharAt == 'D' || cCharAt == 'J') ? i13 + 2 : i13 + 1;
                i12 = i10;
            }
        }
        char cCharAt2 = str.charAt(i10);
        int i14 = i13 << 2;
        if (cCharAt2 == 'V') {
            i11 = 0;
        } else if (cCharAt2 == 'D' || cCharAt2 == 'J') {
            i11 = 2;
        }
        return i14 | i11;
    }

    private int e() {
        int i10 = 1;
        while (this.f17522b[this.f17523c + i10] == '[') {
            i10++;
        }
        return i10;
    }

    public static j g(String str) {
        return h(str.toCharArray(), 0);
    }

    private static j h(char[] cArr, int i10) {
        char c10;
        char c11 = cArr[i10];
        if (c11 == 'F') {
            return f17518k;
        }
        if (c11 == 'S') {
            return f17516i;
        }
        if (c11 == 'V') {
            return f17512e;
        }
        if (c11 == 'I') {
            return f17517j;
        }
        if (c11 == 'J') {
            return f17519l;
        }
        if (c11 == 'Z') {
            return f17513f;
        }
        if (c11 != '[') {
            switch (c11) {
                case 'B':
                    return f17515h;
                case 'C':
                    return f17514g;
                case 'D':
                    return f17520m;
                default:
                    int i11 = 1;
                    while (cArr[i10 + i11] != ';') {
                        i11++;
                    }
                    return new j(10, cArr, i10 + 1, i11 - 1);
            }
        }
        int i12 = 1;
        while (true) {
            c10 = cArr[i10 + i12];
            if (c10 != '[') {
                break;
            }
            i12++;
        }
        if (c10 == 'L') {
            do {
                i12++;
            } while (cArr[i10 + i12] != ';');
        }
        return new j(9, cArr, i10, i12 + 1);
    }

    protected String c() {
        switch (this.f17521a) {
            case 0:
                return "void";
            case 1:
                return "boolean";
            case 2:
                return "char";
            case 3:
                return "byte";
            case 4:
                return "short";
            case 5:
                return "int";
            case 6:
                return "float";
            case 7:
                return "long";
            case 8:
                return "double";
            case 9:
                StringBuilder sb2 = new StringBuilder(h(this.f17522b, this.f17523c + e()).c());
                for (int iE = e(); iE > 0; iE--) {
                    sb2.append("[]");
                }
                return sb2.toString();
            default:
                return new String(this.f17522b, this.f17523c, this.f17524d).replace('/', '.');
        }
    }

    String d() {
        return new String(this.f17522b, this.f17523c, this.f17524d);
    }

    public String f() {
        return new String(this.f17522b, this.f17523c, this.f17524d);
    }
}
