package freemarker.core;

import defpackage.k0d;
import defpackage.q0d;
import defpackage.zfa;

public class NonNumericalException extends UnexpectedTypeException {
    private static final Class[] EXPECTED_TYPES;
    static Class class$freemarker$template$TemplateNumberModel;

    static {
        Class clsClass$ = class$freemarker$template$TemplateNumberModel;
        if (clsClass$ == null) {
            clsClass$ = class$("freemarker.template.TemplateNumberModel");
            class$freemarker$template$TemplateNumberModel = clsClass$;
        }
        EXPECTED_TYPES = new Class[]{clsClass$};
    }

    public NonNumericalException(Environment environment) {
        super(environment, "Expecting numerical value here");
    }

    public static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static NonNumericalException newMalformedNumberException(t0 t0Var, String str, Environment environment) {
        return new NonNumericalException(new q0d(new Object[]{"Can't convert this string to number: ", new k0d(str)}).b(t0Var), environment);
    }

    public NonNumericalException(String str, Environment environment) {
        super(environment, str);
    }

    public NonNumericalException(q0d q0dVar, Environment environment) {
        super(environment, q0dVar);
    }

    public NonNumericalException(t0 t0Var, zfa zfaVar, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "number", EXPECTED_TYPES, environment);
    }

    public NonNumericalException(t0 t0Var, zfa zfaVar, String str, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "number", EXPECTED_TYPES, str, environment);
    }

    public NonNumericalException(t0 t0Var, zfa zfaVar, String[] strArr, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "number", EXPECTED_TYPES, strArr, environment);
    }

    public NonNumericalException(String str, zfa zfaVar, String[] strArr, Environment environment) throws InvalidReferenceException {
        super(str, zfaVar, "number", EXPECTED_TYPES, strArr, environment);
    }
}
