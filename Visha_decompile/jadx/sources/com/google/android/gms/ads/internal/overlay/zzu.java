package com.google.android.gms.ads.internal.overlay;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzf;
import defpackage.cye;
import defpackage.d28;
import defpackage.qjj;
import org.greenrobot.greendao.generator.Schema;

public final class zzu extends FrameLayout implements View.OnClickListener {
    public final ImageButton b;
    public final zzag c;

    public zzu(Context context, zzt zztVar, @Nullable zzag zzagVar) {
        super(context);
        this.c = zzagVar;
        setOnClickListener(this);
        ImageButton imageButton = new ImageButton(context);
        this.b = imageButton;
        b();
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(this);
        zzbb.zzb();
        int iZzy = zzf.zzy(context, zztVar.zza);
        zzbb.zzb();
        int iZzy2 = zzf.zzy(context, 0);
        zzbb.zzb();
        int iZzy3 = zzf.zzy(context, zztVar.zzb);
        zzbb.zzb();
        imageButton.setPadding(iZzy, iZzy2, iZzy3, zzf.zzy(context, zztVar.zzc));
        imageButton.setContentDescription("Interstitial close button");
        zzbb.zzb();
        int iZzy4 = zzf.zzy(context, zztVar.zzd + zztVar.zza + zztVar.zzb);
        zzbb.zzb();
        addView(imageButton, new FrameLayout.LayoutParams(iZzy4, zzf.zzy(context, zztVar.zzd + zztVar.zzc), 17));
        long jLongValue = ((Long) zzbd.zzc().b(cye.p1)).longValue();
        if (jLongValue <= 0) {
            return;
        }
        qjj qjjVar = ((Boolean) zzbd.zzc().b(cye.q1)).booleanValue() ? new qjj(this) : null;
        imageButton.setAlpha(0.0f);
        imageButton.animate().alpha(1.0f).setDuration(jLongValue).setListener(qjjVar);
    }

    public final void b() {
        String str = (String) zzbd.zzc().b(cye.o1);
        if (!d28.d() || TextUtils.isEmpty(str) || Schema.DEFAULT_NAME.equals(str)) {
            this.b.setImageResource(R.drawable.btn_dialog);
            return;
        }
        Resources resourcesF = com.google.android.gms.ads.internal.zzv.zzp().f();
        if (resourcesF == null) {
            this.b.setImageResource(R.drawable.btn_dialog);
            return;
        }
        Drawable drawable = null;
        try {
            if ("white".equals(str)) {
                drawable = resourcesF.getDrawable(com.google.android.gms.ads.impl.R.drawable.admob_close_button_white_circle_black_cross);
            } else if ("black".equals(str)) {
                drawable = resourcesF.getDrawable(com.google.android.gms.ads.impl.R.drawable.admob_close_button_black_circle_white_cross);
            }
        } catch (Resources.NotFoundException unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Close button resource not found, falling back to default.");
        }
        if (drawable == null) {
            this.b.setImageResource(R.drawable.btn_dialog);
            return;
        }
        ImageButton imageButton = this.b;
        imageButton.setImageDrawable(drawable);
        imageButton.setScaleType(ImageView.ScaleType.CENTER);
    }

    @Override
    public final void onClick(View view) {
        zzag zzagVar = this.c;
        if (zzagVar != null) {
            zzagVar.zzj();
        }
    }

    public final void zzb(boolean z) {
        if (!z) {
            this.b.setVisibility(0);
            return;
        }
        ImageButton imageButton = this.b;
        imageButton.setVisibility(8);
        if (((Long) zzbd.zzc().b(cye.p1)).longValue() > 0) {
            imageButton.animate().cancel();
            imageButton.clearAnimation();
        }
    }
}
