package l0;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import h0.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ru.zdevs.zarchiver.ZApp;

public final class c {

    public static final String[] f1180a = {"_name", "_id", "_size", "_dir", "_last_mod"};

    public static final String[] f1181b = {"_name", "_id", "_size", "_dir", "_last_mod", "_path"};

    public static Boolean f1182c = Boolean.FALSE;

    public static final ArrayList<C0023c> f1183d = new ArrayList<>(0);

    public static final ArrayList<String> f1184e = new ArrayList<>(0);

    public static class a {

        public final long f1185a;

        public final long f1186b;

        public final String f1187c;

        public a(String str, long j2, long j3) {
            this.f1185a = j3;
            this.f1186b = j2;
            this.f1187c = str;
        }
    }

    public static class b {

        public String f1188a;

        public String f1189b;

        public boolean f1190c;

        public long f1191d;

        public long f1192e;
    }

    public static final class C0023c {

        public final String f1193a;

        public final String f1194b;

        public final String f1195c;

        public int f1196d;

        public C0023c(String str, String str2, String str3, int i2) {
            this.f1193a = str;
            this.f1194b = str2;
            this.f1195c = str3;
            this.f1196d = i2;
        }
    }

    public static boolean a(ContentResolver contentResolver, String str) {
        boolean z2;
        try {
            ContentProviderClient contentProviderClientAcquireContentProviderClient = contentResolver.acquireContentProviderClient(str);
            if (contentProviderClientAcquireContentProviderClient == null) {
                return false;
            }
            try {
                Cursor cursorQuery = contentProviderClientAcquireContentProviderClient.query(new Uri.Builder().authority(str).build(), new String[]{"_name", "_id", "_flags"}, "get=accounts", null, null);
                if (cursorQuery != null) {
                    while (cursorQuery.moveToNext()) {
                        String string = cursorQuery.getString(0);
                        String string2 = cursorQuery.getString(1);
                        int i2 = cursorQuery.getInt(2);
                        ArrayList<C0023c> arrayList = f1183d;
                        Iterator<C0023c> it = arrayList.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z2 = true;
                                break;
                            }
                            C0023c next = it.next();
                            if (str.equals(next.f1194b) && string2.equals(next.f1195c) && string.equals(next.f1193a)) {
                                next.f1196d = i2;
                                z2 = false;
                                break;
                            }
                        }
                        if (z2) {
                            arrayList.add(new C0023c(string, str, string2, i2));
                        }
                    }
                    cursorQuery.close();
                }
                return true;
            } catch (Exception unused) {
                return false;
            } finally {
                b(contentProviderClientAcquireContentProviderClient);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void b(ContentProviderClient contentProviderClient) {
        if (Build.VERSION.SDK_INT >= 24) {
            contentProviderClient.close();
        } else {
            contentProviderClient.release();
        }
    }

    public static boolean c(h hVar, h hVar2, boolean z2) {
        ContentProviderClient contentProviderClientE = e(hVar);
        if (contentProviderClientE == null) {
            return false;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("_account", hVar.f1110e);
            bundle.putParcelable("_uri", h(hVar));
            bundle.putParcelable("_uri_to", h(hVar2));
            Bundle bundleCall = contentProviderClientE.call(z2 ? "move" : "copy", null, bundle);
            if (bundleCall == null) {
                return false;
            }
            return bundleCall.getInt("_ret") == 0;
        } catch (Exception unused) {
            return false;
        } finally {
            b(contentProviderClientE);
        }
    }

    public static int d(h hVar) {
        for (C0023c c0023c : f1183d) {
            if (c0023c.f1195c.equals(hVar.f1110e)) {
                if (c0023c.f1194b.equals(hVar.f1107b)) {
                    return c0023c.f1196d;
                }
            }
        }
        return 0;
    }

    public static ContentProviderClient e(h hVar) {
        ZApp zApp;
        String str = hVar.f1107b;
        if (str == null || (zApp = ZApp.f1434c) == null) {
            return null;
        }
        return zApp.getContentResolver().acquireUnstableContentProviderClient(str);
    }

    public static a f(h hVar) {
        ContentProviderClient contentProviderClientE = e(hVar);
        if (contentProviderClientE == null) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("_account", hVar.f1110e);
            bundle.putParcelable("_uri", h(hVar));
            Bundle bundleCall = contentProviderClientE.call("disk", null, bundle);
            if (bundleCall != null && bundleCall.getInt("_ret") == 0) {
                return new a(bundleCall.getString("_fs_type"), bundleCall.getLong("_used"), bundleCall.getLong("_free"));
            }
            return null;
        } catch (Exception unused) {
            return null;
        } finally {
            b(contentProviderClientE);
        }
    }

