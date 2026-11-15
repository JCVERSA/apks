package com.cloud.tupdate.net.utils;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.y45;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \t2\u00020\u0001:\u0002\r\u000eB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003R\u0018\u0010\f\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;", "", MethodDecl.initName, "()V", "Ljava/lang/Runnable;", "runnable", "Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Ljava/lang/Runnable;)V", "b", "Ljava/util/concurrent/ExecutorService;", "Ljava/util/concurrent/ExecutorService;", "mExecutorService", "Companion", "ThreadPoolUtilsHolder", "tupdate_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class ThreadPoolUtil {

    public static final Companion INSTANCE = new Companion(null);

    public ExecutorService mExecutorService;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$Companion;", "", MethodDecl.initName, "()V", "Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;", "tupdate_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ThreadPoolUtil a() {
            return ThreadPoolUtilsHolder.a.a();
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$ThreadPoolUtilsHolder;", "", MethodDecl.initName, "()V", "Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;", "b", "Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;", "instance", "tupdate_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    public static final class ThreadPoolUtilsHolder {
        public static final ThreadPoolUtilsHolder a = new ThreadPoolUtilsHolder();

        public static final ThreadPoolUtil instance = new ThreadPoolUtil(null);

        private ThreadPoolUtilsHolder() {
        }

        public final ThreadPoolUtil a() {
            return instance;
        }
    }

    public ThreadPoolUtil(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final void a(Runnable runnable) {
        ExecutorService executorService;
        try {
            ExecutorService executorService2 = this.mExecutorService;
            Boolean boolValueOf = executorService2 == null ? null : Boolean.valueOf(executorService2.isShutdown());
            y45.g(boolValueOf);
            if (!boolValueOf.booleanValue() && (executorService = this.mExecutorService) != null) {
                executorService.execute(runnable);
            }
        } catch (RejectedExecutionException e) {
            LogUtil.a.d(e);
        }
    }

    public final void b() {
        if (this.mExecutorService == null) {
            this.mExecutorService = Executors.newCachedThreadPool();
        }
    }

    private ThreadPoolUtil() {
        b();
    }
}
