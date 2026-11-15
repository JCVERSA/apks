package defpackage;

import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.c;
import com.google.android.gms.internal.location.d;
import com.google.android.gms.internal.location.zzai;
import com.google.android.gms.internal.location.zzba;

public final class zue extends l1j {
    public final d K;

    public zue(Context context, Looper looper, c.a aVar, c.b bVar, String str, ay0 ay0Var) {
        super(context, looper, aVar, bVar, str, ay0Var);
        this.K = new d(context, this.J);
    }

    public final void M(zzba zzbaVar, com.google.android.gms.common.api.internal.d dVar, zzai zzaiVar) {
        synchronized (this.K) {
            this.K.c(zzbaVar, dVar, zzaiVar);
        }
    }

    public final void N(com.google.android.gms.common.api.internal.d.a aVar, zzai zzaiVar) {
        this.K.d(aVar, zzaiVar);
    }

    public final Location O(String str) {
        return th.c(getAvailableFeatures(), amj.c) ? this.K.a(str) : this.K.b();
    }

    @Override
    public final void disconnect() {
        synchronized (this.K) {
            if (isConnected()) {
                try {
                    this.K.f();
                    this.K.g();
                } catch (Exception e) {
                    Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", e);
                }
                super.disconnect();
            } else {
                super.disconnect();
            }
            throw th;
        }
    }

    @Override
    public final boolean usesClientTelemetry() {
        return true;
    }
}
