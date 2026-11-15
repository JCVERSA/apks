package r4;

public class g {

    private final String f70837a;

    public final float f70838b;

    public final float f70839c;

    public g(String str, float f10, float f11) {
        this.f70837a = str;
        this.f70839c = f11;
        this.f70838b = f10;
    }

    public boolean a(String str) {
        if (this.f70837a.equalsIgnoreCase(str)) {
            return true;
        }
        if (this.f70837a.endsWith("\r")) {
            String str2 = this.f70837a;
            if (str2.substring(0, str2.length() - 1).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
