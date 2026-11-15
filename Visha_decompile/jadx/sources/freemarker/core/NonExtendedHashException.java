package freemarker.core;

import defpackage.q0d;
import defpackage.zfa;

public class NonExtendedHashException extends UnexpectedTypeException {
    private static final Class[] EXPECTED_TYPES;
    static Class class$freemarker$template$TemplateHashModelEx;

    static {
        Class clsClass$ = class$freemarker$template$TemplateHashModelEx;
        if (clsClass$ == null) {
            clsClass$ = class$("freemarker.template.TemplateHashModelEx");
            class$freemarker$template$TemplateHashModelEx = clsClass$;
        }
        EXPECTED_TYPES = new Class[]{clsClass$};
    }

    public NonExtendedHashException(Environment environment) {
        super(environment, "Expecting extended hash value here");
    }

    public static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public NonExtendedHashException(String str, Environment environment) {
        super(environment, str);
    }

    public NonExtendedHashException(Environment environment, q0d q0dVar) {
        super(environment, q0dVar);
    }

    public NonExtendedHashException(t0 t0Var, zfa zfaVar, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "extended hash", EXPECTED_TYPES, environment);
    }

    public NonExtendedHashException(t0 t0Var, zfa zfaVar, String str, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "extended hash", EXPECTED_TYPES, str, environment);
    }

    public NonExtendedHashException(t0 t0Var, zfa zfaVar, String[] strArr, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "extended hash", EXPECTED_TYPES, strArr, environment);
    }
}
