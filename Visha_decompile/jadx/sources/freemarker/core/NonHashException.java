package freemarker.core;

import defpackage.q0d;
import defpackage.zfa;

public class NonHashException extends UnexpectedTypeException {
    private static final Class[] EXPECTED_TYPES;
    static Class class$freemarker$template$TemplateHashModel;

    static {
        Class clsClass$ = class$freemarker$template$TemplateHashModel;
        if (clsClass$ == null) {
            clsClass$ = class$("freemarker.template.TemplateHashModel");
            class$freemarker$template$TemplateHashModel = clsClass$;
        }
        EXPECTED_TYPES = new Class[]{clsClass$};
    }

    public NonHashException(Environment environment) {
        super(environment, "Expecting hash value here");
    }

    public static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public NonHashException(String str, Environment environment) {
        super(environment, str);
    }

    public NonHashException(Environment environment, q0d q0dVar) {
        super(environment, q0dVar);
    }

    public NonHashException(t0 t0Var, zfa zfaVar, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "hash", EXPECTED_TYPES, environment);
    }

    public NonHashException(t0 t0Var, zfa zfaVar, String str, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "hash", EXPECTED_TYPES, str, environment);
    }

    public NonHashException(t0 t0Var, zfa zfaVar, String[] strArr, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "hash", EXPECTED_TYPES, strArr, environment);
    }
}
