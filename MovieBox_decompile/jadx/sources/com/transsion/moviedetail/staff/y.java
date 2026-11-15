package com.transsion.moviedetail.staff;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.gson.JsonObject;
import com.transsion.moviedetail.staff.bean.MovieStaffList;
import com.transsion.moviedetail.staff.bean.MovieStaffSubjectList;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.postdetail.bean.Pager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

public final class y extends t0 {

    private final b0 f45625a = new b0();

    private final b0 f45626b = new b0();

    private final b0 f45627c = new b0();

    private final b0 f45628d = new b0();

    private final b0 f45629e = new b0();

    private final Lazy f45630f = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return y.x();
        }
    });

    private int f45631g = 1;

    private boolean f45632h = true;

    private io.reactivex.rxjava3.disposables.c f45633i;

    public static final class a extends dg.a {
        a() {
        }

        @Override
        public void a(String str, String str2) {
            y.this.f45629e.q(null);
        }

        @Override
        public void c(MovieStaffList movieStaffList) {
            super.c(movieStaffList);
            y.this.f45629e.q(movieStaffList);
        }
    }

    public static final class b extends dg.a {
        b() {
        }

        @Override
        public void a(String str, String str2) {
            y.this.f45625a.q(null);
        }

        @Override
        public void c(Staff staff) {
            super.c(staff);
            y.this.f45625a.q(staff);
        }
    }

    public static final class c extends dg.a {
        c() {
        }

        @Override
        public void a(String str, String str2) {
            io.reactivex.rxjava3.disposables.c cVar;
            y.this.f45627c.q(null);
            io.reactivex.rxjava3.disposables.c cVar2 = y.this.f45633i;
            if (cVar2 == null || cVar2.isDisposed() || (cVar = y.this.f45633i) == null) {
                return;
            }
            cVar.dispose();
        }

        @Override
        public void c(MovieStaffSubjectList movieStaffSubjectList) {
            io.reactivex.rxjava3.disposables.c cVar;
            Pager pager;
            Boolean hasMore;
            super.c(movieStaffSubjectList);
            if (movieStaffSubjectList != null && (pager = movieStaffSubjectList.getPager()) != null && (hasMore = pager.getHasMore()) != null) {
                y.this.f45632h = hasMore.booleanValue();
            }
            y.this.f45627c.q(movieStaffSubjectList);
            if (movieStaffSubjectList != null) {
                y yVar = y.this;
                List arrayList = (List) yVar.f45626b.f();
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(movieStaffSubjectList);
                yVar.f45626b.q(arrayList);
            }
            y.this.f45631g++;
            io.reactivex.rxjava3.disposables.c cVar2 = y.this.f45633i;
            if (cVar2 == null || cVar2.isDisposed() || (cVar = y.this.f45633i) == null) {
                return;
            }
            cVar.dispose();
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d10) {
            Intrinsics.h(d10, "d");
            super.onSubscribe(d10);
            y.this.f45633i = d10;
        }
    }

    static final class d implements yx.h {

        final JsonObject f45637a;

        d(JsonObject jsonObject) {
            this.f45637a = jsonObject;
        }

        @Override
        public final RequestBody apply(JsonObject it) {
            Intrinsics.h(it, "it");
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = this.f45637a.toString();
            Intrinsics.g(string, "toString(...)");
            return companion.create(string, MediaType.INSTANCE.parse("application/json"));
        }
    }

    static final class e implements yx.h {
        e() {
        }

        @Override
        public final io.reactivex.rxjava3.core.m apply(RequestBody it) {
            Intrinsics.h(it, "it");
            return com.transsion.moviedetail.staff.a.C0610a.d(y.this.r(), it, null, 2, null);
        }
    }

    public static final class f extends dg.a {

        final int f45640e;

        f(int i10) {
            this.f45640e = i10;
        }

        @Override
        public void a(String str, String str2) {
            y.this.f45628d.q(-1);
        }

        @Override
        public void c(String str) {
            super.c(str);
            y.this.f45628d.q(Integer.valueOf(this.f45640e));
        }
    }

    public final com.transsion.moviedetail.staff.a r() {
        return (com.transsion.moviedetail.staff.a) this.f45630f.getValue();
    }

    public static final com.transsion.moviedetail.staff.a x() {
        return (com.transsion.moviedetail.staff.a) kg.c.f63982e.a().h(com.transsion.moviedetail.staff.a.class);
    }

    public final void n() {
        this.f45627c.q(null);
    }

    public final void o(String str) {
        if (str == null) {
            return;
        }
        com.transsion.moviedetail.staff.a.C0610a.b(r(), str, null, 2, null).f(dg.d.f59034a.c()).subscribe(new a());
    }

    public final void p(String str) {
        if (str == null) {
            return;
        }
        com.transsion.moviedetail.staff.a.C0610a.a(r(), str, null, 2, null).f(dg.d.f59034a.c()).subscribe(new b());
    }

    public final void q(String str, int i10) {
        if (str == null || !this.f45632h) {
            return;
        }
        io.reactivex.rxjava3.disposables.c cVar = this.f45633i;
        if (cVar == null || cVar.isDisposed()) {
            int i11 = this.f45631g;
            int i12 = 1;
            if (i11 > 1) {
                i12 = i10 + 1 + ((i11 - 2) * 60);
                i10 = i12 + 59;
            }
            com.transsion.moviedetail.staff.a.C0610a.c(r(), str, i12, i10, 1, null, 16, null).f(dg.d.f59034a.c()).subscribe(new c());
        }
    }

    public final LiveData s() {
        return this.f45629e;
    }

    public final LiveData t() {
        return this.f45625a;
    }

    public final LiveData u() {
        return this.f45626b;
    }

    public final LiveData v() {
        return this.f45627c;
    }

    public final LiveData w() {
        return this.f45628d;
    }

    public final void y(String str, int i10) {
        if (str == null) {
            return;
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("staffId", str);
        jsonObject.addProperty(EventConstants.KEY_ACTION, Integer.valueOf(i10));
        io.reactivex.rxjava3.core.j.t(jsonObject).u(new d(jsonObject)).n(new e()).f(dg.d.f59034a.c()).subscribe(new f(i10));
    }
}
