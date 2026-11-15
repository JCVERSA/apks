package org.bouncycastle.jce.provider;

import androidx.exifinterface.media.ExifInterface;
import com.alibaba.android.arouter.utils.Consts;
import defpackage.arc;
import defpackage.av7;
import defpackage.av9;
import defpackage.b40;
import defpackage.c18;
import defpackage.cj;
import defpackage.gx0;
import defpackage.hi5;
import defpackage.hl4;
import defpackage.ik0;
import defpackage.l1;
import defpackage.l55;
import defpackage.mx6;
import defpackage.og8;
import defpackage.oh5;
import defpackage.qj8;
import defpackage.ro3;
import defpackage.s1a;
import defpackage.s40;
import defpackage.sy8;
import defpackage.u0a;
import defpackage.ubc;
import defpackage.wo0;
import defpackage.xb2;
import defpackage.xl1;
import defpackage.xqc;
import defpackage.yu7;
import defpackage.yw6;
import defpackage.zl1;
import java.io.IOException;
import java.security.AccessController;
import java.security.PrivateKey;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.security.PublicKey;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bouncycastle.crypto.CryptoServiceConstraintsException;

public final class BouncyCastleProvider extends Provider {
    private static final String ASYMMETRIC_PACKAGE = "org.bouncycastle.jcajce.provider.asymmetric.";
    private static final String DIGEST_PACKAGE = "org.bouncycastle.jcajce.provider.digest.";
    private static final String KEYSTORE_PACKAGE = "org.bouncycastle.jcajce.provider.keystore.";
    private static final String SECURE_RANDOM_PACKAGE = "org.bouncycastle.jcajce.provider.drbg.";
    private static final String SYMMETRIC_PACKAGE = "org.bouncycastle.jcajce.provider.symmetric.";
    private Map<String, Provider.Service> serviceMap;
    private static final Logger LOG = Logger.getLogger(BouncyCastleProvider.class.getName());
    private static String info = "BouncyCastle Security Provider v1.78";
    public static final qj8 CONFIGURATION = new ik0();
    private static final Map keyInfoConverters = new HashMap();
    private static final Class revChkClass = gx0.a(BouncyCastleProvider.class, "java.security.cert.PKIXRevocationChecker");
    private static final String[] SYMMETRIC_GENERIC = {"PBEPBKDF1", "PBEPBKDF2", "PBEPKCS12", "TLSKDF", "SCRYPT"};
    private static final String[] SYMMETRIC_MACS = {"SipHash", "SipHash128", "Poly1305"};
    private static final xl1[] SYMMETRIC_CIPHERS = {service("AES", 256), service("ARC4", 20), service("ARIA", 256), service("Blowfish", 128), service("Camellia", 256), service("CAST5", 128), service("CAST6", 256), service("ChaCha", 128), service("DES", 56), service("DESede", 112), service("GOST28147", 128), service("Grainv1", 128), service("Grain128", 128), service("HC128", 128), service("HC256", 256), service("IDEA", 128), service("Noekeon", 128), service("RC2", 128), service("RC5", 128), service("RC6", 256), service("Rijndael", 256), service("Salsa20", 128), service("SEED", 128), service("Serpent", 256), service("Shacal2", 128), service("Skipjack", 80), service("SM4", 128), service("TEA", 128), service("Twofish", 256), service("Threefish", 128), service("VMPC", 128), service("VMPCKSA3", 128), service("XTEA", 128), service("XSalsa20", 128), service("OpenSSLPBKDF", 128), service("DSTU7624", 256), service("GOST3412_2015", 256), service("Zuc", 128)};
    private static final String[] ASYMMETRIC_GENERIC = {"X509", "IES", "COMPOSITE", "EXTERNAL", "CompositeSignatures"};
    private static final String[] ASYMMETRIC_CIPHERS = {"DSA", "DH", "EC", "RSA", "GOST", "ECGOST", "ElGamal", "DSTU4145", "GM", "EdEC", "LMS", "SPHINCSPlus", "Dilithium", "Falcon", "NTRU"};
    private static final String[] DIGESTS = {"GOST3411", "Keccak", "MD2", "MD4", "MD5", "SHA1", "RIPEMD128", "RIPEMD160", "RIPEMD256", "RIPEMD320", "SHA224", "SHA256", "SHA384", "SHA512", "SHA3", "Skein", "SM3", "Tiger", "Whirlpool", "Blake2b", "Blake2s", "DSTU7564", "Haraka", "Blake3"};
    public static final String PROVIDER_NAME = "BC";
    private static final String[] KEYSTORES = {PROVIDER_NAME, "BCFKS", "PKCS12"};
    private static final String[] SECURE_RANDOMS = {"DRBG"};

