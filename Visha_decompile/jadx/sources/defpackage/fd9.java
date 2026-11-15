package defpackage;

import java.util.List;
import java.util.Set;
import kotlinx.serialization.descriptors.a;

public final class fd9 implements a, gq0 {
    public final a a;
    public final String b;
    public final Set c;

    public fd9(a aVar) {
        y45.j(aVar, "original");
        this.a = aVar;
        this.b = aVar.h() + '?';
        this.c = e28.a(aVar);
    }

    @Override
    public Set a() {
        return this.c;
    }

    @Override
    public boolean b() {
        return true;
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
        if (this == obj) {
            return true;
        }
        return (obj instanceof fd9) && y45.e(this.a, ((fd9) obj).a);
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
        return this.b;
    }

    public int hashCode() {
        return this.a.hashCode() * 31;
    }

    @Override
    public boolean i(int i) {
        return this.a.i(i);
    }

    @Override
    public boolean isInline() {
        return this.a.isInline();
    }

    public final a j() {
        return this.a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append('?');
        return sb.toString();
    }
}
