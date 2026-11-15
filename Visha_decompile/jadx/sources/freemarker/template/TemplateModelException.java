package freemarker.template;

import defpackage.q0d;
import freemarker.core.Environment;

public class TemplateModelException extends TemplateException {
    public TemplateModelException() {
        this((String) null, (Exception) null);
    }

    public TemplateModelException(String str) {
        this(str, (Exception) null);
    }

    public TemplateModelException(Exception exc) {
        this((String) null, exc);
    }

    public TemplateModelException(Throwable th) {
        this((String) null, th);
    }

    public TemplateModelException(String str, Exception exc) {
        super(str, exc, (Environment) null);
    }

    public TemplateModelException(String str, Throwable th) {
        super(str, th, (Environment) null);
    }

    public TemplateModelException(Throwable th, Environment environment, String str, boolean z) {
        super(str, th, environment);
    }

    public TemplateModelException(Throwable th, Environment environment, q0d q0dVar, boolean z) {
        super(th, environment, null, q0dVar);
    }
}
