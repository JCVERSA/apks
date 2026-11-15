package defpackage;

import android.content.Context;
import android.net.Uri;

public class hd0 extends hw2 {
    public Context b;
    public Uri c;

    public hd0(hw2 hw2Var, Context context, Uri uri) {
        super(hw2Var);
        this.b = context;
        this.c = uri;
    }

    public static hw2 f(Context context, Uri uri) {
        return new hd0(null, context, uri);
    }

    @Override
    public boolean a() {
        return jw2.a(this.b, this.c);
    }

    @Override
    public boolean b() {
        return jw2.c(this.b, this.c);
    }

    @Override
    public boolean c() {
        return jw2.d(this.b, this.c);
    }

    @Override
    public boolean e(String str) {
        Uri uriA = kw2.a(this.b, this.c, str);
        if (uriA == null) {
            return false;
        }
        this.c = uriA;
        return true;
    }
}
