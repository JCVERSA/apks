package com.transsion.letswitch.ipc;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE})
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface IPCClass {
    public static final String SINGLE_CONSTRUCTOR_METHOD = "getInstance";

    String className();
}
