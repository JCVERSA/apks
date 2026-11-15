package defpackage;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface ro4 {
    boolean allowUnsafeNonAsciiValues() default false;
}
