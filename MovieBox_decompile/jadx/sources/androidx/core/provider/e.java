package androidx.core.provider;

import android.util.Base64;
import java.util.List;

public final class e {

    private final String f7882a;

    private final String f7883b;

    private final String f7884c;

    private final List f7885d;

    private final int f7886e = 0;

    private final String f7887f;

    public e(String str, String str2, String str3, List list) {
        this.f7882a = (String) androidx.core.util.i.g(str);
        this.f7883b = (String) androidx.core.util.i.g(str2);
        this.f7884c = (String) androidx.core.util.i.g(str3);
        this.f7885d = (List) androidx.core.util.i.g(list);
        this.f7887f = a(str, str2, str3);
    }

    private String a(String str, String str2, String str3) {
        return str + "-" + str2 + "-" + str3;
    }

    public List b() {
        return this.f7885d;
    }

    public int c() {
        return this.f7886e;
    }

    String d() {
        return this.f7887f;
    }

    public String e() {
        return this.f7882a;
    }

    public String f() {
        return this.f7883b;
    }

    public String g() {
        return this.f7884c;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("FontRequest {mProviderAuthority: " + this.f7882a + ", mProviderPackage: " + this.f7883b + ", mQuery: " + this.f7884c + ", mCertificates:");
        for (int i10 = 0; i10 < this.f7885d.size(); i10++) {
            sb2.append(" [");
            List list = (List) this.f7885d.get(i10);
            for (int i11 = 0; i11 < list.size(); i11++) {
                sb2.append(" \"");
                sb2.append(Base64.encodeToString((byte[]) list.get(i11), 0));
                sb2.append("\"");
            }
            sb2.append(" ]");
        }
        sb2.append("}");
        sb2.append("mCertificatesArray: " + this.f7886e);
        return sb2.toString();
    }
}
