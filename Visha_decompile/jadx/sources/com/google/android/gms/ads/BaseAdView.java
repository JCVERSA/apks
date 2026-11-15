package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzek;
import com.google.android.gms.ads.internal.util.client.zzo;
import defpackage.cye;
import defpackage.uaf;
import defpackage.wd8;
import defpackage.xze;

public abstract class BaseAdView extends ViewGroup {
    public final zzek b;

    public BaseAdView(Context context, int i) {
        super(context);
        this.b = new zzek(this, i);
    }

    public void destroy() {
        cye.a(getContext());
        if (((Boolean) xze.e.e()).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.kb)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() {
                    @Override
                    public final void run() {
                        BaseAdView baseAdView = this.zza;
                        try {
                            baseAdView.b.zzl();
                        } catch (IllegalStateException e) {
                            uaf.c(baseAdView.getContext()).b(e, "BaseAdView.destroy");
                        }
                    }
                });
                return;
            }
        }
        this.b.zzl();
    }

    @NonNull
    public AdListener getAdListener() {
        return this.b.zza();
    }

    @Nullable
    public AdSize getAdSize() {
        return this.b.zzb();
    }

    @NonNull
    public String getAdUnitId() {
        return this.b.zzj();
    }

    @Nullable
    public OnPaidEventListener getOnPaidEventListener() {
        return this.b.zzc();
    }

    @Nullable
    public ResponseInfo getResponseInfo() {
        return this.b.zzd();
    }

    public boolean isCollapsible() {
        return this.b.zzA();
    }

    public boolean isLoading() {
        return this.b.zzB();
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAd(@NonNull final AdRequest adRequest) {
        wd8.e("#008 Must be called on the main UI thread.");
        cye.a(getContext());
        if (((Boolean) xze.f.e()).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.nb)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() {
                    @Override
                    public final void run() {
                        BaseAdView baseAdView = this.zza;
                        try {
                            baseAdView.b.zzm(adRequest.a);
                        } catch (IllegalStateException e) {
                            uaf.c(baseAdView.getContext()).b(e, "BaseAdView.loadAd");
                        }
                    }
                });
                return;
            }
        }
        this.b.zzm(adRequest.a);
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int i5 = ((i3 - i) - measuredWidth) / 2;
        int i6 = ((i4 - i2) - measuredHeight) / 2;
        childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
    }

    @Override
    public void onMeasure(int i, int i2) {
        AdSize adSize;
        int heightInPixels;
        int measuredWidth = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            try {
                adSize = getAdSize();
            } catch (NullPointerException e) {
                zzo.zzh("Unable to retrieve ad size.", e);
                adSize = null;
            }
            if (adSize != null) {
                Context context = getContext();
                int widthInPixels = adSize.getWidthInPixels(context);
                heightInPixels = adSize.getHeightInPixels(context);
                measuredWidth = widthInPixels;
            } else {
                heightInPixels = 0;
            }
        } else {
            measureChild(childAt, i, i2);
            measuredWidth = childAt.getMeasuredWidth();
            heightInPixels = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(measuredWidth, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(heightInPixels, getSuggestedMinimumHeight()), i2));
    }

    public void pause() {
        cye.a(getContext());
        if (((Boolean) xze.g.e()).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.lb)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() {
                    @Override
                    public final void run() {
                        BaseAdView baseAdView = this.zza;
                        try {
                            baseAdView.b.zzn();
                        } catch (IllegalStateException e) {
                            uaf.c(baseAdView.getContext()).b(e, "BaseAdView.pause");
                        }
                    }
                });
                return;
            }
        }
        this.b.zzn();
    }

    public void resume() {
        cye.a(getContext());
        if (((Boolean) xze.h.e()).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.jb)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() {
                    @Override
                    public final void run() {
                        BaseAdView baseAdView = this.zza;
                        try {
                            baseAdView.b.zzp();
                        } catch (IllegalStateException e) {
                            uaf.c(baseAdView.getContext()).b(e, "BaseAdView.resume");
                        }
                    }
                });
                return;
            }
        }
        this.b.zzp();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setAdListener(@NonNull AdListener adListener) {
        zzek zzekVar = this.b;
        zzekVar.zzr(adListener);
        if (adListener == 0) {
            zzekVar.zzq(null);
            return;
        }
        if (adListener instanceof com.google.android.gms.ads.internal.client.zza) {
            zzekVar.zzq((com.google.android.gms.ads.internal.client.zza) adListener);
        }
        if (adListener instanceof AppEventListener) {
            zzekVar.zzv((AppEventListener) adListener);
        }
    }

    public void setAdSize(@NonNull AdSize adSize) {
        this.b.zzs(adSize);
    }

    public void setAdUnitId(@NonNull String str) {
        this.b.zzu(str);
    }

    public void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener) {
        this.b.zzx(onPaidEventListener);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.b = new zzek(this, attributeSet, false, i);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.b = new zzek(this, attributeSet, false, i2);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i, int i2, boolean z) {
        super(context, attributeSet, i);
        this.b = new zzek(this, attributeSet, z, i2);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, boolean z) {
        super(context, attributeSet);
        this.b = new zzek(this, attributeSet, z);
    }
}
