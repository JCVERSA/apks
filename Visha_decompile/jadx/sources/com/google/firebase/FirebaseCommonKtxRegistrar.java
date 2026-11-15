package com.google.firebase;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.al5;
import defpackage.d50;
import defpackage.ef3;
import defpackage.ic1;
import defpackage.k82;
import defpackage.nc1;
import defpackage.nfb;
import defpackage.rf0;
import defpackage.vk8;
import defpackage.y45;
import defpackage.y71;
import defpackage.zb1;
import java.util.List;
import java.util.concurrent.Executor;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Keep
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0006\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/google/firebase/FirebaseCommonKtxRegistrar;", "Lcom/google/firebase/components/ComponentRegistrar;", MethodDecl.initName, "()V", "", "Lzb1;", "getComponents", "()Ljava/util/List;", "com.google.firebase-firebase-common"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {

    public static final class a implements nc1 {
        public static final a a = new a();

        @Override
        public final kotlinx.coroutines.c a(ic1 ic1Var) {
            Object objD = ic1Var.d(vk8.a(d50.class, Executor.class));
            y45.i(objD, "get(...)");
            return ef3.a((Executor) objD);
        }
    }

    public static final class b implements nc1 {
        public static final b a = new b();

        @Override
        public final kotlinx.coroutines.c a(ic1 ic1Var) {
            Object objD = ic1Var.d(vk8.a(al5.class, Executor.class));
            y45.i(objD, "get(...)");
            return ef3.a((Executor) objD);
        }
    }

    public static final class c implements nc1 {
        public static final c a = new c();

        @Override
        public final kotlinx.coroutines.c a(ic1 ic1Var) {
            Object objD = ic1Var.d(vk8.a(rf0.class, Executor.class));
            y45.i(objD, "get(...)");
            return ef3.a((Executor) objD);
        }
    }

    public static final class d implements nc1 {
        public static final d a = new d();

        @Override
        public final kotlinx.coroutines.c a(ic1 ic1Var) {
            Object objD = ic1Var.d(vk8.a(nfb.class, Executor.class));
            y45.i(objD, "get(...)");
            return ef3.a((Executor) objD);
        }
    }

    @Override
    public List<zb1> getComponents() {
        zb1 zb1VarD = zb1.c(vk8.a(d50.class, kotlinx.coroutines.c.class)).b(k82.j(vk8.a(d50.class, Executor.class))).f(a.a).d();
        y45.i(zb1VarD, "build(...)");
        zb1 zb1VarD2 = zb1.c(vk8.a(al5.class, kotlinx.coroutines.c.class)).b(k82.j(vk8.a(al5.class, Executor.class))).f(b.a).d();
        y45.i(zb1VarD2, "build(...)");
        zb1 zb1VarD3 = zb1.c(vk8.a(rf0.class, kotlinx.coroutines.c.class)).b(k82.j(vk8.a(rf0.class, Executor.class))).f(c.a).d();
        y45.i(zb1VarD3, "build(...)");
        zb1 zb1VarD4 = zb1.c(vk8.a(nfb.class, kotlinx.coroutines.c.class)).b(k82.j(vk8.a(nfb.class, Executor.class))).f(d.a).d();
        y45.i(zb1VarD4, "build(...)");
        return y71.n(zb1VarD, zb1VarD2, zb1VarD3, zb1VarD4);
    }
}
