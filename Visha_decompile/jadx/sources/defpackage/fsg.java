package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbuy;

public final class fsg implements p2g {
    public final Context b;
    public final rdf c;

    public fsg(Context context, rdf rdfVar) {
        this.b = context;
        this.c = rdfVar;
    }

    @Override
    public final void g(zzbuy zzbuyVar) {
    }

    @Override
    public final void w(vmh vmhVar) {
        String str = vmhVar.b.b.e;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        rdf rdfVar = this.c;
        Context context = this.b;
        rdfVar.m(context, vmhVar.a.a.d);
        rdfVar.i(context, str);
    }
}
