package com.transsion.baseui.music;

import java.util.concurrent.ThreadLocalRandom;
import kotlin.jvm.internal.Intrinsics;

public final class o {

    public static final o f42328a = new o();

    private o() {
    }

    public final String a(int i10) {
        StringBuffer stringBuffer = new StringBuffer("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ");
        StringBuffer stringBuffer2 = new StringBuffer();
        ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
        int length = stringBuffer.length();
        for (int i11 = 0; i11 < i10; i11++) {
            stringBuffer2.append(stringBuffer.charAt(threadLocalRandomCurrent.nextInt(length)));
        }
        String string = stringBuffer2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }
}
