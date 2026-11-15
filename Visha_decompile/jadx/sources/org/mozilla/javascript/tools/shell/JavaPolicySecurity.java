package org.mozilla.javascript.tools.shell;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.AccessControlContext;
import java.security.AccessControlException;
import java.security.AccessController;
import java.security.CodeSource;
import java.security.Permission;
import java.security.PermissionCollection;
import java.security.Policy;
import java.security.PrivilegedAction;
import java.security.ProtectionDomain;
import java.security.cert.Certificate;
import java.util.Enumeration;
import org.apache.commons.io.IOUtils;
import org.mozilla.javascript.Callable;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.GeneratedClassLoader;
import org.mozilla.javascript.Scriptable;

public class JavaPolicySecurity extends SecurityProxy {

    public static class ContextPermissions extends PermissionCollection {
        static final long serialVersionUID = -1721494496320750721L;
        AccessControlContext _context = AccessController.getContext();
        PermissionCollection _statisPermissions;

        public class a implements Enumeration {
            public a() {
            }

            @Override
            public Permission nextElement() {
                return null;
            }

            @Override
            public boolean hasMoreElements() {
                return false;
            }
        }

        public ContextPermissions(ProtectionDomain protectionDomain) {
            if (protectionDomain != null) {
                this._statisPermissions = protectionDomain.getPermissions();
            }
            setReadOnly();
        }

        @Override
        public void add(Permission permission) {
            throw new RuntimeException("NOT IMPLEMENTED");
        }

        @Override
        public Enumeration<Permission> elements() {
            return new a();
        }

        @Override
        public boolean implies(Permission permission) {
            PermissionCollection permissionCollection = this._statisPermissions;
            if (permissionCollection != null && !permissionCollection.implies(permission)) {
                return false;
            }
            try {
                this._context.checkPermission(permission);
                return true;
            } catch (AccessControlException unused) {
                return false;
            }
        }

        public String toString() {
            return getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " (context=" + this._context + ", static_permitions=" + this._statisPermissions + ')';
        }
    }

    public class a implements PrivilegedAction {
        public final String a;
        public final Context b;
        public final Scriptable c;

        public a(String str, Context context, Scriptable scriptable) {
            this.a = str;
            this.b = context;
            this.c = scriptable;
        }

        @Override
        public Object run() {
            URL urlObj = JavaPolicySecurity.this.getUrlObj(this.a);
            try {
                Main.processFileSecure(this.b, this.c, urlObj.toExternalForm(), JavaPolicySecurity.this.getUrlDomain(urlObj));
                return null;
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public class b implements PrivilegedAction {
        public final ClassLoader a;
        public final ProtectionDomain b;

        public b(ClassLoader classLoader, ProtectionDomain protectionDomain) {
            this.a = classLoader;
            this.b = protectionDomain;
        }

        @Override
        public d run() {
            return new d(this.a, this.b);
        }
    }

    public class c implements PrivilegedAction {
        public final Callable a;
        public final Context b;
        public final Scriptable c;
        public final Scriptable d;
        public final Object[] e;

        public c(Callable callable, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
            this.a = callable;
            this.b = context;
            this.c = scriptable;
            this.d = scriptable2;
            this.e = objArr;
        }

        @Override
        public Object run() {
            return this.a.call(this.b, this.c, this.d, this.e);
        }
    }

    public static class d extends ClassLoader implements GeneratedClassLoader {
        public ProtectionDomain a;

        public d(ClassLoader classLoader, ProtectionDomain protectionDomain) {
            super(classLoader == null ? ClassLoader.getSystemClassLoader() : classLoader);
            this.a = protectionDomain;
        }

        @Override
        public Class defineClass(String str, byte[] bArr) {
            return super.defineClass(str, bArr, 0, bArr.length, this.a);
        }

        @Override
        public void linkClass(Class cls) {
            resolveClass(cls);
        }
    }

    public JavaPolicySecurity() {
        new CodeSource((URL) null, (Certificate[]) null);
    }

    private ProtectionDomain getDynamicDomain(ProtectionDomain protectionDomain) {
        return new ProtectionDomain(null, new ContextPermissions(protectionDomain));
    }

    public ProtectionDomain getUrlDomain(URL url) {
        CodeSource codeSource = new CodeSource(url, (Certificate[]) null);
        return new ProtectionDomain(codeSource, Policy.getPolicy().getPermissions(codeSource));
    }

    public URL getUrlObj(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException unused) {
            String strReplace = System.getProperty("user.dir").replace(IOUtils.DIR_SEPARATOR_WINDOWS, IOUtils.DIR_SEPARATOR_UNIX);
            if (!strReplace.endsWith("/")) {
                strReplace = strReplace + IOUtils.DIR_SEPARATOR_UNIX;
            }
            try {
                return new URL(new URL("file:" + strReplace), str);
            } catch (MalformedURLException e) {
                throw new RuntimeException("Can not construct file URL for '" + str + "':" + e.getMessage());
            }
        }
    }

    @Override
    public void callProcessFileSecure(Context context, Scriptable scriptable, String str) {
        AccessController.doPrivileged(new a(str, context, scriptable));
    }

    @Override
    public Object callWithDomain(Object obj, Context context, Callable callable, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return AccessController.doPrivileged(new c(callable, context, scriptable, scriptable2, objArr), new AccessControlContext(new ProtectionDomain[]{getDynamicDomain((ProtectionDomain) obj)}));
    }

    @Override
    public GeneratedClassLoader createClassLoader(ClassLoader classLoader, Object obj) {
        return (GeneratedClassLoader) AccessController.doPrivileged(new b(classLoader, (ProtectionDomain) obj));
    }

    @Override
    public Object getDynamicSecurityDomain(Object obj) {
        return getDynamicDomain((ProtectionDomain) obj);
    }

    @Override
    public Class<?> getStaticSecurityDomainClassInternal() {
        return ProtectionDomain.class;
    }
}
