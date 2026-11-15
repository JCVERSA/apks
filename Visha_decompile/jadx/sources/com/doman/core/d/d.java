package com.doman.core.d;

import java.text.SimpleDateFormat;
import java.util.Date;

public final class d {
    public static final SimpleDateFormat a = new SimpleDateFormat("yyyyMMddHHmmss");

    public static String a(SimpleDateFormat simpleDateFormat) {
        return simpleDateFormat.format(new Date(System.currentTimeMillis()));
    }
}
