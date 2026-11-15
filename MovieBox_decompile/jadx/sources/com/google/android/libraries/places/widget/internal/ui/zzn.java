package com.google.android.libraries.places.widget.internal.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.libraries.places.internal.zzkd;

final class zzn extends AnimatorListenerAdapter {
    final View zza;
    final RecyclerView.a0 zzb;
    final ViewPropertyAnimator zzc;
    final zzo zzd;

    zzn(zzo zzoVar, View view, RecyclerView.a0 a0Var, ViewPropertyAnimator viewPropertyAnimator) {
        this.zza = view;
        this.zzb = a0Var;
        this.zzc = viewPropertyAnimator;
        this.zzd = zzoVar;
    }

    @Override
    public final void onAnimationCancel(Animator animator) {
        try {
            zzo.zzf(this.zza);
        } catch (Error | RuntimeException e10) {
            zzkd.zzb(e10);
            throw e10;
        }
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        try {
            this.zzc.setListener(null);
            this.zzd.dispatchAddFinished(this.zzb);
            this.zzd.zzc.remove(this.zzb);
            this.zzd.zze();
            this.zzc.setStartDelay(0L);
        } catch (Error | RuntimeException e10) {
            zzkd.zzb(e10);
            throw e10;
        }
    }

    @Override
    public final void onAnimationStart(Animator animator) {
        try {
            this.zza.setAlpha(0.0f);
            this.zzd.dispatchAddStarting(this.zzb);
        } catch (Error | RuntimeException e10) {
            zzkd.zzb(e10);
            throw e10;
        }
    }
}
