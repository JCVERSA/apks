package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public abstract class pd5 {
    public static final Object a(u95 u95Var, k92 k92Var, InputStream inputStream) {
        y45.j(u95Var, "<this>");
        y45.j(k92Var, "deserializer");
        y45.j(inputStream, "stream");
        k85 k85Var = new k85(inputStream);
        try {
            return yb5.a(u95Var, k92Var, k85Var);
        } finally {
            k85Var.b();
        }
    }

    public static final void b(u95 u95Var, nd9 nd9Var, Object obj, OutputStream outputStream) throws IOException {
        y45.j(u95Var, "<this>");
        y45.j(nd9Var, "serializer");
        y45.j(outputStream, "stream");
        cc5 cc5Var = new cc5(outputStream);
        try {
            yb5.b(u95Var, cc5Var, nd9Var, obj);
        } finally {
            cc5Var.g();
        }
    }
}
