package defpackage;

import java.util.List;
import kotlinx.serialization.descriptors.a;

public final class qh1 implements a {
    public final a a;
    public final de5 b;
    public final String c;

    public qh1(a aVar, de5 de5Var) {
        y45.j(aVar, "original");
        y45.j(de5Var, "kClass");
        this.a = aVar;
        this.b = de5Var;
        this.c = aVar.h() + '<' + de5Var.o() + '>';
    }

    @Override
    public boolean b() {
        return this.a.b();
    }

    @Override
    public int c(String str) {
        y45.j(str, "name");
        return this.a.c(str);
    }

    @Override
    public a d(int i) {
        return this.a.d(i);
    }

    @Override
    public int e() {
        return this.a.e();
    }

    public boolean equals(Object obj) {
        qh1 qh1Var = obj instanceof qh1 ? (qh1) obj : null;
        return qh1Var != null && y45.e(this.a, qh1Var.a) && y45.e(qh1Var.b, this.b);
    }

    @Override
    public String f(int i) {
        return this.a.f(i);
    }

    @Override
    public List g(int i) {
        return this.a.g(i);
    }

    @Override
    public List getAnnotations() {
        return this.a.getAnnotations();
    }

    @Override
    public id9 getKind() {
        return this.a.getKind();
    }

    @Override
    public String h() {
        return this.c;
    }

    public int hashCode() {
        return (this.b.hashCode() * 31) + h().hashCode();
    }

    @Override
    public boolean i(int i) {
        return this.a.i(i);
    }

    @Override
    public boolean isInline() {
        return this.a.isInline();
    }

    public String toString() {
        return "ContextDescriptor(kClass: " + this.b + ", original: " + this.a + ')';
    }
}
