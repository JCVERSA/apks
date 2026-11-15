package io.appmetrica.analytics.logger.common.impl;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class e {
    public final Pattern a = Pattern.compile("[\\p{Space},;]");

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
    
        if (r3 == (-1)) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:?, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:?, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
    
        if (r3 == (-1)) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(Matcher matcher, int i, int i2) {
        int iStart;
        int iA;
        if (i2 < i) {
            return -1;
        }
        int i3 = ((i2 - i) / 2) + i;
        matcher.region(i3, i2);
        if (matcher.find()) {
            iStart = matcher.start();
            iA = a(matcher, iStart + 1, i2);
        } else {
            matcher.region(i, i3);
            if (!matcher.find()) {
                return -1;
            }
            iStart = matcher.start();
            iA = a(matcher, iStart + 1, i3);
        }
    }
}
