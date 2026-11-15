package freemarker.core;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.e0d;
import defpackage.e1d;
import defpackage.g0d;
import defpackage.k0d;
import defpackage.q0d;
import defpackage.zfa;
import freemarker.template.TemplateException;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class UnexpectedTypeException extends TemplateException {
    public UnexpectedTypeException(Environment environment, String str) {
        super(str, environment);
    }

    private static q0d newDesciptionBuilder(t0 t0Var, String str, zfa zfaVar, String str2, Class[] clsArr, Environment environment) throws InvalidReferenceException {
        Object[] objArrExplainTypeError;
        if (zfaVar == null) {
            throw InvalidReferenceException.getInstance(t0Var, environment);
        }
        q0d q0dVarE = new q0d(unexpectedTypeErrorDescription(str2, t0Var, str, zfaVar)).b(t0Var).e(true);
        if ((zfaVar instanceof e1d) && (objArrExplainTypeError = ((e1d) zfaVar).explainTypeError(clsArr)) != null) {
            q0dVarE.i(objArrExplainTypeError);
        }
        return q0dVarE;
    }

    private static Object[] unexpectedTypeErrorDescription(String str, t0 t0Var, String str2, zfa zfaVar) {
        Object obj;
        e0d e0dVar = new e0d(str);
        if (str2 == null) {
            obj = t0Var != null ? "this" : "the expression";
        } else {
            obj = new Object[]{"assignment target variable ", new k0d(str2)};
        }
        return new Object[]{"Expected ", e0dVar, ", but ", obj, " has evaluated to ", new e0d(new g0d(zfaVar)), str2 == null ? StringUtils.PROCESS_POSTFIX_DELIMITER : Consts.DOT};
    }

    public UnexpectedTypeException(Environment environment, q0d q0dVar) {
        super(null, environment, null, q0dVar);
    }

    public UnexpectedTypeException(t0 t0Var, zfa zfaVar, String str, Class[] clsArr, Environment environment) throws InvalidReferenceException {
        super(null, environment, t0Var, newDesciptionBuilder(t0Var, null, zfaVar, str, clsArr, environment));
    }

    public UnexpectedTypeException(t0 t0Var, zfa zfaVar, String str, Class[] clsArr, String str2, Environment environment) throws InvalidReferenceException {
        super(null, environment, t0Var, newDesciptionBuilder(t0Var, null, zfaVar, str, clsArr, environment).h(str2));
    }

    public UnexpectedTypeException(t0 t0Var, zfa zfaVar, String str, Class[] clsArr, String[] strArr, Environment environment) throws InvalidReferenceException {
        super(null, environment, t0Var, newDesciptionBuilder(t0Var, null, zfaVar, str, clsArr, environment).j(strArr));
    }

    public UnexpectedTypeException(String str, zfa zfaVar, String str2, Class[] clsArr, String[] strArr, Environment environment) throws InvalidReferenceException {
        super(null, environment, null, newDesciptionBuilder(null, str, zfaVar, str2, clsArr, environment).j(strArr));
    }
}
