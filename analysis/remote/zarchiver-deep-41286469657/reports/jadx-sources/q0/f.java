package q0;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.io.SAF;

public final class f {

    public static final String[] f1383a = {"_data"};

    public static final Pattern f1384b = Pattern.compile("(?i)^/storage/([^/]+)");

    public static class a implements Runnable, MediaScannerConnection.MediaScannerConnectionClient {

        public final File f1385a;

        public final MediaScannerConnection f1386b;

        public a(File file) {
            this.f1385a = file;
            MediaScannerConnection mediaScannerConnection = new MediaScannerConnection(ZApp.e(), this);
            this.f1386b = mediaScannerConnection;
            mediaScannerConnection.connect();
        }

        /* JADX WARN: Code duplicated, block: B:29:0x006d  */
        public final void a(File file) {
            String lowerCase;
            try {
                boolean zIsDirectory = file.isDirectory();
                MediaScannerConnection mediaScannerConnection = this.f1386b;
                if (!zIsDirectory) {
                    mediaScannerConnection.scanFile(file.getAbsolutePath(), null);
                    return;
                }
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null) {
                    return;
                }
                for (File file2 : fileArrListFiles) {
                    if (file2.isDirectory()) {
                        a(file2);
                    } else {
                        mediaScannerConnection.scanFile(file2.getAbsolutePath(), null);
                    }
                }
            } catch (Exception unused) {
                if (Build.VERSION.SDK_INT >= 21) {
                    String absolutePath = file.getAbsolutePath();
                    String[] strArr = f.f1383a;
                    try {
                        Bundle bundle = new Bundle();
                        if (absolutePath != null) {
                            Matcher matcher = f.f1384b.matcher(absolutePath);
                            if (matcher.find()) {
                                String strGroup = matcher.group(1);
                                if ("emulated".equals(strGroup)) {
                                    lowerCase = "external_primary";
                                } else if (strGroup != null) {
                                    lowerCase = strGroup.toLowerCase(Locale.ROOT);
                                } else {
                                    lowerCase = "external";
                                }
                            } else {
                                lowerCase = "external";
                            }
                        } else {
                            lowerCase = "external";
                        }
                        bundle.putString("volume", lowerCase);
                        Intent intentPutExtras = new Intent("android.media.IMediaScannerService").putExtras(bundle);
                        intentPutExtras.setClassName("com.android.providers.media", "com.android.providers.media.MediaScannerService");
                        ZApp.e().startService(intentPutExtras);
                    } catch (Throwable unused2) {
                    }
                }
            }
        }

        @Override
        public final void onMediaScannerConnected() {
            Executors.newSingleThreadExecutor().execute(this);
        }

        @Override
        public final void onScanCompleted(String str, Uri uri) {
        }

