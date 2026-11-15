package com.transsion.postdetail.viewmodel;

import android.net.Uri;
import android.text.TextUtils;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.publish.R$string;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.RequestBody;

public final class PostRecommendFragmentViewModel extends t0 {

    public static final a f48131d = new a(null);

    private final Lazy f48132a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PostRecommendFragmentViewModel.j();
        }
    });

    private final b0 f48133b = new b0();

    private final Lazy f48134c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PostRecommendFragmentViewModel.f();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final b0 f() {
        return new b0();
    }

    public final ao.b i() {
        return (ao.b) this.f48132a.getValue();
    }

    public static final ao.b j() {
        return (ao.b) kg.c.f63982e.a().h(ao.b.class);
    }

    public final void g(String postId, int i10, int i11, int i12) {
        String string;
        Intrinsics.h(postId, "postId");
        if (TextUtils.isEmpty(postId)) {
            return;
        }
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.upload_no_network);
            this.f48133b.n(null);
            return;
        }
        ImmVideoRequestEntity immVideoRequestEntity = new ImmVideoRequestEntity();
        immVideoRequestEntity.setPage(String.valueOf(i11));
        immVideoRequestEntity.setPerPage(i12);
        immVideoRequestEntity.setSessionId(jg.b.f63119a.h());
        Uri uriB = com.transsion.baselib.report.h.f42200a.b();
        if (uriB == null || (string = uriB.toString()) == null) {
            string = "";
        }
        immVideoRequestEntity.setDeepLink(string);
        immVideoRequestEntity.setUserPrefer("");
        immVideoRequestEntity.setLatest_events(ej.b.f59709a.e());
        immVideoRequestEntity.setPostId(postId);
        immVideoRequestEntity.setTabId(i10);
        mg.b.a aVar = mg.b.f66404a;
        String strJ = com.blankj.utilcode.util.o.j(immVideoRequestEntity);
        Intrinsics.g(strJ, "toJson(...)");
        RequestBody requestBodyA = aVar.a(strJ);
        if (requestBodyA != null) {
            kotlinx.coroutines.k.d(u0.a(this), null, null, new PostRecommendFragmentViewModel$getImmVideoList$1$1(this, requestBodyA, null), 3, null);
        }
    }

    public final LiveData h() {
        return this.f48133b;
    }
}
