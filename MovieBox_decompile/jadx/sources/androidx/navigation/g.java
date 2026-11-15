package androidx.navigation;

import android.content.Intent;
import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;

public class g {

    private final Uri f13589a;

    private final String f13590b;

    private final String f13591c;

    public g(Uri uri, String str, String str2) {
        this.f13589a = uri;
        this.f13590b = str;
        this.f13591c = str2;
    }

    public String a() {
        return this.f13590b;
    }

    public String b() {
        return this.f13591c;
    }

    public Uri c() {
        return this.f13589a;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("NavDeepLinkRequest");
        sb2.append("{");
        if (c() != null) {
            sb2.append(" uri=");
            sb2.append(String.valueOf(c()));
        }
        if (a() != null) {
            sb2.append(" action=");
            sb2.append(a());
        }
        if (b() != null) {
            sb2.append(" mimetype=");
            sb2.append(b());
        }
        sb2.append(" }");
        String string = sb2.toString();
        Intrinsics.g(string, "sb.toString()");
        return string;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public g(Intent intent) {
        this(intent.getData(), intent.getAction(), intent.getType());
        Intrinsics.h(intent, "intent");
    }
}
