package x0;

import android.content.Context;
import android.os.AsyncTask;
import android.os.storage.StorageManager;

public final class f {
    public static void a(Context context, ru.zdevs.zarchiver.a aVar) {
        aVar.f2260a = new e(aVar);
        ((StorageManager) context.getSystemService("storage")).registerStorageVolumeCallback(AsyncTask.THREAD_POOL_EXECUTOR, (StorageManager.StorageVolumeCallback) aVar.f2260a);
    }
}
