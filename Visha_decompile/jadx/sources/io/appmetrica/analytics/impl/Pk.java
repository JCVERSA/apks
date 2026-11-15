package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.cache.CachedDataProvider;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class Pk implements Om {
    public static final long d = TimeUnit.SECONDS.toMillis(20);
    public final Context a;
    public final PermissionExtractor b;
    public final CachedDataProvider.CachedData c;

    public Pk(Context context) {
        long j = d;
        this.c = new CachedDataProvider.CachedData(j, j, "sim-info");
        this.a = context;
        this.b = C2910ua.j().i();
    }

    public final Kk b() {
        return new Kk((Integer) SystemServiceUtils.accessSystemServiceByNameSafely(this.a, "phone", "getting SimMcc", "TelephonyManager", new Lk()), (Integer) SystemServiceUtils.accessSystemServiceByNameSafely(this.a, "phone", "getting SimMnc", "TelephonyManager", new Mk()), ((Boolean) SystemServiceUtils.accessSystemServiceByNameSafelyOrDefault(this.a, "phone", "getting NetworkRoaming", "TelephonyManager", Boolean.FALSE, new Ok(this))).booleanValue(), (String) SystemServiceUtils.accessSystemServiceByNameSafely(this.a, "phone", "getting SimOperatorName", "TelephonyManager", new Nk()));
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002f A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0001, B:5:0x000b, B:7:0x0011, B:12:0x001c, B:14:0x002f, B:16:0x0037, B:18:0x0043, B:19:0x004c, B:21:0x0052, B:22:0x005a, B:23:0x0061), top: B:28:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:16:0x0037 A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0001, B:5:0x000b, B:7:0x0011, B:12:0x001c, B:14:0x002f, B:16:0x0037, B:18:0x0043, B:19:0x004c, B:21:0x0052, B:22:0x005a, B:23:0x0061), top: B:28:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0043 A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0001, B:5:0x000b, B:7:0x0011, B:12:0x001c, B:14:0x002f, B:16:0x0037, B:18:0x0043, B:19:0x004c, B:21:0x0052, B:22:0x005a, B:23:0x0061), top: B:28:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x0052 A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0001, B:5:0x000b, B:7:0x0011, B:12:0x001c, B:14:0x002f, B:16:0x0037, B:18:0x0043, B:19:0x004c, B:21:0x0052, B:22:0x005a, B:23:0x0061), top: B:28:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x005a A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0001, B:5:0x000b, B:7:0x0011, B:12:0x001c, B:14:0x002f, B:16:0x0037, B:18:0x0043, B:19:0x004c, B:21:0x0052, B:22:0x005a, B:23:0x0061), top: B:28:0x0001 }] */
    @Override
    @Nullable
    public final synchronized List<Kk> a() {
        ArrayList arrayList;
        List<Kk> list;
        try {
            List<Kk> list2 = (List) this.c.getData();
            if (list2 == null) {
                arrayList = new ArrayList();
                if (C2910ua.E.u.b().n.d) {
                    if (AndroidUtils.isApiAchieved(23)) {
                        if (this.b.hasPermission(this.a, "android.permission.READ_PHONE_STATE")) {
                            arrayList.addAll(Qk.a(this.a));
                        }
                        if (arrayList.size() == 0) {
                            arrayList.add(b());
                        }
                    } else {
                        arrayList.add(b());
                    }
                }
                this.c.setData(arrayList);
                list = arrayList;
            } else if (list2.isEmpty() && this.c.shouldUpdateData()) {
                list = list2;
                list = list2;
                arrayList = new ArrayList();
                if (C2910ua.E.u.b().n.d) {
                    if (AndroidUtils.isApiAchieved(23)) {
                        if (this.b.hasPermission(this.a, "android.permission.READ_PHONE_STATE")) {
                            arrayList.addAll(Qk.a(this.a));
                        }
                        if (arrayList.size() == 0) {
                            arrayList.add(b());
                        }
                    } else {
                        arrayList.add(b());
                    }
                }
                this.c.setData(arrayList);
                list = arrayList;
            }
        } catch (Throwable th) {
            throw th;
        }
        return list;
    }
}
