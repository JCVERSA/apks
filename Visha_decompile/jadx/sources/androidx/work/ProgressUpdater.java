package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import defpackage.im5;
import java.util.UUID;

public interface ProgressUpdater {
    @NonNull
    im5 updateProgress(@NonNull Context context, @NonNull UUID uuid, @NonNull Data data);
}
