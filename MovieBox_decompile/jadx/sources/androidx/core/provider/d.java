package androidx.core.provider;

import android.content.ContentProviderClient;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.RemoteException;
import android.util.Log;
import androidx.collection.z;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;

abstract class d {

    private static final z f7875a = new z(2);

    private static final Comparator f7876b = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return d.g((byte[]) obj, (byte[]) obj2);
        }
    };

    interface a {
        Cursor a(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal);

        void close();
    }

    static class b implements a {

        private final ContentProviderClient f7877a;

        b(Context context, Uri uri) {
            this.f7877a = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override
        public Cursor a(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            ContentProviderClient contentProviderClient = this.f7877a;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, str, strArr2, str2, cancellationSignal);
            } catch (RemoteException e10) {
                Log.w("FontsProvider", "Unable to query the content provider", e10);
                return null;
            }
        }

        @Override
        public void close() {
            ContentProviderClient contentProviderClient = this.f7877a;
            if (contentProviderClient != null) {
                contentProviderClient.release();
            }
        }
    }

    static class c implements a {

        private final ContentProviderClient f7878a;

        c(Context context, Uri uri) {
            this.f7878a = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override
        public Cursor a(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            ContentProviderClient contentProviderClient = this.f7878a;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, str, strArr2, str2, cancellationSignal);
            } catch (RemoteException e10) {
                Log.w("FontsProvider", "Unable to query the content provider", e10);
                return null;
            }
        }

        @Override
        public void close() {
            ContentProviderClient contentProviderClient = this.f7878a;
            if (contentProviderClient != null) {
                contentProviderClient.release();
            }
        }
    }

    private static class C0060d {

        String f7879a;

        String f7880b;

        List f7881c;

        C0060d(String str, String str2, List list) {
            this.f7879a = str;
            this.f7880b = str2;
            this.f7881c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0060d)) {
                return false;
            }
            C0060d c0060d = (C0060d) obj;
            return Objects.equals(this.f7879a, c0060d.f7879a) && Objects.equals(this.f7880b, c0060d.f7880b) && Objects.equals(this.f7881c, c0060d.f7881c);
        }

        public int hashCode() {
            return Objects.hash(this.f7879a, this.f7880b, this.f7881c);
        }
    }

    private static List b(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    private static boolean c(List list, List list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (!Arrays.equals((byte[]) list.get(i10), (byte[]) list2.get(i10))) {
                return false;
            }
        }
        return true;
    }

    private static List d(e eVar, Resources resources) {
        return eVar.b() != null ? eVar.b() : y0.e.c(resources, eVar.c());
    }

    static k.a e(Context context, List list, CancellationSignal cancellationSignal) {
        e4.a.a("FontProvider.getFontFamilyResult");
        try {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < list.size(); i10++) {
                e eVar = (e) list.get(i10);
                ProviderInfo providerInfoF = f(context.getPackageManager(), eVar, context.getResources());
                if (providerInfoF == null) {
                    return k.a.b(1, null);
                }
                arrayList.add(h(context, eVar, providerInfoF.authority, cancellationSignal));
            }
            return k.a.a(0, arrayList);
        } finally {
            e4.a.b();
        }
    }

    static ProviderInfo f(PackageManager packageManager, e eVar, Resources resources) {
        e4.a.a("FontProvider.getProvider");
        try {
            List listD = d(eVar, resources);
            C0060d c0060d = new C0060d(eVar.e(), eVar.f(), listD);
            ProviderInfo providerInfo = (ProviderInfo) f7875a.get(c0060d);
            if (providerInfo != null) {
                e4.a.b();
                return providerInfo;
            }
            String strE = eVar.e();
            ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(strE, 0);
            if (providerInfoResolveContentProvider == null) {
                throw new PackageManager.NameNotFoundException("No package found for authority: " + strE);
            }
            if (!providerInfoResolveContentProvider.packageName.equals(eVar.f())) {
                throw new PackageManager.NameNotFoundException("Found content provider " + strE + ", but package was not " + eVar.f());
            }
            List listB = b(packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures);
            Collections.sort(listB, f7876b);
            for (int i10 = 0; i10 < listD.size(); i10++) {
                ArrayList arrayList = new ArrayList((Collection) listD.get(i10));
                Collections.sort(arrayList, f7876b);
                if (c(listB, arrayList)) {
                    f7875a.put(c0060d, providerInfoResolveContentProvider);
                    e4.a.b();
                    return providerInfoResolveContentProvider;
                }
            }
            e4.a.b();
            return null;
        } catch (Throwable th2) {
            e4.a.b();
            throw th2;
        }
    }

    public static int g(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return bArr.length - bArr2.length;
        }
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b10 = bArr[i10];
            byte b11 = bArr2[i10];
            if (b10 != b11) {
                return b10 - b11;
            }
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00de  */
    static k.b[] h(Context context, e eVar, String str, CancellationSignal cancellationSignal) {
        boolean z10;
        e4.a.a("FontProvider.query");
        try {
            ArrayList arrayList = new ArrayList();
            Uri uriBuild = new Uri.Builder().scheme("content").authority(str).build();
            Uri uriBuild2 = new Uri.Builder().scheme("content").authority(str).appendPath(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE).build();
            a aVarA = androidx.core.provider.c.a(context, uriBuild);
            Cursor cursorA = null;
            try {
                String[] strArr = {"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"};
                e4.a.a("ContentQueryWrapper.query");
                try {
                    cursorA = aVarA.a(uriBuild, strArr, "query = ?", new String[]{eVar.g()}, null, cancellationSignal);
                    e4.a.b();
                    if (cursorA != null && cursorA.getCount() > 0) {
                        int columnIndex = cursorA.getColumnIndex("result_code");
                        ArrayList arrayList2 = new ArrayList();
                        int columnIndex2 = cursorA.getColumnIndex("_id");
                        int columnIndex3 = cursorA.getColumnIndex("file_id");
                        int columnIndex4 = cursorA.getColumnIndex("font_ttc_index");
                        int columnIndex5 = cursorA.getColumnIndex("font_weight");
                        int columnIndex6 = cursorA.getColumnIndex("font_italic");
                        while (cursorA.moveToNext()) {
                            int i10 = columnIndex != -1 ? cursorA.getInt(columnIndex) : 0;
                            int i11 = columnIndex4 != -1 ? cursorA.getInt(columnIndex4) : 0;
                            Uri uriWithAppendedId = columnIndex3 == -1 ? ContentUris.withAppendedId(uriBuild, cursorA.getLong(columnIndex2)) : ContentUris.withAppendedId(uriBuild2, cursorA.getLong(columnIndex3));
                            int i12 = columnIndex5 != -1 ? cursorA.getInt(columnIndex5) : 400;
                            if (columnIndex6 != -1) {
                                z10 = true;
                                if (cursorA.getInt(columnIndex6) != 1) {
                                    z10 = false;
                                }
                            } else {
                                z10 = false;
                            }
                            k.b bVarA = k.b.a(uriWithAppendedId, i11, i12, z10, i10);
                            arrayList2 = arrayList2;
                            arrayList2.add(bVarA);
                        }
                        arrayList = arrayList2;
                    }
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    aVarA.close();
                    return (k.b[]) arrayList.toArray(new k.b[0]);
                } finally {
                    e4.a.b();
                }
            } catch (Throwable th2) {
                if (cursorA != null) {
                    cursorA.close();
                }
                aVarA.close();
                throw th2;
            }
        } catch (Throwable th3) {
            e4.a.b();
            throw th3;
        }
    }
}
