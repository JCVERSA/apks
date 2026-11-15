package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PointF;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import androidx.webkit.internal.AssetHelper;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzdtz;
import defpackage.cye;
import defpackage.g8i;
import defpackage.zef;
import defpackage.zog;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.text.StringSubstitutor;

public final class zzau {
    public final Context a;
    public final zog b;
    public String c;
    public String d;
    public String e;
    public String f;
    public int g;
    public int h;
    public PointF i;
    public PointF j;
    public Handler k;
    public Runnable l;

    public zzau(Context context) {
        this.g = 0;
        this.l = new Runnable() {
            @Override
            public final void run() {
                zzau.zzi(this.zza);
            }
        };
        this.a = context;
        this.h = ViewConfiguration.get(context).getScaledTouchSlop();
        com.google.android.gms.ads.internal.zzv.zzu().zzb();
        this.k = com.google.android.gms.ads.internal.zzv.zzu().zza();
        this.b = com.google.android.gms.ads.internal.zzv.zzt().zza();
    }

    public static final int c(List list, String str, boolean z) {
        if (!z) {
            return -1;
        }
        list.add(str);
        return list.size() - 1;
    }

    public static void zza(zzau zzauVar) {
        zzay zzayVarZzt = com.google.android.gms.ads.internal.zzv.zzt();
        String str = zzauVar.d;
        String str2 = zzauVar.e;
        String str3 = zzauVar.f;
        boolean zZzm = zzayVarZzt.zzm();
        Context context = zzauVar.a;
        zzayVarZzt.zzh(zzayVarZzt.zzj(context, str, str2));
        if (!zzayVarZzt.zzm()) {
            zzayVarZzt.zzd(context, str, str2);
            return;
        }
        if (!zZzm && !TextUtils.isEmpty(str3)) {
            zzayVarZzt.zze(context, str2, str3, str);
        }
        int i = zze.zza;
        zzo.zze("Device is linked for debug signals.");
        zzayVarZzt.a(context, "The device is successfully linked for troubleshooting.", false, true);
    }

