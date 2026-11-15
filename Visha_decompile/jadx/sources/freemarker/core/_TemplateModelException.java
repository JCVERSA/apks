package freemarker.core;

import defpackage.hx0;
import defpackage.q0d;
import defpackage.zfa;
import freemarker.template.TemplateModelException;

public class _TemplateModelException extends TemplateModelException {
    public _TemplateModelException(String str) {
        super(str);
    }

    public static Object[] modelHasStoredNullDescription(Class cls, zfa zfaVar) {
        return new Object[]{"The FreeMarker value exists, but has nothing inside it; the TemplateModel object (class: ", zfaVar.getClass().getName(), ") has returned a null instead of a ", hx0.g(cls), ". ", "This is possibly a bug in the non-FreeMarker code that builds the data-model."};
    }

    public _TemplateModelException(Throwable th, String str) {
        this(th, (Environment) null, str);
    }

    public _TemplateModelException(Environment environment, String str) {
        this((Throwable) null, environment, str);
    }

    public _TemplateModelException(Throwable th, Environment environment) {
        this(th, environment, (String) null);
    }

    public _TemplateModelException(Throwable th) {
        this(th, (Environment) null, (String) null);
    }

    public _TemplateModelException(Throwable th, Environment environment, String str) {
        super(th, environment, str, true);
    }

    public _TemplateModelException(q0d q0dVar) {
        this((Environment) null, q0dVar);
    }

    public _TemplateModelException(Environment environment, q0d q0dVar) {
        this((Throwable) null, environment, q0dVar);
    }

    public _TemplateModelException(Throwable th, Environment environment, q0d q0dVar) {
        super(th, environment, q0dVar, true);
    }

    public _TemplateModelException(Object[] objArr) {
        this((Environment) null, objArr);
    }

    public _TemplateModelException(Environment environment, Object[] objArr) {
        this((Throwable) null, environment, objArr);
    }

    public _TemplateModelException(Throwable th, Object[] objArr) {
        this(th, (Environment) null, objArr);
    }

    public _TemplateModelException(Throwable th, Environment environment, Object[] objArr) {
        super(th, environment, new q0d(objArr), true);
    }

    public _TemplateModelException(t0 t0Var, Object[] objArr) {
        this(t0Var, (Environment) null, objArr);
    }

    public _TemplateModelException(t0 t0Var, Environment environment, Object[] objArr) {
        this(t0Var, (Throwable) null, environment, objArr);
    }

    public _TemplateModelException(t0 t0Var, Throwable th, Environment environment, Object[] objArr) {
        super(th, environment, new q0d(objArr).b(t0Var), true);
    }

    public _TemplateModelException(t0 t0Var, String str) {
        this(t0Var, (Environment) null, str);
    }

    public _TemplateModelException(t0 t0Var, Environment environment, String str) {
        this(t0Var, (Throwable) null, environment, str);
    }

    public _TemplateModelException(t0 t0Var, Throwable th, Environment environment, String str) {
        super(th, environment, new q0d(str).b(t0Var), true);
    }
}