        @Override
        public final void run() {
            a(this.f1385a);
            this.f1386b.disconnect();
        }
    }

    public static class b implements Runnable {

        public final ContentResolver f1387a = ZApp.e().getContentResolver();

        public final String f1388b;

        public b(String str) {
            this.f1388b = str;
        }

        @Override
        public final void run() {
            ContentProviderClient contentProviderClientAcquireContentProviderClient;
            String str = this.f1388b;
            if (this.f1387a == null) {
                return;
            }
            try {
                ContentResolver contentResolver = ZApp.e().getContentResolver();
                Uri contentUri = MediaStore.Files.getContentUri("external");
                String strI = a0.c.i(str, ".nomedia");
                ContentValues contentValues = new ContentValues();
                contentValues.put("_data", strI);
                contentValues.put("format", (Integer) 0);
                contentResolver.insert(contentUri, contentValues);
            } catch (Throwable unused) {
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 21) {
                try {
                    new a(new File(str));
                } catch (Throwable unused2) {
                }
            } else if (i2 == 30) {
                ContentProviderClient contentProviderClient = null;
                try {
                    contentProviderClientAcquireContentProviderClient = ZApp.e().getContentResolver().acquireContentProviderClient("media");
                    try {
                        contentProviderClientAcquireContentProviderClient.call("scan_file", a0.c.A(str), null);
                    } catch (Exception unused3) {
                        contentProviderClient = contentProviderClientAcquireContentProviderClient;
                        contentProviderClientAcquireContentProviderClient = contentProviderClient;
                    }
                } catch (Exception unused4) {
                }
                n0.e.e(contentProviderClientAcquireContentProviderClient);
            }
        }
    }

    public static class c implements Runnable {

        public final ContentResolver f1389a = ZApp.e().getContentResolver();

        public final List<h0.h> f1390b;

        public c(ArrayList arrayList) {
            this.f1390b = arrayList;
        }

        @Override
        public final void run() {
            List<h0.h> list;
            if (this.f1389a == null || (list = this.f1390b) == null) {
                return;
            }
            for (h0.h hVar : list) {
                if (f.b(hVar)) {
                    f.c(hVar.f1108c, true, true);
                }
            }
        }
    }

    public static class d implements Runnable {

        public final ContentProviderClient f1391a = ZApp.e().getContentResolver().acquireContentProviderClient("media");

        public final File f1392b;

        public d(File file) {
            this.f1392b = file;
        }

        @Override
        public final void run() {
            ContentProviderClient contentProviderClient = this.f1391a;
            if (contentProviderClient == null) {
                return;
            }
            Bundle bundle = new Bundle();
            File file = this.f1392b;
            bundle.putParcelable("android.intent.extra.STREAM", Uri.fromFile(file));
            try {
                try {
                    contentProviderClient.call("scan_file", file.getAbsolutePath(), bundle);
                } catch (Exception unused) {
                    bundle.putBoolean("android.intent.extra.originated_from_shell", false);
                    contentProviderClient.call("scan_volume", "external_primary", bundle);
                }
            } catch (Exception unused2) {
            }
            n0.e.e(contentProviderClient);
        }
    }

    public static void a(String str, boolean z2) {
        try {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 29) {
                str = v0.c.a(str);
            }
            if (z2) {
                File file = new File(str);
                if (file.isDirectory()) {
                    if (i2 < 29) {
                        new a(file);
                        return;
                    } else {
                        Executors.newSingleThreadExecutor().execute(new d(file));
                        return;
                    }
                }
            }
            MediaScannerConnection.scanFile(ZApp.e(), new String[]{str}, null, null);
        } catch (Throwable unused) {
        }
    }

    public static boolean b(h0.h hVar) {
        if (!hVar.j()) {
            return false;
        }
        String strReplace = hVar.f1108c;
        if (Build.VERSION.SDK_INT >= 30) {
            strReplace = strReplace.replace(n0.i.f1262a, "");
        }
        if (x0.g.e(strReplace)) {
            return false;
        }
        return !SAF.q(strReplace);
    }

    public static void c(String str, boolean z2, boolean z3) {
        String str2;
        String[] strArr;
        try {
            if (Build.VERSION.SDK_INT < 29) {
                str = v0.c.a(str);
            }
            if (z3) {
                z3 = n0.e.i(str);
            }
            ContentResolver contentResolver = ZApp.e().getContentResolver();
            Uri uriBuild = MediaStore.Files.getContentUri("external").buildUpon().appendQueryParameter("includePending", "1").appendQueryParameter("deletedata", "false").build();
            if (!z3) {
                if (z2) {
                    str2 = "_data=? OR _data LIKE ?";
                    strArr = new String[]{str, str + "/%"};
                } else {
                    str2 = "_data=?";
                    strArr = new String[]{str};
                }
                contentResolver.delete(uriBuild, str2, strArr);
                return;
            }
            Cursor cursorQuery = null;
            try {
                String[] strArr2 = new String[1];
                cursorQuery = contentResolver.query(uriBuild, f1383a, "_data >= ? AND _data < ?", new String[]{str + "/", str + "0"}, null);
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(0);
                    if (!n0.e.i(string)) {
                        strArr2[0] = string;
                        contentResolver.delete(uriBuild, "_data = ?", strArr2);
                    }
                }
                n0.e.b(cursorQuery);
            } catch (Throwable th) {
                n0.e.b(cursorQuery);
                throw th;
            }
        } catch (Exception unused) {
        }
    }
}
