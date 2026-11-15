package defpackage;

public class x5a implements gw4 {
    public boolean a;
    public String b;
    public int c;

    public x5a(boolean z, String str, int i) {
        this.b = str;
        this.c = i;
        this.a = z;
    }

    public int a() {
        return this.c;
    }

    @Override
    public String displayText() {
        return this.b;
    }

    @Override
    public boolean isCheck() {
        return this.a;
    }

    @Override
    public void setCheck(boolean z) {
        this.a = z;
    }
}
