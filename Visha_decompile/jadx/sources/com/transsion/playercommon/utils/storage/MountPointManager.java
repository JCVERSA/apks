package com.transsion.playercommon.utils.storage;

import android.content.Context;
import android.os.Build;
import android.os.Parcelable;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.playercommon.R;
import defpackage.se;
import defpackage.tpb;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class MountPointManager {
    public static final MountPointManager g = new MountPointManager();
    public Context b;
    public String a = "Root Path";
    public StorageManager c = null;
    public final CopyOnWriteArrayList d = new CopyOnWriteArrayList();
    public final ArrayList e = new ArrayList();
    public Comparator f = new Comparator<b>() {
        @Override
        public int compare(b bVar, b bVar2) {
            boolean z = bVar.d;
            if (z && bVar2.d) {
                return (bVar.e || bVar2.e) ? 1 : -1;
            }
            return !z ? -1 : 1;
        }
    };

    public interface a {
        void onEjected(String str);

        void onMounted(String str);

        void onSdSwap();

        void onUnMounted(String str);
    }

    public static class b {
        public String a;
        public String b;
        public int c;
        public boolean d;
        public boolean e;
        public boolean f;
        public long g;
        public int h;

        public String toString() {
            return "MountPoint{mPath='" + this.b + "', mIsExternal=" + this.d + ", mIsExternalOtg=" + this.e + ", index=" + this.h + '}';
        }
    }

    public MountPointManager() {
        tpb.j0().x();
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                this.b.n();
            }
        });
    }

    public static Object c(Object obj, String str) {
        try {
            Method declaredMethod = obj.getClass().getDeclaredMethod(str, null);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(obj, null);
        } catch (Exception e) {
            Log.e("MountPointManager", "getDeclaredMethod " + e.getMessage());
            return null;
        }
    }

    public static MountPointManager f() {
        return g;
    }

    public void b(String str) {
        Log.e("MountPointManager", "onEjected " + str);
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onEjected(str);
        }
        tpb.j0().x();
    }

    public String d() {
        return "haha";
    }

    public String e(String str) {
        CopyOnWriteArrayList<b> copyOnWriteArrayList = this.d;
        if (copyOnWriteArrayList != null) {
            for (b bVar : copyOnWriteArrayList) {
                if ((str + "/").startsWith(bVar.b + "/")) {
                    if (str.length() <= bVar.b.length() + 1) {
                        return bVar.a;
                    }
                    return bVar.a + "/" + str.substring(bVar.b.length() + 1);
                }
            }
        }
        return str;
    }

    public CopyOnWriteArrayList g() {
        return this.d;
    }

    public String h(String str) {
        for (b bVar : this.d) {
            if ((str + "/").startsWith(bVar.b + "/")) {
                Log.d("MountPointManager", "getRealMountPointPath = " + bVar.b);
                return bVar.b;
            }
        }
        Log.d("MountPointManager", "getRealMountPointPath = \"\" ");
        return "";
    }

    public String i() {
        return this.a;
    }

    public int j(b bVar) {
        if (bVar.f && bVar.d) {
            return bVar.e ? R.drawable.ic_otg : R.drawable.ic_sdcard_icon;
        }
        return R.drawable.ic_internal_storage;
    }

    public synchronized void k(Context context) {
        try {
            this.b = context;
            this.c = (StorageManager) context.getSystemService("storage");
            String strD = d();
            Log.d("MountPointManager", "init,defaultPath = " + strD);
            if (!TextUtils.isEmpty(strD)) {
                this.a = "/storage";
            }
            this.d.clear();
            List<StorageVolume> storageVolumes = this.c.getStorageVolumes();
            if (storageVolumes != null) {
                int i = 0;
                for (StorageVolume storageVolume : storageVolumes) {
                    b bVar = new b();
                    bVar.h = i;
                    bVar.a = storageVolume.getDescription(context);
                    if (Build.VERSION.SDK_INT < 30) {
                        bVar.b = (String) c(storageVolume, "getPath");
                    } else if (storageVolume.getDirectory() != null) {
                        bVar.b = storageVolume.getDirectory().getAbsolutePath();
                    }
                    bVar.f = "mounted".equals(storageVolume.getState());
                    boolean zIsRemovable = storageVolume.isRemovable();
                    bVar.d = zIsRemovable;
                    if (zIsRemovable) {
                        bVar.e = m(storageVolume);
                    }
                    bVar.c = j(bVar);
                    try {
                        bVar.g = ((Long) c(storageVolume, "getMaxFileSize")).longValue();
                    } catch (Exception unused) {
                    }
                    Log.d("MountPointManager", "mountPoint:" + bVar.toString());
                    this.d.add(bVar);
                    i++;
                    if (!bVar.f) {
                        bVar.a = context.getResources().getString(R.string.internal_storage);
                    } else if (!bVar.d) {
                        bVar.a = context.getResources().getString(R.string.internal_storage);
                    } else if (bVar.e) {
                        bVar.a = context.getResources().getString(R.string.otg);
                    } else {
                        bVar.a = context.getResources().getString(R.string.sd_card);
                    }
                }
            }
            this.d.sort(this.f);
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean l(String str) {
        return this.a.equals(str);
    }

    public boolean m(StorageVolume storageVolume) {
        try {
            Class<?> cls = Class.forName("android.os.storage.VolumeInfo");
            Method method = Class.forName("android.os.storage.DiskInfo").getMethod("isUsb", null);
            Method method2 = cls.getMethod("getDisk", null);
            Method declaredMethod = StorageManager.class.getDeclaredMethod("findVolumeByUuid", String.class);
            declaredMethod.setAccessible(true);
            Parcelable parcelable = (Parcelable) declaredMethod.invoke(this.c, storageVolume.getUuid());
            if (parcelable == null && method2 == null) {
                return false;
            }
            Parcelable parcelable2 = (Parcelable) method2.invoke(parcelable, null);
            if (parcelable2 != null) {
                return ((Boolean) method.invoke(parcelable2, null)).booleanValue();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public final void n() {
        k(se.a());
    }

    public void o(String str) {
        Log.e("MountPointManager", "onMounted " + str);
        tpb.j0().x();
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onMounted(str);
        }
    }

    public void p(a aVar) {
        this.e.add(aVar);
    }

    public void q(a aVar, int i) {
        if (i >= this.e.size()) {
            i = this.e.size();
        }
        this.e.add(i, aVar);
    }

    public void r() {
        Log.e("MountPointManager", "onSdSwap");
        for (a aVar : this.e) {
            Log.d("MountPointManager", "onReceive,handle SD_SWAP ");
            aVar.onSdSwap();
        }
    }

    public void s(String str) {
        Log.e("MountPointManager", "onUnMounted " + str);
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onUnMounted(str);
        }
    }

    public void t(a aVar) {
        this.e.remove(aVar);
    }
}
