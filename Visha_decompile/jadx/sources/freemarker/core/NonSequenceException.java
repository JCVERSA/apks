package freemarker.core;

import defpackage.q0d;
import defpackage.zfa;

public class NonSequenceException extends UnexpectedTypeException {
    private static final Class[] EXPECTED_TYPES;
    static Class class$freemarker$template$TemplateSequenceModel;

    static {
        Class clsClass$ = class$freemarker$template$TemplateSequenceModel;
        if (clsClass$ == null) {
            clsClass$ = class$("freemarker.template.TemplateSequenceModel");
            class$freemarker$template$TemplateSequenceModel = clsClass$;
        }
        EXPECTED_TYPES = new Class[]{clsClass$};
    }

    public NonSequenceException(Environment environment) {
        super(environment, "Expecting sequence value here");
    }

    public static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public NonSequenceException(String str, Environment environment) {
        super(environment, str);
    }

    public NonSequenceException(Environment environment, q0d q0dVar) {
        super(environment, q0dVar);
    }

    public NonSequenceException(t0 t0Var, zfa zfaVar, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "sequence", EXPECTED_TYPES, environment);
    }

    public NonSequenceException(t0 t0Var, zfa zfaVar, String str, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "sequence", EXPECTED_TYPES, str, environment);
    }

    public NonSequenceException(t0 t0Var, zfa zfaVar, String[] strArr, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "sequence", EXPECTED_TYPES, strArr, environment);
    }
}
