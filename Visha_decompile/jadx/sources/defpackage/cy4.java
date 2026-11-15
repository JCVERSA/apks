package defpackage;

import android.content.Context;
import com.transsion.http.request.HttpMethod;

public class cy4 extends bt8 {
    public boolean l;
    public Context m;

    public cy4(Context context) {
        this.m = context;
    }

    public ct8 g() {
        return new eld(this.m, this.a, this.l, this.b, HttpMethod.GET, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k).a();
    }

    public cy4 h(boolean z) {
        this.l = z;
        return this;
    }
}
