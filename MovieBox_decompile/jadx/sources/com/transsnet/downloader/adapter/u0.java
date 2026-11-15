package com.transsnet.downloader.adapter;

import kotlin.jvm.internal.Intrinsics;

public interface u0 {

    public static final class a {
        public static void a(u0 u0Var, int i10, p6.a aVar) {
        }

        public static void b(u0 u0Var, b listener) {
            Intrinsics.h(listener, "listener");
        }
    }

    public interface b {

        public static final class a {
            public static void a(b bVar, int i10, int i11, int i12, boolean z10) {
            }
        }

        void a(int i10, int i11);

        void b(int i10, int i11, int i12, boolean z10);
    }

    void a(int i10, p6.a aVar);

    void b(int i10, p6.a aVar);

    void c(b bVar);
}
