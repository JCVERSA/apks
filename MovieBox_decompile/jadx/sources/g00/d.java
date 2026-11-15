package g00;

import org.mvel2.util.m;

public class d {
    /* JADX WARN: Code duplicated, block: B:16:0x001b  */
    public static int a(char[] cArr, int i10) {
        int length = cArr.length;
        while (i10 != length) {
            char c10 = cArr[i10];
            if (c10 != '(') {
                if (c10 != ';') {
                    if (c10 == '[' || c10 == '{') {
                        i10 = m.c(cArr, i10, c10);
                    } else if (c10 != '}') {
                    }
                }
                return i10;
            }
            i10 = m.c(cArr, i10, c10);
            i10++;
        }
        return i10;
    }
}
