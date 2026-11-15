package com.google.android.libraries.places.widget.internal.ui;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.libraries.places.R;
import com.google.android.libraries.places.internal.zzkd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import o1.b;

public final class zzo extends DefaultItemAnimator {
    private final List zza = new ArrayList();
    private final List zzb = new ArrayList();
    private final List zzc = new ArrayList();
    private final int zzd;

    public zzo(Resources resources) {
        this.zzd = resources.getDimensionPixelSize(R.dimen.places_autocomplete_vertical_dropdown);
    }

    private final void zzd(RecyclerView.a0 a0Var) {
        List list = this.zzc;
        View view = a0Var.itemView;
        list.add(a0Var);
        long moveDuration = getMoveDuration() + ((long) (a0Var.getLayoutPosition() * 67));
        view.setTranslationY(-this.zzd);
        view.setAlpha(0.0f);
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        viewPropertyAnimatorAnimate.cancel();
        viewPropertyAnimatorAnimate.translationY(0.0f).alpha(1.0f).setDuration(133L).setInterpolator(new b()).setStartDelay(moveDuration);
        viewPropertyAnimatorAnimate.setListener(new zzn(this, view, a0Var, viewPropertyAnimatorAnimate)).start();
    }

    public final void zze() {
        if (isRunning()) {
            return;
        }
        dispatchAnimationsFinished();
    }

    public static void zzf(View view) {
        view.setAlpha(1.0f);
        view.setTranslationY(0.0f);
    }

    @Override
    public final boolean animateAdd(RecyclerView.a0 a0Var) throws Throwable {
        try {
            endAnimation(a0Var);
            a0Var.itemView.setAlpha(0.0f);
            if (((zzt) a0Var).zzb()) {
                this.zza.add(a0Var);
                return true;
            }
            this.zzb.add(a0Var);
            return true;
        } catch (Error e10) {
            e = e10;
            zzkd.zzb(e);
            throw e;
        } catch (RuntimeException e11) {
            e = e11;
            zzkd.zzb(e);
            throw e;
        }
    }

    @Override
    public final void endAnimation(RecyclerView.a0 a0Var) throws Throwable {
        try {
            super.endAnimation(a0Var);
            if (this.zza.remove(a0Var)) {
                zzf(a0Var.itemView);
                dispatchAddFinished(a0Var);
            }
            zze();
        } catch (Error e10) {
            e = e10;
            zzkd.zzb(e);
            throw e;
        } catch (RuntimeException e11) {
            e = e11;
            zzkd.zzb(e);
            throw e;
        }
    }

    @Override
    public final void endAnimations() throws Throwable {
        try {
            int size = this.zza.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                RecyclerView.a0 a0Var = (RecyclerView.a0) this.zza.get(size);
                zzf(a0Var.itemView);
                dispatchAddFinished(a0Var);
                this.zza.remove(size);
            }
            List list = this.zzc;
            int size2 = list.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    super.endAnimations();
                    return;
                }
                ((RecyclerView.a0) list.get(size2)).itemView.animate().cancel();
            }
        } catch (Error e10) {
            e = e10;
            zzkd.zzb(e);
            throw e;
        } catch (RuntimeException e11) {
            e = e11;
            zzkd.zzb(e);
            throw e;
        }
    }

    @Override
    public final boolean isRunning() {
        try {
            return (!super.isRunning() && this.zzb.isEmpty() && this.zza.isEmpty() && this.zzc.isEmpty()) ? false : true;
        } catch (Error | RuntimeException e10) {
            zzkd.zzb(e10);
            throw e10;
        }
    }

    @Override
    public final void runPendingAnimations() throws Throwable {
        try {
            Iterator it = this.zzb.iterator();
            while (it.hasNext()) {
                super.animateAdd((RecyclerView.a0) it.next());
            }
            this.zzb.clear();
            super.runPendingAnimations();
            if (this.zza.isEmpty()) {
                return;
            }
            ArrayList<RecyclerView.a0> arrayList = new ArrayList(this.zza);
            this.zza.clear();
            for (RecyclerView.a0 a0Var : arrayList) {
                View view = a0Var.itemView;
                this.zzc.add(a0Var);
                long moveDuration = getMoveDuration() + ((long) (a0Var.getLayoutPosition() * 67));
                view.setTranslationY(-this.zzd);
                view.setAlpha(0.0f);
                ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                viewPropertyAnimatorAnimate.cancel();
                viewPropertyAnimatorAnimate.translationY(0.0f).alpha(1.0f).setDuration(133L).setInterpolator(new b()).setStartDelay(moveDuration);
                viewPropertyAnimatorAnimate.setListener(new zzn(this, view, a0Var, viewPropertyAnimatorAnimate)).start();
            }
        } catch (Error e10) {
            e = e10;
            zzkd.zzb(e);
            throw e;
        } catch (RuntimeException e11) {
            e = e11;
            zzkd.zzb(e);
            throw e;
        }
    }
}
