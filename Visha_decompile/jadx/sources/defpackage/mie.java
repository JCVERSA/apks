package defpackage;

import androidx.media3.common.C;
import androidx.media3.exoplayer.dash.DashMediaSource;
import com.google.android.gms.internal.ads.zzfww;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.zip.Inflater;

public final class mie implements bhe {
    public final u4h a = new u4h();
    public final u4h b = new u4h();
    public final lie c;
    public Inflater d;

    public mie(List list) {
        lie lieVar = new lie();
        this.c = lieVar;
        lieVar.b(new String((byte[]) list.get(0), StandardCharsets.UTF_8));
    }

    @Override
    public final void a(byte[] bArr, int i, int i2, wge wgeVar, qfg qfgVar) {
        u4h u4hVar = this.a;
        u4hVar.j(bArr, i2 + i);
        u4hVar.l(i);
        if (this.d == null) {
            this.d = new Inflater();
        }
        u4h u4hVar2 = this.b;
        if (kfh.o(u4hVar, u4hVar2, this.d)) {
            u4hVar.j(u4hVar2.n(), u4hVar2.x());
        }
        lie lieVar = this.c;
        lieVar.d();
        int iU = u4hVar.u();
        fyf fyfVarA = null;
        if (iU >= 2 && u4hVar.K() == iU) {
            lieVar.c(u4hVar);
            fyfVarA = lieVar.a(u4hVar);
        }
        qfgVar.zza(new qge(fyfVarA != null ? zzfww.zzo(fyfVarA) : zzfww.zzn(), C.TIME_UNSET, DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US));
    }
}
