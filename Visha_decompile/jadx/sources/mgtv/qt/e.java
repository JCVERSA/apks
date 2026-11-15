package mgtv.qt;

import android.app.Application;
import android.content.Context;
import defpackage.aqd;
import defpackage.dtd;
import defpackage.k4d;
import defpackage.m4d;
import defpackage.sjd;
import defpackage.wgd;
import defpackage.y4d;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public final class e {
    public static e c;
    public long a = -1;
    public int b = -1;

    public static int a(int i, int i2, int i3, int i4, int i5, int[] iArr) {
        return ((i ^ i2) + (iArr[(i4 & 3) ^ i5] ^ i3)) ^ (((i3 >>> 5) ^ (i2 << 2)) + ((i2 >>> 3) ^ (i3 << 4)));
    }

    public static File b(String str, String str2) {
        if (!y4d.i(str) && !y4d.i(str2)) {
            h hVar = new h();
            hVar.d(false);
            File file = new File(str2);
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.exists()) {
                parentFile.mkdirs();
            }
            aqd.g();
            int iA = aqd.c(str, new i(file)).a();
            if (204 == iA) {
                hVar.d(true);
                i(str2);
            }
            if (200 == iA) {
                hVar.d(true);
            }
            if (hVar.e()) {
                return file;
            }
        }
        return null;
    }

    public static File c(String str, JSONObject jSONObject, String str2) {
        h hVar = new h();
        hVar.d(false);
        File file = new File(str2);
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        aqd.g();
        int iA = aqd.d(str, aqd.e(jSONObject).toString().getBytes(), new i(file)).a();
        if (iA == 200 || iA == 204) {
            hVar.d(true);
        }
        if (204 == iA) {
            i(str2);
        }
        if (hVar.e()) {
            return file;
        }
        return null;
    }

    public static String d(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir().getAbsolutePath());
        String str = File.separator;
        sb.append(str);
        sb.append(".qmt");
        sb.append(str);
        sb.append("Qt");
        sb.append(str);
        return sb.toString();
    }

    public static e e() {
        if (c == null) {
            c = new e();
        }
        return c;
    }

    public static h f(String str, JSONObject jSONObject, Map map) throws Throwable {
        h hVar = new h();
        aqd.g();
        sjd sjdVarB = aqd.b(str, jSONObject, map, new dtd());
        int iA = sjdVarB.a();
        if (200 == iA || 204 == iA) {
            hVar.d(true);
        } else {
            hVar.d(false);
            hVar.c(sjdVarB.e());
        }
        return hVar;
    }

    public static void g(Application application) {
        j.a(new aj(application));
    }

    public static void h(Context context, File file) {
        String strOptString = m4d.a.optString("cfgurl", "https://log.qchannel03.cn/n/dpz/");
        File fileA = new k4d(context, y4d.i(strOptString) ? "https://log.qchannel03.cn/n/dpz/" : strOptString, file.getAbsolutePath()).a();
        if (fileA != null && fileA.exists() && fileA.isFile()) {
            try {
                if (wgd.c(fileA)) {
                    wgd.b(fileA);
                } else {
                    fileA.renameTo(new File(fileA.getAbsolutePath().replace(".gz", "")));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void i(String str) {
        File file = new File(str.replace(".gz", ""));
        if (file.exists() && file.isFile()) {
            i.d(" ", file.getAbsolutePath(), true);
        }
    }

    public static boolean j(Context context, String str, String str2) {
        return q(d(context) + str, str2);
    }

    public static boolean k(Context context, String str, List list) {
        if (list.size() == 0) {
            return false;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < list.size(); i++) {
            stringBuffer.append((String) list.get(i));
            if (i == list.size() - 1) {
                stringBuffer.append("\n");
            } else {
                stringBuffer.append("\t");
            }
        }
        return q(d(context) + str, stringBuffer.toString());
    }

    public static byte[] l(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i = inputStream.read(bArr, 0, 1024);
            if (i == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public static byte[] m(byte[] bArr, byte[] bArr2) {
        if (bArr.length == 0) {
            return bArr;
        }
        int[] iArrN = n(bArr, true);
        if (bArr2.length != 16) {
            byte[] bArr3 = new byte[16];
            if (bArr2.length < 16) {
                System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            } else {
                System.arraycopy(bArr2, 0, bArr3, 0, 16);
            }
            bArr2 = bArr3;
        }
        int[] iArrN2 = n(bArr2, false);
        int length = iArrN.length;
        int i = length - 1;
        if (i > 0) {
            int i2 = (52 / length) + 6;
            int iA = iArrN[i];
            int i3 = 0;
            while (true) {
                int i4 = i2 - 1;
                if (i2 <= 0) {
                    break;
                }
                int i5 = i3 - 1640531527;
                int i6 = (i5 >>> 2) & 3;
                int iA2 = iA;
                int i7 = 0;
                while (i7 < i) {
                    int i8 = i7 + 1;
                    iA2 = iArrN[i7] + a(i5, iArrN[i8], iA2, i7, i6, iArrN2);
                    iArrN[i7] = iA2;
                    i7 = i8;
                }
                iA = a(i5, iArrN[0], iA2, i7, i6, iArrN2) + iArrN[i];
                iArrN[i] = iA;
                i2 = i4;
                i3 = i5;
            }
        }
        int length2 = iArrN.length << 2;
        byte[] bArr4 = new byte[length2];
        for (int i9 = 0; i9 < length2; i9++) {
            bArr4[i9] = (byte) (iArrN[i9 >>> 2] >>> ((i9 & 3) << 3));
        }
        return bArr4;
    }

    public static int[] n(byte[] bArr, boolean z) {
        int[] iArr;
        int length = (bArr.length & 3) == 0 ? bArr.length >>> 2 : (bArr.length >>> 2) + 1;
        if (z) {
            iArr = new int[length + 1];
            iArr[length] = bArr.length;
        } else {
            iArr = new int[length];
        }
        int length2 = bArr.length;
        for (int i = 0; i < length2; i++) {
            int i2 = i >>> 2;
            iArr[i2] = iArr[i2] | ((bArr[i] & 255) << ((i & 3) << 3));
        }
        return iArr;
    }

    public static String p(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir().getAbsolutePath());
        String str = File.separator;
        sb.append(str);
        sb.append(".qmt");
        sb.append(str);
        sb.append("truth2");
        sb.append(str);
        sb.append("data");
        sb.append(str);
        return sb.toString();
    }

    public static boolean q(String str, String str2) {
        File fileB;
        String strM = y4d.m(str2);
        return (strM == null || (fileB = i.b(str, y4d.v(strM))) == null || !fileB.exists()) ? false : true;
    }

    public static String s() {
        try {
            return new SimpleDateFormat("yyyyMMdd").format(new Date(System.currentTimeMillis()));
        } catch (Exception unused) {
            return "";
        }
    }

    public static String t() {
        try {
            return new SimpleDateFormat("yyyyMMddHHmmss").format(new Date(System.currentTimeMillis()));
        } catch (Exception unused) {
            return "";
        }
    }

    public final String o() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        return sb.toString();
    }

    public final String r() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.b);
        return sb.toString();
    }
}
