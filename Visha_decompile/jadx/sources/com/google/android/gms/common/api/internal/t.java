package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import defpackage.b2e;
import defpackage.s2e;
import defpackage.tk5;
import defpackage.vk5;
import defpackage.wk5;
import defpackage.zi4;
import java.util.concurrent.atomic.AtomicReference;

public abstract class t extends tk5 implements DialogInterface.OnCancelListener {
    public volatile boolean c;
    public final AtomicReference d;
    public final Handler e;
    public final zi4 f;

    public t(vk5 vk5Var, zi4 zi4Var) {
        super(vk5Var);
        this.d = new AtomicReference(null);
        this.e = new s2e(Looper.getMainLooper());
        this.f = zi4Var;
    }

    public static final int p(b2e b2eVar) {
        if (b2eVar == null) {
            return -1;
        }
        return b2eVar.a();
    }

    @Override
    public final void e(int i, int i2, Intent intent) {
        b2e b2eVar = (b2e) this.d.get();
        if (i != 1) {
            if (i == 2) {
                int iH = this.f.h(b());
                if (iH == 0) {
                    o();
                    return;
                } else {
                    if (b2eVar == null) {
                        return;
                    }
                    if (b2eVar.b().getErrorCode() == 18 && iH == 18) {
                        return;
                    }
                }
            }
        } else if (i2 == -1) {
            o();
            return;
        } else if (i2 == 0) {
            if (b2eVar != null) {
                l(new ConnectionResult(intent != null ? intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13) : 13, null, b2eVar.b().toString()), p(b2eVar));
                return;
            }
            return;
        }
        if (b2eVar != null) {
            l(b2eVar.b(), b2eVar.a());
        }
    }

    @Override
    public final void f(Bundle bundle) {
        super.f(bundle);
        if (bundle != null) {
            this.d.set(bundle.getBoolean("resolving_error", false) ? new b2e(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override
    public final void i(Bundle bundle) {
        super.i(bundle);
        b2e b2eVar = (b2e) this.d.get();
        if (b2eVar == null) {
            return;
        }
        bundle.putBoolean("resolving_error", true);
        bundle.putInt("failed_client_id", b2eVar.a());
        bundle.putInt("failed_status", b2eVar.b().getErrorCode());
        bundle.putParcelable("failed_resolution", b2eVar.b().getResolution());
    }

    @Override
    public void j() {
        super.j();
        this.c = true;
    }

    @Override
    public void k() {
        super.k();
        this.c = false;
    }

    public final void l(ConnectionResult connectionResult, int i) {
        this.d.set(null);
        m(connectionResult, i);
    }

    public abstract void m(ConnectionResult connectionResult, int i);

    public abstract void n();

    public final void o() {
        this.d.set(null);
        n();
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        l(new ConnectionResult(13, null), p((b2e) this.d.get()));
    }

    public final void s(ConnectionResult connectionResult, int i) {
        AtomicReference atomicReference;
        b2e b2eVar = new b2e(connectionResult, i);
        do {
            atomicReference = this.d;
            if (wk5.a(atomicReference, null, b2eVar)) {
                this.e.post(new zao(this, b2eVar));
                return;
            }
        } while (atomicReference.get() == null);
    }
}
