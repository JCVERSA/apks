package com.android.billingclient.api;

import android.text.TextUtils;
import com.google.android.gms.internal.play_billing.zzaf;
import java.util.ArrayList;
import java.util.List;

public class m {

    private boolean f18470a;

    private String f18471b;

    private String f18472c;

    private c f18473d;

    private zzaf f18474e;

    private ArrayList f18475f;

    private boolean f18476g;

    public static class a {

        private String f18477a;

        private String f18478b;

        private List f18479c;

        private ArrayList f18480d;

        private boolean f18481e;

        private c.a f18482f;

        a(g0 g0Var) {
            c.a aVarA = c.a();
            c.a.b(aVarA);
            this.f18482f = aVarA;
        }

        public m a() {
            ArrayList arrayList = this.f18480d;
            boolean z10 = (arrayList == null || arrayList.isEmpty()) ? false : true;
            List list = this.f18479c;
            boolean z11 = (list == null || list.isEmpty()) ? false : true;
            if (!z10 && !z11) {
                throw new IllegalArgumentException("Details of the products must be provided.");
            }
            if (z10 && z11) {
                throw new IllegalArgumentException("Set SkuDetails or ProductDetailsParams, not both.");
            }
            l0 l0Var = null;
            if (!z10) {
                b bVar = (b) this.f18479c.get(0);
                for (int i10 = 0; i10 < this.f18479c.size(); i10++) {
                    b bVar2 = (b) this.f18479c.get(i10);
                    if (bVar2 == null) {
                        throw new IllegalArgumentException("ProductDetailsParams cannot be null.");
                    }
                    if (i10 != 0 && !bVar2.b().c().equals(bVar.b().c()) && !bVar2.b().c().equals("play_pass_subs")) {
                        throw new IllegalArgumentException("All products should have same ProductType.");
                    }
                }
                String strE = bVar.b().e();
                for (b bVar3 : this.f18479c) {
                    if (!bVar.b().c().equals("play_pass_subs") && !bVar3.b().c().equals("play_pass_subs") && !strE.equals(bVar3.b().e())) {
                        throw new IllegalArgumentException("All products must have the same package name.");
                    }
                }
            } else {
                if (this.f18480d.contains(null)) {
                    throw new IllegalArgumentException("SKU cannot be null.");
                }
                if (this.f18480d.size() > 1) {
                    android.support.v4.media.session.c.a(this.f18480d.get(0));
                    throw null;
                }
            }
            m mVar = new m(l0Var);
            if (z10) {
                android.support.v4.media.session.c.a(this.f18480d.get(0));
                throw null;
            }
            mVar.f18470a = z11 && !((b) this.f18479c.get(0)).b().e().isEmpty();
            mVar.f18471b = this.f18477a;
            mVar.f18472c = this.f18478b;
            mVar.f18473d = this.f18482f.a();
            ArrayList arrayList2 = this.f18480d;
            mVar.f18475f = arrayList2 != null ? new ArrayList(arrayList2) : new ArrayList();
            mVar.f18476g = this.f18481e;
            List list2 = this.f18479c;
            mVar.f18474e = list2 != null ? zzaf.zzj(list2) : zzaf.zzk();
            return mVar;
        }

        public a b(String str) {
            this.f18477a = str;
            return this;
        }

        public a c(List list) {
            this.f18479c = new ArrayList(list);
            return this;
        }
    }

    public static final class b {

        private final r f18483a;

        private final String f18484b;

        public static class a {

            private r f18485a;

            private String f18486b;

            a(h0 h0Var) {
            }

            public b a() {
                com.google.android.gms.internal.play_billing.zzx.zzc(this.f18485a, "ProductDetails is required for constructing ProductDetailsParams.");
                com.google.android.gms.internal.play_billing.zzx.zzc(this.f18486b, "offerToken is required for constructing ProductDetailsParams.");
                return new b(this, null);
            }

            public a b(String str) {
                this.f18486b = str;
                return this;
            }

            public a c(r rVar) {
                this.f18485a = rVar;
                if (rVar.a() != null) {
                    rVar.a().getClass();
                    this.f18486b = rVar.a().a();
                }
                return this;
            }
        }

        b(a aVar, i0 i0Var) {
            this.f18483a = aVar.f18485a;
            this.f18484b = aVar.f18486b;
        }

        public static a a() {
            return new a(null);
        }

        public final r b() {
            return this.f18483a;
        }

        public final String c() {
            return this.f18484b;
        }
    }

    public static class c {

        private String f18487a;

        private String f18488b;

        private int f18489c = 0;

        private int f18490d = 0;

        public static class a {

            private String f18491a;

            private String f18492b;

            private boolean f18493c;

            private int f18494d = 0;

            private int f18495e = 0;

            a(j0 j0Var) {
            }

            static a b(a aVar) {
                aVar.f18493c = true;
                return aVar;
            }

            public c a() {
                boolean z10 = true;
                k0 k0Var = null;
                if (TextUtils.isEmpty(this.f18491a) && TextUtils.isEmpty(null)) {
                    z10 = false;
                }
                boolean zIsEmpty = TextUtils.isEmpty(this.f18492b);
                if (z10 && !zIsEmpty) {
                    throw new IllegalArgumentException("Please provide Old SKU purchase information(token/id) or original external transaction id, not both.");
                }
                if (!this.f18493c && !z10 && zIsEmpty) {
                    throw new IllegalArgumentException("Old SKU purchase information(token/id) or original external transaction id must be provided.");
                }
                c cVar = new c(k0Var);
                cVar.f18487a = this.f18491a;
                cVar.f18489c = this.f18494d;
                cVar.f18490d = this.f18495e;
                cVar.f18488b = this.f18492b;
                return cVar;
            }
        }

        c(k0 k0Var) {
        }

        public static a a() {
            return new a(null);
        }

        final int b() {
            return this.f18489c;
        }

        final int c() {
            return this.f18490d;
        }

        final String d() {
            return this.f18487a;
        }

        final String e() {
            return this.f18488b;
        }
    }

    m(l0 l0Var) {
    }

    public static a a() {
        return new a(null);
    }

    public final int b() {
        return this.f18473d.b();
    }

    public final int c() {
        return this.f18473d.c();
    }

    public final String d() {
        return this.f18471b;
    }

    public final String e() {
        return this.f18472c;
    }

    public final String f() {
        return this.f18473d.d();
    }

    public final String g() {
        return this.f18473d.e();
    }

    public final ArrayList h() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f18475f);
        return arrayList;
    }

    public final List i() {
        return this.f18474e;
    }

    public final boolean q() {
        return this.f18476g;
    }

    final boolean r() {
        return (this.f18471b == null && this.f18472c == null && this.f18473d.e() == null && this.f18473d.b() == 0 && this.f18473d.c() == 0 && !this.f18470a && !this.f18476g) ? false : true;
    }
}
