package defpackage;

import android.view.View;
import com.iab.omid.library.hisavana.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class ped {
    public static final Pattern b = Pattern.compile("^[a-zA-Z0-9 ]+$");
    public final List a = new ArrayList();

    public List a() {
        return this.a;
    }

    public final void b(View view) {
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
    }

    public void c(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        b(view);
        d(str);
        if (e(view) == null) {
            this.a.add(new ibd(view, friendlyObstructionPurpose, str));
        }
    }

    public final void d(String str) {
        if (str != null) {
            if (str.length() > 50) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason over 50 characters in length");
            }
            if (!b.matcher(str).matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
            }
        }
    }

    public final ibd e(View view) {
        for (ibd ibdVar : this.a) {
            if (ibdVar.c().get() == view) {
                return ibdVar;
            }
        }
        return null;
    }

    public void f() {
        this.a.clear();
    }
}
