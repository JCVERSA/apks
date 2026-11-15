package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zzb;

public final class n {

    private int f18496a;

    private String f18497b;

    public static class a {

        private int f18498a;

        private String f18499b = "";

        a(o0 o0Var) {
        }

        public n a() {
            n nVar = new n();
            nVar.f18496a = this.f18498a;
            nVar.f18497b = this.f18499b;
            return nVar;
        }

        public a b(String str) {
            this.f18499b = str;
            return this;
        }

        public a c(int i10) {
            this.f18498a = i10;
            return this;
        }
    }

    public static a c() {
        return new a(null);
    }

    public String a() {
        return this.f18497b;
    }

    public int b() {
        return this.f18496a;
    }

    public String toString() {
        return "Response Code: " + zzb.zzh(this.f18496a) + ", Debug Message: " + this.f18497b;
    }
}
