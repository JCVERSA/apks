package c5;

public class e1 {

    public final e1 f16517a;

    public final Object f16518b;

    public final Object f16519c;

    public final int f16520d;

    public e1(e1 e1Var, Object obj, Object obj2, int i10, int i11) {
        this.f16517a = e1Var;
        this.f16518b = obj;
        this.f16519c = obj2;
        this.f16520d = i10;
    }

    protected void a(StringBuilder sb2) {
        e1 e1Var = this.f16517a;
        if (e1Var == null) {
            sb2.append('$');
            return;
        }
        e1Var.a(sb2);
        Object obj = this.f16519c;
        if (obj == null) {
            sb2.append(".null");
            return;
        }
        if (obj instanceof Integer) {
            sb2.append('[');
            sb2.append(((Integer) this.f16519c).intValue());
            sb2.append(']');
            return;
        }
        sb2.append('.');
        String string = this.f16519c.toString();
        for (int i10 = 0; i10 < string.length(); i10++) {
            char cCharAt = string.charAt(i10);
            if ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'A' || cCharAt > 'Z') && ((cCharAt < 'a' || cCharAt > 'z') && cCharAt <= 128))) {
                for (int i11 = 0; i11 < string.length(); i11++) {
                    char cCharAt2 = string.charAt(i11);
                    if (cCharAt2 == '\\') {
                        sb2.append('\\');
                        sb2.append('\\');
                        sb2.append('\\');
                    } else {
                        if ((cCharAt2 >= '0' && cCharAt2 <= '9') || ((cCharAt2 >= 'A' && cCharAt2 <= 'Z') || ((cCharAt2 >= 'a' && cCharAt2 <= 'z') || cCharAt2 > 128))) {
                            sb2.append(cCharAt2);
                        } else if (cCharAt2 == '\"') {
                            sb2.append('\\');
                            sb2.append('\\');
                            sb2.append('\\');
                        } else {
                            sb2.append('\\');
                            sb2.append('\\');
                        }
                    }
                    sb2.append(cCharAt2);
                }
                return;
            }
        }
        sb2.append(string);
    }

    public String toString() {
        if (this.f16517a == null) {
            return "$";
        }
        StringBuilder sb2 = new StringBuilder();
        a(sb2);
        return sb2.toString();
    }
}
