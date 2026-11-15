package defpackage;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface pab {
    boolean include() default true;

    String name() default "";

    Class objectFactory() default tpd.class;

    Class transformer() default mod.class;
}
