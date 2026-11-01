package a0;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteDatabase;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import android.webkit.MimeTypeMap;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

public final class c implements h0.d {

    public static boolean f15g;

    public static HashMap f16h;

    public static final int[] f9a = {R.attr.colorNMask};

    public static final int[] f10b = {android.R.attr.orientation, R.attr.layout_constraintBaseline_creator, R.attr.layout_constraintBaseline_toBaselineOf, R.attr.layout_constraintBottom_creator, R.attr.layout_constraintBottom_toBottomOf, R.attr.layout_constraintBottom_toTopOf, R.attr.layout_constraintDimensionRatio, R.attr.layout_constraintEnd_toEndOf, R.attr.layout_constraintEnd_toStartOf, R.attr.layout_constraintGuide_begin, R.attr.layout_constraintGuide_end, R.attr.layout_constraintGuide_percent, R.attr.layout_constraintHorizontal_bias, R.attr.layout_constraintHorizontal_chainStyle, R.attr.layout_constraintHorizontal_weight, R.attr.layout_constraintLeft_creator, R.attr.layout_constraintLeft_toLeftOf, R.attr.layout_constraintLeft_toRightOf, R.attr.layout_constraintRight_creator, R.attr.layout_constraintRight_toLeftOf, R.attr.layout_constraintRight_toRightOf, R.attr.layout_constraintStart_toEndOf, R.attr.layout_constraintStart_toStartOf, R.attr.layout_constraintTop_creator, R.attr.layout_constraintTop_toBottomOf, R.attr.layout_constraintTop_toTopOf, R.attr.layout_constraintVertical_bias, R.attr.layout_constraintVertical_chainStyle, R.attr.layout_constraintVertical_weight, R.attr.layout_editor_absoluteX, R.attr.layout_editor_absoluteY, R.attr.layout_goneMarginBottom, R.attr.layout_goneMarginEnd, R.attr.layout_goneMarginLeft, R.attr.layout_goneMarginRight, R.attr.layout_goneMarginStart, R.attr.layout_goneMarginTop};

    public static final int[] f11c = {android.R.attr.defaultValue, R.attr.folderSelect};

    public static final int[] f12d = {R.attr.srcCompat};

    public static final int[] f13e = {android.R.attr.defaultValue, R.attr.maxValue, R.attr.minValue};

    public static final int[] f14f = {R.attr.umanoAnchorOffset, R.attr.umanoDragView, R.attr.umanoFadeColor, R.attr.umanoFlingVelocity, R.attr.umanoPanelHeight};

    public static final String[] f17i = {"/data/data/ru.zdevs.zarchiver/lib/libp7zbin.so", "/system/lib/ru.zdevs.zarchiver/libp7zbin.so", "/system/lib/libp7zbin.so"};

    public static final int[] f18j = new int[5];

    public static final byte[] f19k = new byte[5];

    public static final String[] f20l = new String[5];

    public static String A(String str) {
        int iLastIndexOf = str.lastIndexOf(47, str.length() - 2);
        return iLastIndexOf < 1 ? "" : str.substring(0, iLastIndexOf);
    }

    public static h0.h B(h0.h hVar) {
        if (hVar.g()) {
            return new h0.h(hVar.f1106a, hVar.f1108c, "/");
        }
        return new h0.h(hVar.l() ? "rarch" : "arch", hVar.f1108c, "/");
    }

    public static int C(int i2) {
        synchronized (f18j) {
            for (int i3 = 0; i3 < 5; i3++) {
                if (i3 != i2) {
                    if (!K(f18j[i3], 1048576)) {
                        return i3;
                    }
                }
            }
            return -1;
        }
    }

    public static String D(String str) {
        String strS = s(str);
        if ("001".equals(strS)) {
            String strS2 = s(Z(str));
            if (!v0.h.e(strS2)) {
                return strS2 + '.' + strS;
            }
        } else if ("png".equals(strS)) {
            String strS3 = s(Z(str));
            if ("9".equals(strS3)) {
                return strS3 + '.' + strS;
            }
        }
        return strS;
    }

    public static byte E(String str) {
        if (str == null) {
            return (byte) 0;
        }
        if (f16h == null) {
            Q();
        }
        Byte b2 = (Byte) f16h.get(s(str));
        if (b2 == null) {
            return (byte) 0;
        }
        if (b2.byteValue() == 28) {
            b2 = (Byte) f16h.get(s(Z(str)));
            if (b2 == null || !G(b2.byteValue())) {
                return (byte) 0;
            }
        }
        return b2.byteValue();
    }

