package androidx.datastore.preferences.protobuf;

class j1 extends h1 {
    j1() {
    }

    @Override
    public i1 g(Object obj) {
        return ((GeneratedMessageLite) obj).unknownFields;
    }

    @Override
    public int h(i1 i1Var) {
        return i1Var.d();
    }

    @Override
    public int i(i1 i1Var) {
        return i1Var.e();
    }

    @Override
    public i1 k(i1 i1Var, i1 i1Var2) {
        if (i1.c().equals(i1Var2)) {
            return i1Var;
        }
        return i1.c().equals(i1Var) ? i1.j(i1Var, i1Var2) : i1Var.i(i1Var2);
    }

    @Override
    public i1 n() {
        return i1.k();
    }

    @Override
    public void o(Object obj, i1 i1Var) {
        p(obj, i1Var);
    }

    @Override
    public void p(Object obj, i1 i1Var) {
        ((GeneratedMessageLite) obj).unknownFields = i1Var;
    }

    @Override
    public i1 r(i1 i1Var) {
        i1Var.h();
        return i1Var;
    }

    @Override
    public void s(i1 i1Var, Writer writer) {
        i1Var.p(writer);
    }

    @Override
    public void t(i1 i1Var, Writer writer) {
        i1Var.r(writer);
    }

    @Override
    void j(Object obj) {
        g(obj).h();
    }

    @Override
    boolean q(a1 a1Var) {
        return false;
    }

    @Override
    public void a(i1 i1Var, int i10, int i11) {
        i1Var.n(WireFormat.c(i10, 5), Integer.valueOf(i11));
    }

    @Override
    public void b(i1 i1Var, int i10, long j10) {
        i1Var.n(WireFormat.c(i10, 1), Long.valueOf(j10));
    }

    @Override
    public void c(i1 i1Var, int i10, i1 i1Var2) {
        i1Var.n(WireFormat.c(i10, 3), i1Var2);
    }

    @Override
    public void d(i1 i1Var, int i10, ByteString byteString) {
        i1Var.n(WireFormat.c(i10, 2), byteString);
    }

    @Override
    public void e(i1 i1Var, int i10, long j10) {
        i1Var.n(WireFormat.c(i10, 0), Long.valueOf(j10));
    }

    @Override
    public i1 f(Object obj) {
        i1 i1VarG = g(obj);
        if (i1VarG != i1.c()) {
            return i1VarG;
        }
        i1 i1VarK = i1.k();
        p(obj, i1VarK);
        return i1VarK;
    }
}
