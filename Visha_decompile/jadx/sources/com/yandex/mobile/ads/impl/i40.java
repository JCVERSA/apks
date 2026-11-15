package com.yandex.mobile.ads.impl;

import android.os.Looper;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.i40;

public interface i40 {
    public static final i40 a = new a();

    public class a implements i40 {
        @Override
        public final void a(Looper looper, mi1 mi1Var) {
        }

        @Override
        @Nullable
        public final g40 b(@Nullable h40.a aVar, jc0 jc0Var) {
            if (jc0Var.p == null) {
                return null;
            }
            return new u50(new g40.a(new l82(), 6001));
        }

        @Override
        public final int a(jc0 jc0Var) {
            return jc0Var.p != null ? 1 : 0;
        }
    }

    public interface b {
        public static final b a = new b() {
            @Override
            public final void release() {
                i40.b.lambda$static$0();
            }
        };

        static void lambda$static$0() {
        }

        void release();
    }

    int a(jc0 jc0Var);

    default b a(@Nullable h40.a aVar, jc0 jc0Var) {
        return b.a;
    }

    void a(Looper looper, mi1 mi1Var);

    @Nullable
    g40 b(@Nullable h40.a aVar, jc0 jc0Var);

    default void prepare() {
    }

    default void release() {
    }
}
