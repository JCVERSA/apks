package freemarker.core;

import defpackage.q0d;
import defpackage.zfa;

public class NonNodeException extends UnexpectedTypeException {
    private static final Class[] EXPECTED_TYPES;
    static Class class$freemarker$template$TemplateNodeModel;

    static {
        Class clsClass$ = class$freemarker$template$TemplateNodeModel;
        if (clsClass$ == null) {
            clsClass$ = class$("freemarker.template.TemplateNodeModel");
            class$freemarker$template$TemplateNodeModel = clsClass$;
        }
        EXPECTED_TYPES = new Class[]{clsClass$};
    }

    public NonNodeException(Environment environment) {
        super(environment, "Expecting node value here");
    }

    public static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public NonNodeException(String str, Environment environment) {
        super(environment, str);
    }

    public NonNodeException(Environment environment, q0d q0dVar) {
        super(environment, q0dVar);
    }

    public NonNodeException(t0 t0Var, zfa zfaVar, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "node", EXPECTED_TYPES, environment);
    }

    public NonNodeException(t0 t0Var, zfa zfaVar, String str, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "node", EXPECTED_TYPES, str, environment);
    }

    public NonNodeException(t0 t0Var, zfa zfaVar, String[] strArr, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "node", EXPECTED_TYPES, strArr, environment);
    }
}
