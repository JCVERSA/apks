package org.mozilla.javascript;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.ProtectionDomain;

public class SecurityUtilities {

    public static class a implements PrivilegedAction {
        public final String a;

        public a(String str) {
            this.a = str;
        }

        @Override
        public String run() {
            return System.getProperty(this.a);
        }
    }

    public static class b implements PrivilegedAction {
        public final Class a;

        public b(Class cls) {
            this.a = cls;
        }

        @Override
        public ProtectionDomain run() {
            return this.a.getProtectionDomain();
        }
    }

    public static class c implements PrivilegedAction {
        public final SecurityManager a;

        public c(SecurityManager securityManager) {
            this.a = securityManager;
        }

        @Override
        public ProtectionDomain run() {
            Class<?> currentScriptClass = ((RhinoSecurityManager) this.a).getCurrentScriptClass();
            if (currentScriptClass == null) {
                return null;
            }
            return currentScriptClass.getProtectionDomain();
        }
    }

    public static ProtectionDomain getProtectionDomain(Class<?> cls) {
        return (ProtectionDomain) AccessController.doPrivileged(new b(cls));
    }

    public static ProtectionDomain getScriptProtectionDomain() {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager instanceof RhinoSecurityManager) {
            return (ProtectionDomain) AccessController.doPrivileged(new c(securityManager));
        }
        return null;
    }

    public static String getSystemProperty(String str) {
        return (String) AccessController.doPrivileged(new a(str));
    }
}