    public static boolean F(String str) {
        HashMap map = z.d.f2325a;
        IBinder iBinder = (IBinder) map.get("activity");
        IBinder iBinder2 = null;
        if (iBinder == null) {
            try {
                iBinder = (IBinder) z.d.f2326b.invoke(null, "activity");
            } catch (IllegalAccessException | InvocationTargetException e2) {
                Log.w("SystemServiceHelper", Log.getStackTraceString(e2));
            }
            map.put("activity", iBinder);
        }
        if (iBinder != null) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("android.app.IActivityManager");
                parcelObtain.writeInt(2);
                iBinder.transact(1599296841, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                IBinder strongBinder = parcelObtain2.readStrongBinder();
                if (strongBinder != null) {
                    parcelObtain.recycle();
                    parcelObtain2.recycle();
                    iBinder2 = strongBinder;
                } else {
                    parcelObtain.recycle();
                    parcelObtain2.recycle();
                }
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                } catch (Throwable th2) {
                    parcelObtain.recycle();
                    parcelObtain2.recycle();
                    throw th2;
                }
            }
        }
        if (iBinder2 == null) {
            f15g = false;
            return false;
        }
        z.a.d(iBinder2, str);
        f15g = true;
        return true;
    }

    public static boolean G(byte b2) {
        return b2 == 1 || b2 == 17 || b2 == 18 || b2 == 19;
    }

    public static boolean H(byte b2) {
        return b2 == 1 || b2 == 17 || b2 == 18 || b2 == 19 || b2 == 6 || b2 == 20 || b2 == 2 || b2 == 27;
    }

    public static boolean I(String str) {
        String strS = s(str);
        return "jpg".equals(strS) || "jpeg".equals(strS);
    }

    public static boolean J(int i2) {
        boolean z2;
        int[] iArr = f18j;
        synchronized (iArr) {
            z2 = !K(iArr[i2], 1048576);
        }
        return z2;
    }

    public static boolean K(int i2, int i3) {
        return (i2 & i3) == i3;
    }

    public static boolean L(int i2, int i3) {
        return (i2 & i3) != 0;
    }

    public static boolean M(String str, String str2) {
        int length = str.length();
        int length2 = str2.length() - length;
        if (length2 < -1) {
            return false;
        }
        if (length == 0 && length2 != 0) {
            return false;
        }
        int iMin = Math.min(length, str2.length());
        int i2 = 0;
        char cCharAt = 0;
        while (true) {
            iMin--;
            if (iMin < 0) {
                if (length2 == 0) {
                    return true;
                }
                if (length2 < 0) {
                    return str.charAt(i2) == '/';
                }
                return cCharAt == '/' || (i2 < str2.length() && str2.charAt(i2) == '/');
            }
            cCharAt = str2.charAt(i2);
            int i3 = i2 + 1;
            if (str.charAt(i2) != cCharAt) {
                return false;
            }
            i2 = i3;
        }
    }

    public static boolean N(int i2, String str) {
        String strS;
        if (str == null || n0.e.l(str) || str.startsWith("/uri/")) {
            return false;
        }
        if (!f0.a.m().n(str)) {
            strS = null;
        } else {
            if (L(f0.a.m().h(), 48)) {
                return false;
            }
            strS = f0.a.m().i();
        }
        if (v0.h.e(strS)) {
            strS = s(str);
        }
        if (i2 == 2) {
            return strS.equals("apk") || strS.equals("zip") || strS.equals("jar");
        }
        if (i2 == 4) {
            return strS.equals("apk") || strS.equals("zip") || strS.equals("mtz") || strS.equals("tar") || strS.equals("7z") || strS.equals("jar");
        }
        return strS.equals("apk") || strS.equals("zip") || strS.equals("7z") || strS.equals("tar") || strS.equals("jar") || strS.equals("wim");
    }

    public static boolean O(String str, boolean z2) {
        if (str == null) {
            return false;
        }
        String strU = u(str);
        return strU.equals("zip") || strU.equals("apk") || strU.equals("mtz") || strU.equals("7z") || strU.equals("bz") || strU.equals("rar") || strU.equals("bz2") || (strU.equals("xz") && z2);
    }

    public static boolean P(String str) {
        String strS = s(str);
        return "webp".equals(strS) || "webm".equals(strS);
    }

    public static void Q() {
        HashMap map = new HashMap();
        f16h = map;
        map.put("7z", (byte) 19);
        f16h.put("jar", (byte) 1);
        f16h.put("zip", (byte) 18);
        f16h.put("rar", (byte) 17);
        f16h.put("gz", (byte) 1);
        f16h.put("tar", (byte) 1);
        f16h.put("cab", (byte) 1);
        f16h.put("tgz", (byte) 1);
        f16h.put("tbz", (byte) 1);
        f16h.put("txz", (byte) 1);
        f16h.put("bz", (byte) 1);
        f16h.put("bz2", (byte) 1);
        f16h.put("xz", (byte) 1);
        f16h.put("arj", (byte) 1);
        f16h.put("lzh", (byte) 1);
        f16h.put("lzo", (byte) 1);
        f16h.put("lha", (byte) 1);
        f16h.put("lzx", (byte) 1);
        f16h.put("lzma", (byte) 1);
        f16h.put("xar", (byte) 1);
        f16h.put("bzip2", (byte) 1);
        f16h.put("zipx", (byte) 18);
        f16h.put("deb", (byte) 1);
        f16h.put("wim", (byte) 1);
        f16h.put("mslz", (byte) 1);
        f16h.put("lz", (byte) 1);
        f16h.put("tlz", (byte) 1);
        f16h.put("tbz2", (byte) 1);
        f16h.put("lz4", (byte) 1);
        f16h.put("egg", (byte) 1);
        f16h.put("alz", (byte) 1);
        f16h.put("zstd", (byte) 1);
        f16h.put("tzstd", (byte) 1);
        f16h.put("zst", (byte) 1);
        f16h.put("rpm", (byte) 1);
        f16h.put("iso", (byte) 2);
        f16h.put("dmg", (byte) 2);
        f16h.put("img", (byte) 2);
        f16h.put("cpio", (byte) 2);
        f16h.put("cramfs", (byte) 2);
        f16h.put("ecm", (byte) 2);
        f16h.put("fat", (byte) 2);
        f16h.put("hfs", (byte) 2);
        f16h.put("squashfs", (byte) 2);
        f16h.put("vhd", (byte) 2);
        f16h.put("vdi", (byte) 2);
        f16h.put("vmdk", (byte) 2);
        f16h.put("udf", (byte) 2);
        f16h.put("png", (byte) 9);
        f16h.put("gif", (byte) 9);
        f16h.put("jpg", (byte) 9);
        f16h.put("jpeg", (byte) 9);
        f16h.put("bmp", (byte) 9);
        f16h.put("ico", (byte) 9);
        f16h.put("jp2", (byte) 9);
        f16h.put("pcx", (byte) 9);
        f16h.put("tga", (byte) 9);
        f16h.put("tiff", (byte) 9);
        f16h.put("webp", (byte) 9);
        f16h.put("webm", (byte) 9);
        f16h.put("heif", (byte) 9);
        f16h.put("heic", (byte) 9);
        f16h.put("htm", (byte) 12);
        f16h.put("html", (byte) 12);
        f16h.put("php", (byte) 12);
        f16h.put("mht", (byte) 12);
        f16h.put("mhtml", (byte) 12);
        f16h.put("doc", (byte) 5);
        f16h.put("docm", (byte) 5);
        f16h.put("docx", (byte) 5);
        f16h.put("dot", (byte) 5);
        f16h.put("dotm", (byte) 5);
        f16h.put("dotx", (byte) 5);
        f16h.put("rtf", (byte) 5);
        f16h.put("odt", (byte) 5);
        f16h.put("wps", (byte) 5);
        f16h.put("xls", (byte) 8);
        f16h.put("xlsx", (byte) 8);
        f16h.put("xmls", (byte) 8);
        f16h.put("ods", (byte) 8);
        f16h.put("csv", (byte) 8);
        f16h.put("pps", (byte) 10);
        f16h.put("ppsx", (byte) 10);
        f16h.put("ppt", (byte) 10);
        f16h.put("pptm", (byte) 10);
        f16h.put("pptx", (byte) 10);
        f16h.put("odp", (byte) 10);
        f16h.put("apk", (byte) 6);
        f16h.put("mp3", (byte) 7);
        f16h.put("wav", (byte) 7);
        f16h.put("ogg", (byte) 7);
        f16h.put("midi", (byte) 7);
        f16h.put("flac", (byte) 7);
        f16h.put("aac", (byte) 7);
        f16h.put("amr", (byte) 7);
        f16h.put("wma", (byte) 7);
        f16h.put("mpa", (byte) 7);
        f16h.put("ape", (byte) 7);
        f16h.put("mid", (byte) 7);
        f16h.put("m4a", (byte) 7);
        f16h.put("3gpp", (byte) 7);
        f16h.put("awb", (byte) 7);
        f16h.put("opus", (byte) 7);
        f16h.put("mpga", (byte) 7);
        f16h.put("pdf", (byte) 13);
        f16h.put("txt", (byte) 11);
        f16h.put("cfg", (byte) 11);
        f16h.put("ini", (byte) 11);
        f16h.put("log", (byte) 11);
        f16h.put("inf", (byte) 11);
        f16h.put("conf", (byte) 11);
        f16h.put("avi", (byte) 14);
        f16h.put("mpg", (byte) 14);
        f16h.put("3gp", (byte) 14);
        f16h.put("wmv", (byte) 14);
        f16h.put("mp4", (byte) 14);
        f16h.put("mkv", (byte) 14);
        f16h.put("m4v", (byte) 14);
        f16h.put("flv", (byte) 14);
        f16h.put("mov", (byte) 14);
        f16h.put("mpeg", (byte) 14);
        f16h.put("xml", (byte) 16);
        f16h.put("json", (byte) 16);
        f16h.put("fb2", (byte) 15);
        f16h.put("epub", (byte) 15);
        f16h.put("mobi", (byte) 15);
        f16h.put("prc", (byte) 15);
        f16h.put("azw", (byte) 15);
        f16h.put("cbz", (byte) 15);
        f16h.put("cbr", (byte) 15);
        f16h.put("djvu", (byte) 15);
        f16h.put("001", (byte) 28);
        f16h.put("apks", (byte) 20);
        f16h.put("xapk", (byte) 20);
        f16h.put("apkm", (byte) 20);
        f16h.put("so", (byte) 21);
        f16h.put("dex", (byte) 22);
        f16h.put("vdex", (byte) 22);
        f16h.put("obb", (byte) 23);
        f16h.put("nes", (byte) 24);
        f16h.put("nez", (byte) 24);
        f16h.put("nds", (byte) 24);
        f16h.put("fds", (byte) 24);
        f16h.put("gen", (byte) 24);
        f16h.put("n64", (byte) 24);
        f16h.put("z64", (byte) 24);
        f16h.put("gba", (byte) 24);
        f16h.put("sfc", (byte) 24);
        f16h.put("smc", (byte) 24);
        f16h.put("win", (byte) 25);
        f16h.put("win000", (byte) 25);
        f16h.put("win001", (byte) 25);
        f16h.put("ttf", (byte) 26);
        f16h.put("ttc", (byte) 26);
        f16h.put("otf", (byte) 26);
        f16h.put("mtz", (byte) 27);
        f16h.put("hwt", (byte) 27);
    }

    public static void R(ByteBuffer byteBuffer, long j2) {
        byteBuffer.position(m(j2));
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0094  */
    public static int S(o0.a aVar) {
        String str;
        byte b2;
        int iJAskOverwrite;
        byte bI0 = 0;
        while (true) {
            boolean z2 = true;
            try {
                String strK = aVar.k(true);
                if (strK == null) {
                    return bI0;
                }
                if (!strK.isEmpty() && strK.charAt(0) == '~') {
                    String[] strArrH = v0.h.h(strK, '\t');
                    if (strArrH.length >= 2 && (str = strArrH[1]) != null) {
                        int iHashCode = str.hashCode();
                        if (iHashCode != 77) {
                            if (iHashCode != 2085) {
                                if (iHashCode != 2094) {
                                    if (iHashCode != 2281) {
                                        if (iHashCode != 2560) {
                                            if (iHashCode != 2564) {
                                                if (iHashCode == 2671 && str.equals("TC")) {
                                                    b2 = 3;
                                                } else {
                                                    b2 = -1;
                                                }
                                            } else if (str.equals("PT")) {
                                                b2 = 0;
                                            } else {
                                                b2 = -1;
                                            }
                                        } else if (str.equals("PP")) {
                                            b2 = 1;
                                        } else {
                                            b2 = -1;
                                        }
                                    } else if (str.equals("GP")) {
                                        b2 = 6;
                                    } else {
                                        b2 = -1;
                                    }
                                } else if (str.equals("AO")) {
                                    b2 = 2;
                                } else {
                                    b2 = -1;
                                }
                            } else if (str.equals("AF")) {
                                b2 = 5;
                            } else {
                                b2 = -1;
                            }
                        } else if (str.equals("M")) {
                            b2 = 4;
                        } else {
                            b2 = -1;
                        }
                        String strJGetPassword = "";
                        switch (b2) {
                            case 0:
                                C2JBridge.jSetProcessText(aVar.f1287a, strArrH[2]);
                                break;
                            case 1:
                                C2JBridge.jSetProcessPercent(aVar.f1287a, i0(0, strArrH[2]));
                                break;
                            case 2:
                                if (strArrH.length >= 7) {
                                    try {
                                        iJAskOverwrite = C2JBridge.jAskOverwrite(aVar.f1287a, strArrH[6], j0(0L, strArrH[2]), i0(0, strArrH[3]), strArrH[6], j0(0L, strArrH[4]), i0(0, strArrH[5]));
                                    } catch (Exception unused) {
                                        iJAskOverwrite = 8;
                                    }
                                    String str2 = (iJAskOverwrite & 1) != 0 ? "$Y" : "$";
                                    if ((iJAskOverwrite & 2) != 0) {
                                        str2 = str2 + 'N';
                                    }
                                    if ((iJAskOverwrite & 8) != 0) {
                                        str2 = str2 + 'C';
                                    }
                                    if ((iJAskOverwrite & 4) != 0) {
                                        str2 = str2 + 'R';
                                    }
                                    if ((iJAskOverwrite & 16) != 0) {
                                        str2 = str2 + 'A';
                                    }
                                    aVar.m(str2);
                                    break;
                                }
                                break;
                            case 3:
                                bI0 = (byte) (i0(0, strArrH[2]) + 1);
                                if (bI0 != 1) {
                                    bI0 = 2;
                                }
                                int i2 = aVar.f1287a;
                                if (bI0 != 2) {
                                    z2 = false;
                                }
                                C2JBridge.jSetTaskCompleted(i2, z2);
                                break;
                            case 4:
                                C2JBridge.jShowMessage(aVar.f1287a, i0(0, strArrH[2]), strArrH.length > 3 ? strArrH[3] : "");
                                break;
                            case 5:
                                C2JBridge.jAddFileToList(aVar.f1287a, strArrH[5], -2, j0(0L, strArrH[2]), i0(0, strArrH[3]), i0(0, strArrH[4]));
                                break;
                            case 6:
                                try {
                                    strJGetPassword = C2JBridge.jGetPassword(aVar.f1287a);
                                    break;
                                } catch (Exception unused2) {
                                }
                                aVar.m("#" + strJGetPassword);
                                break;
                        }
                    }
                }
            } catch (Exception unused3) {
            }
        }
    }

    public static byte[] T(InputStream inputStream) throws Throwable {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            while (true) {
                try {
                    int i2 = inputStream.read(bArr);
                    if (i2 == -1) {
                        byte[] byteArray = byteArrayOutputStream2.toByteArray();
                        byteArrayOutputStream2.close();
                        return byteArray;
                    }
                    byteArrayOutputStream2.write(bArr, 0, i2);
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static short U(ByteBuffer byteBuffer) {
        return (short) (byteBuffer.get() & 255);
    }

    public static long V(ByteBuffer byteBuffer) {
        return ((long) byteBuffer.getInt()) & 4294967295L;
    }

    public static int W(ByteBuffer byteBuffer) {
        return byteBuffer.getShort() & 65535;
    }

    public static String X(String str) {
        String strSubstring = str;
        while (true) {
            try {
                int iLastIndexOf = strSubstring.lastIndexOf(46);
                if (iLastIndexOf <= 0) {
                    break;
                }
                byte bE = E(strSubstring);
                if (!H(bE) && bE != 25 && !strSubstring.endsWith(".part1")) {
                    break;
                }
                strSubstring = strSubstring.substring(0, iLastIndexOf);
            } catch (Exception unused) {
                return str;
            }
        }
        return strSubstring;
    }

    public static String Y(String str) {
        int length = str.length();
        if (length <= 1) {
            return str;
        }
        int i2 = length - 1;
        return str.charAt(i2) == '/' ? str.substring(0, i2) : str;
    }

    public static String Z(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : str;
    }

    public static String a0(String str) {
        return Y(b0(str));
    }

    public static String b0(String str) {
        return (str.length() <= 0 || str.charAt(0) != '/') ? str : str.substring(1);
    }

    public static void c0(o0.a aVar, h0.h hVar, String str) {
        String strSubstring;
        int iIndexOf;
        StringBuilder sb = new StringBuilder();
        sb.append(v0.c.b(hVar.f1108c));
        sb.append(str == null ? "" : "/".concat(str));
        String string = sb.toString();
        int i2 = 0;
        try {
            ZApp zApp = ZApp.f1434c;
            if (zApp == null) {
                return;
            }
            int iIndexOf2 = string.indexOf("/Android/data");
            if (iIndexOf2 < 0) {
                iIndexOf2 = string.indexOf("/Android/obb");
            }
            if (iIndexOf2 <= 0 || (iIndexOf = string.indexOf("/", iIndexOf2 + 10)) <= 0) {
                strSubstring = null;
            } else {
                int i3 = iIndexOf + 1;
                int iIndexOf3 = string.indexOf("/", i3);
                if (iIndexOf3 < 0) {
                    iIndexOf3 = string.length();
                }
                strSubstring = string.substring(i3, iIndexOf3);
            }
            if (strSubstring != null) {
                try {
                    i2 = zApp.getPackageManager().getApplicationInfo(strSubstring, 0).uid;
                } catch (Exception unused) {
                }
            }
            if (i2 == 0) {
                i2 = zApp.getApplicationInfo().uid;
            }
        } catch (Exception unused2) {
        }
        if (i2 == 0) {
            return;
        }
        e0(aVar, string, "" + i2, null, true);
    }

    public static String d(String str) {
        int length = str.length();
        return (length <= 0 || str.charAt(length + (-1)) == '/') ? str : str.concat("/");
    }

    public static void d0(o0.a aVar, h0.h hVar, String str) {
        if (aVar.f()) {
            StringBuilder sb = new StringBuilder();
            sb.append(v0.c.b(hVar.f1108c));
            sb.append(str == null ? "" : "/".concat(str));
            if (aVar.b("restorecon -R '" + sb.toString().replace("'", "'\\''") + "'")) {
                aVar.k(false);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002b  */
    public static void e(StringBuilder sb, String str, h0.h hVar, boolean z2) {
        boolean z3;
        boolean z4 = false;
        if (u(str).equals("7z")) {
            z3 = true;
        } else {
            String strS = s(str);
            if (strS.equals("xz") || strS.equals("txz")) {
                z3 = true;
            } else {
                z3 = false;
            }
        }
        if (z3) {
            sb.append("\\-mf=off");
            String strU = null;
            if (f0.a.m().n(str)) {
                f0.a aVarM = f0.a.m();
                ReentrantReadWriteLock reentrantReadWriteLock = aVarM.f757a;
                try {
                    reentrantReadWriteLock.readLock().lock();
                    f0.d dVar = aVarM.f758b;
                    if (dVar != null) {
                        strU = dVar.u();
                    }
                } finally {
                    reentrantReadWriteLock.readLock().unlock();
                }
            }
            if (strU != null && strU.toUpperCase().contains("LZMA2")) {
                if (t0.b.f(32)) {
                    sb.append("\\-m0=LZMA2");
                    z4 = true;
                } else {
                    sb.append("\\-m0=FLZMA2");
                }
            }
        }
        if (z4 || hVar.m()) {
            sb.append("\\-mmt=1");
        } else if (O(str, true) && t0.b.a() > 0) {
            sb.append("\\-mmt=");
            sb.append(t0.b.a());
        }
        if (v0.h.e(s(str))) {
            String strU2 = u(str);
            if (!v0.h.e(strU2)) {
                sb.append("\\-t");
                sb.append(strU2);
            }
        }
        if (sb.indexOf("\\-p") < 0 && e0.h.d().e(str)) {
            if (!z2) {
                sb.append("\\-p");
                sb.append(e0.h.d().b(str, true));
                if (e0.h.d().f(str)) {
                    sb.append("\\-mhe");
                }
            } else if (e0.h.d().f(str)) {
                sb.append("\\-p");
                sb.append(e0.h.d().b(str, true));
                sb.append("\\-mhe");
            }
        }
        sb.append("\\-snl\\-snh");
    }

    public static boolean e0(o0.a aVar, String str, String str2, String str3, boolean z2) {
        StringBuilder sb = new StringBuilder("chown ");
        if (z2) {
            sb.append("-R ");
        }
        sb.append(str2);
        if (str3 != null) {
            sb.append(".");
            sb.append(str3);
        }
        sb.append(" '");
        sb.append(str.replace("'", "'\\''"));
        sb.append('\'');
        if (!aVar.b(sb.toString())) {
            return false;
        }
        aVar.k(false);
        return aVar.f1294h == 0;
    }

    public static void f(StringBuilder sb, int i2, boolean z2) {
        int iA;
        int i3 = 256;
        if (i2 > 0) {
            int i4 = t0.b.f2085f & 4080;
            if (i4 == 16) {
                sb.append("\\-m0=LZMA");
            } else if (i4 == 32) {
                sb.append("\\-m0=LZMA2");
            } else if (i4 == 64) {
                sb.append("\\-m0=FLZMA2");
            } else if (i4 == 128) {
                sb.append("\\-m0=ZSTD");
            } else if (i4 == 256) {
                sb.append("\\-m0=PPMD");
            } else if (i4 == 512) {
                sb.append("\\-m0=BZIP2");
            }
            if (((t0.b.f2085f & 112) != 0) && (iA = e0.b.a(i4, i2)) > 0) {
                sb.append("\\-md=");
                sb.append(iA);
                sb.append("m");
            }
        }
        if (z2) {
            sb.append("\\-mqs=on");
            sb.append("\\-ms=");
            if (i2 == 1) {
                i3 = 8;
            } else if (i2 == 3) {
                i3 = 16;
            } else if (i2 == 7) {
                i3 = 512;
            } else if (i2 == 9) {
                i3 = 1024;
            }
            sb.append(i3);
            sb.append('m');
        } else {
            sb.append("\\-ms=off");
        }
        sb.append("\\-mf=off");
    }

    public static boolean f0(String str, String str2, o0.a aVar, boolean z2) {
        StringBuilder sb = new StringBuilder();
        sb.append(r());
        sb.append(z2 ? " lp '" : " l '");
        sb.append(str.replace("'", "'\\''"));
        sb.append("' ");
        sb.append(str2);
        return aVar.b(sb.toString()) && S(aVar) == 2;
    }

    public static int g(CharSequence charSequence, CharSequence charSequence2) {
        int length = charSequence.length();
        int length2 = charSequence2.length();
        int iMin = Math.min(length2, length);
        int i2 = 0;
        for (int i3 = 0; i3 < iMin; i3++) {
            char cCharAt = charSequence.charAt(i3);
            char cCharAt2 = charSequence2.charAt(i3);
            int i4 = cCharAt - cCharAt2;
            if (i4 != 0) {
                cCharAt = k0(cCharAt);
                cCharAt2 = k0(cCharAt2);
                i4 = cCharAt - cCharAt2;
            }
            if (cCharAt <= '9' && cCharAt2 <= '9' && cCharAt >= '0' && cCharAt2 >= '0') {
                if (i2 == 0) {
                    i2 = i4;
                }
                boolean z2 = length2 - i3 < 2;
                if (length - i3 < 2) {
                    if (z2) {
                        return i2;
                    }
                    return -1;
                }
                if (z2) {
                    return 1;
                }
                int i5 = i3 + 1;
                char cCharAt3 = charSequence2.charAt(i5);
                boolean z3 = cCharAt3 > '9' || cCharAt3 < '0';
                char cCharAt4 = charSequence.charAt(i5);
                if (cCharAt4 > '9' || cCharAt4 < '0') {
                    if (z3 && i2 != 0) {
                        return i2;
                    }
                    if (!z3) {
                        return -1;
                    }
                } else if (z3) {
                    return 1;
                }
            } else {
                if (i4 != 0) {
                    return i4;
                }
                i2 = 0;
            }
        }
        return length - length2;
    }

    public static boolean g0(String str, String str2, String str3, String str4, o0.a aVar, boolean z2) {
        if (!aVar.b("cd '" + str4.replace("'", "'\\''") + "'")) {
            return false;
        }
        aVar.k(false);
        StringBuilder sb = new StringBuilder();
        sb.append(r());
        sb.append(z2 ? " a '" : " d '");
        sb.append(str.replace("'", "'\\''"));
        sb.append("' ");
        sb.append(str2);
        sb.append(" -- ");
        sb.append(str3);
        return aVar.b(sb.toString()) && S(aVar) == 2;
    }

    public static void h(Context context, String str, boolean z2) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (str.startsWith(".")) {
                str = "ru.zdevs.zarchiver".concat(str);
            }
            packageManager.setComponentEnabledSetting(new ComponentName("ru.zdevs.zarchiver", str), z2 ? 1 : 2, 1);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x006c  */
    /* JADX WARN: Code duplicated, block: B:52:0x0070  */
    public static void h0(ZArchiverService zArchiverService, int i2, int i3) {
        int[] iArr = f18j;
        synchronized (iArr) {
            int i4 = iArr[i2];
            if ((i4 & 2097152) == 2097152) {
                if (i3 == 2162688 || i3 == 15) {
                    iArr[i2] = i4 & (-2097153);
                }
                if (i3 != 15) {
                    return;
                }
            }
            if (i3 == 2097152) {
                iArr[i2] = iArr[i2] | 2097152;
                return;
            }
            int i5 = iArr[i2];
            if ((i5 & 15) != 15 || i3 == 0) {
                iArr[i2] = i3;
            } else {
                iArr[i2] = i5 | i3;
            }
            if (i3 >= 255) {
                if ((i3 & 1048576) == 1048576) {
                    try {
                        if (C2JBridge.f1624n[i2] != null) {
                            C2JBridge.b(i2, null);
                        }
                        if (C2JBridge.f1623m[i2] != null) {
                            C2JBridge.a(i2, 18);
                        }
                    } catch (Exception unused) {
                    }
                    if (zArchiverService != null) {
                        try {
                            zArchiverService.e(i2, 100);
                            zArchiverService.g(i2, 0);
                            return;
                        } catch (Exception unused2) {
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            byte b2 = f19k[i2];
            if (b2 == -127 || b2 == -121 || b2 == -117 || b2 == 1) {
                if (C2JBridge.f1613c) {
                    C2JBridge.cSetStatus(i2, (byte) i3);
                }
            } else if (b2 != 13) {
                if (b2 == 3) {
                    if (C2JBridge.f1613c) {
                        C2JBridge.cSetStatus(i2, (byte) i3);
                    }
                } else if (b2 != 4) {
                    if (b2 == 5 || b2 == 7 || b2 == 8) {
                        if (C2JBridge.f1613c) {
                            C2JBridge.cSetStatus(i2, (byte) i3);
                        }
                    } else if (b2 != 10) {
                        if (b2 != 11) {
                            return;
                        }
                        if (C2JBridge.f1613c) {
                            C2JBridge.cSetStatus(i2, (byte) i3);
                        }
                    }
                }
            }
            if (i3 == 15) {
                if (C2JBridge.f1624n[i2] != null) {
                    C2JBridge.b(i2, null);
                }
                if (C2JBridge.f1623m[i2] != null) {
                    C2JBridge.a(i2, 18);
                }
                r0.a.h(i2);
            }
        }
    }

    public static String i(String str, String str2) {
        if (str == null) {
            return b0(str2);
        }
        if (str2.isEmpty()) {
            return str;
        }
        boolean z2 = false;
        boolean z3 = str2.charAt(0) == '/';
        int length = str.length();
        if (length > 0 && str.charAt(length - 1) == '/') {
            z2 = true;
        }
        if (z2 != z3) {
            return str.concat(str2);
        }
        if (z3) {
            return str + str2.substring(1);
        }
        return str + "/" + str2;
    }

    public static int i0(int i2, String str) {
        if (str == null) {
            return i2;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return i2;
        }
    }

    public static b.b j(b.d dVar, b.f fVar, b.f fVar2, int i2, float f2, b.f fVar3, b.f fVar4, int i3, boolean z2) {
        b.b bVarK = dVar.k();
        bVarK.a(fVar, fVar2, i2, f2, fVar3, fVar4, i3);
        if (z2) {
            b.f fVarI = dVar.i();
            b.f fVarI2 = dVar.i();
            b.a aVar = bVarK.f237c;
            aVar.c(fVarI, 1.0f);
            aVar.c(fVarI2, -1.0f);
        }
        return bVarK;
    }

    public static long j0(long j2, String str) {
        if (str == null) {
            return j2;
        }
        try {
            return Long.parseLong(str);
        } catch (Exception unused) {
            return j2;
        }
    }

    public static b.b k(b.d dVar, b.f fVar, b.f fVar2, int i2, boolean z2) {
        b.b bVarK = dVar.k();
        bVarK.d(fVar, fVar2, i2);
        if (z2) {
            bVarK.f237c.c(dVar.i(), 1);
        }
        return bVarK;
    }

    public static char k0(char c2) {
        if (c2 == '.') {
            return ' ';
        }
        if (c2 == ' ') {
            return '.';
        }
        if (c2 < 128) {
            return ('A' > c2 || c2 > 'Z') ? c2 : (char) (c2 + ' ');
        }
        return Character.toLowerCase(c2);
    }

    public static int l(Context context) throws Throwable {
        String str;
        Locale locale = context.getResources().getConfiguration().locale;
        String language = locale.getLanguage();
        if ("zh".equals(language)) {
            language = language + '_' + locale.getCountry();
        } else if ("en".equals(language)) {
            String id = Calendar.getInstance().getTimeZone().getID();
            if (id == null || id.startsWith("America")) {
                language = "en";
            } else {
                XmlResourceParser xmlResourceParser = null;
                try {
                    XmlResourceParser xml = context.getResources().getXml(R.xml.time_zones_by_country);
                    while (xml.getEventType() != 1) {
                        try {
                            if (xml.getEventType() == 2 && "timezone".equals(xml.getName())) {
                                String attributeValue = xml.getAttributeValue(null, "code");
                                if (xml.next() == 4 && id.equals(xml.getText()) && attributeValue.length() >= 2) {
                                    switch ((attributeValue.charAt(0) * 256) + attributeValue.charAt(1)) {
                                        case 24933:
                                        case 26988:
                                        case 29537:
                                        case 29561:
                                            str = "ar";
                                            language = str;
                                            xml.close();
                                            break;
                                        case 25209:
                                        case 27514:
                                        case 29301:
                                        case 30049:
                                            str = "ru";
                                            language = str;
                                            xml.close();
                                            break;
                                        case 25454:
                                        case 26731:
                                            str = "zh_CN";
                                            language = str;
                                            xml.close();
                                            break;
                                        case 25701:
                                            str = "de";
                                            language = str;
                                            xml.close();
                                            break;
                                        case 25971:
                                            str = "es";
                                            language = str;
                                            xml.close();
                                            break;
                                        case 26226:
                                            str = "fr";
                                            language = str;
                                            xml.close();
                                            break;
                                        case 27248:
                                            str = "ja";
                                            language = str;
                                            xml.close();
                                            break;
                                        case 27504:
                                        case 27506:
                                            str = "ko";
                                            language = str;
                                            xml.close();
                                            break;
                                        case 29815:
                                            str = "zh_TW";
                                            language = str;
                                            xml.close();
                                            break;
                                        default:
                                            if (id.startsWith("Europe")) {
                                                language = attributeValue;
                                            }
                                            xml.close();
                                            break;
                                    }
                                }
                            } else {
                                xml.next();
                            }
                        } catch (Exception unused) {
                            xmlResourceParser = xml;
                            if (xmlResourceParser != null) {
                                xmlResourceParser.close();
                            }
                        } catch (Throwable th) {
                            xmlResourceParser = xml;
                            th = th;
                            if (xmlResourceParser != null) {
                                xmlResourceParser.close();
                            }
                            throw th;
                        }
                    }
                    xml.close();
                } catch (Exception unused2) {
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        if (language.length() < 2) {
            return 866;
        }
        switch (language.charAt(1) + (language.charAt(0) * 256)) {
            case 24946:
                return 864;
            case 25191:
            case 28011:
            case 29554:
                return 855;
            case 25209:
            case 29301:
            case 30059:
                return 866;
            case 25459:
            case 26738:
            case 26741:
            case 28780:
                return 852;
            case 25964:
                return 737;
            case 25966:
                return 437;
            case 25972:
            case 27764:
            case 27766:
                return 775;
            case 26725:
                return 862;
            case 26995:
                return 861;
            case 27233:
                return 932;
            case 27503:
                return 949;
            case 28788:
                return 860;
            case 29800:
                return 874;
            case 29810:
                return 857;
            case 31336:
                return language.endsWith("_TW") ? 950 : 936;
            default:
                return 850;
        }
    }

    public static int m(long j2) {
        if (j2 < 0 || j2 > 2147483647L) {
            throw new ArithmeticException("unsigned integer overflow");
        }
        return (int) j2;
    }

    public static boolean n(String str, String str2) {
        int length = str.length() - str2.length();
        if (length != 0 && length != -1) {
            if (length != 1) {
                return false;
            }
            str2 = str;
            str = str2;
        }
        int length2 = str.length();
        int i2 = 0;
        while (true) {
            int i3 = length2 - 1;
            if (length2 == 0) {
                return length == 0 || str2.charAt(i2) == '/';
            }
            if (str.charAt(i2) != str2.charAt(i2)) {
                return false;
            }
            i2++;
            length2 = i3;
        }
    }

    public static List o() {
        Context contextC = ZApp.c(null);
        if (contextC == null) {
            return null;
        }
        PackageManager packageManager = contextC.getPackageManager();
        List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
        if (installedPackages != null && installedPackages.size() > 1) {
            return installedPackages;
        }
        ArrayList arrayList = new ArrayList();
        try {
            Process processExec = Runtime.getRuntime().exec("pm list packages");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()), 16384);
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(line.substring(line.indexOf(58) + 1), 0);
                        if (packageInfo != null) {
                            arrayList.add(packageInfo);
                        }
                    } catch (Throwable unused) {
                    }
                } catch (Throwable unused2) {
                    n0.e.d(bufferedReader);
                    return null;
                }
            }
            processExec.waitFor();
            n0.e.d(bufferedReader);
        } catch (Throwable unused3) {
        }
        return arrayList;
    }

    public static u0.b p(int i2, String str) throws Throwable {
        SQLiteDatabase readableDatabase;
        Throwable th;
        Cursor cursor = null;
        u0.b bVar = null;
        try {
            readableDatabase = new u0.a(ZApp.f1434c).getReadableDatabase();
        } catch (SQLiteCantOpenDatabaseException unused) {
            readableDatabase = null;
        }
        if (readableDatabase == null) {
            return null;
        }
        try {
            Cursor cursorQuery = i2 == 1000 ? readableDatabase.query("FA", null, "EXT = ?", new String[]{str}, null, null, "TYPE DESC") : readableDatabase.query("FA", null, "EXT = ? AND TYPE = ?", new String[]{str, String.valueOf(i2)}, null, null, null);
            try {
                if (cursorQuery.moveToNext()) {
                    bVar = new u0.b();
                    cursorQuery.getInt(0);
                    bVar.f2174a = cursorQuery.getString(1);
                    bVar.f2175b = cursorQuery.getString(2);
                    bVar.f2176c = cursorQuery.getString(3);
                    bVar.f2177d = cursorQuery.getInt(4);
                    bVar.f2178e = cursorQuery.getInt(5);
                }
                n0.e.b(cursorQuery);
                n0.e.d(readableDatabase);
                return bVar;
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorQuery;
                n0.e.b(cursor);
                n0.e.d(readableDatabase);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static h0.h q(h0.h hVar) {
        if (hVar.g()) {
            return new h0.h(hVar.h() ? "root" : "file", hVar.f1108c);
        }
        return hVar;
    }

    public static String r() {
        File file = null;
        String string = null;
        for (int i2 = -2; i2 < 3; i2++) {
            if (i2 == -2) {
                string = "/data/data/ru.zdevs.zarchiver/bin/p7zbin";
            } else if (i2 != -1) {
                string = f17i[i2];
            } else {
                StringBuilder sb = new StringBuilder();
                if (C2JBridge.f1614d == null) {
                    C2JBridge.c(null);
                }
                sb.append(C2JBridge.f1614d);
                sb.append("/libp7zbin.so");
                string = sb.toString();
            }
            File file2 = new File(string);
            if (file2.exists()) {
                file = file2;
                break;
            }
        }
        if (file == null || !file.exists() || file.canExecute()) {
            return string;
        }
        File file3 = new File("/data/data/ru.zdevs.zarchiver/bin/p7zbin");
        if (file3.exists() && file3.length() == file.length()) {
            return "/data/data/ru.zdevs.zarchiver/bin/p7zbin";
        }
        if (file3.getParentFile() != null) {
            file3.getParentFile().mkdirs();
        }
        o0.b bVar = new o0.b();
        bVar.b("cp " + string + " /data/data/ru.zdevs.zarchiver/bin/p7zbin; chmod 755 '/data/data/ru.zdevs.zarchiver/bin/p7zbin'");
        bVar.close();
        return "/data/data/ru.zdevs.zarchiver/bin/p7zbin";
    }

    public static String s(String str) {
        int i2;
        int iLastIndexOf = str.lastIndexOf(46);
        return (iLastIndexOf < 0 || str.length() <= (i2 = iLastIndexOf + 1)) ? "" : v0.h.i(str.substring(i2));
    }

    public static Field t(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException | SecurityException unused) {
            return null;
        }
    }

    public static String u(String str) {
        if (f0.a.m().n(str)) {
            String strI = f0.a.m().i();
            if (!v0.h.e(strI)) {
                return strI;
            }
        }
        return s(str);
    }

    public static int v() {
        synchronized (f18j) {
            for (int i2 = 0; i2 < 5; i2++) {
                if (K(f18j[i2], 1048576)) {
                    return i2;
                }
            }
            return -1;
        }
    }

    public static Method w(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException | SecurityException unused) {
            return null;
        }
    }

    public static String x(String str) {
        if (v0.h.e(str)) {
            return "application/octet-stream";
        }
        String strI = v0.h.i(str);
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strI);
        if (mimeTypeFromExtension != null) {
            return mimeTypeFromExtension;
        }
        if (strI.equals("7z")) {
            return "application/x-7z-compressed";
        }
        if (strI.equals("bz2")) {
            return "application/x-bzip2";
        }
        if (strI.equals("gz")) {
            return "application/x-gzip";
        }
        if (strI.equals("xz")) {
            return "application/x-xz";
        }
        if (strI.equals("lz4")) {
            return "application/x-lz4";
        }
        if (strI.equals("zst") || strI.equals("zstd")) {
            return "application/zstd";
        }
        if (strI.equals("mobi")) {
            return "application/x-mobipocket-ebook";
        }
        if (strI.equals("fb2")) {
            return "application/x-fictionbook+xml";
        }
        if (f16h == null) {
            Q();
        }
        Byte b2 = (Byte) f16h.get(strI);
        byte bByteValue = b2 == null ? (byte) 0 : b2.byteValue();
        if (bByteValue == 11) {
            return "text/".concat(strI);
        }
        if (bByteValue == 5) {
            return "application/msword";
        }
        if (bByteValue == 8) {
            return "application/msexcel";
        }
        if (bByteValue == 10) {
            return "application/mspowerpoint";
        }
        if (bByteValue == 9) {
            return "image/".concat(strI);
        }
        if (bByteValue == 7) {
            return "audio/".concat(strI);
        }
        return bByteValue == 14 ? "video/".concat(strI) : "application/x-".concat(strI);
    }

    public static String y(String str) {
        int iLastIndexOf = str.lastIndexOf(47, str.length() - 2);
        return (iLastIndexOf == -1 || str.length() <= 1) ? str : Y(str.substring(iLastIndexOf + 1));
    }

    public static int z(OutputStream outputStream) {
        Method methodW;
        if (!(outputStream instanceof FileOutputStream)) {
            return -1;
        }
        try {
            FileDescriptor fd = ((FileOutputStream) outputStream).getFD();
            if (fd == null || (methodW = w(FileDescriptor.class, "getInt$", new Class[0])) == null) {
                return -1;
            }
            return ((Integer) methodW.invoke(fd, new Object[0])).intValue();
        } catch (Exception unused) {
            return -1;
        }
    }

    @Override
    public boolean a(h0.g gVar, h0.h hVar, byte b2, int[] iArr, d0.b bVar) {
        if (!hVar.k()) {
            return false;
        }
        if (iArr.length > 1) {
            gVar.a(24);
        } else {
            gVar.a(3);
        }
        gVar.a(22);
        return true;
    }

    @Override
    public boolean b(h0.g gVar, h0.h hVar, byte b2, int[] iArr, d0.i iVar, boolean z2) {
        if (!hVar.k()) {
            return false;
        }
        int iD = l0.c.d(hVar);
        if (iArr.length == 1 && (!z2 || t0.b.l(4096))) {
            gVar.a(3);
        }
        gVar.a(22);
        if (z2) {
            gVar.a(24);
            if (!K(iD, 256)) {
                gVar.a(25);
                gVar.a(23);
            }
        }
        return true;
    }

    @Override
    public boolean c(h0.g gVar, h0.h hVar, byte b2, int[] iArr, d0.b bVar) {
        if (!hVar.k()) {
            return false;
        }
        int iD = l0.c.d(hVar);
        gVar.a(22);
        gVar.a(24);
        if (!K(iD, 256)) {
            gVar.a(25);
            gVar.a(23);
            if (iArr.length == 1) {
                gVar.a(27);
            }
        }
        return true;
    }
}
