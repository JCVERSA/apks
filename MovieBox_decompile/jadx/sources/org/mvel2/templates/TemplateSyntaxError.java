package org.mvel2.templates;

public class TemplateSyntaxError extends RuntimeException {
    public TemplateSyntaxError() {
    }

    public TemplateSyntaxError(String str) {
        super(str);
    }

    public TemplateSyntaxError(String str, Throwable th2) {
        super(str, th2);
    }

    public TemplateSyntaxError(Throwable th2) {
        super(th2);
    }
}
