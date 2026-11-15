package androidx.core.text;

import android.text.SpannableStringBuilder;
import java.util.Locale;

public final class a {

    static final s f7927d;

    private static final String f7928e;

    private static final String f7929f;

    static final a f7930g;

    static final a f7931h;

    private final boolean f7932a;

    private final int f7933b;

    private final s f7934c;

    public static final class C0061a {

        private boolean f7935a;

        private int f7936b;

        private s f7937c;

        public C0061a() {
            c(a.g(Locale.getDefault()));
        }

        private static a b(boolean z10) {
            return z10 ? a.f7931h : a.f7930g;
        }

        private void c(boolean z10) {
            this.f7935a = z10;
            this.f7937c = a.f7927d;
            this.f7936b = 2;
        }

        public a a() {
            return (this.f7936b == 2 && this.f7937c == a.f7927d) ? b(this.f7935a) : new a(this.f7935a, this.f7936b, this.f7937c);
        }
    }

    private static class b {

        private static final byte[] f7938f = new byte[1792];

        private final CharSequence f7939a;

        private final boolean f7940b;

        private final int f7941c;

        private int f7942d;

        private char f7943e;

        static {
            for (int i10 = 0; i10 < 1792; i10++) {
                f7938f[i10] = Character.getDirectionality(i10);
            }
        }

        b(CharSequence charSequence, boolean z10) {
            this.f7939a = charSequence;
            this.f7940b = z10;
            this.f7941c = charSequence.length();
        }

        private static byte c(char c10) {
            return c10 < 1792 ? f7938f[c10] : Character.getDirectionality(c10);
        }

