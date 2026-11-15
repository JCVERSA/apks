package com.transsion.socket.untils;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.FIELD})
@Documented
@Retention(RetentionPolicy.CLASS)
public @interface ThreadName {
    public static final String CLIENT_HEART_BEAT = "heart_beat_thread";
    public static final String HEART = "Heart_beat";
    public static final String RECEIVE = "Receive_thread";
    public static final String SEND = "Send_thread";
    public static final String SERVER_HEART_CHECK = "heart_check_thread";
    public static final String SOCKET_HELP = "Socket_help_thread";

    String value() default "Ui_main";
}
