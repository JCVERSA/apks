package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.hisavana.common.tracking.TrackingKey;

public final class crf {
    public final smg a;
    public final vmh b;

    public crf(smg smgVar, vmh vmhVar) {
        this.a = smgVar;
        this.b = vmhVar;
    }

    public final void a(long j, int i) {
        String str;
        rmg rmgVarA = this.a.a();
        rmgVarA.d(this.b.b.b);
        rmgVarA.b("action", "ad_closed");
        rmgVarA.b(TrackingKey.SHOW_TIME, String.valueOf(j));
        rmgVarA.b("ad_format", "app_open_ad");
        int i2 = i - 1;
        if (i2 == 0) {
            str = CmcdData.STREAMING_FORMAT_HLS;
        } else if (i2 == 1) {
            str = "bb";
        } else if (i2 == 2) {
            str = "cc";
        } else if (i2 != 3) {
            str = i2 != 4 ? "u" : "ac";
        } else {
            str = "cb";
        }
        rmgVarA.b("acr", str);
        rmgVarA.j();
    }
}
