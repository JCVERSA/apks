package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import java.util.regex.Matcher;

public final class krg implements v7i {
    public final lrg a;

    public krg(lrg lrgVar) {
        this.a = lrgVar;
    }

    @Override
    public final void zza(Throwable th) {
        if (((Boolean) zzbd.zzc().b(cye.i6)).booleanValue()) {
            Matcher matcher = lrg.h.matcher(th.getMessage());
            if (matcher.matches()) {
                this.a.e.i(Integer.parseInt(matcher.group(1)));
            }
        }
    }

    @Override
    public final void zzb(Object obj) {
        vmh vmhVar = (vmh) obj;
        if (((Boolean) zzbd.zzc().b(cye.i6)).booleanValue()) {
            lrg lrgVar = this.a;
            pug pugVar = lrgVar.e;
            kmh kmhVar = vmhVar.b.b;
            pugVar.i(kmhVar.f);
            lrgVar.e.j(kmhVar.g);
        }
    }
}
