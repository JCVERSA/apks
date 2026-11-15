package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.just.agentweb.DefaultWebClient;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class z9f extends aaf implements n3f {
    public final ejf c;
    public final Context d;
    public final WindowManager e;
    public final hxe f;
    public DisplayMetrics g;
    public float h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;

    public z9f(ejf ejfVar, Context context, hxe hxeVar) {
        super(ejfVar, "");
        this.i = -1;
        this.j = -1;
        this.l = -1;
        this.m = -1;
        this.n = -1;
        this.o = -1;
        this.c = ejfVar;
        this.d = context;
        this.f = hxeVar;
        this.e = (WindowManager) context.getSystemService("window");
    }

    @Override
    public final void a(Object obj, Map map) {
        JSONObject jSONObjectPut;
        this.g = new DisplayMetrics();
        Display defaultDisplay = this.e.getDefaultDisplay();
        defaultDisplay.getMetrics(this.g);
        this.h = this.g.density;
        this.k = defaultDisplay.getRotation();
        zzbb.zzb();
        DisplayMetrics displayMetrics = this.g;
        this.i = zzf.zzw(displayMetrics, displayMetrics.widthPixels);
        zzbb.zzb();
        DisplayMetrics displayMetrics2 = this.g;
        this.j = zzf.zzw(displayMetrics2, displayMetrics2.heightPixels);
        ejf ejfVar = this.c;
        Activity activityZzi = ejfVar.zzi();
        if (activityZzi == null || activityZzi.getWindow() == null) {
            this.l = this.i;
            this.m = this.j;
        } else {
            zzv.zzq();
            int[] iArrZzR = zzs.zzR(activityZzi);
            zzbb.zzb();
            this.l = zzf.zzw(this.g, iArrZzR[0]);
            zzbb.zzb();
            this.m = zzf.zzw(this.g, iArrZzR[1]);
        }
        if (ejfVar.zzO().i()) {
            this.n = this.i;
            this.o = this.j;
        } else {
            ejfVar.measure(0, 0);
        }
        e(this.i, this.j, this.l, this.m, this.h, this.k);
        y9f y9fVar = new y9f();
        hxe hxeVar = this.f;
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        y9fVar.e(hxeVar.a(intent));
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse(DefaultWebClient.SCHEME_SMS));
        y9fVar.c(hxeVar.a(intent2));
        y9fVar.a(hxeVar.b());
        y9fVar.d(hxeVar.c());
        y9fVar.b(true);
        boolean z = y9fVar.a;
        boolean z2 = y9fVar.b;
        boolean z3 = y9fVar.c;
        boolean z4 = y9fVar.d;
        try {
            jSONObjectPut = new JSONObject().put("sms", z).put("tel", z2).put("calendar", z3).put("storePicture", z4).put("inlineVideo", y9fVar.e);
        } catch (JSONException e) {
            int i = zze.zza;
            zzo.zzh("Error occurred while obtaining the MRAID capabilities.", e);
            jSONObjectPut = null;
        }
        ejfVar.zze("onDeviceFeaturesReceived", jSONObjectPut);
        int[] iArr = new int[2];
        ejfVar.getLocationOnScreen(iArr);
        Context context = this.d;
        h(zzbb.zzb().zzb(context, iArr[0]), zzbb.zzb().zzb(context, iArr[1]));
        if (zzo.zzm(2)) {
            zzo.zzi("Dispatching Ready Event.");
        }
        d(ejfVar.zzm().afmaVersion);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0060 A[PHI: r4
      0x0060: PHI (r4v2 int) = (r4v1 int), (r4v6 int) binds: [B:11:0x003f, B:17:0x0051] A[DONT_GENERATE, DONT_INLINE]] */
    public final void h(int i, int i2) {
        int i3;
        Context context = this.d;
        int i4 = 0;
        if (context instanceof Activity) {
            zzv.zzq();
            i3 = zzs.zzS((Activity) context)[0];
        } else {
            i3 = 0;
        }
        ejf ejfVar = this.c;
        if (ejfVar.zzO() == null || !ejfVar.zzO().i()) {
            int width = ejfVar.getWidth();
            int height = ejfVar.getHeight();
            if (((Boolean) zzbd.zzc().b(cye.g0)).booleanValue()) {
                if (width == 0) {
                    width = ejfVar.zzO() != null ? ejfVar.zzO().c : 0;
                }
                if (height != 0) {
                    i4 = height;
                } else if (ejfVar.zzO() != null) {
                    i4 = ejfVar.zzO().b;
                }
            } else {
                i4 = height;
            }
            this.n = zzbb.zzb().zzb(context, width);
            this.o = zzbb.zzb().zzb(context, i4);
        }
        b(i, i2 - i3, this.n, this.o);
        ejfVar.zzN().zzD(i, i2);
    }
}
