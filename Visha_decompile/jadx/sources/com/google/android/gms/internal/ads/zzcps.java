package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.zzv;
import defpackage.hmh;
import defpackage.imh;
import defpackage.mff;
import java.util.List;
import org.json.JSONObject;

public final class zzcps extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnGlobalLayoutListener {
    public final Context b;
    public View c;

    public zzcps(Context context) {
        super(context);
        this.b = context;
    }

    public static zzcps zza(Context context, View view, hmh hmhVar) {
        Resources resources;
        DisplayMetrics displayMetrics;
        zzcps zzcpsVar = new zzcps(context);
        List list = hmhVar.u;
        if (!list.isEmpty() && (resources = zzcpsVar.b.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            imh imhVar = (imh) list.get(0);
            float f = imhVar.a;
            float f2 = displayMetrics.density;
            zzcpsVar.setLayoutParams(new FrameLayout.LayoutParams((int) (f * f2), (int) (imhVar.b * f2)));
        }
        zzcpsVar.c = view;
        zzcpsVar.addView(view);
        zzv.zzy();
        mff.b(zzcpsVar, zzcpsVar);
        zzv.zzy();
        mff.a(zzcpsVar, zzcpsVar);
        JSONObject jSONObject = hmhVar.h0;
        RelativeLayout relativeLayout = new RelativeLayout(zzcpsVar.b);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("header");
        if (jSONObjectOptJSONObject != null) {
            zzcpsVar.b(jSONObjectOptJSONObject, relativeLayout, 10);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("footer");
        if (jSONObjectOptJSONObject2 != null) {
            zzcpsVar.b(jSONObjectOptJSONObject2, relativeLayout, 12);
        }
        zzcpsVar.addView(relativeLayout);
        return zzcpsVar;
    }

    public final int a(double d) {
        zzbb.zzb();
        return zzf.zzy(this.b, (int) d);
    }

    public final void b(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.b);
        textView.setTextColor(-1);
        textView.setBackgroundColor(-16777216);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        int iA = a(jSONObject.optDouble("padding", 0.0d));
        textView.setPadding(0, iA, 0, iA);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, a(jSONObject.optDouble("height", 15.0d)));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    @Override
    public final void onGlobalLayout() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.c.setY(-iArr[1]);
    }

    @Override
    public final void onScrollChanged() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.c.setY(-iArr[1]);
    }
}
