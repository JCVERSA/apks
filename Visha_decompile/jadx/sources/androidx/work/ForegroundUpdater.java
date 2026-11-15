package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import defpackage.im5;
import java.util.UUID;

public interface ForegroundUpdater {
    @NonNull
    im5 setForegroundAsync(@NonNull Context context, @NonNull UUID uuid, @NonNull ForegroundInfo foregroundInfo);
}
