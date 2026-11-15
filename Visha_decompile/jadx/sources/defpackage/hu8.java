package defpackage;

import okhttp3.Call;
import okhttp3.Response;

public final class hu8 {
    public Object a;
    public Throwable b;
    public boolean c;
    public Call d;
    public Response e;

    public static hu8 c(boolean z, Call call, Response response, Throwable th) {
        hu8 hu8Var = new hu8();
        hu8Var.j(z);
        hu8Var.k(call);
        hu8Var.l(response);
        hu8Var.i(th);
        return hu8Var;
    }

    public static hu8 m(boolean z, Object obj, Call call, Response response) {
        hu8 hu8Var = new hu8();
        hu8Var.j(z);
        hu8Var.h(obj);
        hu8Var.k(call);
        hu8Var.l(response);
        return hu8Var;
    }

    public Object a() {
        return this.a;
    }

    public int b() {
        Response response = this.e;
        if (response == null) {
            return -1;
        }
        return response.code();
    }

    public Throwable d() {
        return this.b;
    }

    public Response e() {
        return this.e;
    }

    public boolean f() {
        return this.b == null;
    }

    public String g() {
        Response response = this.e;
        if (response == null) {
            return null;
        }
        return response.message();
    }

    public void h(Object obj) {
        this.a = obj;
    }

    public void i(Throwable th) {
        this.b = th;
    }

    public void j(boolean z) {
        this.c = z;
    }

    public void k(Call call) {
        this.d = call;
    }

    public void l(Response response) {
        this.e = response;
    }
}
