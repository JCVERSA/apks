package o8;

import java.nio.charset.Charset;
import n8.e;

public class b {
    public static e a(String str, int i10) {
        n8.a aVarA = a.a();
        aVarA.o(i10);
        return aVarA.e(str, null);
    }

    public static e b(String str, int i10, String str2) {
        n8.a aVarA = a.a();
        aVarA.o(i10);
        return aVarA.j(str, "application/json", str2.getBytes(Charset.forName("UTF-8")));
    }
}
