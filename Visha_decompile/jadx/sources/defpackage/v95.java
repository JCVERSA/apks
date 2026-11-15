package defpackage;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface v95 {
    boolean ignore() default false;

    String name() default "\u0000";
}