        private byte f() {
            char cCharAt;
            int i10 = this.f7942d;
            do {
                int i11 = this.f7942d;
                if (i11 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f7939a;
                int i12 = i11 - 1;
                this.f7942d = i12;
                cCharAt = charSequence.charAt(i12);
                this.f7943e = cCharAt;
                if (cCharAt == '&') {
                    return (byte) 12;
                }
            } while (cCharAt != ';');
            this.f7942d = i10;
            this.f7943e = ';';
            return (byte) 13;
        }

        private byte g() {
            char cCharAt;
            do {
                int i10 = this.f7942d;
                if (i10 >= this.f7941c) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.f7939a;
                this.f7942d = i10 + 1;
                cCharAt = charSequence.charAt(i10);
                this.f7943e = cCharAt;
            } while (cCharAt != ';');
            return (byte) 12;
        }

        private byte h() {
            char cCharAt;
            int i10 = this.f7942d;
            while (true) {
                int i11 = this.f7942d;
                if (i11 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f7939a;
                int i12 = i11 - 1;
                this.f7942d = i12;
                char cCharAt2 = charSequence.charAt(i12);
                this.f7943e = cCharAt2;
                if (cCharAt2 == '<') {
                    return (byte) 12;
                }
                if (cCharAt2 == '>') {
                    break;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    do {
                        int i13 = this.f7942d;
                        if (i13 <= 0) {
                            break;
                        }
                        CharSequence charSequence2 = this.f7939a;
                        int i14 = i13 - 1;
                        this.f7942d = i14;
                        cCharAt = charSequence2.charAt(i14);
                        this.f7943e = cCharAt;
                    } while (cCharAt != cCharAt2);
                }
            }
            this.f7942d = i10;
            this.f7943e = '>';
            return (byte) 13;
        }

        private byte i() {
            char cCharAt;
            int i10 = this.f7942d;
            while (true) {
                int i11 = this.f7942d;
                if (i11 >= this.f7941c) {
                    this.f7942d = i10;
                    this.f7943e = '<';
                    return (byte) 13;
                }
                CharSequence charSequence = this.f7939a;
                this.f7942d = i11 + 1;
                char cCharAt2 = charSequence.charAt(i11);
                this.f7943e = cCharAt2;
                if (cCharAt2 == '>') {
                    return (byte) 12;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    do {
                        int i12 = this.f7942d;
                        if (i12 >= this.f7941c) {
                            break;
                        }
                        CharSequence charSequence2 = this.f7939a;
                        this.f7942d = i12 + 1;
                        cCharAt = charSequence2.charAt(i12);
                        this.f7943e = cCharAt;
                    } while (cCharAt != cCharAt2);
                }
            }
        }

        byte a() {
            char cCharAt = this.f7939a.charAt(this.f7942d - 1);
            this.f7943e = cCharAt;
            if (Character.isLowSurrogate(cCharAt)) {
                int iCodePointBefore = Character.codePointBefore(this.f7939a, this.f7942d);
                this.f7942d -= Character.charCount(iCodePointBefore);
                return Character.getDirectionality(iCodePointBefore);
            }
            this.f7942d--;
            byte bC = c(this.f7943e);
            if (!this.f7940b) {
                return bC;
            }
            char c10 = this.f7943e;
            if (c10 == '>') {
                return h();
            }
            return c10 == ';' ? f() : bC;
        }

        byte b() {
            char cCharAt = this.f7939a.charAt(this.f7942d);
            this.f7943e = cCharAt;
            if (Character.isHighSurrogate(cCharAt)) {
                int iCodePointAt = Character.codePointAt(this.f7939a, this.f7942d);
                this.f7942d += Character.charCount(iCodePointAt);
                return Character.getDirectionality(iCodePointAt);
            }
            this.f7942d++;
            byte bC = c(this.f7943e);
            if (!this.f7940b) {
                return bC;
            }
            char c10 = this.f7943e;
            if (c10 == '<') {
                return i();
            }
            return c10 == '&' ? g() : bC;
        }

        int d() {
            this.f7942d = 0;
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            while (this.f7942d < this.f7941c && i10 == 0) {
                byte b10 = b();
                if (b10 != 0) {
                    if (b10 == 1 || b10 == 2) {
                        if (i12 == 0) {
                            return 1;
                        }
                    } else if (b10 != 9) {
                        switch (b10) {
                            case 14:
                            case 15:
                                i12++;
                                i11 = -1;
                                continue;
                            case 16:
                            case 17:
                                i12++;
                                i11 = 1;
                                continue;
                            case 18:
                                i12--;
                                i11 = 0;
                                continue;
                        }
                    }
                } else if (i12 == 0) {
                    return -1;
                }
                i10 = i12;
            }
            if (i10 == 0) {
                return 0;
            }
            if (i11 != 0) {
                return i11;
            }
            while (this.f7942d > 0) {
                switch (a()) {
                    case 14:
                    case 15:
                        if (i10 == i12) {
                            return -1;
                        }
                        break;
                    case 16:
                    case 17:
                        if (i10 == i12) {
                            return 1;
                        }
                        break;
                    case 18:
                        i12++;
                        continue;
                    default:
                        continue;
                }
                i12--;
            }
            return 0;
        }

        int e() {
            this.f7942d = this.f7941c;
            int i10 = 0;
            while (true) {
                int i11 = i10;
                while (this.f7942d > 0) {
                    byte bA = a();
                    if (bA == 0) {
                        if (i10 == 0) {
                            return -1;
                        }
                        if (i11 == 0) {
                        }
                    } else if (bA == 1 || bA == 2) {
                        if (i10 == 0) {
                            return 1;
                        }
                        if (i11 == 0) {
                        }
                    } else if (bA != 9) {
                        switch (bA) {
                            case 14:
                            case 15:
                                if (i11 == i10) {
                                    return -1;
                                }
                                i10--;
                                break;
                            case 16:
                            case 17:
                                if (i11 == i10) {
                                    return 1;
                                }
                                i10--;
                                break;
                            case 18:
                                i10++;
                                break;
                            default:
                                if (i11 != 0) {
                                }
                                break;
                        }
                    } else {
                        continue;
                    }
                }
                return 0;
            }
        }
    }

    static {
        s sVar = t.f7946c;
        f7927d = sVar;
        f7928e = Character.toString((char) 8206);
        f7929f = Character.toString((char) 8207);
        f7930g = new a(false, 2, sVar);
        f7931h = new a(true, 2, sVar);
    }

    a(boolean z10, int i10, s sVar) {
        this.f7932a = z10;
        this.f7933b = i10;
        this.f7934c = sVar;
    }

    private static int a(CharSequence charSequence) {
        return new b(charSequence, false).d();
    }

    private static int b(CharSequence charSequence) {
        return new b(charSequence, false).e();
    }

    public static a c() {
        return new C0061a().a();
    }

    static boolean g(Locale locale) {
        return u.a(locale) == 1;
    }

    private String h(CharSequence charSequence, s sVar) {
        boolean zA = sVar.a(charSequence, 0, charSequence.length());
        if (!this.f7932a && (zA || b(charSequence) == 1)) {
            return f7928e;
        }
        if (this.f7932a) {
            return (!zA || b(charSequence) == -1) ? f7929f : "";
        }
        return "";
    }

    private String i(CharSequence charSequence, s sVar) {
        boolean zA = sVar.a(charSequence, 0, charSequence.length());
        if (!this.f7932a && (zA || a(charSequence) == 1)) {
            return f7928e;
        }
        if (this.f7932a) {
            return (!zA || a(charSequence) == -1) ? f7929f : "";
        }
        return "";
    }

    public boolean d() {
        return (this.f7933b & 2) != 0;
    }

    public boolean e(CharSequence charSequence) {
        return this.f7934c.a(charSequence, 0, charSequence.length());
    }

    public boolean f(String str) {
        return e(str);
    }

    public CharSequence j(CharSequence charSequence) {
        return k(charSequence, this.f7934c, true);
    }

    public CharSequence k(CharSequence charSequence, s sVar, boolean z10) {
        if (charSequence == null) {
            return null;
        }
        boolean zA = sVar.a(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (d() && z10) {
            spannableStringBuilder.append((CharSequence) i(charSequence, zA ? t.f7945b : t.f7944a));
        }
        if (zA != this.f7932a) {
            spannableStringBuilder.append(zA ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z10) {
            spannableStringBuilder.append((CharSequence) h(charSequence, zA ? t.f7945b : t.f7944a));
        }
        return spannableStringBuilder;
    }

    public String l(String str) {
        return n(str, this.f7934c, true);
    }

    public String m(String str, s sVar) {
        return n(str, sVar, true);
    }

    public String n(String str, s sVar, boolean z10) {
        if (str == null) {
            return null;
        }
        return k(str, sVar, z10).toString();
    }
}
