package freemarker.core;

class TemplatePostProcessorException extends Exception {
    public TemplatePostProcessorException(String str, Throwable th) {
        super(str, th);
    }

    public TemplatePostProcessorException(String str) {
        super(str);
    }
}