    public class a implements PrivilegedAction {
        public a() {
        }

        @Override
        public Object run() {
            BouncyCastleProvider.this.setup();
            return null;
        }
    }

    public class b implements PrivilegedAction {
        public final String a;
        public final String b;
        public final String c;

        public b(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        @Override
        public Provider.Service run() {
            Provider.Service service = BouncyCastleProvider.super.getService(this.a, this.b);
            if (service == null) {
                return null;
            }
            BouncyCastleProvider.this.serviceMap.put(this.c, service);
            BouncyCastleProvider.super.remove(service.getType() + Consts.DOT + service.getAlgorithm());
            BouncyCastleProvider.super.putService(service);
            return service;
        }
    }

    public static class c implements xl1 {
        public final String a;
        public final int b;

        public c(String str, int i) {
            this.a = str;
            this.b = i;
        }

        @Override
        public String a() {
            return this.a;
        }
    }

    public BouncyCastleProvider() {
        super(PROVIDER_NAME, 1.78d, info);
        this.serviceMap = new ConcurrentHashMap();
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
        if (s1aVar.m().m().G(b40.Z0)) {
            return new c18().a(s1aVar);
        }
        cj asymmetricKeyInfoConverter = getAsymmetricKeyInfoConverter(s1aVar.m().m());
        if (asymmetricKeyInfoConverter == null) {
            return null;
        }
        return asymmetricKeyInfoConverter.a(s1aVar);
    }

    private void loadAlgorithms(String str, xl1[] xl1VarArr) {
        for (int i = 0; i != xl1VarArr.length; i++) {
            xl1 xl1Var = xl1VarArr[i];
            try {
                zl1.a(xl1Var);
                loadServiceClass(str, xl1Var.a());
            } catch (CryptoServiceConstraintsException unused) {
                Logger logger = LOG;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine("service for " + xl1Var.a() + " ignored due to constraints");
                }
            }
        }
    }

