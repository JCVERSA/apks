package nl;

import com.transsion.json.b.n;
import com.transsion.json.o;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface a {
    boolean include() default true;

    String name() default "";

    Class objectFactory() default o.class;

    Class transformer() default n.class;
}
