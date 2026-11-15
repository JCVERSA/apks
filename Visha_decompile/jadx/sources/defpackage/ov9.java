package defpackage;

import java.io.Closeable;
import java.io.IOException;

public abstract class ov9 {
    public static final void a(Closeable closeable) {
        y45.j(closeable, "<this>");
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    public static final void b(zs1.b bVar) {
        y45.j(bVar, "<this>");
        try {
            bVar.endTransaction();
        } catch (IllegalStateException unused) {
        }
    }
}
