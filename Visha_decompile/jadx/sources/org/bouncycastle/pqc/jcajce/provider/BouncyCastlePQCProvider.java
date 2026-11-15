package org.bouncycastle.pqc.jcajce.provider;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.cj;
import defpackage.l1;
import defpackage.og8;
import defpackage.qj8;
import defpackage.s1a;
import defpackage.ubc;
import java.io.IOException;
import java.security.AccessController;
import java.security.PrivateKey;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.security.PublicKey;
import java.util.HashMap;
import java.util.Map;

public class BouncyCastlePQCProvider extends Provider {
    private static final String ALGORITHM_PACKAGE = "org.bouncycastle.pqc.jcajce.provider.";
    public static final qj8 CONFIGURATION = null;
    public static String PROVIDER_NAME = "BCPQC";
    private static String info = "BouncyCastle Post-Quantum Security Provider v1.78";
    private static final Map keyInfoConverters = new HashMap();
    private static final String[] ALGORITHMS = {"SPHINCS", "LMS", "NH", "XMSS", "SPHINCSPlus", "CMCE", "Frodo", "SABER", "Picnic", "NTRU", "Falcon", "Kyber", "Dilithium", "NTRUPrime", "BIKE", "HQC", "Rainbow"};

    public class a implements PrivilegedAction {
        public a() {
        }

        @Override
        public Object run() {
            BouncyCastlePQCProvider.this.setup();
            return null;
        }
    }

    public static class b implements PrivilegedAction {
        public final String a;

        public b(String str) {
            this.a = str;
        }

        @Override
        public Object run() {
            try {
                return Class.forName(this.a);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public BouncyCastlePQCProvider() {
        super(PROVIDER_NAME, 1.78d, info);
        AccessController.doPrivileged(new a());
    }

    private static cj getAsymmetricKeyInfoConverter(l1 l1Var) {
        cj cjVar;
        Map map = keyInfoConverters;
        synchronized (map) {
            cjVar = (cj) map.get(l1Var);
        }
        return cjVar;
    }

    public static PrivateKey getPrivateKey(og8 og8Var) throws IOException {
        cj asymmetricKeyInfoConverter = getAsymmetricKeyInfoConverter(og8Var.p().m());
        if (asymmetricKeyInfoConverter == null) {
            return null;
        }
        return asymmetricKeyInfoConverter.b(og8Var);
    }

    public static PublicKey getPublicKey(s1a s1aVar) throws IOException {
        cj asymmetricKeyInfoConverter = getAsymmetricKeyInfoConverter(s1aVar.m().m());
        if (asymmetricKeyInfoConverter == null) {
            return null;
        }
        return asymmetricKeyInfoConverter.a(s1aVar);
    }

    private void loadAlgorithms(String str, String[] strArr) {
        for (int i = 0; i != strArr.length; i++) {
            Class clsLoadClass = loadClass(BouncyCastlePQCProvider.class, str + strArr[i] + "$Mappings");
            if (clsLoadClass != null) {
                try {
                    ubc.a(clsLoadClass.newInstance());
                    throw null;
                } catch (Exception e) {
                    throw new InternalError("cannot create instance of " + str + strArr[i] + "$Mappings : " + e);
                }
            }
        }
    }

    public static Class loadClass(Class cls, String str) {
        try {
            ClassLoader classLoader = cls.getClassLoader();
            return classLoader != null ? classLoader.loadClass(str) : (Class) AccessController.doPrivileged(new b(str));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public void setup() {
        loadAlgorithms(ALGORITHM_PACKAGE, ALGORITHMS);
    }

    public void addAlgorithm(String str, l1 l1Var, String str2) {
        if (!containsKey(str + Consts.DOT + str2)) {
            throw new IllegalStateException("primary key (" + str + Consts.DOT + str2 + ") not found");
        }
        addAlgorithm(str + Consts.DOT + l1Var, str2);
        addAlgorithm(str + ".OID." + l1Var, str2);
    }

    public void addAttributes(String str, Map<String, String> map) {
        for (String str2 : map.keySet()) {
            String str3 = str + " " + str2;
            if (containsKey(str3)) {
                throw new IllegalStateException("duplicate provider attribute key (" + str3 + ") found");
            }
            put(str3, map.get(str2));
        }
    }

    public void addKeyInfoConverter(l1 l1Var, cj cjVar) {
        Map map = keyInfoConverters;
        synchronized (map) {
            map.put(l1Var, cjVar);
        }
    }

    public cj getKeyInfoConverter(l1 l1Var) {
        return (cj) keyInfoConverters.get(l1Var);
    }

    public boolean hasAlgorithm(String str, String str2) {
        if (!containsKey(str + Consts.DOT + str2)) {
            if (!containsKey("Alg.Alias." + str + Consts.DOT + str2)) {
                return false;
            }
        }
        return true;
    }

    public void setParameter(String str, Object obj) {
        synchronized (CONFIGURATION) {
        }
    }

    public void addAlgorithm(String str, l1 l1Var, String str2, Map<String, String> map) {
        addAlgorithm(str, l1Var, str2);
        addAttributes(str + Consts.DOT + l1Var, map);
        addAttributes(str + ".OID." + l1Var, map);
    }

    public void addAlgorithm(String str, String str2) {
        if (!containsKey(str)) {
            put(str, str2);
            return;
        }
        throw new IllegalStateException("duplicate provider key (" + str + ") found");
    }

    public void addAlgorithm(String str, String str2, Map<String, String> map) {
        addAlgorithm(str, str2);
        addAttributes(str, map);
    }
}
