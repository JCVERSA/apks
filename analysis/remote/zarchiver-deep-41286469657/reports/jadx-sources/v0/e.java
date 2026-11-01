package v0;

import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.FileUriExposedException;
import android.os.Parcelable;
import android.os.StrictMode;
import java.lang.reflect.Method;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.activity.OpenAsDlg;
import ru.zdevs.zarchiver.io.KitKatExtSD;
import ru.zdevs.zarchiver.io.SAF;
import ru.zdevs.zarchiver.provider.ArchiveFileProvider;
import ru.zdevs.zarchiver.provider.FileProvider;
import ru.zdevs.zarchiver.provider.PluginFileProvider;

public final class e {

    public static class a extends Exception {
        public a() {
            super("Need file://");
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0042  */
    public static Uri a(ZArchiver zArchiver, h0.h hVar, long j2, String str, boolean z2) throws Throwable {
        int i2;
        Uri uriJ;
        if (hVar.g() || hVar.k() || hVar.m() || hVar.l()) {
            return b(zArchiver, hVar, j2, str);
        }
        if (!z2 || (i2 = Build.VERSION.SDK_INT) < 24 || i2 >= 29 || !g()) {
            return n0.a.f1232a ? KitKatExtSD.c(hVar) : SAF.h(zArchiver, hVar, true);
        }
        if (b.h()) {
            String strR = hVar.r();
            if (a0.c.E(strR) == 9) {
                uriJ = SAF.j(zArchiver, strR);
            } else {
                uriJ = null;
            }
        } else {
            uriJ = null;
        }
        return uriJ == null ? KitKatExtSD.c(hVar) : uriJ;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0023 A[PHI: r15
      0x0023: PHI (r15v4 java.lang.String) = (r15v0 java.lang.String), (r15v13 java.lang.String) binds: [B:7:0x000f, B:9:0x001f] A[DONT_GENERATE, DONT_INLINE]] */
    public static Uri b(Context context, h0.h hVar, long j2, String str) {
        String str2;
        if (hVar.g()) {
            if (Build.VERSION.SDK_INT < 26) {
                return null;
            }
            if (str == null) {
                str = e0.h.d().b(hVar.f1108c, false);
                if (str.isEmpty()) {
                    str2 = null;
                } else {
                    str2 = str;
                }
            } else {
                str2 = str;
            }
            String strI = f0.a.m().n(hVar.f1108c) ? f0.a.m().i() : null;
            int i2 = t0.b.f2086g << 16;
            if (t0.b.f(4)) {
                i2 |= 4;
            }
            return ArchiveFileProvider.d(context, hVar, strI, j2, str2, i2);
        }
        if (hVar.k()) {
            if (Build.VERSION.SDK_INT < 26) {
                return null;
            }
            if ("plglocal".equals(hVar.f1106a)) {
                String strE = hVar.e();
                String[] strArr = PluginFileProvider.f1711a;
                return new Uri.Builder().scheme("content").authority("ru.zdevs.zarchiver.plugin").path(hVar.toString()).fragment(strE).build();
            }
            String[] strArr2 = FileProvider.f1710a;
            return new Uri.Builder().scheme("content").authority("ru.zdevs.zarchiver.external").path("/u/" + hVar.f1107b + '/' + hVar.f1110e + hVar.f1108c).build();
        }
        if (hVar.m()) {
            return SAF.l(0, hVar.r());
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 24) {
            return KitKatExtSD.c(hVar);
        }
        if (!hVar.l()) {
            return FileProvider.c(hVar.r());
        }
        if (i3 < 26 || !t0.b.i(hVar.r())) {
            return KitKatExtSD.c(hVar);
        }
        String strR = hVar.r();
        int i4 = t0.b.f2092m;
        String[] strArr3 = FileProvider.f1710a;
        return new Uri.Builder().scheme("content").authority("ru.zdevs.zarchiver.external").path(strR).fragment("R:" + j2 + ":0:" + i4).build();
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00b7  */
    public static void c(ZArchiver zArchiver, h0.h hVar, long j2, String str, u0.b bVar, Bundle bundle) throws Throwable {
        Uri uriA;
        Intent intent;
        String strX = a0.c.x(a0.c.s(hVar.e()));
        boolean z2 = true;
        boolean z3 = false;
        if (bVar != null) {
            if (bVar.f2177d == 0) {
                uriA = KitKatExtSD.c(hVar);
                if (uriA == null && hVar.g()) {
                    throw new a();
                }
            } else {
                uriA = a(zArchiver, hVar, j2, str, false);
                z3 = true;
            }
            if (uriA != null) {
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.setClassName(bVar.f2175b, bVar.f2176c);
                intent2.setDataAndType(uriA, "*/*");
                intent = intent2;
            } else {
                intent = null;
            }
        } else {
            uriA = null;
            intent = null;
        }
        if (uriA == null) {
            uriA = a(zArchiver, hVar, j2, str, false);
            if (uriA == null) {
                return;
            } else {
                z3 = true;
            }
        }
        if (intent == null) {
            intent = new Intent("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setDataAndType(uriA, strX);
        }
        intent.addFlags(268435456);
        intent.putExtra("isZA", true);
        intent.putExtras(bundle);
        if (hVar.j()) {
            intent.putExtra("AbsolutePath", hVar.r());
        }
        if (Build.VERSION.SDK_INT >= 24 && !"file".equals(uriA.getScheme())) {
            intent.addFlags(1);
            if (hVar.o()) {
                if (!n0.e.l(hVar.f1108c)) {
                    intent.addFlags(2);
                }
            }
        }
        int iH = h(zArchiver, intent);
        if (iH == -2) {
            uriA = a(zArchiver, hVar, j2, str, false);
            intent.setDataAndType(uriA, intent.getType());
            iH = h(zArchiver, intent);
        } else {
            z2 = z3;
        }
        if (iH != 0) {
            d(zArchiver, hVar, z2 ? uriA : null, j2, str, bundle);
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00eb  */
    public static void d(ZArchiver zArchiver, h0.h hVar, Uri uri, long j2, String str, Bundle bundle) throws Throwable {
        Uri uriA;
        if (Build.VERSION.SDK_INT < 21) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setDataAndType(uri == null ? a(zArchiver, hVar, j2, str, true) : uri, "*/*");
            intent.putExtra("isZA", true);
            h(zArchiver, Intent.createChooser(intent, zArchiver.getString(R.string.MENU_OPEN)));
            return;
        }
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = zArchiver.getPackageManager();
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.addFlags(268435456);
        intent2.putExtra("isZA", true);
        intent2.setDataAndType(KitKatExtSD.c(hVar), "*/*");
        if (hVar.j() && g()) {
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent2, 131072)) {
                if (resolveInfo.activityInfo.applicationInfo.targetSdkVersion <= 28) {
                    Intent intent3 = new Intent(intent2);
                    intent3.setPackage(resolveInfo.activityInfo.packageName);
                    ActivityInfo activityInfo = resolveInfo.activityInfo;
                    intent3.setClassName(activityInfo.packageName, activityInfo.name);
                    arrayList.add(intent3);
                }
            }
        }
        if (uri == null) {
            uriA = a(zArchiver, hVar, j2, str, false);
            if (uriA == null) {
                return;
            }
        } else {
            uriA = uri;
        }
        intent2.setDataAndType(uriA, "*/*");
        intent2.putExtra("AbsolutePath", hVar.r());
        if (Build.VERSION.SDK_INT >= 24 && !"file".equals(uriA.getScheme())) {
            intent2.setFlags(1);
            if (hVar.o()) {
                if (!n0.e.l(hVar.f1108c)) {
                    intent2.addFlags(2);
                }
            }
        }
        for (ResolveInfo resolveInfo2 : packageManager.queryIntentActivities(intent2, 131072)) {
            Intent intent4 = new Intent(intent2);
            intent4.setPackage(resolveInfo2.activityInfo.packageName);
            ActivityInfo activityInfo2 = resolveInfo2.activityInfo;
            intent4.setClassName(activityInfo2.packageName, activityInfo2.name);
            arrayList.add(intent4);
        }
        Intent intent5 = new Intent(zArchiver, (Class<?>) OpenAsDlg.class);
        intent5.addFlags(1077936128);
        intent5.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[0]));
        intent5.putExtra("OpenAsDlg.EXTRA_FILE_NAME", hVar.e());
        intent5.putExtra("OpenAsDlg.EXTRA_EXTRA", bundle);
        zArchiver.startActivity(intent5);
    }

    public static void e(Context context, Uri uri, String str) {
        if (uri == null) {
            ZApp.i(R.string.ERROR_UNSUPORTED_METOD);
            return;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setFlags(268435456);
        intent.setType("*/*");
        intent.putExtra("android.intent.extra.STREAM", uri);
        intent.putExtra("android.intent.extra.SUBJECT", str);
        if (Build.VERSION.SDK_INT >= 24) {
            intent.setClipData(ClipData.newRawUri(null, uri));
            intent.addFlags(1);
        }
        h1.h.e(context, Intent.createChooser(intent, context.getResources().getString(R.string.MENU_SHARE)));
    }

    public static void f(ZArchiver zArchiver, ArrayList arrayList) {
        if (arrayList.size() == 0) {
            ZApp.i(R.string.ERROR_UNSUPORTED_METOD);
            return;
        }
        Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
        intent.setFlags(268435456);
        intent.setType("*/*");
        intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
        if (Build.VERSION.SDK_INT >= 24) {
            ClipData clipData = new ClipData(null, new String[]{"*/*"}, new ClipData.Item((Uri) arrayList.get(0)));
            int size = arrayList.size();
            for (int i2 = 1; i2 < size; i2++) {
                clipData.addItem(new ClipData.Item((Uri) arrayList.get(i2)));
            }
            intent.setClipData(clipData);
            intent.addFlags(1);
        }
        zArchiver.startActivity(Intent.createChooser(intent, zArchiver.getResources().getString(R.string.MENU_SHARE)));
    }

    public static boolean g() {
        Object objInvoke;
        try {
            Method methodW = a0.c.w(StrictMode.class, "disableDeathOnFileUriExposure", new Class[0]);
            if (methodW != null) {
                methodW.invoke(null, new Object[0]);
                return true;
            }
        } catch (Exception unused) {
        }
        try {
            Method methodW2 = a0.c.w(StrictMode.class, "vmFileUriExposureEnabled", new Class[0]);
            if (methodW2 != null && (objInvoke = methodW2.invoke(null, new Object[0])) != null) {
                return ((Boolean) objInvoke).booleanValue();
            }
        } catch (Exception unused2) {
        }
        return false;
    }

    public static int h(Context context, Intent intent) {
        try {
            context.startActivity(intent);
            return 0;
        } catch (ActivityNotFoundException unused) {
            return -1;
        } catch (SecurityException unused2) {
            ZApp.i(R.string.MES_ACCESS_DENIED);
            return -3;
        } catch (Throwable th) {
            if (Build.VERSION.SDK_INT >= 24 && (th instanceof FileUriExposedException)) {
                return -2;
            }
            ZApp.j("Failed to start activity: " + th.getMessage());
            return -100;
        }
    }
}
