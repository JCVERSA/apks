package defpackage;

import android.view.MotionEvent;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzdim;
import com.google.android.gms.internal.ads.zzfww;
import java.util.Map;
import org.json.JSONObject;

public final class beg implements z0f {
    public final dfg a;
    public final ViewGroup b;

    public beg(dfg dfgVar, ViewGroup viewGroup) {
        this.a = dfgVar;
        this.b = viewGroup;
    }

    @Override
    public final void a(MotionEvent motionEvent) {
        this.a.onTouch(null, motionEvent);
    }

    @Override
    public final JSONObject zza() {
        return this.a.zzo();
    }

    @Override
    public final JSONObject zzb() {
        return this.a.zzp();
    }

    @Override
    public final void zzc() {
        zzfww zzfwwVar = zzdim.zza;
        dfg dfgVar = this.a;
        Map mapZzm = dfgVar.zzm();
        if (mapZzm == null) {
            return;
        }
        int size = zzfwwVar.size();
        int i = 0;
        while (i < size) {
            Object obj = mapZzm.get((String) zzfwwVar.get(i));
            i++;
            if (obj != null) {
                dfgVar.onClick(this.b);
                return;
            }
        }
    }
}
