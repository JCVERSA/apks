package freemarker.core;

import defpackage.q0d;
import freemarker.template.TemplateException;

public class _MiscTemplateException extends TemplateException {
    public _MiscTemplateException(String str) {
        super(str, (Environment) null);
    }

    public _MiscTemplateException(Environment environment, String str) {
        super(str, environment);
    }

    public _MiscTemplateException(Throwable th, String str) {
        this(th, (Environment) null, str);
    }

    public _MiscTemplateException(Throwable th, Environment environment) {
        this(th, environment, (String) null);
    }

    public _MiscTemplateException(Throwable th) {
        this(th, (Environment) null, (String) null);
    }

    public _MiscTemplateException(Throwable th, Environment environment, String str) {
        super(str, th, environment);
    }

    public _MiscTemplateException(q0d q0dVar) {
        this((Environment) null, q0dVar);
    }

    public _MiscTemplateException(Environment environment, q0d q0dVar) {
        this((Throwable) null, environment, q0dVar);
    }

    public _MiscTemplateException(Throwable th, Environment environment, q0d q0dVar) {
        super(th, environment, null, q0dVar);
    }

    public _MiscTemplateException(Object[] objArr) {
        this((Environment) null, objArr);
    }

    public _MiscTemplateException(Environment environment, Object[] objArr) {
        this((Throwable) null, environment, objArr);
    }

    public _MiscTemplateException(Throwable th, Object[] objArr) {
        this(th, (Environment) null, objArr);
    }

    public _MiscTemplateException(Throwable th, Environment environment, Object[] objArr) {
        super(th, environment, null, new q0d(objArr));
    }

    public _MiscTemplateException(t0 t0Var, Object[] objArr) {
        this(t0Var, (Environment) null, objArr);
    }

    public _MiscTemplateException(t0 t0Var, Environment environment, Object[] objArr) {
        this(t0Var, (Throwable) null, environment, objArr);
    }

    public _MiscTemplateException(t0 t0Var, Throwable th, Environment environment, Object[] objArr) {
        super(th, environment, t0Var, new q0d(objArr).b(t0Var));
    }

    public _MiscTemplateException(t0 t0Var, String str) {
        this(t0Var, (Environment) null, str);
    }

    public _MiscTemplateException(t0 t0Var, Environment environment, String str) {
        this(t0Var, (Throwable) null, environment, str);
    }

    public _MiscTemplateException(t0 t0Var, Throwable th, Environment environment, String str) {
        super(th, environment, t0Var, new q0d(str).b(t0Var));
    }
}
