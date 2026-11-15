package com.google.android.datatransport.cct.internal;

import defpackage.ob;

public abstract class ClientInfo {

    public enum ClientType {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);

        private final int value;

        ClientType(int i) {
            this.value = i;
        }
    }

    public static abstract class a {
        public abstract ClientInfo a();

        public abstract a b(ob obVar);

        public abstract a c(ClientType clientType);
    }

    public static a a() {
        return new b.C0074b();
    }

    public abstract ob b();

    public abstract ClientType c();
}
