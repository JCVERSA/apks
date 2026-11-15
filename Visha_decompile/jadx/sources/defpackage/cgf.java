package defpackage;

import android.os.Bundle;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class cgf {
    public static final Set a = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));
    public static final List b = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");
    public static final List c = Arrays.asList(TtmlNode.TEXT_EMPHASIS_AUTO, "app", "am");
    public static final List d = Arrays.asList("_r", "_dbg");
    public static final List e = Arrays.asList((String[]) th.a(zri.a, zri.b));
    public static final List f = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    public static void a(String str, String str2, Bundle bundle) {
        if ("clx".equals(str) && "_ae".equals(str2)) {
            bundle.putLong("_r", 1L);
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0061  */
    public static boolean b(String str, String str2, Bundle bundle) {
        byte b2;
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!d(str) || bundle == null) {
            return false;
        }
        Iterator it = d.iterator();
        while (it.hasNext()) {
            if (bundle.containsKey((String) it.next())) {
                return false;
            }
        }
        int iHashCode = str.hashCode();
        if (iHashCode != 101200) {
            if (iHashCode != 101230) {
                if (iHashCode == 3142703 && str.equals("fiam")) {
                    b2 = 2;
                } else {
                    b2 = -1;
                }
            } else if (str.equals("fdl")) {
                b2 = 1;
            } else {
                b2 = -1;
            }
        } else if (str.equals("fcm")) {
            b2 = 0;
        } else {
            b2 = -1;
        }
        if (b2 == 0) {
            bundle.putString("_cis", "fcm_integration");
            return true;
        }
        if (b2 == 1) {
            bundle.putString("_cis", "fdl_integration");
            return true;
        }
        if (b2 != 2) {
            return false;
        }
        bundle.putString("_cis", "fiam_integration");
        return true;
    }

    public static boolean c(String str, Bundle bundle) {
        if (b.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        Iterator it = d.iterator();
        while (it.hasNext()) {
            if (bundle.containsKey((String) it.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean d(String str) {
        return !c.contains(str);
    }

    public static boolean e(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals("fcm") || str.equals("frc");
        }
        if ("_ln".equals(str2)) {
            return str.equals("fcm") || str.equals("fiam");
        }
        if (e.contains(str2)) {
            return false;
        }
        Iterator it = f.iterator();
        while (it.hasNext()) {
            if (str2.matches((String) it.next())) {
                return false;
            }
        }
        return true;
    }
}
