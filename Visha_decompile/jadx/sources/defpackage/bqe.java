package defpackage;

import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager$OnChecksumsReadyListener;
import com.google.android.gms.internal.ads.n8;
import java.util.List;

public final class bqe implements PackageManager$OnChecksumsReadyListener {
    public final n8 a = n8.h();

    public final void onChecksumsReady(List list) {
        if (list == null) {
            this.a.zzc("");
            return;
        }
        try {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ApkChecksum apkChecksumA = ype.a(list.get(i));
                if (apkChecksumA.getType() == 8) {
                    n8 n8Var = this.a;
                    d6i d6iVarE = d6i.g().e();
                    byte[] value = apkChecksumA.getValue();
                    n8Var.zzc(d6iVarE.h(value, 0, value.length));
                    return;
                }
            }
        } catch (Throwable unused) {
        }
        this.a.zzc("");
    }
}
