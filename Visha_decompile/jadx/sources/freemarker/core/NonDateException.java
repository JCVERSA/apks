package freemarker.core;

import defpackage.zfa;

public class NonDateException extends UnexpectedTypeException {
    private static final Class[] EXPECTED_TYPES;
    static Class class$freemarker$template$TemplateDateModel;

    static {
        Class clsClass$ = class$freemarker$template$TemplateDateModel;
        if (clsClass$ == null) {
            clsClass$ = class$("freemarker.template.TemplateDateModel");
            class$freemarker$template$TemplateDateModel = clsClass$;
        }
        EXPECTED_TYPES = new Class[]{clsClass$};
    }

    public NonDateException(Environment environment) {
        super(environment, "Expecting date/time value here");
    }

    public static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public NonDateException(String str, Environment environment) {
        super(environment, str);
    }

    public NonDateException(t0 t0Var, zfa zfaVar, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "date/time", EXPECTED_TYPES, environment);
    }

    public NonDateException(t0 t0Var, zfa zfaVar, String str, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "date/time", EXPECTED_TYPES, str, environment);
    }

    public NonDateException(t0 t0Var, zfa zfaVar, String[] strArr, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "date/time", EXPECTED_TYPES, strArr, environment);
    }
}
