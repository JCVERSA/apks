package freemarker.core;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.k0d;
import defpackage.q0d;
import freemarker.template.TemplateException;

public class InvalidReferenceException extends TemplateException {
    static final InvalidReferenceException FAST_INSTANCE;
    private static final String[] TIP;
    private static final String TIP_JSP_TAGLIBS = "The \"JspTaglibs\" variable isn't a core FreeMarker feature; it's only available when templates are invoked through freemarker.ext.servlet.FreemarkerServlet (or other custom FreeMarker-JSP integration solution).";
    private static final String TIP_LAST_STEP_DOT = "It's the step after the last dot that caused this error, not those before it.";
    private static final String TIP_LAST_STEP_SQUARE_BRACKET = "It's the final [] step that caused this error, not those before it.";
    private static final String[] TIP_MISSING_ASSIGNMENT_TARGET;
    private static final String TIP_NO_DOLLAR = "Variable references must not start with \"$\", unless the \"$\" is really part of the variable name.";

    static {
        Environment environmentY0 = Environment.y0();
        try {
            Environment.M1(null);
            FAST_INSTANCE = new InvalidReferenceException("Invalid reference. Details are unavilable, as this should have been handled by an FTL construct. If it wasn't, that's problably a bug in FreeMarker.", null);
            Environment.M1(environmentY0);
            TIP = new String[]{"If the failing expression is known to be legally refer to something that's sometimes null or missing, either specify a default value like myOptionalVar!myDefault, or use ", "<#if myOptionalVar??>", "when-present", "<#else>", "when-missing", "</#if>", ". (These only cover the last step of the expression; to cover the whole expression, use parenthesis: (myOptionalVar.foo)!myDefault, (myOptionalVar.foo)??"};
            TIP_MISSING_ASSIGNMENT_TARGET = new String[]{"If the target variable is known to be legally null or missing sometimes, instead of something like ", "<#assign x += 1>", ", you could write ", "<#if x??>", "<#assign x += 1>", "</#if>", " or ", "<#assign x = (x!0) + 1>"};
        } catch (Throwable th) {
            Environment.M1(environmentY0);
            throw th;
        }
    }

    public InvalidReferenceException(Environment environment) {
        super("Invalid reference: The expression has evaluated to null or refers to something that doesn't exist.", environment);
    }

    private static boolean endsWithDollarVariable(t0 t0Var) {
        return ((t0Var instanceof x0) && ((x0) t0Var).X().startsWith("$")) || ((t0Var instanceof m0) && ((m0) t0Var).X().startsWith("$"));
    }

    public static InvalidReferenceException getInstance(t0 t0Var, Environment environment) {
        String str;
        if (environment != null && environment.I0()) {
            return FAST_INSTANCE;
        }
        if (t0Var == null) {
            return new InvalidReferenceException(environment);
        }
        q0d q0dVarB = new q0d("The following has evaluated to null or missing:").b(t0Var);
        if (endsWithDollarVariable(t0Var)) {
            q0dVarB.j(new Object[]{TIP_NO_DOLLAR, TIP});
        } else if (t0Var instanceof m0) {
            String strX = ((m0) t0Var).X();
            if (PlayAudioData.TAG_SIZE.equals(strX)) {
                str = "To query the size of a collection or map use ?size, like myList?size";
            } else {
                str = SessionDescription.ATTR_LENGTH.equals(strX) ? "To query the length of a string use ?length, like myString?size" : null;
            }
            q0dVarB.j(str == null ? new Object[]{TIP_LAST_STEP_DOT, TIP} : new Object[]{TIP_LAST_STEP_DOT, str, TIP});
        } else if (t0Var instanceof n0) {
            q0dVarB.j(new Object[]{TIP_LAST_STEP_SQUARE_BRACKET, TIP});
        } else if ((t0Var instanceof x0) && ((x0) t0Var).X().equals("JspTaglibs")) {
            q0dVarB.j(new Object[]{TIP_JSP_TAGLIBS, TIP});
        } else {
            q0dVarB.i(TIP);
        }
        return new InvalidReferenceException(q0dVarB, environment, t0Var);
    }

    public InvalidReferenceException(String str, Environment environment) {
        super(str, environment);
    }

    public InvalidReferenceException(q0d q0dVar, Environment environment, t0 t0Var) {
        super(null, environment, t0Var, q0dVar);
    }

    public static InvalidReferenceException getInstance(String str, String str2, Environment environment) {
        if (environment != null && environment.I0()) {
            return FAST_INSTANCE;
        }
        q0d q0dVar = new q0d(new Object[]{"The target variable of the assignment, ", new k0d(str), ", was null or missing, but the \"", str2, "\" operator needs to get its value before assigning to it."});
        if (str.startsWith("$")) {
            q0dVar.j(new Object[]{TIP_NO_DOLLAR, TIP_MISSING_ASSIGNMENT_TARGET});
        } else {
            q0dVar.i(TIP_MISSING_ASSIGNMENT_TARGET);
        }
        return new InvalidReferenceException(q0dVar, environment, null);
    }
}
