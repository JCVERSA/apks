package com.transsion.apiinvoke.common.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.PARAMETER})
@Retention(RetentionPolicy.CLASS)
public @interface OptionItem {
    public static final String TYPE_JSON = "json";
    public static final String TYPE_STRING = "string";

    String label() default "";

    String name() default "";

    String type() default "string";

    String[] value();
}
