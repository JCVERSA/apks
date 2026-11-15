package defpackage;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;

public class p44 {
    public zna a(String str, InputStream inputStream) throws Throwable {
        boolean z;
        zna znaVar = new zna();
        m2a m2aVar = new m2a();
        vfb vfbVar = new vfb(new FileInputStream(str), null);
        String strB = vfbVar.b();
        try {
            try {
                BufferedReader bufferedReader = new BufferedReader(strB == null ? new InputStreamReader(vfbVar) : new InputStreamReader(vfbVar, strB));
                try {
                    znaVar.e = str;
                    int i = 1;
                    int i2 = 0;
                    for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                        String strTrim = line.trim();
                        int i3 = i2 + 1;
                        if (!strTrim.isEmpty()) {
                            try {
                                String str2 = new String(strTrim.getBytes("GB2312"), "UTF8");
                                try {
                                    strTrim = str2.startsWith("?") ? str2.replace("?", "") : str2;
                                    Integer.parseInt(strTrim);
                                    i++;
                                    z = true;
                                } catch (Exception unused) {
                                    strTrim = str2;
                                    znaVar.j += i + " expected at line " + i3;
                                    znaVar.j += "\n skipping to next line\n\n";
                                    z = false;
                                }
                            } catch (Exception unused2) {
                            }
                            if (z) {
                                i3 = i2 + 2;
                                try {
                                    strTrim = bufferedReader.readLine().trim();
                                    String strSubstring = strTrim.substring(0, 12);
                                    String strSubstring2 = strTrim.substring(strTrim.length() - 12, strTrim.length());
                                    m2aVar.b = new nna("hh:mm:ss,ms", strSubstring);
                                    m2aVar.c = new nna("hh:mm:ss,ms", strSubstring2);
                                } catch (Exception unused3) {
                                    znaVar.j += "incorrect time format at line " + i3;
                                    z = false;
                                }
                            }
                            if (z) {
                                i3++;
                                strTrim = bufferedReader.readLine().trim();
                                String str3 = "";
                                while (!strTrim.isEmpty()) {
                                    str3 = str3 + strTrim + "<br />";
                                    strTrim = bufferedReader.readLine().trim();
                                    i3++;
                                }
                                m2aVar.d = str3;
                                int i4 = m2aVar.b.a;
                                while (znaVar.i.containsKey(Integer.valueOf(i4))) {
                                    i4++;
                                }
                                if (i4 != m2aVar.b.a) {
                                    znaVar.j += "caption with same start time found...\n\n";
                                }
                                znaVar.i.put(Integer.valueOf(i4), m2aVar);
                            }
                            while (!strTrim.isEmpty()) {
                                strTrim = bufferedReader.readLine().trim();
                                i3++;
                            }
                            m2aVar = new m2a();
                        }
                        i2 = i3;
                    }
                    bufferedReader.close();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (NullPointerException unused4) {
                znaVar.j += "unexpected end of file, maybe last caption is not complete.\n\n";
                if (inputStream != null) {
                }
            }
            znaVar.m = true;
            return znaVar;
        } catch (Throwable th3) {
            if (inputStream != null) {
                inputStream.close();
            }
            throw th3;
        }
    }
}
