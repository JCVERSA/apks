package androidx.core.app;

import android.app.Person;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import java.util.Objects;

public class w {

    CharSequence f7804a;

    IconCompat f7805b;

    String f7806c;

    String f7807d;

    boolean f7808e;

    boolean f7809f;

    static class a {
        static w a(Person person) {
            return new b().f(person.getName()).c(person.getIcon() != null ? IconCompat.b(person.getIcon()) : null).g(person.getUri()).e(person.getKey()).b(person.isBot()).d(person.isImportant()).a();
        }

        static Person b(w wVar) {
            return new Person.Builder().setName(wVar.d()).setIcon(wVar.b() != null ? wVar.b().w() : null).setUri(wVar.e()).setKey(wVar.c()).setBot(wVar.f()).setImportant(wVar.g()).build();
        }
    }

    public static class b {

        CharSequence f7810a;

        IconCompat f7811b;

        String f7812c;

        String f7813d;

        boolean f7814e;

        boolean f7815f;

        public w a() {
            return new w(this);
        }

        public b b(boolean z10) {
            this.f7814e = z10;
            return this;
        }

        public b c(IconCompat iconCompat) {
            this.f7811b = iconCompat;
            return this;
        }

        public b d(boolean z10) {
            this.f7815f = z10;
            return this;
        }

        public b e(String str) {
            this.f7813d = str;
            return this;
        }

        public b f(CharSequence charSequence) {
            this.f7810a = charSequence;
            return this;
        }

        public b g(String str) {
            this.f7812c = str;
            return this;
        }
    }

    w(b bVar) {
        this.f7804a = bVar.f7810a;
        this.f7805b = bVar.f7811b;
        this.f7806c = bVar.f7812c;
        this.f7807d = bVar.f7813d;
        this.f7808e = bVar.f7814e;
        this.f7809f = bVar.f7815f;
    }

    public static w a(Person person) {
        return a.a(person);
    }

    public IconCompat b() {
        return this.f7805b;
    }

    public String c() {
        return this.f7807d;
    }

    public CharSequence d() {
        return this.f7804a;
    }

    public String e() {
        return this.f7806c;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        String strC = c();
        String strC2 = wVar.c();
        if (strC == null && strC2 == null) {
            return Objects.equals(Objects.toString(d()), Objects.toString(wVar.d())) && Objects.equals(e(), wVar.e()) && Boolean.valueOf(f()).equals(Boolean.valueOf(wVar.f())) && Boolean.valueOf(g()).equals(Boolean.valueOf(wVar.g()));
        }
        return Objects.equals(strC, strC2);
    }

    public boolean f() {
        return this.f7808e;
    }

    public boolean g() {
        return this.f7809f;
    }

    public String h() {
        String str = this.f7806c;
        if (str != null) {
            return str;
        }
        if (this.f7804a == null) {
            return "";
        }
        return "name:" + ((Object) this.f7804a);
    }

    public int hashCode() {
        String strC = c();
        return strC != null ? strC.hashCode() : Objects.hash(d(), e(), Boolean.valueOf(f()), Boolean.valueOf(g()));
    }

    public Person i() {
        return a.b(this);
    }

    public Bundle j() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence("name", this.f7804a);
        IconCompat iconCompat = this.f7805b;
        bundle.putBundle(RewardPlus.ICON, iconCompat != null ? iconCompat.v() : null);
        bundle.putString("uri", this.f7806c);
        bundle.putString("key", this.f7807d);
        bundle.putBoolean("isBot", this.f7808e);
        bundle.putBoolean("isImportant", this.f7809f);
        return bundle;
    }
}
