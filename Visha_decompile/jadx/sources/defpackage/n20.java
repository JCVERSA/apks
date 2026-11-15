package defpackage;

import android.os.Bundle;

public abstract class n20 {
    public static final com.google.android.gms.common.api.a a;
    public static final com.google.android.gms.common.api.a b;
    public static final com.google.android.gms.common.api.a c;
    public static final tj8 d;
    public static final jl1 e;
    public static final bj4 f;
    public static final com.google.android.gms.common.api.a.g g;
    public static final com.google.android.gms.common.api.a.g h;
    public static final com.google.android.gms.common.api.a.AbstractC0089a i;
    public static final com.google.android.gms.common.api.a.AbstractC0089a j;

    public static class a implements com.google.android.gms.common.api.a.d {
        public static final a e = new a(new C0426a());
        public final String b = null;
        public final boolean c;
        public final String d;

        public static class C0426a {
            public Boolean a;
            public String b;

            public C0426a() {
                this.a = Boolean.FALSE;
            }

            public final C0426a a(String str) {
                this.b = str;
                return this;
            }

            public C0426a(a aVar) {
                this.a = Boolean.FALSE;
                a.b(aVar);
                this.a = Boolean.valueOf(aVar.c);
                this.b = aVar.d;
            }
        }

        public a(C0426a c0426a) {
            this.c = c0426a.a.booleanValue();
            this.d = c0426a.b;
        }

        public static String b(a aVar) {
            String str = aVar.b;
            return null;
        }

        public final Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", null);
            bundle.putBoolean("force_save_dialog", this.c);
            bundle.putString("log_session_id", this.d);
            return bundle;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            String str = aVar.b;
            return jc7.a(null, null) && this.c == aVar.c && jc7.a(this.d, aVar.d);
        }

        public int hashCode() {
            return jc7.b(null, Boolean.valueOf(this.c), this.d);
        }
    }

    static {
        com.google.android.gms.common.api.a.g gVar = new com.google.android.gms.common.api.a.g();
        g = gVar;
        com.google.android.gms.common.api.a.g gVar2 = new com.google.android.gms.common.api.a.g();
        h = gVar2;
        a3e a3eVar = new a3e();
        i = a3eVar;
        g3e g3eVar = new g3e();
        j = g3eVar;
        a = o20.a;
        b = new com.google.android.gms.common.api.a("Auth.CREDENTIALS_API", a3eVar, gVar);
        c = new com.google.android.gms.common.api.a("Auth.GOOGLE_SIGN_IN_API", g3eVar, gVar2);
        d = o20.b;
        e = new z3e();
        f = new l3e();
    }
}