    private void loadPQCKeys() {
        addKeyInfoConverter(b40.a0, new sy8());
        addKeyInfoConverter(b40.b0, new sy8());
        addKeyInfoConverter(b40.c0, new sy8());
        addKeyInfoConverter(b40.d0, new sy8());
        addKeyInfoConverter(b40.e0, new sy8());
        addKeyInfoConverter(b40.f0, new sy8());
        addKeyInfoConverter(b40.g0, new sy8());
        addKeyInfoConverter(b40.h0, new sy8());
        addKeyInfoConverter(b40.i0, new sy8());
        addKeyInfoConverter(b40.j0, new sy8());
        addKeyInfoConverter(b40.k0, new sy8());
        addKeyInfoConverter(b40.l0, new sy8());
        addKeyInfoConverter(b40.m0, new sy8());
        addKeyInfoConverter(b40.n0, new sy8());
        addKeyInfoConverter(b40.o0, new sy8());
        addKeyInfoConverter(b40.p0, new sy8());
        addKeyInfoConverter(b40.q0, new sy8());
        addKeyInfoConverter(b40.r0, new sy8());
        addKeyInfoConverter(b40.s0, new sy8());
        addKeyInfoConverter(b40.t0, new sy8());
        addKeyInfoConverter(b40.u0, new sy8());
        addKeyInfoConverter(b40.v0, new sy8());
        addKeyInfoConverter(b40.w0, new sy8());
        addKeyInfoConverter(b40.x0, new sy8());
        addKeyInfoConverter(b40.y0, new sy8());
        addKeyInfoConverter(b40.z0, new sy8());
        addKeyInfoConverter(b40.A0, new sy8());
        addKeyInfoConverter(b40.B0, new sy8());
        addKeyInfoConverter(b40.C0, new sy8());
        addKeyInfoConverter(b40.D0, new sy8());
        addKeyInfoConverter(b40.E0, new sy8());
        addKeyInfoConverter(b40.F0, new sy8());
        addKeyInfoConverter(b40.G0, new sy8());
        addKeyInfoConverter(b40.H0, new sy8());
        addKeyInfoConverter(b40.I0, new sy8());
        addKeyInfoConverter(b40.J0, new sy8());
        addKeyInfoConverter(b40.K0, new sy8());
        addKeyInfoConverter(b40.N0, new sy8());
        addKeyInfoConverter(b40.P0, new sy8());
        addKeyInfoConverter(b40.R0, new sy8());
        addKeyInfoConverter(new l1("1.3.9999.6.4.10"), new sy8());
        addKeyInfoConverter(b40.S0, new sy8());
        addKeyInfoConverter(b40.U0, new sy8());
        addKeyInfoConverter(b40.W0, new sy8());
        addKeyInfoConverter(av7.r, new av9());
        addKeyInfoConverter(av7.v, new yw6());
        addKeyInfoConverter(av7.w, new xqc());
        addKeyInfoConverter(l55.a, new xqc());
        addKeyInfoConverter(av7.F, new arc());
        addKeyInfoConverter(l55.b, new arc());
        addKeyInfoConverter(yu7.H3, new hi5());
        addKeyInfoConverter(b40.Z0, new c18());
        addKeyInfoConverter(b40.r1, new ro3());
        addKeyInfoConverter(b40.s1, new ro3());
        addKeyInfoConverter(b40.u1, new xb2());
        addKeyInfoConverter(b40.v1, new xb2());
        addKeyInfoConverter(b40.w1, new xb2());
        addKeyInfoConverter(b40.x1, new xb2());
        addKeyInfoConverter(b40.y1, new xb2());
        addKeyInfoConverter(b40.z1, new xb2());
        addKeyInfoConverter(b40.P2, new oh5());
        addKeyInfoConverter(b40.Q2, new oh5());
        l1 l1Var = b40.R2;
        addKeyInfoConverter(l1Var, new oh5());
        addKeyInfoConverter(b40.O1, new wo0());
        addKeyInfoConverter(b40.Q1, new wo0());
        addKeyInfoConverter(b40.S1, new wo0());
        addKeyInfoConverter(b40.U1, new wo0());
        addKeyInfoConverter(b40.W1, new wo0());
        addKeyInfoConverter(b40.l3, new s40());
        addKeyInfoConverter(b40.m3, new s40());
        addKeyInfoConverter(b40.n3, new s40());
        addKeyInfoConverter(b40.p3, new hl4());
        addKeyInfoConverter(b40.q3, new hl4());
        addKeyInfoConverter(b40.r3, new hl4());
        addKeyInfoConverter(l1Var, new oh5());
        addKeyInfoConverter(b40.S2, new oh5());
        addKeyInfoConverter(b40.T2, new oh5());
        addKeyInfoConverter(b40.U2, new oh5());
        addKeyInfoConverter(b40.I2, new mx6());
        addKeyInfoConverter(b40.J2, new mx6());
        addKeyInfoConverter(b40.K2, new mx6());
        addKeyInfoConverter(b40.L2, new mx6());
    }

    private void loadServiceClass(String str, String str2) {
        Class clsA = gx0.a(BouncyCastleProvider.class, str + str2 + "$Mappings");
        if (clsA == null) {
            return;
        }
        try {
            ubc.a(clsA.newInstance());
            throw null;
        } catch (Exception e) {
            throw new InternalError("cannot create instance of " + str + str2 + "$Mappings : " + e);
        }
    }

    private static xl1 service(String str, int i) {
        return new c(str, i);
    }

