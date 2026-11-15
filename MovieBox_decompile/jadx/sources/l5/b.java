package l5;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class b {
    public m5.d a(String str, String str2, InputStream inputStream) throws IOException {
        boolean z10;
        m5.d dVar = new m5.d();
        m5.b bVar = new m5.b();
        BufferedReader bufferedReader = TextUtils.isEmpty(str2) ? new BufferedReader(new InputStreamReader(inputStream)) : new BufferedReader(new InputStreamReader(inputStream, str2));
        dVar.f66271e = str;
        int i10 = 0;
        for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
            try {
                String strTrim = line.trim();
                int i11 = i10 + 1;
                if (!strTrim.isEmpty()) {
                    i11 = i10 + 2;
                    try {
                        strTrim = bufferedReader.readLine().trim();
                        String strSubstring = strTrim.substring(0, 12);
                        String strSubstring2 = strTrim.substring(strTrim.length() - 12, strTrim.length());
                        bVar.f66263b = new m5.c("hh:mm:ss,ms", strSubstring);
                        bVar.f66264c = new m5.c("hh:mm:ss,ms", strSubstring2);
                        z10 = true;
                    } catch (Exception unused) {
                        dVar.f66276j += "incorrect time format at line " + i11;
                        z10 = false;
                    }
                    if (z10) {
                        int i12 = i10 + 3;
                        String line2 = bufferedReader.readLine();
                        strTrim = line2 != null ? line2.trim() : "";
                        String strSubstring3 = "";
                        while (!strTrim.isEmpty()) {
                            strSubstring3 = strSubstring3 + strTrim + "<br />";
                            String line3 = bufferedReader.readLine();
                            if (line3 != null) {
                                strTrim = line3.trim();
                                i12++;
                            } else {
                                strTrim = "";
                            }
                        }
                        if (strSubstring3.endsWith("<br />")) {
                            strSubstring3 = strSubstring3.substring(0, strSubstring3.length() - 6);
                        }
                        bVar.f66265d = strSubstring3;
                        int i13 = bVar.f66263b.f66266a;
                        while (dVar.f66275i.containsKey(Integer.valueOf(i13))) {
                            i13++;
                        }
                        if (i13 != bVar.f66263b.f66266a) {
                            dVar.f66276j += "caption with same start time found...\n\n";
                        }
                        dVar.f66275i.put(Integer.valueOf(i13), bVar);
                        i11 = i12;
                    }
                    while (!strTrim.isEmpty()) {
                        strTrim = bufferedReader.readLine().trim();
                        i11++;
                    }
                    bVar = new m5.b();
                }
                i10 = i11;
            } catch (Throwable th2) {
                try {
                    dVar.f66276j += "unexpected end of file, maybe last caption is not complete.\n\n";
                    th2.printStackTrace();
                    if (inputStream != null) {
                    }
                } catch (Throwable th3) {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th3;
                }
            }
        }
        if (inputStream != null) {
            inputStream.close();
        }
        dVar.f66279m = true;
        return dVar;
    }
}
