package defpackage;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;

public final class o9f extends aaf {
    public final Map c;
    public final Context d;
    public final String e;
    public final long f;
    public final long g;
    public final String h;
    public final String i;

    public o9f(ejf ejfVar, Map map) {
        super(ejfVar, "createCalendarEvent");
        this.c = map;
        this.d = ejfVar.zzi();
        this.e = l("description");
        this.h = l("summary");
        this.f = k("start_ticks");
        this.g = k("end_ticks");
        this.i = l("location");
    }

    public final Intent i() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.e);
        data.putExtra("eventLocation", this.i);
        data.putExtra("description", this.h);
        long j = this.f;
        if (j > -1) {
            data.putExtra("beginTime", j);
        }
        long j2 = this.g;
        if (j2 > -1) {
            data.putExtra("endTime", j2);
        }
        data.setFlags(268435456);
        return data;
    }

    public final void j() {
        Context context = this.d;
        if (context == null) {
            c("Activity context is not available.");
            return;
        }
        zzv.zzq();
        if (!new hxe(context).b()) {
            c("This feature is not available on the device.");
            return;
        }
        zzv.zzq();
        AlertDialog.Builder builderZzL = zzs.zzL(context);
        Resources resourcesF = zzv.zzp().f();
        builderZzL.setTitle(resourcesF != null ? resourcesF.getString(R.string.s5) : "Create calendar event");
        builderZzL.setMessage(resourcesF != null ? resourcesF.getString(R.string.s6) : "Allow Ad to create a calendar event?");
        builderZzL.setPositiveButton(resourcesF != null ? resourcesF.getString(R.string.s3) : "Accept", new m9f(this));
        builderZzL.setNegativeButton(resourcesF != null ? resourcesF.getString(R.string.s4) : "Decline", new n9f(this));
        builderZzL.create().show();
    }

    public final long k(String str) {
        String str2 = (String) this.c.get(str);
        if (str2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public final String l(String str) {
        Map map = this.c;
        return TextUtils.isEmpty((CharSequence) map.get(str)) ? "" : (String) map.get(str);
    }
}
