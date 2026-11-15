package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public final class ynh {
    public final Pattern a;

    public ynh() {
        Pattern patternCompile;
        try {
            patternCompile = Pattern.compile((String) zzbd.zzc().b(cye.O6));
        } catch (PatternSyntaxException unused) {
            patternCompile = null;
        }
        this.a = patternCompile;
    }

    public final String a(String str) {
        Pattern pattern = this.a;
        if (pattern == null || str == null) {
            return null;
        }
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group();
        }
        return null;
    }
}
