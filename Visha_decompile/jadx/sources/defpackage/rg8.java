package defpackage;

import com.transsion.privateroom.privateroom.PrivateRoomDelegate;
import java.util.List;

public class rg8 {
    public static final String b = "PrivateRoom_" + rg8.class.getSimpleName();
    public final PrivateRoomDelegate a;

    public static final class a {
        public static final rg8 a = new rg8();
    }

    public static rg8 d() {
        return a.a;
    }

    public void a(List list, tv4 tv4Var) {
        this.a.e(list, tv4Var);
    }

    public List b() {
        return this.a.f();
    }

    public String c() {
        return this.a.g();
    }

    public String e() {
        return this.a.h();
    }

    public void f(List list, tv4 tv4Var) {
        this.a.j(list, tv4Var);
    }

    public void g(uv4 uv4Var) {
        if (this.a.i(uv4Var)) {
            this.a.k(uv4Var);
        }
    }

    public void h(List list, tv4 tv4Var) {
        this.a.m(list, tv4Var);
    }

    public void i(String str) {
        this.a.n(str);
    }

    public void j(String str) {
        this.a.o(str);
    }

    public void k(String str, sv4 sv4Var) {
        this.a.p(str, sv4Var);
    }

    public void l(String str, String str2, sv4 sv4Var) {
        this.a.q(str, str2, sv4Var);
    }

    public rg8() {
        this.a = new PrivateRoomDelegate();
    }
}
