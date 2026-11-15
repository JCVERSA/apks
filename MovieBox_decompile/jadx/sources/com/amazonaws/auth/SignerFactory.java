package com.amazonaws.auth;

import com.amazonaws.internal.config.InternalConfig;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class SignerFactory {

    private static final Map f17751a;

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        f17751a = concurrentHashMap;
        concurrentHashMap.put("QueryStringSignerType", QueryStringSigner.class);
        concurrentHashMap.put("AWS4SignerType", AWS4Signer.class);
        concurrentHashMap.put("NoOpSignerType", NoOpSigner.class);
    }

    private static Signer a(String str, String str2) {
        Class cls = (Class) f17751a.get(str);
        if (cls == null) {
            throw new IllegalArgumentException();
        }
        try {
            Signer signer = (Signer) cls.newInstance();
            if (signer instanceof ServiceAwareSigner) {
                ((ServiceAwareSigner) signer).a(str2);
            }
            return signer;
        } catch (IllegalAccessException e10) {
            throw new IllegalStateException("Cannot create an instance of " + cls.getName(), e10);
        } catch (InstantiationException e11) {
            throw new IllegalStateException("Cannot create an instance of " + cls.getName(), e11);
        }
    }

    public static Signer b(String str, String str2) {
        return d(str, str2);
    }

    public static Signer c(String str, String str2) {
        return a(str, str2);
    }

    private static Signer d(String str, String str2) {
        return a(InternalConfig.Factory.a().i(str, str2).a(), str);
    }

    public static void e(String str, Class cls) {
        if (str == null) {
            throw new IllegalArgumentException("signerType cannot be null");
        }
        if (cls == null) {
            throw new IllegalArgumentException("signerClass cannot be null");
        }
        f17751a.put(str, cls);
    }
}
