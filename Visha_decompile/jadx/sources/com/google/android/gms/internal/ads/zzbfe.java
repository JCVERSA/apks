package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.wd8;
import java.util.Iterator;
import java.util.List;

public final class zzbfe extends RelativeLayout {
    public static final float[] c = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};
    public AnimationDrawable b;

    public zzbfe(Context context, zzbfd zzbfdVar, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        wd8.l(zzbfdVar);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(c, null, null));
        shapeDrawable.getPaint().setColor(zzbfdVar.zzd());
        setLayoutParams(layoutParams);
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(zzbfdVar.zzg())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(zzbfdVar.zzg());
            textView.setTextColor(zzbfdVar.zze());
            textView.setTextSize(zzbfdVar.zzf());
            zzbb.zzb();
            int iZzy = zzf.zzy(context, 4);
            zzbb.zzb();
            textView.setPadding(iZzy, 0, zzf.zzy(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List listZzi = zzbfdVar.zzi();
        if (listZzi != null && listZzi.size() > 1) {
            this.b = new AnimationDrawable();
            Iterator it = listZzi.iterator();
            while (it.hasNext()) {
                try {
                    this.b.addFrame((Drawable) ObjectWrapper.unwrap(((zzbfg) it.next()).zzf()), zzbfdVar.zzb());
                } catch (Exception e) {
                    int i = zze.zza;
                    zzo.zzh("Error while getting drawable.", e);
                }
            }
            imageView.setBackground(this.b);
        } else if (listZzi.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) ObjectWrapper.unwrap(((zzbfg) listZzi.get(0)).zzf()));
            } catch (Exception e2) {
                int i2 = zze.zza;
                zzo.zzh("Error while getting drawable.", e2);
            }
        }
        addView(imageView);
    }

    @Override
    public final void onAttachedToWindow() {
        AnimationDrawable animationDrawable = this.b;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
        super.onAttachedToWindow();
    }
}
