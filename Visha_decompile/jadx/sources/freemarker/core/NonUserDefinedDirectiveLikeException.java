package freemarker.core;

import defpackage.q0d;
import defpackage.zfa;

class NonUserDefinedDirectiveLikeException extends UnexpectedTypeException {
    private static final Class[] EXPECTED_TYPES;
    static Class class$freemarker$core$Macro;
    static Class class$freemarker$template$TemplateDirectiveModel;
    static Class class$freemarker$template$TemplateTransformModel;

    static {
        Class clsClass$ = class$freemarker$template$TemplateDirectiveModel;
        if (clsClass$ == null) {
            clsClass$ = class$("freemarker.template.TemplateDirectiveModel");
            class$freemarker$template$TemplateDirectiveModel = clsClass$;
        }
        Class clsClass$2 = class$freemarker$template$TemplateTransformModel;
        if (clsClass$2 == null) {
            clsClass$2 = class$("freemarker.template.TemplateTransformModel");
            class$freemarker$template$TemplateTransformModel = clsClass$2;
        }
        Class clsClass$3 = class$freemarker$core$Macro;
        if (clsClass$3 == null) {
            clsClass$3 = class$("freemarker.core.Macro");
            class$freemarker$core$Macro = clsClass$3;
        }
        EXPECTED_TYPES = new Class[]{clsClass$, clsClass$2, clsClass$3};
    }

    public NonUserDefinedDirectiveLikeException(Environment environment) {
        super(environment, "Expecting user-defined directive, transform or macro value here");
    }

    public static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public NonUserDefinedDirectiveLikeException(String str, Environment environment) {
        super(environment, str);
    }

    public NonUserDefinedDirectiveLikeException(Environment environment, q0d q0dVar) {
        super(environment, q0dVar);
    }

    public NonUserDefinedDirectiveLikeException(t0 t0Var, zfa zfaVar, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "user-defined directive, transform or macro", EXPECTED_TYPES, environment);
    }

    public NonUserDefinedDirectiveLikeException(t0 t0Var, zfa zfaVar, String str, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "user-defined directive, transform or macro", EXPECTED_TYPES, str, environment);
    }

    public NonUserDefinedDirectiveLikeException(t0 t0Var, zfa zfaVar, String[] strArr, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, "user-defined directive, transform or macro", EXPECTED_TYPES, strArr, environment);
    }
}
