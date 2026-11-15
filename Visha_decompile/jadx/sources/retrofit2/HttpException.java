package retrofit2;

import defpackage.gu8;
import java.util.Objects;

public class HttpException extends RuntimeException {
    private final int code;
    private final String message;
    private final transient gu8<?> response;

    public HttpException(gu8<?> gu8Var) {
        super(getMessage(gu8Var));
        this.code = gu8Var.b();
        this.message = gu8Var.f();
        this.response = gu8Var;
    }

    private static String getMessage(gu8<?> gu8Var) {
        Objects.requireNonNull(gu8Var, "response == null");
        return "HTTP " + gu8Var.b() + " " + gu8Var.f();
    }

    public int code() {
        return this.code;
    }

    public String message() {
        return this.message;
    }

    public gu8<?> response() {
        return this.response;
    }
}
