package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.measurement.internal.g;

public final class h0j implements z8j {
    public final g a;

    public h0j(g gVar) {
        this.a = gVar;
    }

    @Override
    public final void a(String str, String str2, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            this.a.q(TtmlNode.TEXT_EMPHASIS_AUTO, "_err", bundle);
        } else {
            this.a.s(TtmlNode.TEXT_EMPHASIS_AUTO, "_err", bundle, str);
        }
    }
}
