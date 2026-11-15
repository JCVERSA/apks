package defpackage;

import android.net.Uri;
import androidx.media3.common.C;
import com.google.android.gms.internal.ads.zzfww;
import java.util.Collections;
import java.util.List;

public final class v8e {
    public String a;
    public Uri b;
    public final cae c = new cae();
    public final List d;
    public final zzfww e;
    public final ree f;
    public final dje g;

    public v8e() {
        zzfww.zzn();
        this.d = Collections.emptyList();
        this.e = zzfww.zzn();
        this.f = new ree();
        this.g = dje.d;
    }

    public final v8e a(String str) {
        this.a = str;
        return this;
    }

    public final v8e b(Uri uri) {
        this.b = uri;
        return this;
    }

    public final cme c() {
        xge xgeVar;
        Uri uri = this.b;
        ile ileVar = null;
        if (uri != null) {
            xgeVar = new xge(uri, null, null, null, this.d, null, this.e, null, C.TIME_UNSET, null);
        } else {
            xgeVar = null;
        }
        String str = this.a;
        if (str == null) {
            str = "";
        }
        return new cme(str, new mce(this.c, null), xgeVar, new wfe(this.f, ileVar), ipe.B, this.g, null);
    }
}
