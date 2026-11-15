package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.j6;
import com.transsion.push.PushConstants;
import defpackage.j3i;
import defpackage.m1i;
import defpackage.n1i;
import defpackage.o1i;
import defpackage.p1i;
import defpackage.r1i;
import defpackage.t0i;
import defpackage.w1i;
import defpackage.x1i;
import defpackage.z1i;
import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class j6 {
    public static final x1i c = new x1i("OverlayDisplayService");
    public static final Intent d = new Intent("com.google.android.play.core.lmd.BIND_OVERLAY_DISPLAY_SERVICE").setPackage("com.android.vending");
    public final w1i a;
    public final String b;

    /* JADX WARN: Type inference failed for: r6v0, types: [i1i] */
    public j6(Context context) {
        if (z1i.a(context)) {
            this.a = new w1i(context.getApplicationContext(), c, "OverlayDisplayService", d, new Object() {
            });
        } else {
            this.a = null;
        }
        this.b = context.getPackageName();
    }

    public static void a(j6 j6Var, r1i r1iVar, int i, p1i p1iVar) {
        try {
            w1i w1iVar = j6Var.a;
            if (w1iVar == null) {
                throw null;
            }
            zzfqw zzfqwVar = (zzfqw) w1iVar.c();
            if (zzfqwVar == null) {
                return;
            }
            String str = j6Var.b;
            final Bundle bundle = new Bundle();
            bundle.putString("callerPackage", str);
            bundle.putInt("displayMode", i);
            i(r1iVar.b(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    x1i x1iVar = j6.c;
                    bundle.putString("sessionToken", (String) obj);
                }
            });
            i(r1iVar.a(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    x1i x1iVar = j6.c;
                    bundle.putString(PushConstants.PROVIDER_FIELD_APP_ID, (String) obj);
                }
            });
            zzfqwVar.zzg(bundle, new zzfse(j6Var, p1iVar));
        } catch (RemoteException e) {
            c.b(e, "switchDisplayMode overlay display to %d from: %s", Integer.valueOf(i), j6Var.b);
        }
    }

    public static void b(j6 j6Var, t0i t0iVar, p1i p1iVar) {
        try {
            w1i w1iVar = j6Var.a;
            if (w1iVar == null) {
                throw null;
            }
            zzfqw zzfqwVar = (zzfqw) w1iVar.c();
            if (zzfqwVar == null) {
                return;
            }
            String str = j6Var.b;
            final Bundle bundle = new Bundle();
            bundle.putString("callerPackage", str);
            i(t0iVar.b(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    x1i x1iVar = j6.c;
                    bundle.putString("sessionToken", (String) obj);
                }
            });
            i(t0iVar.a(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    x1i x1iVar = j6.c;
                    bundle.putString(PushConstants.PROVIDER_FIELD_APP_ID, (String) obj);
                }
            });
            zzfqwVar.zze(bundle, new zzfse(j6Var, p1iVar));
        } catch (RemoteException e) {
            c.b(e, "dismiss overlay display from: %s", j6Var.b);
        }
    }

    public static void c(j6 j6Var, m1i m1iVar, p1i p1iVar) {
        try {
            w1i w1iVar = j6Var.a;
            if (w1iVar == null) {
                throw null;
            }
            zzfqw zzfqwVar = (zzfqw) w1iVar.c();
            if (zzfqwVar == null) {
                return;
            }
            String str = j6Var.b;
            final Bundle bundle = new Bundle();
            bundle.putString("callerPackage", str);
            bundle.putBinder("windowToken", m1iVar.f());
            i(m1iVar.g(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    x1i x1iVar = j6.c;
                    bundle.putString("adFieldEnifd", (String) obj);
                }
            });
            bundle.putInt("layoutGravity", m1iVar.c());
            bundle.putFloat("layoutVerticalMargin", m1iVar.a());
            bundle.putInt("displayMode", 0);
            bundle.putInt("triggerMode", 0);
            bundle.putInt("windowWidthPx", m1iVar.e());
            i(null, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    x1i x1iVar = j6.c;
                    bundle.putString("deeplinkUrl", (String) obj);
                }
            });
            i(null, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    x1i x1iVar = j6.c;
                    bundle.putString("sessionToken", (String) obj);
                }
            });
            i(m1iVar.h(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    x1i x1iVar = j6.c;
                    bundle.putString(PushConstants.PROVIDER_FIELD_APP_ID, (String) obj);
                }
            });
            i(null, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    x1i x1iVar = j6.c;
                    bundle.putString("thirdPartyAuthCallerId", (String) obj);
                }
            });
            bundle.putBoolean("stableSessionToken", true);
            zzfqwVar.zzf(str, bundle, new zzfse(j6Var, p1iVar));
        } catch (RemoteException e) {
            c.b(e, "show overlay display from: %s", j6Var.b);
        }
    }

    public static boolean h(String str) {
        return !k(str);
    }

    public static void i(String str, Consumer consumer) {
        if (k(str)) {
            return;
        }
        str.getClass();
        consumer.accept(str.trim());
    }

    public static boolean j(p1i p1iVar, String str, List list) {
        if (list.stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return j6.h((String) obj);
            }
        })) {
            return true;
        }
        c.a(str, new Object[0]);
        n1i n1iVarC = o1i.c();
        n1iVarC.b(8160);
        p1iVar.a(n1iVarC.c());
        return false;
    }

    public static boolean k(String str) {
        return j3i.c(str).trim().isEmpty();
    }

    public final void d() {
        w1i w1iVar = this.a;
        if (w1iVar == null) {
            return;
        }
        c.c("unbind LMD display overlay service", new Object[0]);
        w1iVar.n();
    }

    public final void e(final t0i t0iVar, final p1i p1iVar) {
        w1i w1iVar = this.a;
        if (w1iVar == null) {
            c.a("error: %s", "Play Store not found.");
        } else if (j(p1iVar, "Failed to apply OverlayDisplayDismissRequest: missing appId and sessionToken.", Arrays.asList(t0iVar.b(), t0iVar.a()))) {
            w1iVar.m(new Runnable() {
                @Override
                public final void run() {
                    j6.b(this.zza, t0iVar, p1iVar);
                }
            });
        }
    }

    public final void f(final m1i m1iVar, final p1i p1iVar) {
        w1i w1iVar = this.a;
        if (w1iVar == null) {
            c.a("error: %s", "Play Store not found.");
        } else if (j(p1iVar, "Failed to apply OverlayDisplayShowRequest: missing appId and sessionToken.", Arrays.asList(null, m1iVar.h()))) {
            w1iVar.m(new Runnable() {
                @Override
                public final void run() {
                    j6.c(this.zza, m1iVar, p1iVar);
                }
            });
        }
    }

    public final void g(final r1i r1iVar, final p1i p1iVar, final int i) {
        w1i w1iVar = this.a;
        if (w1iVar == null) {
            c.a("error: %s", "Play Store not found.");
        } else if (j(p1iVar, "Failed to apply OverlayDisplayUpdateRequest: missing appId and sessionToken.", Arrays.asList(r1iVar.b(), r1iVar.a()))) {
            w1iVar.m(new Runnable() {
                @Override
                public final void run() {
                    j6.a(this.zza, r1iVar, i, p1iVar);
                }
            });
        }
    }
}
