package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class h08 implements i08 {
    public static final List d = Collections.unmodifiableList(new ArrayList());
    public String a;
    public List b;
    public byte[] c;

    public h08(String str, List list, byte[] bArr) {
        this.a = str;
        this.b = Collections.unmodifiableList(list);
        this.c = bArr;
    }

    @Override
    public h08 a() {
        return this;
    }

    public byte[] b() {
        return this.c;
    }

    public List c() {
        return this.b;
    }

    public String d() {
        return this.a;
    }

    public h08(String str, byte[] bArr) {
        this(str, d, bArr);
    }
}
