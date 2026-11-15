package defpackage;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface km4 {
    boolean hasBody() default false;

    String method();

    String path() default "";
}
