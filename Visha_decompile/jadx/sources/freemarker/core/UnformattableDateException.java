package freemarker.core;

abstract class UnformattableDateException extends Exception {
    public UnformattableDateException(String str, Throwable th) {
        super(str, th);
    }

    public UnformattableDateException(String str) {
        super(str);
    }
}
