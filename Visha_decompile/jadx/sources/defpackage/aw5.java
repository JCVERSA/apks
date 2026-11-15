package defpackage;

import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.blankj.utilcode.util.LogUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class aw5 {
    public static final Object a = new Object();

    public static void a(File file, File file2, pv5 pv5Var, String str) throws IOException {
        if (file == null || pv5Var == null || file2 == null || !file2.exists()) {
            LogUtils.m("M3U8Utils", "create local m3u8 failed invalid param");
            return;
        }
        if (r0a.g(str)) {
            str = frb.c(file.getAbsolutePath()) + "_" + System.currentTimeMillis() + "_local.m3u8";
        }
        File file3 = new File(file, str);
        if (file3.exists()) {
            file3.delete();
        }
        LogUtils.j("M3U8Utils", "create local m3u8 = " + file3.getAbsolutePath());
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file3, false));
        try {
            bufferedWriter.write("#EXTM3U\n");
            bufferedWriter.write("#EXT-X-VERSION:" + pv5Var.g() + "\n");
            bufferedWriter.write("#EXT-X-MEDIA-SEQUENCE:" + pv5Var.c() + "\n");
            bufferedWriter.write("#EXT-X-TARGETDURATION:" + pv5Var.e() + "\n");
            for (zv5 zv5Var : pv5Var.f()) {
                if (zv5Var.p()) {
                    String str2 = "file://" + file2.getAbsolutePath() + File.separator + zv5Var.f();
                    bufferedWriter.write("#EXT-X-MAP:" + (zv5Var.m() != null ? "URI=\"" + str2 + "\",BYTERANGE=\"" + zv5Var.m() + "\"" : "URI=\"" + str2 + "\"") + "\n");
                }
                if (zv5Var.q() && zv5Var.k() != null) {
                    String str3 = "METHOD=" + zv5Var.k();
                    if (zv5Var.i() != null) {
                        File file4 = new File("file://" + file2, zv5Var.j());
                        str3 = (zv5Var.s() || !file4.exists()) ? str3 + ",URI=\"" + zv5Var.i() + "\"" : str3 + ",URI=\"" + file4.getAbsolutePath() + "\"";
                    }
                    if (zv5Var.h() != null) {
                        str3 = str3 + ",IV=" + zv5Var.h();
                    }
                    bufferedWriter.write("#EXT-X-KEY:" + str3 + "\n");
                }
                if (zv5Var.o()) {
                    bufferedWriter.write("#EXT-X-DISCONTINUITY\n");
                }
                bufferedWriter.write("#EXTINF:" + zv5Var.d() + ",\n");
                bufferedWriter.write("file://" + file2.getAbsolutePath() + File.separator + zv5Var.e());
                bufferedWriter.newLine();
            }
            bufferedWriter.write("#EXT-X-ENDLIST");
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (Throwable th) {
            try {
                bufferedWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static void b(File file, pv5 pv5Var) throws IOException {
        File file2 = new File(file, "remote.m3u8");
        if (file2.exists()) {
            return;
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file2, false));
        try {
            bufferedWriter.write("#EXTM3U\n");
            bufferedWriter.write("#EXT-X-VERSION:" + pv5Var.g() + "\n");
            bufferedWriter.write("#EXT-X-MEDIA-SEQUENCE:" + pv5Var.c() + "\n");
            bufferedWriter.write("#EXT-X-TARGETDURATION:" + pv5Var.e() + "\n");
            for (zv5 zv5Var : pv5Var.f()) {
                if (zv5Var.p()) {
                    bufferedWriter.write("#EXT-X-MAP:" + (zv5Var.m() != null ? "URI=\"" + zv5Var.g() + "\",BYTERANGE=\"" + zv5Var.m() + "\"" : "URI=\"" + zv5Var.g() + "\"") + "\n");
                }
                if (zv5Var.q() && zv5Var.k() != null) {
                    String str = "METHOD=" + zv5Var.k();
                    if (zv5Var.i() != null) {
                        String strI = zv5Var.i();
                        str = str + ",URI=\"" + strI + "\"";
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new URL(strI).openStream()));
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            } else {
                                sb.append(line);
                            }
                        }
                        zv5Var.v(frb.j(sb.toString()));
                        FileOutputStream fileOutputStream = new FileOutputStream(new File(file, zv5Var.j()));
                        fileOutputStream.write(sb.toString().getBytes());
                        bufferedReader.close();
                        fileOutputStream.close();
                        if (zv5Var.h() != null) {
                            str = str + ",IV=" + zv5Var.h();
                        }
                    }
                    bufferedWriter.write("#EXT-X-KEY:" + str + "\n");
                }
                if (zv5Var.o()) {
                    bufferedWriter.write("#EXT-X-DISCONTINUITY\n");
                }
                bufferedWriter.write("#EXTINF:" + zv5Var.d() + ",\n");
                bufferedWriter.write(zv5Var.n());
                bufferedWriter.newLine();
            }
            bufferedWriter.write("#EXT-X-ENDLIST");
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (Throwable th) {
            try {
                bufferedWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf("/");
        return iLastIndexOf != -1 ? str.substring(0, iLastIndexOf + 1) : str;
    }

    public static String d(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            URL url = new URL(str);
            String host = url.getHost();
            if (host == null) {
                return str;
            }
            int iIndexOf = str.indexOf(host);
            if (iIndexOf != -1) {
                int port = url.getPort();
                if (port != -1) {
                    str = str.substring(0, iIndexOf + host.length()) + StringUtils.PROCESS_POSTFIX_DELIMITER + port + "/";
                } else {
                    str = str.substring(0, iIndexOf + host.length()) + "/";
                }
            }
        } catch (Exception unused) {
        }
        return str;
    }

    public static String e(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return "";
        }
        if (TextUtils.equals(str, str2)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        char[] charArray2 = str2.toCharArray();
        int i = 0;
        while (i < charArray.length && i < charArray2.length && charArray[i] == charArray2[i]) {
            i++;
        }
        return str.substring(0, i);
    }

    public static String f(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return "";
        }
        if (str.startsWith("file://") || str.startsWith("/")) {
            return str;
        }
        String strC = c(str);
        String strD = d(str);
        if (str2.startsWith("//")) {
            return h(str) + StringUtils.PROCESS_POSTFIX_DELIMITER + str2;
        }
        if (!str2.startsWith("/")) {
            if (str2.startsWith(ProxyConfig.MATCH_HTTP)) {
                return str2;
            }
            return strC + str2;
        }
        String strE = e(g(str), str2);
        if (strD.endsWith("/")) {
            strD = strD.substring(0, strD.length() - 1);
        }
        return strD + strE + str2.substring(strE.length());
    }

    public static String g(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String strD = d(str);
        return TextUtils.isEmpty(strD) ? str : str.substring(strD.length() - 1);
    }

    public static String h(String str) {
        int iIndexOf;
        return (TextUtils.isEmpty(str) || (iIndexOf = str.indexOf("://")) == -1) ? "" : str.substring(0, iIndexOf);
    }

    /* JADX WARN: Not initialized variable reg: 7, insn: 0x00d7: MOVE (r5 I:??[OBJECT, ARRAY]) = (r7 I:??[OBJECT, ARRAY]), block:B:42:0x00d6 */
    public static List i(String str, Map map, int i) {
        Throwable th;
        BufferedReader bufferedReader;
        Exception exc;
        BufferedReader bufferedReader2;
        IOException iOException;
        BufferedReader bufferedReader3;
        BufferedReader bufferedReader4;
        boolean z;
        sv5 sv5Var;
        zv5 zv5Var;
        String strM;
        synchronized (a) {
            BufferedReader bufferedReader5 = null;
            String strL = null;
            try {
                try {
                    try {
                        try {
                            try {
                                try {
                                    HttpURLConnection httpURLConnectionC = st4.c(str, map, frb.d().e());
                                    int responseCode = httpURLConnectionC.getResponseCode();
                                    LogUtils.j("M3U8Utils", "m3u8 parse responseCode=" + responseCode, "url=" + str);
                                    if (responseCode != 503 || i >= 10) {
                                        bufferedReader2 = new BufferedReader(new InputStreamReader(httpURLConnectionC.getInputStream()));
                                        try {
                                            pv5 pv5Var = new pv5(str);
                                            ArrayList arrayList = new ArrayList();
                                            String strL2 = null;
                                            String strF = null;
                                            String strF2 = null;
                                            String strL3 = null;
                                            sv5 sv5VarG = null;
                                            int i2 = 0;
                                            int i3 = 0;
                                            boolean z2 = false;
                                            int i4 = 0;
                                            float f = 0.0f;
                                            boolean z3 = false;
                                            boolean z4 = false;
                                            int i5 = 0;
                                            boolean z5 = false;
                                            boolean z6 = false;
                                            while (true) {
                                                String line = bufferedReader2.readLine();
                                                if (line == null) {
                                                    break;
                                                }
                                                String strTrim = line.trim();
                                                if (TextUtils.isEmpty(strTrim)) {
                                                    bufferedReader4 = bufferedReader2;
                                                    z2 = z2;
                                                } else {
                                                    z2 = z2;
                                                    if (!strTrim.startsWith("#EXT")) {
                                                        bufferedReader4 = bufferedReader2;
                                                        if (z3) {
                                                            eq5.c("M3U8Utils", "has streaminfo:" + strTrim);
                                                            sv5Var = sv5VarG;
                                                            if (sv5Var != null) {
                                                                z = true;
                                                                pv5Var.j(true);
                                                                sv5Var.q(f(str, strTrim));
                                                                arrayList.add(sv5Var);
                                                            } else {
                                                                z = true;
                                                            }
                                                        } else {
                                                            sv5Var = sv5VarG;
                                                            z = true;
                                                            if (Math.abs(f) >= 0.001f) {
                                                                zv5 zv5Var2 = new zv5();
                                                                int i6 = i4 + 1;
                                                                zv5Var2.r(f(str, strTrim), f, i5, i4, z4);
                                                                if (z5) {
                                                                    zv5Var = zv5Var2;
                                                                    zv5Var.w(strL2, strF, strL);
                                                                } else {
                                                                    zv5Var = zv5Var2;
                                                                }
                                                                if (z6) {
                                                                    zv5Var.u(strF2, strL3);
                                                                }
                                                                pv5Var.a(zv5Var);
                                                                i5++;
                                                                z2 = z2;
                                                                i4 = i6;
                                                                bufferedReader2 = bufferedReader4;
                                                                strL = null;
                                                                strL2 = null;
                                                                strF = null;
                                                                f = 0.0f;
                                                                z3 = false;
                                                                z4 = false;
                                                                z5 = false;
                                                                z6 = false;
                                                                strF2 = null;
                                                                strL3 = null;
                                                                sv5VarG = sv5Var;
                                                            }
                                                        }
                                                        sv5VarG = sv5Var;
                                                        z2 = z2;
                                                        bufferedReader2 = bufferedReader4;
                                                    } else if (strTrim.startsWith("#EXTINF")) {
                                                        try {
                                                            String strM2 = m(strTrim, rv5.b);
                                                            if (!TextUtils.isEmpty(strM2)) {
                                                                f = Float.parseFloat(strM2);
                                                            }
                                                        } catch (IOException e) {
                                                            iOException = e;
                                                        } catch (Exception e2) {
                                                            e = e2;
                                                            exc = e;
                                                            exc.printStackTrace();
                                                            frb.b(bufferedReader2);
                                                            return null;
                                                        }
                                                    } else if (strTrim.startsWith("#EXT-X-TARGETDURATION")) {
                                                        String strM3 = m(strTrim, rv5.a);
                                                        if (!TextUtils.isEmpty(strM3)) {
                                                            i2 = Integer.parseInt(strM3);
                                                        }
                                                    } else if (strTrim.startsWith("#EXT-X-VERSION")) {
                                                        String strM4 = m(strTrim, rv5.c);
                                                        if (!TextUtils.isEmpty(strM4)) {
                                                            i3 = Integer.parseInt(strM4);
                                                        }
                                                    } else if (strTrim.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                                                        String strM5 = m(strTrim, rv5.d);
                                                        if (!TextUtils.isEmpty(strM5)) {
                                                            i4 = Integer.parseInt(strM5);
                                                        }
                                                    } else if (strTrim.startsWith("#EXT-X-STREAM-INF")) {
                                                        pv5Var.j(true);
                                                        sv5VarG = sv5.g(str, strTrim);
                                                        z2 = z2;
                                                        z3 = true;
                                                    } else if (strTrim.startsWith("#EXT-X-DISCONTINUITY")) {
                                                        z2 = z2;
                                                        z4 = true;
                                                    } else if (strTrim.startsWith("#EXT-X-ENDLIST")) {
                                                        z2 = true;
                                                    } else if (strTrim.startsWith("#EXT-X-KEY")) {
                                                        strL2 = l(strTrim, rv5.e);
                                                        String strL4 = l(strTrim, rv5.f);
                                                        bufferedReader3 = bufferedReader2;
                                                        try {
                                                            if (!"NONE".equals(strL2)) {
                                                                strL = l(strTrim, rv5.h);
                                                                if (("identity".equals(strL4) || strL4 == null) && "AES-128".equals(strL2) && (strM = m(strTrim, rv5.g)) != null) {
                                                                    strF = f(str, strM);
                                                                }
                                                            }
                                                            z2 = z2;
                                                            bufferedReader2 = bufferedReader3;
                                                            z5 = true;
                                                        } catch (IOException e3) {
                                                            e = e3;
                                                        } catch (Exception e4) {
                                                            exc = e4;
                                                            bufferedReader2 = bufferedReader3;
                                                        } catch (Throwable th2) {
                                                            th = th2;
                                                            th = th;
                                                            bufferedReader5 = bufferedReader3;
                                                            frb.b(bufferedReader5);
                                                            throw th;
                                                        }
                                                    } else {
                                                        bufferedReader4 = bufferedReader2;
                                                        if (strTrim.startsWith("#EXT-X-MAP")) {
                                                            String strM6 = m(strTrim, rv5.g);
                                                            if (!TextUtils.isEmpty(strM6)) {
                                                                strF2 = f(str, strM6);
                                                                strL3 = l(strTrim, rv5.i);
                                                                z6 = true;
                                                            }
                                                            bufferedReader2 = bufferedReader4;
                                                        }
                                                    }
                                                }
                                                sv5Var = sv5VarG;
                                                z = true;
                                                sv5VarG = sv5Var;
                                                z2 = z2;
                                                bufferedReader2 = bufferedReader4;
                                                iOException = e;
                                                iOException.printStackTrace();
                                                throw iOException;
                                            }
                                            BufferedReader bufferedReader6 = bufferedReader2;
                                            pv5Var.m(i2);
                                            pv5Var.n(i3);
                                            pv5Var.k(i4);
                                            pv5Var.i(z2);
                                            if (arrayList.size() > 0) {
                                                for (int i7 = 0; i7 < arrayList.size(); i7++) {
                                                    StringBuilder sb = new StringBuilder();
                                                    sb.append("get media ts list:\n\r");
                                                    sb.append("media url:");
                                                    sb.append(((sv5) arrayList.get(i7)).d());
                                                    sb.append("\n\r");
                                                    pv5 pv5VarK = k(((sv5) arrayList.get(i7)).d(), map, i);
                                                    if (pv5VarK != null) {
                                                        sb.append("m3u8 ts count:");
                                                        sb.append(pv5VarK.f().size());
                                                        if (((sv5) arrayList.get(i7)).a() > 0) {
                                                            long jA = (long) ((((sv5) arrayList.get(i7)).a() * pv5VarK.b()) / 8.0f);
                                                            pv5VarK.l(jA);
                                                            sb.append("\n\rmedia m3u8 size:");
                                                            sb.append(i7c.e(jA));
                                                        } else if (((sv5) arrayList.get(i7)).b() > 0) {
                                                            long jB = (long) ((((sv5) arrayList.get(i7)).b() * pv5VarK.b()) / 8.0f);
                                                            pv5VarK.l(jB);
                                                            sb.append("\n\rmedia m3u8 size:");
                                                            sb.append(i7c.e(jB));
                                                        }
                                                        ((sv5) arrayList.get(i7)).s(pv5VarK);
                                                    } else {
                                                        sb.append("\n\r parse media ts failded");
                                                    }
                                                    LogUtils.j("M3U8Utils", sb);
                                                }
                                            } else {
                                                sv5 sv5Var2 = new sv5();
                                                sv5Var2.s(pv5Var);
                                                sv5Var2.q(str);
                                                arrayList.add(sv5Var2);
                                            }
                                            frb.b(bufferedReader6);
                                            return arrayList;
                                        } catch (IOException e5) {
                                            e = e5;
                                            bufferedReader3 = bufferedReader2;
                                        } catch (Exception e6) {
                                            e = e6;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            bufferedReader3 = bufferedReader2;
                                        }
                                    } else {
                                        try {
                                            List listI = i(str, map, i + 1);
                                            frb.b(null);
                                            return listI;
                                        } catch (IOException e7) {
                                            e = e7;
                                            iOException = e;
                                            iOException.printStackTrace();
                                            throw iOException;
                                        } catch (Exception e8) {
                                            exc = e8;
                                            bufferedReader2 = null;
                                        }
                                    }
                                } catch (IOException e9) {
                                    iOException = e9;
                                }
                            } catch (IOException e10) {
                                e = e10;
                            }
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (Exception e11) {
                    exc = e11;
                    bufferedReader2 = null;
                } catch (Throwable th6) {
                    th = th6;
                    bufferedReader5 = null;
                }
                exc.printStackTrace();
                frb.b(bufferedReader2);
                return null;
            } catch (Throwable th7) {
                th = th7;
                bufferedReader5 = bufferedReader;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:58:0x0124 A[PHI: r4
      0x0124: PHI (r4v5 java.lang.String) = (r4v2 java.lang.String), (r4v8 java.lang.String) binds: [B:52:0x0108, B:54:0x0114] A[DONT_GENERATE, DONT_INLINE]] */
    public static pv5 j(File file) throws Throwable {
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        String line;
        InputStreamReader inputStreamReader2;
        BufferedReader bufferedReader2;
        try {
            InputStreamReader inputStreamReader3 = new InputStreamReader(new FileInputStream(file));
            try {
                bufferedReader = new BufferedReader(inputStreamReader3);
                try {
                    pv5 pv5Var = new pv5();
                    String strL = null;
                    String strM = null;
                    int i = 0;
                    int i2 = 0;
                    String str = null;
                    String strM2 = null;
                    float f = 0.0f;
                    String strL2 = null;
                    int i3 = 0;
                    boolean z = false;
                    int i4 = 0;
                    while (true) {
                        boolean z2 = false;
                        boolean z3 = false;
                        while (true) {
                            line = bufferedReader.readLine();
                            if (line == null) {
                                inputStreamReader2 = inputStreamReader3;
                                bufferedReader2 = bufferedReader;
                                pv5Var.m(i);
                                pv5Var.n(i2);
                                pv5Var.k(i3);
                                frb.b(inputStreamReader2);
                                frb.b(bufferedReader2);
                                return pv5Var;
                            }
                            str = str;
                            if (line.startsWith("#EXT")) {
                                try {
                                    if (line.startsWith("#EXTINF")) {
                                        String strM3 = m(line, rv5.b);
                                        if (!TextUtils.isEmpty(strM3)) {
                                            f = Float.parseFloat(strM3);
                                        }
                                    } else if (line.startsWith("#EXT-X-TARGETDURATION")) {
                                        String strM4 = m(line, rv5.a);
                                        if (!TextUtils.isEmpty(strM4)) {
                                            i = Integer.parseInt(strM4);
                                        }
                                    } else if (line.startsWith("#EXT-X-VERSION")) {
                                        String strM5 = m(line, rv5.c);
                                        if (!TextUtils.isEmpty(strM5)) {
                                            i2 = Integer.parseInt(strM5);
                                        }
                                    } else if (line.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                                        String strM6 = m(line, rv5.d);
                                        if (!TextUtils.isEmpty(strM6)) {
                                            i3 = Integer.parseInt(strM6);
                                        }
                                    } else if (line.startsWith("#EXT-X-DISCONTINUITY")) {
                                        str = str;
                                        z = true;
                                    } else if (line.startsWith("#EXT-X-KEY")) {
                                        strL2 = l(line, rv5.e);
                                        String strL3 = l(line, rv5.f);
                                        if ("NONE".equals(strL2)) {
                                            str = str;
                                        } else {
                                            String strL4 = l(line, rv5.h);
                                            String str2 = strM2;
                                            if (("identity".equals(strL3) || strL3 == null) && "AES-128".equals(strL2)) {
                                                strM2 = m(line, rv5.g);
                                                str = strL4;
                                            } else {
                                                str = strL4;
                                                strM2 = str2;
                                            }
                                        }
                                        z2 = true;
                                    } else {
                                        String str3 = strM2;
                                        if (line.startsWith("#EXT-X-MAP")) {
                                            strM = m(line, rv5.g);
                                            if (!TextUtils.isEmpty(strM)) {
                                                strL = l(line, rv5.i);
                                                z3 = true;
                                            }
                                        }
                                        strM2 = str3;
                                    }
                                    str = str;
                                } catch (IOException e) {
                                    e = e;
                                    inputStreamReader = inputStreamReader3;
                                } catch (Throwable th) {
                                    th = th;
                                    inputStreamReader = inputStreamReader3;
                                    frb.b(inputStreamReader);
                                    frb.b(bufferedReader);
                                    throw th;
                                }
                            }
                            try {
                                e.printStackTrace();
                                throw e;
                            } catch (Throwable th2) {
                                th = th2;
                                frb.b(inputStreamReader);
                                frb.b(bufferedReader);
                                throw th;
                            }
                        }
                        String str4 = strM2;
                        zv5 zv5Var = new zv5();
                        int i5 = i3 + 1;
                        bufferedReader2 = bufferedReader;
                        inputStreamReader2 = inputStreamReader3;
                        int i6 = i2;
                        String str5 = strL2;
                        try {
                            zv5Var.r(line, f, i4, i3, z);
                            if (z2) {
                                zv5Var.w(str5, str4, str);
                            }
                            if (z3) {
                                zv5Var.u(strM, strL);
                            }
                            pv5Var.a(zv5Var);
                            i4++;
                            inputStreamReader3 = inputStreamReader2;
                            i3 = i5;
                            i2 = i6;
                            bufferedReader = bufferedReader2;
                            strL = null;
                            strM = null;
                            str = null;
                            strM2 = null;
                            f = 0.0f;
                            strL2 = null;
                            z = false;
                        } catch (IOException e2) {
                            e = e2;
                            inputStreamReader = inputStreamReader2;
                            bufferedReader = bufferedReader2;
                        } catch (Throwable th3) {
                            th = th3;
                            inputStreamReader = inputStreamReader2;
                            bufferedReader = bufferedReader2;
                            frb.b(inputStreamReader);
                            frb.b(bufferedReader);
                            throw th;
                        }
                    }
                } catch (IOException e3) {
                    e = e3;
                    inputStreamReader = inputStreamReader3;
                } catch (Throwable th4) {
                    th = th4;
                    inputStreamReader = inputStreamReader3;
                }
            } catch (IOException e4) {
                e = e4;
                inputStreamReader = inputStreamReader3;
                bufferedReader = null;
            } catch (Throwable th5) {
                th = th5;
                inputStreamReader = inputStreamReader3;
                bufferedReader = null;
                frb.b(inputStreamReader);
                frb.b(bufferedReader);
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            inputStreamReader = null;
        } catch (Throwable th6) {
            th = th6;
            inputStreamReader = null;
        }
    }

    /* JADX WARN: Not initialized variable reg: 6, insn: 0x00ab: MOVE (r4 I:??[OBJECT, ARRAY]) = (r6 I:??[OBJECT, ARRAY]), block:B:34:0x00ab */
    public static pv5 k(String str, Map map, int i) throws Throwable {
        Closeable closeable;
        BufferedReader bufferedReader;
        pv5 pv5Var;
        int i2;
        String strM;
        String str2 = str;
        Closeable closeable2 = null;
        String strF = null;
        try {
            try {
                try {
                    try {
                        try {
                            HttpURLConnection httpURLConnectionC = st4.c(str2, map, frb.d().e());
                            int responseCode = httpURLConnectionC.getResponseCode();
                            eq5.c("M3U8Utils", "parseNetworkM3U8Info responseCode=" + responseCode);
                            if (responseCode != 503 || i >= 10) {
                                bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnectionC.getInputStream()));
                                try {
                                    pv5 pv5Var2 = new pv5(str2);
                                    String strL = null;
                                    String strF2 = null;
                                    String str3 = null;
                                    String strL2 = null;
                                    int i3 = 0;
                                    boolean z = false;
                                    boolean z2 = false;
                                    float f = 0.0f;
                                    int i4 = 0;
                                    boolean z3 = false;
                                    int i5 = 0;
                                    boolean z4 = false;
                                    boolean z5 = false;
                                    int i6 = 0;
                                    while (true) {
                                        String line = bufferedReader.readLine();
                                        if (line == null) {
                                            pv5 pv5Var3 = pv5Var2;
                                            pv5Var3.m(i3);
                                            pv5Var3.n(i6);
                                            pv5Var3.k(i4);
                                            pv5Var3.i(z2);
                                            frb.b(bufferedReader);
                                            return pv5Var3;
                                        }
                                        boolean z6 = z2;
                                        String strTrim = line.trim();
                                        if (TextUtils.isEmpty(strTrim)) {
                                            pv5Var = pv5Var2;
                                            i2 = i3;
                                        } else {
                                            i2 = i3;
                                            if (strTrim.startsWith("#EXT")) {
                                                if (strTrim.startsWith("#EXTINF")) {
                                                    String strM2 = m(strTrim, rv5.b);
                                                    if (!TextUtils.isEmpty(strM2)) {
                                                        f = Float.parseFloat(strM2);
                                                    }
                                                } else if (strTrim.startsWith("#EXT-X-TARGETDURATION")) {
                                                    String strM3 = m(strTrim, rv5.a);
                                                    i3 = !TextUtils.isEmpty(strM3) ? Integer.parseInt(strM3) : i2;
                                                    z2 = z6;
                                                } else if (strTrim.startsWith("#EXT-X-VERSION")) {
                                                    String strM4 = m(strTrim, rv5.c);
                                                    if (!TextUtils.isEmpty(strM4)) {
                                                        i6 = Integer.parseInt(strM4);
                                                    }
                                                } else if (strTrim.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                                                    String strM5 = m(strTrim, rv5.d);
                                                    if (!TextUtils.isEmpty(strM5)) {
                                                        i4 = Integer.parseInt(strM5);
                                                    }
                                                } else if (strTrim.startsWith("#EXT-X-STREAM-INF")) {
                                                    z2 = z6;
                                                    i3 = i2;
                                                    z = true;
                                                } else if (strTrim.startsWith("#EXT-X-DISCONTINUITY")) {
                                                    z2 = z6;
                                                    i3 = i2;
                                                    z3 = true;
                                                } else if (strTrim.startsWith("#EXT-X-ENDLIST")) {
                                                    i3 = i2;
                                                    z2 = true;
                                                } else if (strTrim.startsWith("#EXT-X-KEY")) {
                                                    strL = l(strTrim, rv5.e);
                                                    String strL3 = l(strTrim, rv5.f);
                                                    pv5 pv5Var4 = pv5Var2;
                                                    if (!"NONE".equals(strL)) {
                                                        String strL4 = l(strTrim, rv5.h);
                                                        if (("identity".equals(strL3) || strL3 == null) && "AES-128".equals(strL) && (strM = m(strTrim, rv5.g)) != null) {
                                                            strF2 = f(str2, strM);
                                                        }
                                                        str3 = strL4;
                                                    }
                                                    z2 = z6;
                                                    i3 = i2;
                                                    pv5Var2 = pv5Var4;
                                                    z4 = true;
                                                } else {
                                                    pv5Var = pv5Var2;
                                                    if (strTrim.startsWith("#EXT-X-MAP")) {
                                                        String strM6 = m(strTrim, rv5.g);
                                                        if (!TextUtils.isEmpty(strM6)) {
                                                            strF = f(str2, strM6);
                                                            strL2 = l(strTrim, rv5.i);
                                                            z5 = true;
                                                        }
                                                    }
                                                    z2 = z6;
                                                    i3 = i2;
                                                    pv5Var2 = pv5Var;
                                                }
                                                z2 = z6;
                                                i3 = i2;
                                            } else {
                                                pv5Var = pv5Var2;
                                                if (z) {
                                                    eq5.c("M3U8Utils", "has streaminfo");
                                                    pv5 pv5VarK = k(f(str2, strTrim), map, i);
                                                    frb.b(bufferedReader);
                                                    return pv5VarK;
                                                }
                                                if (Math.abs(f) >= 0.001f) {
                                                    zv5 zv5Var = new zv5();
                                                    int i7 = i4 + 1;
                                                    zv5Var.r(f(str2, strTrim), f, i5, i4, z3);
                                                    if (z4) {
                                                        zv5Var.w(strL, strF2, str3);
                                                    }
                                                    if (z5) {
                                                        zv5Var.u(strF, strL2);
                                                    }
                                                    pv5Var.a(zv5Var);
                                                    i5++;
                                                    z2 = z6;
                                                    pv5Var2 = pv5Var;
                                                    i4 = i7;
                                                    i3 = i2;
                                                    strF = null;
                                                    strL = null;
                                                    strF2 = null;
                                                    str3 = null;
                                                    strL2 = null;
                                                    z = false;
                                                    f = 0.0f;
                                                    z3 = false;
                                                    z4 = false;
                                                    z5 = false;
                                                    str2 = str;
                                                }
                                            }
                                        }
                                        z2 = z6;
                                        i3 = i2;
                                        pv5Var2 = pv5Var;
                                    }
                                } catch (IOException e) {
                                    e = e;
                                } catch (Exception e2) {
                                    e = e2;
                                    e.printStackTrace();
                                    frb.b(bufferedReader);
                                    return null;
                                }
                            } else {
                                try {
                                    pv5 pv5VarK2 = k(str2, map, i + 1);
                                    frb.b(null);
                                    return pv5VarK2;
                                } catch (IOException e3) {
                                    e = e3;
                                } catch (Exception e4) {
                                    e = e4;
                                    bufferedReader = null;
                                    e.printStackTrace();
                                    frb.b(bufferedReader);
                                    return null;
                                }
                            }
                        } catch (IOException e5) {
                            e = e5;
                        }
                    } catch (IOException e6) {
                        e = e6;
                    }
                } catch (Throwable th) {
                    th = th;
                    frb.b(closeable2);
                    throw th;
                }
            } catch (Exception e7) {
                e = e7;
                bufferedReader = null;
            } catch (Throwable th2) {
                th = th2;
                closeable2 = null;
                frb.b(closeable2);
                throw th;
            }
            e.printStackTrace();
            throw e;
        } catch (Throwable th3) {
            th = th3;
            closeable2 = closeable;
        }
    }

    public static String l(String str, Pattern pattern) {
        if (pattern == null) {
            return null;
        }
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    public static String m(String str, Pattern pattern) {
        if (pattern == null) {
            return null;
        }
        Matcher matcher = pattern.matcher(str);
        if (matcher.find() && matcher.groupCount() == 1) {
            return matcher.group(1);
        }
        return null;
    }
}
