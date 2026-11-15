package kotlin.reflect.jvm.internal.impl.load.kotlin;

import defpackage.by6;
import defpackage.xw0;
import defpackage.yt9;
import defpackage.zw0;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;

public interface c {

    public interface a {
        void a(by6 by6Var, xw0 xw0Var, by6 by6Var2);

        a b(by6 by6Var, xw0 xw0Var);

        void c(by6 by6Var, Object obj);

        void d(by6 by6Var, zw0 zw0Var);

        b e(by6 by6Var);

        void visitEnd();
    }

    public interface b {
        a a(xw0 xw0Var);

        void b(Object obj);

        void c(zw0 zw0Var);

        void d(xw0 xw0Var, by6 by6Var);

        void visitEnd();
    }

    public interface InterfaceC0394c {
        a a(xw0 xw0Var, yt9 yt9Var);

        void visitEnd();
    }

    public interface d {
        e a(by6 by6Var, String str);

        InterfaceC0394c b(by6 by6Var, String str, Object obj);
    }

    public interface e extends InterfaceC0394c {
        a b(int i, xw0 xw0Var, yt9 yt9Var);
    }

    void a(d dVar, byte[] bArr);

    KotlinClassHeader b();

    xw0 c();

    void d(InterfaceC0394c interfaceC0394c, byte[] bArr);

    String getLocation();
}
