package defpackage;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.zzv;
import com.transsion.dbdata.beans.media.PlayAudioData;
import java.util.List;

public final class l5h implements deh {
    public final Context a;
    public final zzr b;
    public final List c;

    public l5h(Context context, zzr zzrVar, List list) {
        this.a = context;
        this.b = zzrVar;
        this.c = list;
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        ComponentName componentName;
        kyf kyfVar = (kyf) obj;
        if (((Boolean) c0f.a.e()).booleanValue()) {
            Bundle bundle = new Bundle();
            zzv.zzq();
            String className = null;
            try {
                ActivityManager activityManager = (ActivityManager) this.a.getSystemService("activity");
                if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null && (componentName = runningTaskInfo.topActivity) != null) {
                    className = componentName.getClassName();
                }
            } catch (Exception unused) {
            }
            bundle.putString("activity", className);
            Bundle bundle2 = new Bundle();
            zzr zzrVar = this.b;
            bundle2.putInt("width", zzrVar.zze);
            bundle2.putInt("height", zzrVar.zzb);
            bundle.putBundle(PlayAudioData.TAG_SIZE, bundle2);
            List list = this.c;
            if (!list.isEmpty()) {
                bundle.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
            }
            kyfVar.a.putBundle("view_hierarchy", bundle);
        }
    }
}
