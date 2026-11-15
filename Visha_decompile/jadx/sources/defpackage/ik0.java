package defpackage;

import java.security.Permission;
import java.security.spec.ECParameterSpec;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.jcajce.provider.config.ProviderConfigurationPermission;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

public class ik0 implements qj8 {
    public static Permission g = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, "threadLocalEcImplicitlyCa");
    public static Permission h = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, "ecImplicitlyCa");
    public static Permission i = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, "threadLocalDhDefaultParams");
    public static Permission j = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, "DhDefaultParams");
    public static Permission k = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, "acceptableEcCurves");
    public static Permission l = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, "additionalEcParameters");
    public volatile h53 c;
    public volatile Object d;
    public ThreadLocal a = new ThreadLocal();
    public ThreadLocal b = new ThreadLocal();
    public volatile Set e = new HashSet();
    public volatile Map f = new HashMap();

    @Override
    public h53 a() {
        h53 h53Var = (h53) this.a.get();
        return h53Var != null ? h53Var : this.c;
    }

    @Override
    public Set b() {
        return Collections.unmodifiableSet(this.e);
    }

    @Override
    public Map c() {
        return Collections.unmodifiableMap(this.f);
    }

    public void d(String str, Object obj) {
        ThreadLocal threadLocal;
        SecurityManager securityManager = System.getSecurityManager();
        if (str.equals("threadLocalEcImplicitlyCa")) {
            if (securityManager != null) {
                securityManager.checkPermission(g);
            }
            h53 h53VarG = ((obj instanceof h53) || obj == null) ? (h53) obj : q43.g((ECParameterSpec) obj);
            threadLocal = this.a;
            if (h53VarG != null) {
                threadLocal.set(h53VarG);
                return;
            }
        } else {
            if (str.equals("ecImplicitlyCa")) {
                if (securityManager != null) {
                    securityManager.checkPermission(h);
                }
                if ((obj instanceof h53) || obj == null) {
                    this.c = (h53) obj;
                    return;
                } else {
                    this.c = q43.g((ECParameterSpec) obj);
                    return;
                }
            }
            if (!str.equals("threadLocalDhDefaultParams")) {
                if (str.equals("DhDefaultParams")) {
                    if (securityManager != null) {
                        securityManager.checkPermission(j);
                    }
                    if (!(obj instanceof DHParameterSpec) && !(obj instanceof DHParameterSpec[]) && obj != null) {
                        throw new IllegalArgumentException("not a valid DHParameterSpec or DHParameterSpec[]");
                    }
                    this.d = obj;
                    return;
                }
                if (str.equals("acceptableEcCurves")) {
                    if (securityManager != null) {
                        securityManager.checkPermission(k);
                    }
                    this.e = (Set) obj;
                    return;
                } else {
                    if (str.equals("additionalEcParameters")) {
                        if (securityManager != null) {
                            securityManager.checkPermission(l);
                        }
                        this.f = (Map) obj;
                        return;
                    }
                    return;
                }
            }
            if (securityManager != null) {
                securityManager.checkPermission(i);
            }
            if (!(obj instanceof DHParameterSpec) && !(obj instanceof DHParameterSpec[]) && obj != null) {
                throw new IllegalArgumentException("not a valid DHParameterSpec");
            }
            threadLocal = this.b;
            if (obj != null) {
                threadLocal.set(obj);
                return;
            }
        }
        threadLocal.remove();
    }
}