    public void setup() {
        String str;
        String str2;
        loadAlgorithms(DIGEST_PACKAGE, DIGESTS);
        loadAlgorithms(SYMMETRIC_PACKAGE, SYMMETRIC_GENERIC);
        loadAlgorithms(SYMMETRIC_PACKAGE, SYMMETRIC_MACS);
        loadAlgorithms(SYMMETRIC_PACKAGE, SYMMETRIC_CIPHERS);
        loadAlgorithms(ASYMMETRIC_PACKAGE, ASYMMETRIC_GENERIC);
        loadAlgorithms(ASYMMETRIC_PACKAGE, ASYMMETRIC_CIPHERS);
        loadAlgorithms(KEYSTORE_PACKAGE, KEYSTORES);
        loadAlgorithms(SECURE_RANDOM_PACKAGE, SECURE_RANDOMS);
        loadPQCKeys();
        put("X509Store.CERTIFICATE/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCertCollection");
        put("X509Store.ATTRIBUTECERTIFICATE/COLLECTION", "org.bouncycastle.jce.provider.X509StoreAttrCertCollection");
        put("X509Store.CRL/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCRLCollection");
        put("X509Store.CERTIFICATEPAIR/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCertPairCollection");
        put("X509Store.CERTIFICATE/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCerts");
        put("X509Store.CRL/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCRLs");
        put("X509Store.ATTRIBUTECERTIFICATE/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPAttrCerts");
        put("X509Store.CERTIFICATEPAIR/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCertPairs");
        put("X509StreamParser.CERTIFICATE", "org.bouncycastle.jce.provider.X509CertParser");
        put("X509StreamParser.ATTRIBUTECERTIFICATE", "org.bouncycastle.jce.provider.X509AttrCertParser");
        put("X509StreamParser.CRL", "org.bouncycastle.jce.provider.X509CRLParser");
        put("X509StreamParser.CERTIFICATEPAIR", "org.bouncycastle.jce.provider.X509CertPairParser");
        put("Cipher.BROKENPBEWITHMD5ANDDES", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES");
        put("Cipher.BROKENPBEWITHSHA1ANDDES", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES");
        put("Cipher.OLDPBEWITHSHAANDTWOFISH-CBC", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish");
        Class cls = revChkClass;
        put("CertPathValidator.RFC3281", "org.bouncycastle.jce.provider.PKIXAttrCertPathValidatorSpi");
        put("CertPathBuilder.RFC3281", "org.bouncycastle.jce.provider.PKIXAttrCertPathBuilderSpi");
        if (cls != null) {
            str = "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi_8";
            put("CertPathValidator.RFC3280", "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi_8");
            str2 = "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi_8";
        } else {
            str = "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi";
            put("CertPathValidator.RFC3280", "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi");
            str2 = "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi";
        }
        put("CertPathBuilder.RFC3280", str2);
        put("CertPathValidator.PKIX", str);
        put("CertPathBuilder.PKIX", str2);
        put("CertStore.Collection", "org.bouncycastle.jce.provider.CertStoreCollectionSpi");
        put("CertStore.LDAP", "org.bouncycastle.jce.provider.X509LDAPCertStoreSpi");
        put("CertStore.Multi", "org.bouncycastle.jce.provider.MultiCertStoreSpi");
        put("Alg.Alias.CertStore.X509LDAP", "LDAP");
    }

    public void addAlgorithm(String str, l1 l1Var, String str2) {
        addAlgorithm(str + Consts.DOT + l1Var, str2);
        addAlgorithm(str + ".OID." + l1Var, str2);
    }

    public void addAttributes(String str, Map<String, String> map) {
        put(str + " ImplementedIn", ExifInterface.TAG_SOFTWARE);
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

    @Override
    public final Provider.Service getService(String str, String str2) {
        String str3 = str + Consts.DOT + u0a.j(str2);
        Provider.Service service = this.serviceMap.get(str3);
        if (service == null) {
            synchronized (this) {
                try {
                    service = (Provider.Service) (!this.serviceMap.containsKey(str3) ? AccessController.doPrivileged(new b(str, str2, str3)) : this.serviceMap.get(str3));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return service;
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
        qj8 qj8Var = CONFIGURATION;
        synchronized (qj8Var) {
            ((ik0) qj8Var).d(str, obj);
        }
    }

    private void loadAlgorithms(String str, String[] strArr) {
        for (int i = 0; i != strArr.length; i++) {
            loadServiceClass(str, strArr[i]);
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
