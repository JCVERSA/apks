package com.google.android.gms.internal.location;

import android.content.Context;
import android.location.Location;
import android.os.RemoteException;
import defpackage.d1f;
import defpackage.gui;
import defpackage.wd8;
import java.util.HashMap;
import java.util.Map;

public final class d {
    public final d1f a;
    public final Context b;
    public boolean c = false;
    public final Map d = new HashMap();
    public final Map e = new HashMap();
    public final Map f = new HashMap();

    public d(Context context, d1f d1fVar) {
        this.b = context;
        this.a = d1fVar;
    }

    public final Location a(String str) {
        ((gui) this.a).a.c();
        return ((gui) this.a).a().zzn(str);
    }

    public final Location b() {
        ((gui) this.a).a.c();
        return ((gui) this.a).a().zzm();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c(zzba zzbaVar, com.google.android.gms.common.api.internal.d dVar, zzai zzaiVar) throws RemoteException {
        zzar zzarVar;
        ((gui) this.a).a.c();
        com.google.android.gms.common.api.internal.d.a aVarB = dVar.b();
        if (aVarB == null) {
            zzarVar = null;
        } else {
            synchronized (this.f) {
                try {
                    zzar zzarVar2 = (zzar) this.f.get(aVarB);
                    if (zzarVar2 == null) {
                        zzarVar2 = new zzar(dVar);
                    }
                    zzarVar = zzarVar2;
                    this.f.put(aVarB, zzarVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        zzar zzarVar3 = zzarVar;
        if (zzarVar3 == null) {
            return;
        }
        ((gui) this.a).a().zzo(new zzbc(1, zzbaVar, null, null, zzarVar3, zzaiVar));
    }

    public final void d(com.google.android.gms.common.api.internal.d.a aVar, zzai zzaiVar) {
        ((gui) this.a).a.c();
        wd8.m(aVar, "Invalid null listener key");
        synchronized (this.f) {
            try {
                zzar zzarVar = (zzar) this.f.remove(aVar);
                if (zzarVar != null) {
                    zzarVar.zzc();
                    ((gui) this.a).a().zzo(zzbc.zzc(zzarVar, zzaiVar));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e(boolean z) throws RemoteException {
        ((gui) this.a).a.c();
        ((gui) this.a).a().zzp(z);
        this.c = z;
    }

    public final void f() {
        synchronized (this.d) {
            try {
                for (zzau zzauVar : this.d.values()) {
                    if (zzauVar != null) {
                        ((gui) this.a).a().zzo(zzbc.zza(zzauVar, null));
                    }
                }
                this.d.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f) {
            try {
                for (zzar zzarVar : this.f.values()) {
                    if (zzarVar != null) {
                        ((gui) this.a).a().zzo(zzbc.zzc(zzarVar, null));
                    }
                }
                this.f.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        synchronized (this.e) {
            try {
                for (zzas zzasVar : this.e.values()) {
                    if (zzasVar != null) {
                        ((gui) this.a).a().zzu(new zzl(2, null, zzasVar, null));
                    }
                }
                this.e.clear();
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final void g() throws RemoteException {
        if (this.c) {
            e(false);
        }
    }
}
