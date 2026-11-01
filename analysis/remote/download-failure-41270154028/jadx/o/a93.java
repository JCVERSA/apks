package o;

import com.snaptube.video.videoextractor.net.HttpHeader;
import java.util.ArrayList;
import java.util.List;

public class a93 {
    public int a;
    public String b;
    public List c = new ArrayList();
    public String d;
    public String e;
    public String f;
    public byte[] g;

    public a93(int i) {
        this.a = i;
    }

    public void a(List list) {
        this.c.addAll(list);
    }

    public boolean b() {
        int i = this.a;
        return i >= 200 && i <= 400;
    }

    public byte[] c() {
        return this.g;
    }

    public String d(String str) {
        if (str == null) {
            return null;
        }
        for (HttpHeader httpHeader : this.c) {
            if (httpHeader.getName().equalsIgnoreCase(str)) {
                return httpHeader.getValue();
            }
        }
        return null;
    }

    public List e() {
        return this.c;
    }

    public String f() {
        return this.e;
    }

    public String g() {
        return this.f;
    }

    public int h() {
        return this.a;
    }

    public String i() {
        return this.b;
    }

    public String j() {
        return this.d;
    }

    public void k(byte[] bArr) {
        this.g = bArr;
    }

    public void l(String str) {
        this.e = str;
    }

    public void m(String str) {
        this.f = str;
    }

    public void n(String str) {
        this.b = str;
    }

    public void o(String str) {
        this.d = str;
    }
}
