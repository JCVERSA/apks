package defpackage;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.R;

public class b0a {
    public final Resources a;
    public final String b;

    public b0a(Context context) {
        wd8.l(context);
        Resources resources = context.getResources();
        this.a = resources;
        this.b = resources.getResourcePackageName(R.string.common_google_play_services_unknown_issue);
    }

    public String a(String str) {
        String str2 = this.b;
        Resources resources = this.a;
        int identifier = resources.getIdentifier(str, "string", str2);
        if (identifier == 0) {
            return null;
        }
        return resources.getString(identifier);
    }
}
