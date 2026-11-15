package defpackage;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.measurement.internal.e;
import org.apache.commons.lang3.time.DateUtils;

public final class vjj {
    public final e a;

    public vjj(e eVar) {
        this.a = eVar;
    }

    public final void a(String str, Bundle bundle) {
        String string;
        this.a.a().g();
        if (this.a.o()) {
            return;
        }
        if (bundle.isEmpty()) {
            string = null;
        } else {
            if (true == str.isEmpty()) {
                str = TtmlNode.TEXT_EMPHASIS_AUTO;
            }
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str2 : bundle.keySet()) {
                builder.appendQueryParameter(str2, bundle.getString(str2));
            }
            string = builder.build().toString();
        }
        if (TextUtils.isEmpty(string)) {
            return;
        }
        this.a.F().u.b(string);
        this.a.F().v.b(this.a.c().currentTimeMillis());
    }

    public final void b() {
        this.a.a().g();
        if (d()) {
            if (e()) {
                this.a.F().u.b(null);
                Bundle bundle = new Bundle();
                bundle.putString("source", "(not set)");
                bundle.putString("medium", "(not set)");
                bundle.putString("_cis", "intent");
                bundle.putLong("_cc", 1L);
                this.a.I().t(TtmlNode.TEXT_EMPHASIS_AUTO, "_cmpx", bundle);
            } else {
                String strA = this.a.F().u.a();
                if (TextUtils.isEmpty(strA)) {
                    this.a.b().s().a("Cache still valid but referrer not found");
                } else {
                    long jA = ((this.a.F().v.a() / DateUtils.MILLIS_PER_HOUR) - 1) * DateUtils.MILLIS_PER_HOUR;
                    Uri uri = Uri.parse(strA);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(uri.getPath(), bundle2);
                    for (String str : uri.getQueryParameterNames()) {
                        bundle2.putString(str, uri.getQueryParameter(str));
                    }
                    ((Bundle) pair.second).putLong("_cc", jA);
                    Object obj = pair.first;
                    this.a.I().t(obj == null ? "app" : (String) obj, "_cmp", (Bundle) pair.second);
                }
                this.a.F().u.b(null);
            }
            this.a.F().v.b(0L);
        }
    }

    public final void c() {
        if (d() && e()) {
            this.a.F().u.b(null);
        }
    }

    public final boolean d() {
        return this.a.F().v.a() > 0;
    }

    public final boolean e() {
        return d() && this.a.c().currentTimeMillis() - this.a.F().v.a() > this.a.z().m(null, kwg.S);
    }
}
