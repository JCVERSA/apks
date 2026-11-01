package q0;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInstaller;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Xml;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.xmlpull.v1.XmlPullParser;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.activity.InstallApkDlg;
import ru.zdevs.zarchiver.archiver.NArc;
import ru.zdevs.zarchiver.io.SAF;

public final class a {

    public static class C0025a extends Exception {
        public C0025a(String str) {
            super(str);
        }
    }

    public static final class b extends Exception {

        public final Intent f1373a;

        public b(Intent intent) {
            this.f1373a = intent;
        }
    }

    public static void a(Context context) {
        try {
            PackageInstaller packageInstaller = context.getPackageManager().getPackageInstaller();
            Iterator<PackageInstaller.SessionInfo> it = packageInstaller.getMySessions().iterator();
            while (it.hasNext()) {
                packageInstaller.abandonSession(it.next().getSessionId());
            }
        } catch (Exception unused) {
        }
    }

    public static Bitmap b(Drawable drawable, Drawable drawable2, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            AdaptiveIconDrawable adaptiveIconDrawable = new AdaptiveIconDrawable(drawable, drawable2);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            adaptiveIconDrawable.setBounds(0, 0, i2, i2);
            adaptiveIconDrawable.draw(canvas);
            return bitmapCreateBitmap;
        }
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
        float f2 = i2 / 2;
        canvas2.scale(1.6f, 1.6f, f2, f2);
        if (drawable != null) {
            drawable.setBounds(0, 0, i2, i2);
            drawable.draw(canvas2);
        }
        drawable2.setBounds(0, 0, i2, i2);
        drawable2.draw(canvas2);
        return bitmapCreateBitmap2;
    }

    public static Drawable c(l.a aVar, String str, byte[] bArr) {
        if (bArr != null) {
            try {
                if (str.endsWith(".xml")) {
                    return k(aVar, bArr);
                }
            } catch (Exception unused) {
                return null;
            }
        }
        return (bArr == null || !str.startsWith("res/")) ? new ColorDrawable((-16777216) | ((int) Long.parseLong(str, 16))) : new BitmapDrawable(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
    }

    public static Bitmap d(l.a aVar, int i2) {
        byte[] bArrA;
        byte[] bArrA2;
        byte[] bArrA3;
        Drawable drawableC;
        try {
            m.a aVar2 = aVar.f1170d;
            if (!((aVar2 == null || aVar2.f1205a == null) ? false : true)) {
                return null;
            }
            List<m.b> list = aVar.f1171e;
            if (list.isEmpty()) {
                return null;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                Iterator<m.b> it = list.iterator();
                while (it.hasNext()) {
                    String str = it.next().f1217a;
                    if (str.endsWith(".xml") && (bArrA2 = aVar.a(str)) != null) {
                        o.a aVar3 = new o.a();
                        o.b bVar = new o.b(ByteBuffer.wrap(bArrA2), aVar.f1169c);
                        Locale locale = Locale.US;
                        if (locale != null) {
                            bVar.f1273f = locale;
                        }
                        bVar.f1271d = aVar3;
                        bVar.a();
                        String str2 = aVar3.f1266c;
                        String str3 = aVar3.f1267d;
                        if (str2 == null && str3 == null) {
                            e.f fVarK = k(aVar, bArrA2);
                            if (fVarK != null) {
                                return b(null, fVarK, i2);
                            }
                        } else if (str2 != null && (bArrA3 = aVar.a(str2)) != null && (drawableC = c(aVar, str2, bArrA3)) != null) {
                            return b(c(aVar, str3, aVar.a(str3)), drawableC, i2);
                        }
                    }
                }
            }
            Iterator<m.b> it2 = list.iterator();
            while (it2.hasNext()) {
                String str4 = it2.next().f1217a;
                if (!str4.endsWith(".xml") && (bArrA = aVar.a(str4)) != null) {
                    return BitmapFactory.decodeByteArray(bArrA, 0, bArrA.length);
                }
            }
            return null;
        } catch (Exception unused) {
        }
    }

    public static Bitmap e(int i2, String str) {
        l.a aVar;
        ZipFile zipFile;
        l.a aVar2;
        ZipFile zipFile2 = null;
        l.a aVar3 = null;
        try {
            zipFile = new ZipFile(new File(str), 1);
            try {
                ZipEntry entry = zipFile.getEntry("icon.png");
                if (entry != null) {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(zipFile.getInputStream(entry));
                    n0.e.f(zipFile);
                    return bitmapDecodeStream;
                }
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    String name = zipEntryNextElement.getName();
                    if (!name.startsWith("split_") && name.endsWith(".apk")) {
                        aVar2 = new l.a(zipFile.getInputStream(zipEntryNextElement), 1);
                        try {
                            Bitmap bitmapD = d(aVar2, i2);
                            n0.e.f(zipFile);
                            n0.e.d(aVar2);
                            return bitmapD;
                        } catch (Exception unused) {
                            n0.e.f(zipFile);
                            n0.e.d(aVar2);
                            return null;
                        } catch (Throwable th) {
                            th = th;
                            aVar3 = aVar2;
                            aVar = aVar3;
                            zipFile2 = zipFile;
                            n0.e.f(zipFile2);
                            n0.e.d(aVar);
                            throw th;
                        }
                    }
                }
                n0.e.f(zipFile);
                return null;
            } catch (Exception unused2) {
                aVar2 = null;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused3) {
            zipFile = null;
            aVar2 = null;
        } catch (Throwable th3) {
            th = th3;
            aVar = null;
        }
    }

    public static Bitmap f(String str) {
        ZipFile zipFile;
        ZipFile zipFile2 = null;
        try {
            zipFile = new ZipFile(new File(str), 1);
            try {
                ZipEntry entry = zipFile.getEntry("icon.png");
                if (entry == null) {
                    n0.e.f(zipFile);
                    return null;
                }
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(zipFile.getInputStream(entry));
                n0.e.f(zipFile);
                return bitmapDecodeStream;
            } catch (Exception unused) {
                n0.e.f(zipFile);
                return null;
            } catch (Throwable th) {
                th = th;
                zipFile2 = zipFile;
                n0.e.f(zipFile2);
                throw th;
            }
        } catch (Exception unused2) {
            zipFile = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean g(h0.h hVar) throws b {
        if (Build.VERSION.SDK_INT < 26 || h1.h.b()) {
            return h(hVar, new h0.h[]{hVar});
        }
        Intent intent = new Intent(ZApp.f1434c, (Class<?>) InstallApkDlg.class);
        intent.putExtra("apk_path", hVar);
        throw new b(intent);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00dc A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:60:0x00c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static boolean h(h0.h hVar, h0.h[] hVarArr) {
        PackageInstaller packageInstaller;
        int iCreateSession;
        PackageInstaller.Session sessionOpenSession = null;
        try {
            ZApp zAppE = ZApp.e();
            packageInstaller = zAppE.getPackageManager().getPackageInstaller();
            try {
                PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(1);
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 26) {
                    sessionParams.setInstallReason(4);
                }
                if (i2 >= 33) {
                    sessionParams.setPackageSource(3);
                }
                sessionParams.setInstallLocation(0);
                long j2 = 0;
                long j3 = 0;
                for (h0.h hVar2 : hVarArr) {
                    long jO = h0.f.u(hVar2).o();
                    if (jO > 0) {
                        j3 += jO;
                    }
                }
                sessionParams.setSize(j3);
                byte[] bArr = new byte[65536];
                iCreateSession = packageInstaller.createSession(sessionParams);
                try {
                    sessionOpenSession = packageInstaller.openSession(iCreateSession);
                    ZApp zAppD = ZApp.d();
                    if (zAppD != null) {
                        zAppD.h();
                    }
                    int length = hVarArr.length;
                    int i3 = 0;
                    while (i3 < length) {
                        h0.h hVar3 = hVarArr[i3];
                        h0.f fVarU = h0.f.u(hVar3);
                        long jO2 = fVarU.o();
                        if (jO2 <= j2) {
                            jO2 = -1;
                        }
                        long j4 = jO2;
                        InputStream inputStreamW = fVarU.w();
                        int i4 = length;
                        int i5 = i3;
                        OutputStream outputStreamOpenWrite = sessionOpenSession.openWrite(hVar3.e(), 0L, j4);
                        while (true) {
                            int i6 = inputStreamW.read(bArr);
                            if (i6 >= 0) {
                                outputStreamOpenWrite.write(bArr, 0, i6);
                            }
                        }
                        sessionOpenSession.fsync(outputStreamOpenWrite);
                        inputStreamW.close();
                        outputStreamOpenWrite.close();
                        i3 = i5 + 1;
                        length = i4;
                        j2 = 0;
                    }
                    sessionOpenSession.commit(PendingIntent.getActivity(zAppE, 0, new Intent("ru.zdevs.zarchiver.APP_INSTALL_RESULT", hVar.s(), zAppE, ZArchiver.class), 167772160).getIntentSender());
                    sessionOpenSession.close();
                    return true;
                } catch (Throwable unused) {
                    if (sessionOpenSession != null) {
                        try {
                            try {
                                sessionOpenSession.abandon();
                            } catch (Exception unused2) {
                            }
                        } finally {
                            if (sessionOpenSession != null) {
                                sessionOpenSession.close();
                            }
                        }
                    }
                    if (packageInstaller != null) {
                        try {
                            packageInstaller.abandonSession(iCreateSession);
                        } catch (Exception unused3) {
                        }
                    }
                    return false;
                }
            } catch (Throwable unused4) {
                iCreateSession = 0;
                if (sessionOpenSession != null) {
                    sessionOpenSession.abandon();
                }
                if (packageInstaller != null && iCreateSession != 0) {
                    packageInstaller.abandonSession(iCreateSession);
                }
                return false;
            }
        } catch (Throwable unused5) {
            packageInstaller = null;
        }
    }

    public static boolean i(h0.h hVar, String[] strArr) throws b {
        if (hVar == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 26 && !h1.h.b()) {
            Intent intent = new Intent(ZApp.f1434c, (Class<?>) InstallApkDlg.class);
            intent.putExtra("dir_path", hVar);
            intent.putExtra("name_list", strArr);
            throw new b(intent);
        }
        String str = strArr[0];
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str2 : strArr) {
            if (str.length() < str2.length()) {
                str = str2;
            }
            arrayList.add(new h0.h(str2, hVar));
        }
        if (Build.VERSION.SDK_INT < 21) {
            ZApp.i(R.string.ERROR_UNSUPORTED_METOD);
            return false;
        }
        return h(new h0.h(str, hVar), (h0.h[]) arrayList.toArray(new h0.h[0]));
    }

    /* JADX WARN: Code duplicated, block: B:79:0x0128 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:89:0x013c A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:91:0x0141 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:97:0x011f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static boolean j(h0.h hVar, Class<?> cls) throws b {
        NArc nArcJ;
        PackageInstaller packageInstaller;
        int i2;
        PackageInstaller.Session session;
        String path;
        String path2;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 26 && !h1.h.b()) {
            Intent intent = new Intent(ZApp.d(), (Class<?>) InstallApkDlg.class);
            intent.putExtra("apk_path", hVar);
            throw new b(intent);
        }
        try {
            ZApp zAppE = ZApp.e();
            packageInstaller = zAppE.getPackageManager().getPackageInstaller();
            try {
                PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(1);
                if (i3 >= 26) {
                    sessionParams.setInstallReason(4);
                }
                if (i3 >= 33) {
                    sessionParams.setPackageSource(3);
                }
                sessionParams.setInstallLocation(0);
                byte[] bArr = new byte[65536];
                nArcJ = NArc.j(hVar.r());
                if (nArcJ == null) {
                    if (nArcJ != null) {
                        nArcJ.close();
                    }
                    return false;
                }
                try {
                    int iG = nArcJ.g();
                    long j2 = 0;
                    long j3 = 0;
                    for (int i4 = 0; i4 < iG; i4++) {
                        NArc.NArcItem nArcItemF = nArcJ.f(i4);
                        if (nArcItemF != null && (path2 = nArcItemF.getPath()) != null && path2.endsWith(".apk")) {
                            long size = nArcItemF.getSize();
                            if (size > 0) {
                                j3 += size;
                            }
                        }
                    }
                    sessionParams.setSize(j3);
                    int iCreateSession = packageInstaller.createSession(sessionParams);
                    try {
                        PackageInstaller.Session sessionOpenSession = packageInstaller.openSession(iCreateSession);
                        try {
                            ZApp zAppD = ZApp.d();
                            if (zAppD != null) {
                                zAppD.h();
                            }
                            int i5 = 0;
                            while (i5 < iG) {
                                NArc.NArcItem nArcItemF2 = nArcJ.f(i5);
                                if (nArcItemF2 != null && (path = nArcItemF2.getPath()) != null && path.endsWith(".apk")) {
                                    long size2 = nArcItemF2.getSize();
                                    if (size2 <= j2) {
                                        size2 = -1;
                                    }
                                    e0.f fVarH = nArcJ.h(i5, path);
                                    OutputStream outputStreamOpenWrite = sessionOpenSession.openWrite(path, 0L, size2);
                                    while (true) {
                                        int i6 = fVarH.read(bArr);
                                        if (i6 < 0) {
                                            break;
                                        }
                                        outputStreamOpenWrite.write(bArr, 0, i6);
                                    }
                                    sessionOpenSession.fsync(outputStreamOpenWrite);
                                    fVarH.close();
                                    outputStreamOpenWrite.close();
                                }
                                i5++;
                                j2 = 0;
                            }
                            sessionOpenSession.commit(PendingIntent.getActivity(zAppE, 0, new Intent("ru.zdevs.zarchiver.APP_INSTALL_RESULT", hVar.s(), zAppE, cls), 167772160).getIntentSender());
                            nArcJ.close();
                            sessionOpenSession.close();
                            return true;
                        } catch (Throwable unused) {
                            i2 = iCreateSession;
                            session = sessionOpenSession;
                            if (session != null) {
                                try {
                                    try {
                                        session.abandon();
                                    } finally {
                                        if (nArcJ != null) {
                                            nArcJ.close();
                                        }
                                        if (session != null) {
                                            session.close();
                                        }
                                    }
                                } catch (Exception unused2) {
                                }
                            }
                            if (packageInstaller != null) {
                                try {
                                    packageInstaller.abandonSession(i2);
                                } catch (Exception unused3) {
                                }
                            }
                            return false;
                        }
                    } catch (Throwable unused4) {
                        i2 = iCreateSession;
                        session = null;
                        if (session != null) {
                            session.abandon();
                        }
                        if (packageInstaller != null) {
                            packageInstaller.abandonSession(i2);
                        }
                        return false;
                    }
                } catch (Throwable unused5) {
                    i2 = 0;
                    session = null;
                    if (session != null) {
                        session.abandon();
                    }
                    if (packageInstaller != null && i2 != 0) {
                        packageInstaller.abandonSession(i2);
                    }
                    return false;
                }
            } catch (Throwable unused6) {
                nArcJ = null;
            }
        } catch (Throwable unused7) {
            nArcJ = null;
            packageInstaller = null;
        }
    }

    public static e.f k(l.a aVar, byte[] bArr) {
        try {
            Class<?> cls = Class.forName("android.content.res.XmlBlock");
            Constructor<?> constructor = cls.getConstructor(byte[].class);
            Method declaredMethod = cls.getDeclaredMethod("newParser", new Class[0]);
            constructor.setAccessible(true);
            declaredMethod.setAccessible(true);
            XmlPullParser xmlPullParser = (XmlPullParser) declaredMethod.invoke(constructor.newInstance(bArr), new Object[0]);
            if (xmlPullParser == null) {
                return null;
            }
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
            while (xmlPullParser.next() == 0) {
            }
            q.g gVar = aVar.f1169c;
            return e.f.a(gVar == null ? null : new l.c(gVar), xmlPullParser, attributeSetAsAttributeSet);
        } catch (Exception unused) {
            return null;
        }
    }

    public static int l(ru.zdevs.zarchiver.c cVar, h0.h hVar) throws Throwable {
        NArc nArcK;
        e0.f fVarH;
        String string;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList<h0.h> arrayList3;
        ArrayList arrayList4;
        h0.h hVarN;
        try {
            nArcK = NArc.k(hVar.r(), "zip", null);
            try {
                if (nArcK == null) {
                    throw new C0025a("XAPK file not found");
                }
                fVarH = nArcK.h(-1, "manifest.json");
                try {
                    if (fVarH == null) {
                        throw new C0025a("manifest.json not found");
                    }
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fVarH));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                        sb.append('\n');
                    }
                    string = sb.toString();
                    try {
                        nArcK.b(fVarH);
                    } catch (Exception unused) {
                    }
                    if (string == null) {
                        throw new C0025a("Bad manifest.json");
                    }
                    h0.h hVar2 = new h0.h(x0.d.m().f2255b);
                    int iA = t0.b.a();
                    String str = iA > 0 ? "\\-y\\-mmt=" + iA : "\\-y";
                    try {
                        JSONArray jSONArray = (JSONArray) new JSONObject(new JSONTokener(string)).opt("expansions");
                        if (jSONArray != null) {
                            int length = jSONArray.length();
                            arrayList = new ArrayList(length);
                            arrayList2 = new ArrayList(length);
                            arrayList3 = new ArrayList(length);
                            arrayList4 = new ArrayList(length);
                            for (int i2 = 0; i2 < length; i2++) {
                                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                                if ("EXTERNAL_STORAGE".equalsIgnoreCase(jSONObject.getString("install_location"))) {
                                    String string2 = jSONObject.getString("file");
                                    String string3 = jSONObject.getString("install_path");
                                    if (string2.length() >= 2 && string3.length() >= 2) {
                                        arrayList.add(a0.c.y(string2));
                                        arrayList2.add("\\" + string2);
                                        arrayList3.add(new h0.h(a0.c.A(string3), hVar2));
                                        if (string2.indexOf(47) > 0) {
                                            arrayList4.add(str + "\\-z" + a0.c.A(string2));
                                        } else {
                                            arrayList4.add(str);
                                        }
                                    }
                                }
                            }
                        } else {
                            arrayList = null;
                            arrayList2 = null;
                            arrayList3 = null;
                            arrayList4 = null;
                        }
                        if (arrayList2 == null || arrayList2.size() == 0) {
                            return 0;
                        }
                        if (cVar == null) {
                            return 3;
                        }
                        int i3 = 0;
                        for (h0.h hVar3 : arrayList3) {
                            String str2 = hVar3.f1108c;
                            x0.d.a aVarF = x0.g.f(str2);
                            if (aVarF != null) {
                                if (t0.b.f(67108864)) {
                                    i3 |= 1;
                                } else if (Build.VERSION.SDK_INT < 33 || !str2.contains("/Android/obb/")) {
                                    String strB = aVarF.b(str2);
                                    String strI = SAF.i(strB);
                                    if (strI == null || !aVarF.d(strI) || (hVarN = SAF.n(aVarF, strB)) == null) {
                                        return 2;
                                    }
                                    hVar3.p(hVarN.f1108c);
                                    hVar3.q(hVarN.f1106a);
                                }
                            }
                            h0.f.u(hVar3).s(null);
                        }
                        int i4 = i3 | 64;
                        ru.zdevs.zarchiver.service.c cVar2 = cVar.f1675a.get();
                        if (cVar2 != null) {
                            try {
                                if (arrayList.size() == 1) {
                                    cVar2.ArchiveExtract((String) arrayList.get(0), hVar, (String) arrayList4.get(0), (String) arrayList2.get(0), (h0.h) arrayList3.get(0), i4);
                                } else {
                                    ArrayList arrayList5 = new ArrayList();
                                    int size = arrayList.size();
                                    for (int i5 = 0; i5 < size; i5++) {
                                        arrayList5.add(hVar);
                                    }
                                    cVar2.ArchiveExtractMulti(arrayList, arrayList5, arrayList4, arrayList2, arrayList3, i4);
                                }
                            } catch (Exception unused2) {
                            }
                        }
                        return 1;
                    } catch (JSONException e2) {
                        throw new C0025a("manifest.json: " + e2.getMessage());
                    }
                } catch (Throwable th) {
                    th = th;
                    if (nArcK != null) {
                        try {
                            nArcK.b(fVarH);
                        } catch (Exception unused3) {
                            string = null;
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fVarH = null;
            }
        } catch (Throwable th3) {
            th = th3;
            nArcK = null;
            fVarH = null;
        }
    }
}
