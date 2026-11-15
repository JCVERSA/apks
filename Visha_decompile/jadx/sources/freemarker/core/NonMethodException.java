package freemarker.core;

import defpackage.q0d;
import defpackage.zfa;

public class NonMethodException extends UnexpectedTypeException {
    private static final Class[] EXPECTED_TYPES;
    static Class class$freemarker$template$TemplateMethodModel;

    static {
        Class clsClass$ = class$freemarker$template$TemplateMethodModel;
        if (clsClass$ == null) {
            clsClass$ = class$("freemarker.template.TemplateMethodModel");
            class$freemarker$template$TemplateMethodModel = clsClass$;
        }
        EXPECTED_TYPES = new Class[]{clsClass$};
    }

    public NonMethodException(Environment environment) {
        super(environment, "Expecting method value here");
    }

    public static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public NonMethodException(String str, Environment environment) {
        super(environment, str);
    }

    public NonMethodException(Environment environment, q0d q0dVar) {
        super(environment, q0dVar);
    }

    public NonMethodException(t0 t0Var, zfa zfaVar, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "method", EXPECTED_TYPES, environment);
    }

    public NonMethodException(t0 t0Var, zfa zfaVar, String str, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "method", EXPECTED_TYPES, str, environment);
    }

    public NonMethodException(t0 t0Var, zfa zfaVar, String[] strArr, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "method", EXPECTED_TYPES, strArr, environment);
    }
}