    public static String g(h hVar) {
        ContentProviderClient contentProviderClientE = e(hVar);
        if (contentProviderClientE == null) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("_account", hVar.f1110e);
            Bundle bundleCall = contentProviderClientE.call("error", null, bundle);
            if (bundleCall == null) {
                return null;
            }
            return bundleCall.getString("_text");
        } catch (Exception unused) {
            return null;
        } finally {
            b(contentProviderClientE);
        }
    }

    public static Uri h(h hVar) {
        return new Uri.Builder().authority(hVar.f1107b).path(hVar.f1108c).fragment(hVar.f1110e).query(hVar.f1109d).build();
    }

    public static void i(Context context) {
        if (f1182c.booleanValue()) {
            return;
        }
        List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("ru.zdevs.zarchiver.plugin.PLUGIN_APPLICATION"), 0);
        ContentResolver contentResolver = context.getContentResolver();
        ArrayList<String> arrayList = f1184e;
        arrayList.clear();
        ArrayList<C0023c> arrayList2 = f1183d;
        arrayList2.clear();
        arrayList2.ensureCapacity(listQueryIntentActivities.size() * 2);
        for (ResolveInfo resolveInfo : listQueryIntentActivities) {
            if (a(contentResolver, resolveInfo.activityInfo.packageName)) {
                arrayList.add(resolveInfo.activityInfo.packageName);
            }
        }
        f1182c = Boolean.TRUE;
    }

    public static boolean j(String str, h hVar) {
        ContentProviderClient contentProviderClientE = e(hVar);
        if (contentProviderClientE == null) {
            return false;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("_account", hVar.f1110e);
            bundle.putParcelable("_uri", h(hVar));
            bundle.putString("_name", str);
            Bundle bundleCall = contentProviderClientE.call("mkdir", null, bundle);
            if (bundleCall == null) {
                return false;
            }
            return bundleCall.getInt("_ret") == 0;
        } catch (Exception unused) {
            return false;
        } finally {
            b(contentProviderClientE);
        }
    }

    public static boolean k() {
        ZApp zApp;
        if (Build.VERSION.SDK_INT < 17 || f1184e.isEmpty() || (zApp = ZApp.f1434c) == null) {
            return false;
        }
        ArrayList<C0023c> arrayList = f1183d;
        int size = arrayList.size();
        for (C0023c c0023c : arrayList) {
            c0023c.f1196d = 1048576 | c0023c.f1196d;
        }
        ContentResolver contentResolver = zApp.getContentResolver();
        Iterator<String> it = f1184e.iterator();
        while (it.hasNext()) {
            a(contentResolver, it.next());
        }
        Iterator<C0023c> it2 = f1183d.iterator();
        while (it2.hasNext()) {
            if (a0.c.K(it2.next().f1196d, 1048576)) {
                it2.remove();
            }
        }
        return size != f1183d.size();
    }

    public static boolean l(h hVar) {
        ContentProviderClient contentProviderClientE = e(hVar);
        if (contentProviderClientE == null) {
            return false;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("_account", hVar.f1110e);
            bundle.putParcelable("_uri", h(hVar));
            Bundle bundleCall = contentProviderClientE.call("remove", null, bundle);
            if (bundleCall == null) {
                return false;
            }
            return bundleCall.getInt("_ret") == 0;
        } catch (Exception unused) {
            return false;
        } finally {
            b(contentProviderClientE);
        }
    }

    public static boolean m(String str, h hVar) {
        ContentProviderClient contentProviderClientE = e(hVar);
        if (contentProviderClientE == null) {
            return false;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("_account", hVar.f1110e);
            bundle.putParcelable("_uri", h(hVar));
            bundle.putString("_name", str);
            Bundle bundleCall = contentProviderClientE.call("rename", null, bundle);
            if (bundleCall == null) {
                return false;
            }
            return bundleCall.getInt("_ret") == 0;
        } catch (Exception unused) {
            return false;
        } finally {
            b(contentProviderClientE);
        }
    }
}
