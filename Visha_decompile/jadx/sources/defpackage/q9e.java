package defpackage;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class q9e {
    public static final Pattern c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int a = -1;
    public int b = -1;

    public final boolean a() {
        return (this.a == -1 || this.b == -1) ? false : true;
    }

    public final boolean b(hre hreVar) {
        for (int i = 0; i < hreVar.a(); i++) {
            iqe iqeVarB = hreVar.b(i);
            if (iqeVarB instanceof xce) {
                xce xceVar = (xce) iqeVarB;
                if ("iTunSMPB".equals(xceVar.c) && c(xceVar.d)) {
                    return true;
                }
            } else if (iqeVarB instanceof ede) {
                ede edeVar = (ede) iqeVarB;
                if ("com.apple.iTunes".equals(edeVar.b) && "iTunSMPB".equals(edeVar.c) && c(edeVar.d)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public final boolean c(String str) {
        Matcher matcher = c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            String strGroup = matcher.group(1);
            int i = kfh.a;
            int i2 = Integer.parseInt(strGroup, 16);
            int i3 = Integer.parseInt(matcher.group(2), 16);
            if (i2 <= 0 && i3 <= 0) {
                return false;
            }
            this.a = i2;
            this.b = i3;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
