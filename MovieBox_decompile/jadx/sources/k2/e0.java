package k2;

import androidx.media3.common.util.a1;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class e0 {

    private static final Pattern f63571c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    public int f63572a = -1;

    public int f63573b = -1;

    private boolean b(String str) {
        Matcher matcher = f63571c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            int i10 = Integer.parseInt((String) a1.i(matcher.group(1)), 16);
            int i11 = Integer.parseInt((String) a1.i(matcher.group(2)), 16);
            if (i10 <= 0 && i11 <= 0) {
                return false;
            }
            this.f63572a = i10;
            this.f63573b = i11;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public boolean a() {
        return (this.f63572a == -1 || this.f63573b == -1) ? false : true;
    }

    public boolean c(androidx.media3.common.x xVar) {
        for (int i10 = 0; i10 < xVar.e(); i10++) {
            androidx.media3.common.x.a aVarD = xVar.d(i10);
            if (aVarD instanceof y2.e) {
                y2.e eVar = (y2.e) aVarD;
                if ("iTunSMPB".equals(eVar.f76106c) && b(eVar.f76107d)) {
                    return true;
                }
            } else if (aVarD instanceof y2.k) {
                y2.k kVar = (y2.k) aVarD;
                if ("com.apple.iTunes".equals(kVar.f76119b) && "iTunSMPB".equals(kVar.f76120c) && b(kVar.f76121d)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }
}
