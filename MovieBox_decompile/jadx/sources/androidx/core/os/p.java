package androidx.core.os;

import android.os.LocaleList;
import java.util.Locale;

final class p implements k {

    private final LocaleList f7864a;

    p(Object obj) {
        this.f7864a = o.a(obj);
    }

    @Override
    public String a() {
        return this.f7864a.toLanguageTags();
    }

    @Override
    public Object b() {
        return this.f7864a;
    }

    public boolean equals(Object obj) {
        return this.f7864a.equals(((k) obj).b());
    }

    @Override
    public Locale get(int i10) {
        return this.f7864a.get(i10);
    }

    public int hashCode() {
        return this.f7864a.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return this.f7864a.isEmpty();
    }

    @Override
    public int size() {
        return this.f7864a.size();
    }

    public String toString() {
        return this.f7864a.toString();
    }
}
