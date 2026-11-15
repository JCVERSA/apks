package kd;

import java.util.List;

public final class d {

    private final byte[] f63932a;

    private int f63933b;

    private final String f63934c;

    private final List f63935d;

    private final String f63936e;

    private Integer f63937f;

    private Integer f63938g;

    private Object f63939h;

    private final int f63940i;

    private final int f63941j;

    private final int f63942k;

    public d(byte[] bArr, String str, List list, String str2) {
        this(bArr, str, list, str2, -1, -1, 0);
    }

    public List a() {
        return this.f63935d;
    }

    public String b() {
        return this.f63936e;
    }

    public Integer c() {
        return this.f63938g;
    }

    public Integer d() {
        return this.f63937f;
    }

    public int e() {
        return this.f63933b;
    }

    public Object f() {
        return this.f63939h;
    }

    public byte[] g() {
        return this.f63932a;
    }

    public int h() {
        return this.f63940i;
    }

    public int i() {
        return this.f63941j;
    }

    public int j() {
        return this.f63942k;
    }

    public String k() {
        return this.f63934c;
    }

    public boolean l() {
        return this.f63940i >= 0 && this.f63941j >= 0;
    }

    public void m(Integer num) {
        this.f63938g = num;
    }

    public void n(Integer num) {
        this.f63937f = num;
    }

    public void o(int i10) {
        this.f63933b = i10;
    }

    public void p(Object obj) {
        this.f63939h = obj;
    }

    public d(byte[] bArr, String str, List list, String str2, int i10) {
        this(bArr, str, list, str2, -1, -1, i10);
    }

    public d(byte[] bArr, String str, List list, String str2, int i10, int i11, int i12) {
        this.f63932a = bArr;
        this.f63933b = bArr == null ? 0 : bArr.length * 8;
        this.f63934c = str;
        this.f63935d = list;
        this.f63936e = str2;
        this.f63940i = i11;
        this.f63941j = i10;
        this.f63942k = i12;
    }
}
