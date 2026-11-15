package defpackage;

import android.content.DialogInterface;
import android.content.Intent;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;

public final class m9f implements DialogInterface.OnClickListener {
    public final o9f b;

    public m9f(o9f o9fVar) {
        this.b = o9fVar;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i) {
        o9f o9fVar = this.b;
        Intent intentI = o9fVar.i();
        zzv.zzq();
        zzs.zzU(o9fVar.d, intentI);
    }
}
