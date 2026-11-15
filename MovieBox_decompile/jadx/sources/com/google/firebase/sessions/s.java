package com.google.firebase.sessions;

import kotlin.jvm.internal.Intrinsics;

public interface s {

    public static final a f31871a = a.f31872a;

    public static final class a {

        static final a f31872a = new a();

        private a() {
        }

        public final s a() {
            Object objJ = com.google.firebase.l.a(com.google.firebase.c.f30244a).j(s.class);
            Intrinsics.g(objJ, "Firebase.app[SessionDatastore::class.java]");
            return (s) objJ;
        }
    }

    String a();

    void b(String str);
}
