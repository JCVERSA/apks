package defpackage;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface oo4 {
    boolean allowUnsafeNonAsciiValues() default false;

    String value();
}
