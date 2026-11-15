package freemarker.core;

import defpackage.q0d;
import defpackage.zfa;

class NonNamespaceException extends UnexpectedTypeException {
    private static final Class[] EXPECTED_TYPES;
    static Class class$freemarker$core$Environment$Namespace;

    static {
        Class clsClass$ = class$freemarker$core$Environment$Namespace;
        if (clsClass$ == null) {
            clsClass$ = class$("freemarker.core.Environment$Namespace");
            class$freemarker$core$Environment$Namespace = clsClass$;
        }
        EXPECTED_TYPES = new Class[]{clsClass$};
    }

    public NonNamespaceException(Environment environment) {
        super(environment, "Expecting namespace value here");
    }

    public static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public NonNamespaceException(String str, Environment environment) {
        super(environment, str);
    }

    public NonNamespaceException(Environment environment, q0d q0dVar) {
        super(environment, q0dVar);
    }

    public NonNamespaceException(t0 t0Var, zfa zfaVar, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "namespace", EXPECTED_TYPES, environment);
    }

    public NonNamespaceException(t0 t0Var, zfa zfaVar, String str, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "namespace", EXPECTED_TYPES, str, environment);
    }

    public NonNamespaceException(t0 t0Var, zfa zfaVar, String[] strArr, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "namespace", EXPECTED_TYPES, strArr, environment);
    }
}
