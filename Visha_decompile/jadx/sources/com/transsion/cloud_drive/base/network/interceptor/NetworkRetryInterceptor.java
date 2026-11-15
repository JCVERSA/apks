package com.transsion.cloud_drive.base.network.interceptor;

import com.transsion.cloud_drive.base.exceptions.NoConnectivityException;
import defpackage.d07;
import defpackage.dl0;
import defpackage.j1a;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.oq5;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.LinkedHashSet;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.DelayKt;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public final class NetworkRetryInterceptor implements Interceptor {
    public static final a d = new a(null);
    public final int b;
    public final long c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 9, 0})
    @nt1(c = "com.transsion.cloud_drive.base.network.interceptor.NetworkRetryInterceptor$intercept$1", f = "NetworkRetryInterceptor.kt", l = {46}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        int label;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return NetworkRetryInterceptor.this.new AnonymousClass1(wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                long j = NetworkRetryInterceptor.this.c;
                this.label = 1;
                if (DelayKt.b(j, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 9, 0})
    @nt1(c = "com.transsion.cloud_drive.base.network.interceptor.NetworkRetryInterceptor$intercept$2", f = "NetworkRetryInterceptor.kt", l = {66}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        int label;

        public AnonymousClass2(wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return NetworkRetryInterceptor.this.new AnonymousClass2(wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                long j = NetworkRetryInterceptor.this.c;
                this.label = 1;
                if (DelayKt.b(j, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
    }

    public NetworkRetryInterceptor(int i, long j) {
        this.b = i;
        this.c = j;
    }

    public final boolean b(Throwable th) {
        if ((th instanceof SocketTimeoutException) || (th instanceof ConnectException) || (th instanceof SocketException) || (th instanceof UnknownHostException)) {
            return true;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Throwable cause = th.getCause(); cause != null && !linkedHashSet.contains(cause); cause = cause.getCause()) {
            linkedHashSet.add(cause);
            if ((cause instanceof SocketTimeoutException) || (cause instanceof ConnectException) || (cause instanceof SocketException) || (cause instanceof UnknownHostException)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001b  */
    public final boolean c(Throwable th) {
        String lowerCase;
        if (b(th)) {
            return true;
        }
        String message = th.getMessage();
        if (message != null) {
            lowerCase = message.toLowerCase(Locale.ROOT);
            y45.i(lowerCase, "toLowerCase(...)");
            if (lowerCase == null) {
                lowerCase = "";
            }
        } else {
            lowerCase = "";
        }
        return j1a.X(lowerCase, "network", false, 2, null) || j1a.X(lowerCase, "connection", false, 2, null) || j1a.X(lowerCase, "timeout", false, 2, null) || j1a.X(lowerCase, "unreachable", false, 2, null) || j1a.X(lowerCase, "refused", false, 2, null);
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws Exception {
        y45.j(chain, "chain");
        Request request = chain.request();
        int i = this.b;
        Exception exc = null;
        if (i >= 0) {
            int i2 = 0;
            Exception e = null;
            while (!d07.a.a()) {
                try {
                    if (i2 >= this.b) {
                        throw new NoConnectivityException();
                    }
                    oq5.a.a("NetworkRetryInterceptor", "网络不可用，等待" + this.c + "ms后重试，当前尝试次数：" + (i2 + 1));
                    dl0.b(null, new AnonymousClass1(null), 1, null);
                    if (i2 != i) {
                        i2++;
                    } else {
                        exc = e;
                    }
                } catch (Exception e2) {
                    e = e2;
                    if (!c(e) || i2 >= this.b) {
                        throw e;
                    }
                    oq5.a.a("NetworkRetryInterceptor", "网络异常：" + e.getMessage() + "，等待" + this.c + "ms后重试，当前尝试次数：" + (i2 + 1));
                    dl0.b(null, new AnonymousClass2(null), 1, null);
                }
            }
            return chain.proceed(request);
        }
        if (exc != null) {
            throw exc;
        }
        throw new IOException("网络请求失败");
    }
}
