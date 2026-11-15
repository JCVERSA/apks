package androidx.datastore.preferences.protobuf;

import java.util.Map;

final class q extends p {
    q() {
    }

    @Override
    int a(Map.Entry entry) {
        android.support.v4.media.session.c.a(entry.getKey());
        throw null;
    }

    @Override
    Object b(o oVar, n0 n0Var, int i10) {
        oVar.a(n0Var, i10);
        return null;
    }

    @Override
    s c(Object obj) {
        return ((GeneratedMessageLite.c) obj).extensions;
    }

    @Override
    s d(Object obj) {
        return ((GeneratedMessageLite.c) obj).K();
    }

    @Override
    boolean e(n0 n0Var) {
        return n0Var instanceof GeneratedMessageLite.c;
    }

    @Override
    void f(Object obj) {
        c(obj).q();
    }

    @Override
    Object g(Object obj, a1 a1Var, Object obj2, o oVar, s sVar, Object obj3, h1 h1Var) {
        android.support.v4.media.session.c.a(obj2);
        throw null;
    }

    @Override
    void h(a1 a1Var, Object obj, o oVar, s sVar) {
        android.support.v4.media.session.c.a(obj);
        throw null;
    }

    @Override
    void i(ByteString byteString, Object obj, o oVar, s sVar) {
        android.support.v4.media.session.c.a(obj);
        throw null;
    }

    @Override
    void j(Writer writer, Map.Entry entry) {
        android.support.v4.media.session.c.a(entry.getKey());
        throw null;
    }
}
