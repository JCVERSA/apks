package com.google.firebase;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.m1;
import ob.b0;
import ob.r;

@Keep
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0006\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/google/firebase/FirebaseCommonKtxRegistrar;", "Lcom/google/firebase/components/ComponentRegistrar;", "<init>", "()V", "", "Lob/c;", "getComponents", "()Ljava/util/List;", "com.google.firebase-firebase-common"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {

    public static final class a implements ob.h {

        public static final a f30213a = new a();

        @Override
        public final i0 a(ob.e eVar) {
            Object objF = eVar.f(b0.a(nb.a.class, Executor.class));
            Intrinsics.g(objF, "get(...)");
            return m1.b((Executor) objF);
        }
    }

    public static final class b implements ob.h {

        public static final b f30214a = new b();

        @Override
        public final i0 a(ob.e eVar) {
            Object objF = eVar.f(b0.a(nb.c.class, Executor.class));
            Intrinsics.g(objF, "get(...)");
            return m1.b((Executor) objF);
        }
    }

    public static final class c implements ob.h {

        public static final c f30215a = new c();

        @Override
        public final i0 a(ob.e eVar) {
            Object objF = eVar.f(b0.a(nb.b.class, Executor.class));
            Intrinsics.g(objF, "get(...)");
            return m1.b((Executor) objF);
        }
    }

    public static final class d implements ob.h {

        public static final d f30216a = new d();

        @Override
        public final i0 a(ob.e eVar) {
            Object objF = eVar.f(b0.a(nb.d.class, Executor.class));
            Intrinsics.g(objF, "get(...)");
            return m1.b((Executor) objF);
        }
    }

    @Override
    public List<ob.c> getComponents() {
        ob.c cVarD = ob.c.e(b0.a(nb.a.class, i0.class)).b(r.l(b0.a(nb.a.class, Executor.class))).f(a.f30213a).d();
        Intrinsics.g(cVarD, "build(...)");
        ob.c cVarD2 = ob.c.e(b0.a(nb.c.class, i0.class)).b(r.l(b0.a(nb.c.class, Executor.class))).f(b.f30214a).d();
        Intrinsics.g(cVarD2, "build(...)");
        ob.c cVarD3 = ob.c.e(b0.a(nb.b.class, i0.class)).b(r.l(b0.a(nb.b.class, Executor.class))).f(c.f30215a).d();
        Intrinsics.g(cVarD3, "build(...)");
        ob.c cVarD4 = ob.c.e(b0.a(nb.d.class, i0.class)).b(r.l(b0.a(nb.d.class, Executor.class))).f(d.f30216a).d();
        Intrinsics.g(cVarD4, "build(...)");
        return CollectionsKt.o(cVarD, cVarD2, cVarD3, cVarD4);
    }
}
