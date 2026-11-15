package com.transsion.apiinvoke.common.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface RouterChannel {
    boolean autoConnect() default true;

    String channelName();

    String className() default "";

    String packageName() default "";

    String[] service();
}
