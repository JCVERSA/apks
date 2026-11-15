package com.google.android.datatransport.runtime;

import android.content.Context;
import c9.n0;
import c9.w0;

abstract class e {

    private static final class b implements u.a {

        private Context f23724a;

        private b() {
        }

        @Override
        public b a(Context context) {
            this.f23724a = (Context) w8.d.b(context);
            return this;
        }

        @Override
        public u build() {
            w8.d.a(this.f23724a, Context.class);
            return new c(this.f23724a);
        }
    }

    private static final class c extends u {

        private final c f23725a;

        private iy.a f23726b;

        private iy.a f23727c;

        private iy.a f23728d;

        private iy.a f23729e;

        private iy.a f23730f;

        private iy.a f23731g;

        private iy.a f23732h;

        private iy.a f23733i;

        private iy.a f23734j;

        private iy.a f23735k;

        private iy.a f23736l;

        private iy.a f23737m;

        private iy.a f23738n;

        private void j(Context context) {
            this.f23726b = w8.a.a(k.a());
            w8.b bVarA = w8.c.a(context);
            this.f23727c = bVarA;
            v8.h hVarA = v8.h.a(bVarA, e9.c.a(), e9.d.a());
            this.f23728d = hVarA;
            this.f23729e = w8.a.a(v8.j.a(this.f23727c, hVarA));
            this.f23730f = w0.a(this.f23727c, c9.g.a(), c9.i.a());
            this.f23731g = w8.a.a(c9.h.a(this.f23727c));
            this.f23732h = w8.a.a(n0.a(e9.c.a(), e9.d.a(), c9.j.a(), this.f23730f, this.f23731g));
            a9.g gVarB = a9.g.b(e9.c.a());
            this.f23733i = gVarB;
            a9.i iVarA = a9.i.a(this.f23727c, this.f23732h, gVarB, e9.d.a());
            this.f23734j = iVarA;
            iy.a aVar = this.f23726b;
            iy.a aVar2 = this.f23729e;
            iy.a aVar3 = this.f23732h;
            this.f23735k = a9.d.a(aVar, aVar2, iVarA, aVar3, aVar3);
            iy.a aVar4 = this.f23727c;
            iy.a aVar5 = this.f23729e;
            iy.a aVar6 = this.f23732h;
            this.f23736l = b9.p.a(aVar4, aVar5, aVar6, this.f23734j, this.f23726b, aVar6, e9.c.a(), e9.d.a(), this.f23732h);
            iy.a aVar7 = this.f23726b;
            iy.a aVar8 = this.f23732h;
            this.f23737m = b9.t.a(aVar7, aVar8, this.f23734j, aVar8);
            this.f23738n = w8.a.a(v.a(e9.c.a(), e9.d.a(), this.f23735k, this.f23736l, this.f23737m));
        }

        @Override
        c9.d d() {
            return (c9.d) this.f23732h.get();
        }

        @Override
        t h() {
            return (t) this.f23738n.get();
        }

        private c(Context context) {
            this.f23725a = this;
            j(context);
        }
    }

    public static u.a a() {
        return new b();
    }
}
