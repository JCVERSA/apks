package a8;

import d8.c;

public class a implements b {
    @Override
    public String a(StackTraceElement[] stackTraceElementArr) {
        StringBuilder sb2 = new StringBuilder(256);
        if (stackTraceElementArr == null || stackTraceElementArr.length == 0) {
            return null;
        }
        if (stackTraceElementArr.length == 1) {
            return "\t─ " + stackTraceElementArr[0].toString();
        }
        int length = stackTraceElementArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != length - 1) {
                sb2.append("\t├ ");
                sb2.append(stackTraceElementArr[i10].toString());
                sb2.append(c.f58921a);
            } else {
                sb2.append("\t└ ");
                sb2.append(stackTraceElementArr[i10].toString());
            }
        }
        return sb2.toString();
    }
}
