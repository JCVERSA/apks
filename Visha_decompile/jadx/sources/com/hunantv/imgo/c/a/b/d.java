package com.hunantv.imgo.c.a.b;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Set;

public class d {
    private static final HashMap<String, com.hunantv.imgo.c.a.b.a> a = new HashMap<>();
    private static final d b = new d();

    public static final class a {
        private int a;
        private String b;
        private int c;
        private com.hunantv.imgo.c.a d;
        private int e;

        public a a(int i) {
            this.c = i;
            return this;
        }

        public a b(int i) {
            this.a = i;
            return this;
        }

        private a(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("groupName 不能为空");
            }
            this.b = str;
        }

        public d a() {
            if (!d.a.containsKey(this.b)) {
                d.a.put(this.b, b.a(this.a).a(this.b).a(this.c).a(this.d).b(this.e).a().a());
            }
            return d.b;
        }
    }

    private d() {
        b("ThreadPool").b(1).a(5).a();
    }

    public com.hunantv.imgo.c.a.b.a a() {
        return a.get("ThreadPool");
    }

    public Set<String> b() {
        return a.keySet();
    }

    public static final a b(String str) {
        return new a(str);
    }

    public com.hunantv.imgo.c.a.b.a a(String str) {
        com.hunantv.imgo.c.a.b.a aVar = a.get(str);
        return aVar == null ? a() : aVar;
    }
}
