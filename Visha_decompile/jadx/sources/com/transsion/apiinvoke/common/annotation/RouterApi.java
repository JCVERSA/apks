package com.transsion.apiinvoke.common.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE})
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface RouterApi {
    public static final int CONSTRUCTOR_ALWAYS_NEW = 1;
    public static final int CONSTRUCTOR_SINGLE_INSTANCE = 0;
    public static final int INSTANCE_DYNAMIC_REGISTER = 2;
    public static final int KEEP_LIVING = 0;
    public static final String SINGLE_CONSTRUCTOR_METHOD = "getInstance";

    String apiHandle() default "";

    String apiName();

    int constructorType() default 0;

    long livingTime() default 0;

    String packageName() default "";
}
