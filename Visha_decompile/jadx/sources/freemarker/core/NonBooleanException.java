package freemarker.core;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.q0d;
import defpackage.zfa;

public class NonBooleanException extends UnexpectedTypeException {
    private static final Class[] EXPECTED_TYPES;
    static Class class$freemarker$template$TemplateBooleanModel;

    static {
        Class clsClass$ = class$freemarker$template$TemplateBooleanModel;
        if (clsClass$ == null) {
            clsClass$ = class$("freemarker.template.TemplateBooleanModel");
            class$freemarker$template$TemplateBooleanModel = clsClass$;
        }
        EXPECTED_TYPES = new Class[]{clsClass$};
    }

    public NonBooleanException(Environment environment) {
        super(environment, "Expecting boolean value here");
    }

    public static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public NonBooleanException(String str, Environment environment) {
        super(environment, str);
    }

    public NonBooleanException(Environment environment, q0d q0dVar) {
        super(environment, q0dVar);
    }

    public NonBooleanException(t0 t0Var, zfa zfaVar, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, TypedValues.Custom.S_BOOLEAN, EXPECTED_TYPES, environment);
    }

    public NonBooleanException(t0 t0Var, zfa zfaVar, String str, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, TypedValues.Custom.S_BOOLEAN, EXPECTED_TYPES, str, environment);
    }

    public NonBooleanException(t0 t0Var, zfa zfaVar, String[] strArr, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, TypedValues.Custom.S_BOOLEAN, EXPECTED_TYPES, strArr, environment);
    }
}
