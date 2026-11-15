package com.transsnet.login;

import com.blankj.utilcode.util.ThreadUtils;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class b {

    public static final a f58055a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void c(int i10) {
            fh.b.f60176a.d(i10);
        }

        public final void b(final int i10) {
            ThreadUtils.f().postDelayed(new Runnable() {
                @Override
                public final void run() {
                    b.a.c(i10);
                }
            }, 500L);
        }

        private a() {
        }
    }
}
