package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.net.Uri;

public abstract class g {
    public static JobInfo.TriggerContentUri a(Uri uri, int i10) {
        return new JobInfo.TriggerContentUri(uri, i10);
    }
}
