package freemarker.core;

import defpackage.q0d;
import defpackage.zfa;

public class NonStringException extends UnexpectedTypeException {
    private static final String DEFAULT_DESCRIPTION = "Expecting string or something automatically convertible to string (number, date or boolean) value here";
    static final Class[] STRING_COERCABLE_TYPES;
    static final String STRING_COERCABLE_TYPES_DESC = "string or something automatically convertible to string (number, date or boolean)";
    static Class class$freemarker$template$TemplateBooleanModel;
    static Class class$freemarker$template$TemplateDateModel;
    static Class class$freemarker$template$TemplateNumberModel;
    static Class class$freemarker$template$TemplateScalarModel;

    static {
        Class clsClass$ = class$freemarker$template$TemplateScalarModel;
        if (clsClass$ == null) {
            clsClass$ = class$("freemarker.template.TemplateScalarModel");
            class$freemarker$template$TemplateScalarModel = clsClass$;
        }
        Class clsClass$2 = class$freemarker$template$TemplateNumberModel;
        if (clsClass$2 == null) {
            clsClass$2 = class$("freemarker.template.TemplateNumberModel");
            class$freemarker$template$TemplateNumberModel = clsClass$2;
        }
        Class clsClass$3 = class$freemarker$template$TemplateDateModel;
        if (clsClass$3 == null) {
            clsClass$3 = class$("freemarker.template.TemplateDateModel");
            class$freemarker$template$TemplateDateModel = clsClass$3;
        }
        Class clsClass$4 = class$freemarker$template$TemplateBooleanModel;
        if (clsClass$4 == null) {
            clsClass$4 = class$("freemarker.template.TemplateBooleanModel");
            class$freemarker$template$TemplateBooleanModel = clsClass$4;
        }
        STRING_COERCABLE_TYPES = new Class[]{clsClass$, clsClass$2, clsClass$3, clsClass$4};
    }

    public NonStringException(Environment environment) {
        super(environment, DEFAULT_DESCRIPTION);
    }

    public static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public NonStringException(String str, Environment environment) {
        super(environment, str);
    }

    public NonStringException(Environment environment, q0d q0dVar) {
        super(environment, q0dVar);
    }

    public NonStringException(t0 t0Var, zfa zfaVar, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, STRING_COERCABLE_TYPES_DESC, STRING_COERCABLE_TYPES, environment);
    }

    public NonStringException(t0 t0Var, zfa zfaVar, String str, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, STRING_COERCABLE_TYPES_DESC, STRING_COERCABLE_TYPES, str, environment);
    }

    public NonStringException(t0 t0Var, zfa zfaVar, String[] strArr, Environment environment) throws InvalidReferenceException {
        super(t0Var, zfaVar, STRING_COERCABLE_TYPES_DESC, STRING_COERCABLE_TYPES, strArr, environment);
    }
}
