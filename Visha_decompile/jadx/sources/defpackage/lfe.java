package defpackage;

import androidx.media3.common.MimeTypes;

public final class lfe {
    public final sfe a;
    public final vfe b;
    public final rae c;
    public final sae d;
    public int e;

    public lfe(sfe sfeVar, vfe vfeVar, rae raeVar) {
        this.a = sfeVar;
        this.b = vfeVar;
        this.c = raeVar;
        this.d = MimeTypes.AUDIO_TRUEHD.equals(sfeVar.g.o) ? new sae() : null;
    }
}
