package pl;

import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

public final class g {

    public static final g f69204a = new g();

    private g() {
    }

    private final boolean b(String str, Context context) {
        try {
            Intent uri = Intent.parseUri(str, 1);
            Intrinsics.g(uri, "parseUri(...)");
            uri.setFlags(ASTNode.DEOP);
            if (context == null) {
                return true;
            }
            context.startActivity(uri);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public final boolean a(String str, Context context) {
        if (str == null || str.length() == 0) {
            return false;
        }
        if (StringsKt.W(str, "https://play.google.com/store/apps/", false, 2, null) || StringsKt.W(str, "http://play.google.com/store/apps/", false, 2, null)) {
            return b(str, context);
        }
        if (StringsKt.W(str, "http", false, 2, null)) {
            return false;
        }
        b(str, context);
        return true;
    }
}
