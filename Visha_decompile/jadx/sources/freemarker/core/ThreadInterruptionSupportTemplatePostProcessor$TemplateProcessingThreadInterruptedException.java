package freemarker.core;

class ThreadInterruptionSupportTemplatePostProcessor$TemplateProcessingThreadInterruptedException extends RuntimeException {
    public ThreadInterruptionSupportTemplatePostProcessor$TemplateProcessingThreadInterruptedException() {
        super("Template processing thread \"interrupted\" flag was set.");
    }
}
