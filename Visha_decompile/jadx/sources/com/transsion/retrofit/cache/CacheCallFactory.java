package com.transsion.retrofit.cache;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import defpackage.gu8;
import defpackage.jq0;
import defpackage.lq0;
import defpackage.ru8;
import defpackage.tq0;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;
import okhttp3.Request;
import okio.Timeout;

public class CacheCallFactory extends lq0.a {
    final Executor callbackExecutor = new MainThreadExecutor();

    public static final class ExecutorCallbackCall<T> implements jq0<T> {
        final Executor callbackExecutor;
        final jq0<T> delegate;

        public ExecutorCallbackCall(Executor executor, jq0<T> jq0Var) {
            this.callbackExecutor = executor;
            this.delegate = jq0Var;
        }

        @Override
        public void cancel() {
            this.delegate.cancel();
        }

        @Override
        public void enqueue(final tq0 tq0Var) {
            boolean z = Boolean.parseBoolean(this.delegate.request().header("cache"));
            if ((tq0Var instanceof CacheCallback) && z) {
                ((CacheCallback) tq0Var).onGetCache(this, null);
            }
            this.delegate.enqueue(new tq0() {
                @Override
                public void onFailure(jq0<T> jq0Var, final Throwable th) {
                    ExecutorCallbackCall.this.callbackExecutor.execute(new Runnable() {
                        @Override
                        public void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            tq0Var.onFailure(ExecutorCallbackCall.this, th);
                        }
                    });
                }

                @Override
                public void onResponse(jq0<T> jq0Var, final gu8<T> gu8Var) {
                    ExecutorCallbackCall.this.callbackExecutor.execute(new Runnable() {
                        @Override
                        public void run() {
                            if (ExecutorCallbackCall.this.delegate.isCanceled()) {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                tq0Var.onFailure(ExecutorCallbackCall.this, new IOException("Canceled"));
                            } else {
                                AnonymousClass1 anonymousClass2 = AnonymousClass1.this;
                                tq0Var.onResponse(ExecutorCallbackCall.this, gu8Var);
                            }
                        }
                    });
                }
            });
        }

        @Override
        public gu8<T> execute() throws IOException {
            return this.delegate.execute();
        }

        @Override
        public boolean isCanceled() {
            return this.delegate.isCanceled();
        }

        @Override
        public boolean isExecuted() {
            return this.delegate.isExecuted();
        }

        @Override
        public Request request() {
            return this.delegate.request();
        }

        public Timeout timeout() {
            return null;
        }

        @Override
        public jq0<T> clone() {
            return new ExecutorCallbackCall(this.callbackExecutor, this.delegate.clone());
        }
    }

    public static class MainThreadExecutor implements Executor {
        private final Handler handler = new Handler(Looper.getMainLooper());

        @Override
        public void execute(Runnable runnable) {
            this.handler.post(runnable);
        }
    }

    public static Type getCallResponseType(Type type) {
        if (type instanceof ParameterizedType) {
            return lq0.a.getParameterUpperBound(0, (ParameterizedType) type);
        }
        throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
    }

    @Override
    @Nullable
    public lq0 get(Type type, Annotation[] annotationArr, ru8 ru8Var) {
        if (lq0.a.getRawType(type) != jq0.class) {
            return null;
        }
        final Type callResponseType = getCallResponseType(type);
        return new lq0() {
            @Override
            public Object adapt(jq0 jq0Var) {
                return adapt((jq0<Object>) jq0Var);
            }

            @Override
            public Type responseType() {
                return callResponseType;
            }

            @Override
            public jq0<Object> adapt(jq0<Object> jq0Var) {
                return new ExecutorCallbackCall(CacheCallFactory.this.callbackExecutor, jq0Var);
            }
        };
    }
}
