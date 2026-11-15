package com.transsion.transfer.androidasync.http;

import com.google.android.gms.security.ProviderInstaller;
import java.lang.reflect.Field;
import java.util.Hashtable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;

public class z implements m {

    Hashtable f53455a = new Hashtable();

    private static class a implements m {

        Field f53456a;

        Field f53457b;

        Field f53458c;

        Field f53459d;

        boolean f53460e;

        public a(Class cls) {
            try {
                Field declaredField = cls.getSuperclass().getDeclaredField("peerHost");
                this.f53456a = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = cls.getSuperclass().getDeclaredField("peerPort");
                this.f53457b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("sslParameters");
                this.f53458c = declaredField3;
                declaredField3.setAccessible(true);
                Field declaredField4 = this.f53458c.getType().getDeclaredField("useSni");
                this.f53459d = declaredField4;
                declaredField4.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
        }

        @Override
        public SSLEngine a(SSLContext sSLContext, String str, int i10) {
            return null;
        }

        @Override
        public void b(SSLEngine sSLEngine, g.a aVar, String str, int i10) {
            if (this.f53459d == null || this.f53460e) {
                return;
            }
            try {
                this.f53456a.set(sSLEngine, str);
                this.f53457b.set(sSLEngine, Integer.valueOf(i10));
                this.f53459d.set(this.f53458c.get(sSLEngine), Boolean.TRUE);
            } catch (IllegalAccessException unused) {
            }
        }
    }

    @Override
    public SSLEngine a(SSLContext sSLContext, String str, int i10) {
        ProviderInstaller.PROVIDER_NAME.equals(sSLContext.getProvider().getName());
        return sSLContext.createSSLEngine(str, i10);
    }

    @Override
    public void b(SSLEngine sSLEngine, g.a aVar, String str, int i10) {
        c(sSLEngine).b(sSLEngine, aVar, str, i10);
    }

    a c(SSLEngine sSLEngine) {
        String canonicalName = sSLEngine.getClass().getCanonicalName();
        a aVar = (a) this.f53455a.get(canonicalName);
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a(sSLEngine.getClass());
        this.f53455a.put(canonicalName, aVar2);
        return aVar2;
    }
}
