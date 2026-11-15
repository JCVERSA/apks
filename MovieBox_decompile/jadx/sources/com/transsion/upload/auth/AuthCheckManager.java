package com.transsion.upload.auth;

import com.transsion.upload.bean.TstTokenEntity;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class AuthCheckManager {

    private static TstTokenEntity f54560b;

    public static final AuthCheckManager f54559a = new AuthCheckManager();

    private static final CopyOnWriteArrayList f54561c = new CopyOnWriteArrayList();

    private static final AtomicBoolean f54562d = new AtomicBoolean(false);

    private AuthCheckManager() {
    }

    private final boolean e() {
        Object objM453constructorimpl;
        Long expireTime;
        try {
            Result.Companion companion = Result.INSTANCE;
            TstTokenEntity tstTokenEntity = f54560b;
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf(((tstTokenEntity == null || (expireTime = tstTokenEntity.getExpireTime()) == null) ? 0L : expireTime.longValue()) - ((long) 60) > System.currentTimeMillis() / ((long) 1000)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    public final String g() {
        String simpleName = AuthCheckManager.class.getSimpleName();
        Intrinsics.g(simpleName, "javaClass.simpleName");
        return simpleName;
    }

    private final boolean h(a aVar) {
        AtomicBoolean atomicBoolean = f54562d;
        if (!atomicBoolean.get()) {
            atomicBoolean.set(true);
            return false;
        }
        f54561c.add(aVar);
        wu.a.f74770a.b(g() + " --> 正在请求中...");
        return true;
    }

    public final void i() {
        f54562d.set(false);
        for (a aVar : f54561c) {
            TstTokenEntity tstTokenEntity = f54560b;
            if (tstTokenEntity == null) {
                aVar.onFail("tstToken is empty");
            } else {
                aVar.a(tstTokenEntity);
            }
        }
        f54561c.clear();
        wu.a.f74770a.b(g() + " --> notifyCallback() --> clear()");
    }

    private final void j(a aVar) {
        if (h(aVar)) {
            return;
        }
        k.d(o0.a(y0.b()), null, null, new AuthCheckManager$requestAuth$1(aVar, null), 3, null);
    }

    public final void f(a aVar) {
        if (!e()) {
            j(aVar);
        } else if (aVar != null) {
            aVar.a(f54560b);
        }
    }
}