    public static void zzc(final zzau zzauVar, int i, int i2, int i3, int i4, int i5, DialogInterface dialogInterface, int i6) {
        if (i6 != i) {
            if (i6 == i2) {
                int i7 = zze.zza;
                zzo.zze("Debug mode [Creative Preview] selected.");
                zef.a.execute(new Runnable() {
                    @Override
                    public final void run() {
                        zzau.zzj(this.zza);
                    }
                });
                return;
            }
            if (i6 == i3) {
                int i8 = zze.zza;
                zzo.zze("Debug mode [Troubleshooting] selected.");
                zef.a.execute(new Runnable() {
                    @Override
                    public final void run() {
                        zzau.zza(this.zza);
                    }
                });
                return;
            }
            if (i6 == i4) {
                zog zogVar = zzauVar.b;
                final g8i g8iVar = zef.f;
                g8i g8iVar2 = zef.a;
                if (zogVar.r()) {
                    g8iVar.execute(new Runnable() {
                        @Override
                        public final void run() {
                            com.google.android.gms.ads.internal.zzv.zzt().zzc(this.zza.a);
                        }
                    });
                    return;
                } else {
                    g8iVar2.execute(new Runnable() {
                        @Override
                        public final void run() {
                            zzau.zzl(this.zza, g8iVar);
                        }
                    });
                    return;
                }
            }
            if (i6 == i5) {
                zog zogVar2 = zzauVar.b;
                final g8i g8iVar3 = zef.f;
                g8i g8iVar4 = zef.a;
                if (zogVar2.r()) {
                    g8iVar3.execute(new Runnable() {
                        @Override
                        public final void run() {
                            zzau zzauVar2 = this.zza;
                            zzauVar2.a(zzauVar2.a);
                        }
                    });
                    return;
                } else {
                    g8iVar4.execute(new Runnable() {
                        @Override
                        public final void run() {
                            zzau.zzd(this.zza, g8iVar3);
                        }
                    });
                    return;
                }
            }
            return;
        }
        Context context = zzauVar.a;
        if (!(context instanceof Activity)) {
            int i9 = zze.zza;
            zzo.zzi("Can not create dialog without Activity Context");
            return;
        }
        String str = zzauVar.c;
        final String str2 = "No debug information";
        if (!TextUtils.isEmpty(str)) {
            Uri uriBuild = new Uri.Builder().encodedQuery(str.replaceAll("\\+", "%20")).build();
            StringBuilder sb = new StringBuilder();
            com.google.android.gms.ads.internal.zzv.zzq();
            Map mapZzQ = zzs.zzQ(uriBuild);
            for (String str3 : mapZzQ.keySet()) {
                sb.append(str3);
                sb.append(" = ");
                sb.append((String) mapZzQ.get(str3));
                sb.append("\n\n");
            }
            String strTrim = sb.toString().trim();
            if (!TextUtils.isEmpty(strTrim)) {
                str2 = strTrim;
            }
        }
        com.google.android.gms.ads.internal.zzv.zzq();
        AlertDialog.Builder builderZzL = zzs.zzL(context);
        builderZzL.setMessage(str2);
        builderZzL.setTitle("Ad Information");
        builderZzL.setPositiveButton("Share", new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface2, int i10) {
                zzau.zzg(this.zza, str2, dialogInterface2, i10);
            }
        });
        builderZzL.setNegativeButton("Close", new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface2, int i10) {
            }
        });
        builderZzL.create().show();
    }

    public static void zzd(final zzau zzauVar, g8i g8iVar) {
        zzay zzayVarZzt = com.google.android.gms.ads.internal.zzv.zzt();
        Context context = zzauVar.a;
        if (zzayVarZzt.zzj(context, zzauVar.d, zzauVar.e)) {
            g8iVar.execute(new Runnable() {
                @Override
                public final void run() {
                    zzau zzauVar2 = this.zza;
                    zzauVar2.a(zzauVar2.a);
                }
            });
        } else {
            com.google.android.gms.ads.internal.zzv.zzt().zzd(context, zzauVar.d, zzauVar.e);
        }
    }

    public static void zzf(zzau zzauVar, AtomicInteger atomicInteger, int i, int i2, int i3, DialogInterface dialogInterface, int i4) {
        if (atomicInteger.get() != i) {
            if (atomicInteger.get() == i2) {
                zzauVar.b.n(zzdtz.SHAKE);
            } else if (atomicInteger.get() == i3) {
                zzauVar.b.n(zzdtz.FLICK);
            } else {
                zzauVar.b.n(zzdtz.NONE);
            }
        }
        zzauVar.zzr();
    }

    public static void zzg(zzau zzauVar, String str, DialogInterface dialogInterface, int i) {
        com.google.android.gms.ads.internal.zzv.zzq();
        zzs.zzU(zzauVar.a, Intent.createChooser(new Intent("android.intent.action.SEND").setType(AssetHelper.DEFAULT_MIME_TYPE).putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    public static void zzi(zzau zzauVar) {
        zzauVar.g = 4;
        zzauVar.zzr();
    }

    public static void zzj(zzau zzauVar) {
        zzay zzayVarZzt = com.google.android.gms.ads.internal.zzv.zzt();
        Context context = zzauVar.a;
        String str = zzauVar.d;
        String str2 = zzauVar.e;
        if (!zzayVarZzt.b(context, str, str2)) {
            zzayVarZzt.a(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
            return;
        }
        if ("2".equals(zzayVarZzt.f)) {
            int i = zze.zza;
            zzo.zze("Creative is not pushed for this device.");
            zzayVarZzt.a(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if ("1".equals(zzayVarZzt.f)) {
            int i2 = zze.zza;
            zzo.zze("The app is not linked for creative preview.");
            zzayVarZzt.zzd(context, str, str2);
        } else if ("0".equals(zzayVarZzt.f)) {
            int i3 = zze.zza;
            zzo.zze("Device is linked for in app preview.");
            zzayVarZzt.a(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    public static void zzl(final zzau zzauVar, g8i g8iVar) {
        zzay zzayVarZzt = com.google.android.gms.ads.internal.zzv.zzt();
        Context context = zzauVar.a;
        if (zzayVarZzt.zzj(context, zzauVar.d, zzauVar.e)) {
            g8iVar.execute(new Runnable() {
                @Override
                public final void run() {
                    com.google.android.gms.ads.internal.zzv.zzt().zzc(this.zza.a);
                }
            });
        } else {
            com.google.android.gms.ads.internal.zzv.zzt().zzd(context, zzauVar.d, zzauVar.e);
        }
    }

    public final void a(Context context) {
        final int i;
        ArrayList arrayList = new ArrayList();
        int iC = c(arrayList, "None", true);
        final int iC2 = c(arrayList, "Shake", true);
        final int iC3 = c(arrayList, "Flick", true);
        int iOrdinal = this.b.b().ordinal();
        if (iOrdinal != 1) {
            i = iOrdinal != 2 ? iC : iC3;
        } else {
            i = iC2;
        }
        com.google.android.gms.ads.internal.zzv.zzq();
        AlertDialog.Builder builderZzL = zzs.zzL(context);
        final AtomicInteger atomicInteger = new AtomicInteger(i);
        builderZzL.setTitle("Setup gesture");
        builderZzL.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), i, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i2) {
                atomicInteger.set(i2);
            }
        });
        builderZzL.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.zza.zzr();
            }
        });
        builderZzL.setPositiveButton("Save", new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i2) {
                zzau.zzf(this.zza, atomicInteger, i, iC2, iC3, dialogInterface, i2);
            }
        });
        builderZzL.setOnCancelListener(new DialogInterface.OnCancelListener() {
            @Override
            public final void onCancel(DialogInterface dialogInterface) {
                this.zza.zzr();
            }
        });
        builderZzL.create().show();
    }

    public final boolean b(float f, float f2, float f3, float f4) {
        return Math.abs(this.i.x - f) < ((float) this.h) && Math.abs(this.i.y - f2) < ((float) this.h) && Math.abs(this.j.x - f3) < ((float) this.h) && Math.abs(this.j.y - f4) < ((float) this.h);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.c);
        sb.append(",DebugSignal: ");
        sb.append(this.f);
        sb.append(",AFMA Version: ");
        sb.append(this.e);
        sb.append(",Ad Unit ID: ");
        sb.append(this.d);
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
        return sb.toString();
    }

    public final void zzm(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.g = 0;
            this.i = new PointF(motionEvent.getX(0), motionEvent.getY(0));
            return;
        }
        int i = this.g;
        if (i == -1) {
            return;
        }
        if (i == 0) {
            if (actionMasked == 5) {
                this.g = 5;
                this.j = new PointF(motionEvent.getX(1), motionEvent.getY(1));
                this.k.postDelayed(this.l, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.T4)).longValue());
                return;
            }
            return;
        }
        if (i == 5) {
            if (pointerCount == 2) {
                if (actionMasked != 2) {
                    return;
                }
                boolean z = false;
                for (int i2 = 0; i2 < historySize; i2++) {
                    z |= !b(motionEvent.getHistoricalX(0, i2), motionEvent.getHistoricalY(0, i2), motionEvent.getHistoricalX(1, i2), motionEvent.getHistoricalY(1, i2));
                }
                if (b(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1)) && !z) {
                    return;
                }
            }
            this.g = -1;
            this.k.removeCallbacks(this.l);
        }
    }

    public final void zzn(String str) {
        this.d = str;
    }

    public final void zzo(String str) {
        this.e = str;
    }

    public final void zzp(String str) {
        this.c = str;
    }

    public final void zzq(String str) {
        this.f = str;
    }

    public final void zzr() {
        try {
            Context context = this.a;
            if (!(context instanceof Activity)) {
                int i = zze.zza;
                zzo.zzi("Can not create dialog without Activity Context");
                return;
            }
            String str = "Creative preview (enabled)";
            if (true == TextUtils.isEmpty(com.google.android.gms.ads.internal.zzv.zzt().zzb())) {
                str = "Creative preview";
            }
            String str2 = true != com.google.android.gms.ads.internal.zzv.zzt().zzm() ? "Troubleshooting" : "Troubleshooting (enabled)";
            ArrayList arrayList = new ArrayList();
            final int iC = c(arrayList, "Ad information", true);
            final int iC2 = c(arrayList, str, true);
            final int iC3 = c(arrayList, str2, true);
            boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.o9)).booleanValue();
            final int iC4 = c(arrayList, "Open ad inspector", zBooleanValue);
            final int iC5 = c(arrayList, "Ad inspector settings", zBooleanValue);
            com.google.android.gms.ads.internal.zzv.zzq();
            AlertDialog.Builder builderZzL = zzs.zzL(context);
            builderZzL.setTitle("Select a debug mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    zzau.zzc(this.zza, iC, iC2, iC3, iC4, iC5, dialogInterface, i2);
                }
            });
            builderZzL.create().show();
        } catch (WindowManager.BadTokenException e) {
            zze.zzb("", e);
        }
    }

    public zzau(Context context, String str) {
        this(context);
        this.c = str;
    }
}
