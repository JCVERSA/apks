package freemarker.core;

import defpackage.q0d;
import defpackage.zfa;

public class NonSequenceOrCollectionException extends UnexpectedTypeException {
    private static final Class[] EXPECTED_TYPES;
    static Class class$freemarker$template$TemplateCollectionModel;
    static Class class$freemarker$template$TemplateSequenceModel;

    static {
        Class clsClass$ = class$freemarker$template$TemplateSequenceModel;
        if (clsClass$ == null) {
            clsClass$ = class$("freemarker.template.TemplateSequenceModel");
            class$freemarker$template$TemplateSequenceModel = clsClass$;
        }
        Class clsClass$2 = class$freemarker$template$TemplateCollectionModel;
        if (clsClass$2 == null) {
            clsClass$2 = class$("freemarker.template.TemplateCollectionModel");
            class$freemarker$template$TemplateCollectionModel = clsClass$2;
        }
        EXPECTED_TYPES = new Class[]{clsClass$, clsClass$2};
    }

    public NonSequenceOrCollectionException(Environment environment) {
        super(environment, "Expecting sequence or collection value here");
    }

    public static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public NonSequenceOrCollectionException(String str, Environment environment) {
        super(environment, str);
    }

    public NonSequenceOrCollectionException(Environment environment, q0d q0dVar) {
        super(environment, q0dVar);
    }

    public NonSequenceOrCollectionException(t0 t0Var, zfa zfaVar, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "sequence or collection", EXPECTED_TYPES, environment);
    }

    public NonSequenceOrCollectionException(t0 t0Var, zfa zfaVar, String str, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "sequence or collection", EXPECTED_TYPES, str, environment);
    }

    public NonSequenceOrCollectionException(t0 t0Var, zfa zfaVar, String[] strArr, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "sequence or collection", EXPECTED_TYPES, strArr, environment);
    }
}
