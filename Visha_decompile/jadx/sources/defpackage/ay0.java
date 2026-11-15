package defpackage;

import android.accounts.Account;
import android.view.View;
import androidx.collection.ArraySet;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class ay0 {
    public final Account a;
    public final Set b;
    public final Set c;
    public final Map d;
    public final int e;
    public final View f;
    public final String g;
    public final String h;
    public final vi9 i;
    public Integer j;

    public static final class a {
        public Account a;
        public ArraySet b;
        public String c;
        public String d;
        public final vi9 e = vi9.k;

        public ay0 a() {
            return new ay0(this.a, this.b, null, 0, null, this.c, this.d, this.e, false);
        }

        public a b(String str) {
            this.c = str;
            return this;
        }

        public final a c(Collection collection) {
            if (this.b == null) {
                this.b = new ArraySet();
            }
            this.b.addAll(collection);
            return this;
        }

        public final a d(Account account) {
            this.a = account;
            return this;
        }

        public final a e(String str) {
            this.d = str;
            return this;
        }
    }

    public ay0(Account account, Set set, Map map, int i, View view, String str, String str2, vi9 vi9Var, boolean z) {
        this.a = account;
        Set setEmptySet = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.b = setEmptySet;
        map = map == null ? Collections.emptyMap() : map;
        this.d = map;
        this.f = view;
        this.e = i;
        this.g = str;
        this.h = str2;
        this.i = vi9Var == null ? vi9.k : vi9Var;
        HashSet hashSet = new HashSet(setEmptySet);
        Iterator it = map.values().iterator();
        if (it.hasNext()) {
            ubc.a(it.next());
            throw null;
        }
        this.c = Collections.unmodifiableSet(hashSet);
    }

    public Account a() {
        return this.a;
    }

    public String b() {
        Account account = this.a;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    public Account c() {
        Account account = this.a;
        return account != null ? account : new Account(com.google.android.gms.common.internal.a.DEFAULT_ACCOUNT, "com.google");
    }

    public Set d() {
        return this.c;
    }

    public Set e(com.google.android.gms.common.api.a aVar) {
        ubc.a(this.d.get(aVar));
        return this.b;
    }

    public String f() {
        return this.g;
    }

    public Set g() {
        return this.b;
    }

    public final vi9 h() {
        return this.i;
    }

    public final Integer i() {
        return this.j;
    }

    public final String j() {
        return this.h;
    }

    public final void k(Integer num) {
        this.j = num;
    }
}
