package defpackage;

public class m47 {
    public String a;
    public int b = 0;

    public m47(String str) {
        this.a = str;
    }

    public boolean a() {
        return this.b != -1;
    }

    public String b() {
        int i = this.b;
        if (i == -1) {
            return null;
        }
        int iIndexOf = this.a.indexOf(46, i);
        if (iIndexOf == -1) {
            String strSubstring = this.a.substring(this.b);
            this.b = -1;
            return strSubstring;
        }
        String strSubstring2 = this.a.substring(this.b, iIndexOf);
        this.b = iIndexOf + 1;
        return strSubstring2;
    }
}
