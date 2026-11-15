package org.mvel2.templates;

public class TemplateRuntimeError extends RuntimeException {
    public TemplateRuntimeError() {
    }

    public TemplateRuntimeError(String str) {
        super(str);
    }

    public TemplateRuntimeError(String str, Throwable th2) {
        super(str, th2);
    }

    public TemplateRuntimeError(Throwable th2) {
        super(th2);
    }
}
