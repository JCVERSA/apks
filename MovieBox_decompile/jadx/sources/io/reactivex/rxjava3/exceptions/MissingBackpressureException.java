package io.reactivex.rxjava3.exceptions;

public final class MissingBackpressureException extends RuntimeException {
    public static final String DEFAULT_MESSAGE = "Could not emit value due to lack of requests";
    private static final long serialVersionUID = 8517344746016032542L;

    public MissingBackpressureException() {
    }

    public static MissingBackpressureException createDefault() {
        return new MissingBackpressureException(DEFAULT_MESSAGE);
    }

    public MissingBackpressureException(String str) {
        super(str);
    }
}
