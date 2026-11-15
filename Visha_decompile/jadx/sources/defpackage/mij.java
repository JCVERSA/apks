package defpackage;

public abstract class mij {
    public static void a(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static int b(int i, int i2, String str) {
        String strA;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strA = hpj.a("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 15);
                sb.append("negative size: ");
                sb.append(i2);
                throw new IllegalArgumentException(sb.toString());
            }
            strA = hpj.a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strA);
    }

    public static int c(int i, int i2, String str) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(e(i, i2, "index"));
        }
        return i;
    }

    public static void d(int i, int i2, int i3) {
        String strE;
        if (i < 0 || i2 < i || i2 > i3) {
            if (i < 0 || i > i3) {
                strE = e(i, i3, "start index");
            } else {
                strE = (i2 < 0 || i2 > i3) ? e(i2, i3, "end index") : hpj.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            }
            throw new IndexOutOfBoundsException(strE);
        }
    }

    public static String e(int i, int i2, String str) {
        if (i < 0) {
            return hpj.a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return hpj.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 15);
        sb.append("negative size: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }
}
