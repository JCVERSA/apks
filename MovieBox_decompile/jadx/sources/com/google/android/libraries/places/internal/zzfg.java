package com.google.android.libraries.places.internal;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.android.volley.VolleyError;
import com.android.volley.g;
import com.android.volley.h;
import com.android.volley.i;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.gms.tasks.OnTokenCanceledListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.libraries.places.api.net.PlacesStatusCodes;
import java.util.Map;

public final class zzfg {
    private final h zza;

    zzfg(h hVar) {
        this.zza = hVar;
    }

    static void zza(TaskCompletionSource taskCompletionSource, VolleyError volleyError) throws Throwable {
        ApiException apiExceptionZza;
        try {
            g gVar = volleyError.networkResponse;
            if (gVar != null) {
                int i10 = gVar.f18617a;
                if (i10 != 400) {
                    apiExceptionZza = i10 != 403 ? zzeu.zza(volleyError) : new ApiException(new Status(PlacesStatusCodes.REQUEST_DENIED, "The provided API key is invalid."));
                } else {
                    apiExceptionZza = new ApiException(new Status(PlacesStatusCodes.INVALID_REQUEST, "The provided parameters are invalid (did you include a max width or height?)."));
                }
            }
            taskCompletionSource.trySetException(apiExceptionZza);
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

    static void zzc(zzhs zzhsVar, TaskCompletionSource taskCompletionSource, Bitmap bitmap) {
        try {
            zzhsVar.zzb(bitmap);
            taskCompletionSource.trySetResult(zzhsVar.zza());
        } catch (Error | RuntimeException e10) {
            zzkd.zzb(e10);
            throw e10;
        }
    }

    public final Task zzb(zzfi zzfiVar, final zzhs zzhsVar) {
        String strZzc = zzfiVar.zzc();
        Map mapZzd = zzfiVar.zzd();
        CancellationToken cancellationTokenZza = zzfiVar.zza();
        final TaskCompletionSource taskCompletionSource = cancellationTokenZza != null ? new TaskCompletionSource(cancellationTokenZza) : new TaskCompletionSource();
        final zzff zzffVar = new zzff(this, strZzc, new i.b() {
            @Override
            public final void onResponse(Object obj) {
                zzfg.zzc(zzhsVar, taskCompletionSource, (Bitmap) obj);
            }
        }, 0, 0, ImageView.ScaleType.CENTER, Bitmap.Config.ARGB_8888, new i.a() {
            @Override
            public final void onErrorResponse(VolleyError volleyError) throws Throwable {
                zzfg.zza(taskCompletionSource, volleyError);
            }
        }, mapZzd);
        if (cancellationTokenZza != null) {
            cancellationTokenZza.onCanceledRequested(new OnTokenCanceledListener() {
                @Override
                public final void onCanceled() {
                    zzffVar.cancel();
                }
            });
        }
        this.zza.a(zzffVar);
        return taskCompletionSource.getTask();
    }
}
