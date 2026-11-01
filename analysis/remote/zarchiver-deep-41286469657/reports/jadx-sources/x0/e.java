package x0;

import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;

public final class e extends StorageManager.StorageVolumeCallback {

    public final d.b f2261a;

    public e(ru.zdevs.zarchiver.a aVar) {
        this.f2261a = aVar;
    }

    @Override
    public final void onStateChanged(StorageVolume storageVolume) {
        String state = storageVolume.getState();
        if ("ejecting".equals(state)) {
            this.f2261a.c(storageVolume, true);
        } else if ("mounted".equals(state)) {
            this.f2261a.c(storageVolume, false);
        }
    }
}
