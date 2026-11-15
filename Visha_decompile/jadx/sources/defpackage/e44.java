package defpackage;

import androidx.media3.effect.DebugTraceUtil;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.slf4j.Marker;

public class e44 {
    public final m2a a(String[] strArr, String[] strArr2, float f, zna znaVar) {
        m2a m2aVar = new m2a();
        m2aVar.d = strArr[9].replaceAll("\\{.*?\\}", "").replace("\n", "<br />").replace("\\N", "<br />");
        for (int i = 0; i < strArr2.length; i++) {
            if ("Style".equalsIgnoreCase(strArr2[i].trim())) {
                p1a p1aVar = (p1a) znaVar.g.get(strArr[i].trim());
                if (p1aVar != null) {
                    m2aVar.a = p1aVar;
                } else {
                    znaVar.j += "undefined style: " + strArr[i].trim() + "\n\n";
                }
            } else if (DebugTraceUtil.EVENT_START.equalsIgnoreCase(strArr2[i].trim())) {
                m2aVar.b = new nna("h:mm:ss.cs", strArr[i].trim());
            } else if ("End".equalsIgnoreCase(strArr2[i].trim())) {
                m2aVar.c = new nna("h:mm:ss.cs", strArr[i].trim());
            }
        }
        if (f != 100.0f) {
            nna nnaVar = m2aVar.b;
            float f2 = f / 100.0f;
            nnaVar.a = (int) (nnaVar.a / f2);
            nna nnaVar2 = m2aVar.c;
            nnaVar2.a = (int) (nnaVar2.a / f2);
        }
        return m2aVar;
    }

    public zna b(String str, InputStream inputStream) throws IOException {
        String strTrim;
        zna znaVar = new zna();
        znaVar.e = str;
        new m2a();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        try {
            try {
                String line = bufferedReader.readLine();
                float f = 100.0f;
                boolean z = false;
                int i = 1;
                while (line != null) {
                    String strTrim2 = line.trim();
                    if (!strTrim2.startsWith("[")) {
                        line = bufferedReader.readLine();
                        i++;
                    } else if ("[Script info]".equalsIgnoreCase(strTrim2)) {
                        i++;
                        line = bufferedReader.readLine().trim();
                        while (!line.startsWith("[")) {
                            if (line.startsWith("Title:")) {
                                znaVar.a = line.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1].trim();
                            } else if (line.startsWith("Original Script:")) {
                                znaVar.d = line.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1].trim();
                            } else if (line.startsWith("Script Type:")) {
                                if ("v4.00+".equalsIgnoreCase(line.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1].trim())) {
                                    z = true;
                                } else if (!"v4.00".equalsIgnoreCase(line.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1].trim())) {
                                    znaVar.j += "Script version is older than 4.00, it may produce parsing errors.";
                                }
                            } else if (line.startsWith("Timer:")) {
                                f = Float.parseFloat(line.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1].trim().replace(',', '.'));
                            }
                            i++;
                            line = bufferedReader.readLine().trim();
                        }
                    } else if ("[v4 Styles]".equalsIgnoreCase(strTrim2) || "[v4 Styles+]".equalsIgnoreCase(strTrim2) || "[v4+ Styles]".equalsIgnoreCase(strTrim2)) {
                        if (strTrim2.contains(Marker.ANY_NON_NULL_MARKER) && !z) {
                            znaVar.j += "ScriptType should be set to v4:00+ in the [Script Info] section.\n\n";
                            z = true;
                        }
                        int i2 = i + 1;
                        String strTrim3 = bufferedReader.readLine().trim();
                        if (!strTrim3.startsWith("Format:")) {
                            znaVar.j += "Format: (format definition) expected at line " + strTrim3 + " for the styles section\n\n";
                            while (!strTrim3.startsWith("Format:")) {
                                i2++;
                                strTrim3 = bufferedReader.readLine().trim();
                            }
                        }
                        String[] strArrSplit = strTrim3.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1].trim().split(StringUtils.COMMA);
                        i = i2 + 1;
                        strTrim = bufferedReader.readLine().trim();
                        while (!strTrim.startsWith("[")) {
                            if (strTrim.startsWith("Style:")) {
                                p1a p1aVarC = c(strTrim.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1].trim().split(StringUtils.COMMA), strArrSplit, i, z, znaVar.j);
                                znaVar.g.put(p1aVarC.a, p1aVarC);
                            }
                            i++;
                            strTrim = bufferedReader.readLine().trim();
                        }
                        line = strTrim;
                    } else if ("[Events]".equalsIgnoreCase(strTrim2.trim())) {
                        int i3 = i + 1;
                        String strTrim4 = bufferedReader.readLine().trim();
                        znaVar.j += "Only dialogue events are considered, all other events are ignored.\n\n";
                        if (!strTrim4.startsWith("Format:")) {
                            znaVar.j += "Format: (format definition) expected at line " + strTrim4 + " for the events section\n\n";
                            while (!strTrim4.startsWith("Format:")) {
                                i3++;
                                strTrim4 = bufferedReader.readLine().trim();
                            }
                        }
                        String[] strArrSplit2 = strTrim4.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1].trim().split(StringUtils.COMMA);
                        i = i3 + 1;
                        strTrim = bufferedReader.readLine().trim();
                        while (!strTrim.startsWith("[")) {
                            if (strTrim.startsWith("Dialogue:")) {
                                m2a m2aVarA = a(strTrim.split(StringUtils.PROCESS_POSTFIX_DELIMITER, 2)[1].trim().split(StringUtils.COMMA, 10), strArrSplit2, f, znaVar);
                                int i4 = m2aVarA.b.a;
                                while (znaVar.i.containsKey(Integer.valueOf(i4))) {
                                    i4++;
                                }
                                znaVar.i.put(Integer.valueOf(i4), m2aVarA);
                            }
                            i++;
                            strTrim = bufferedReader.readLine().trim();
                        }
                        line = strTrim;
                    } else if ("[Fonts]".equalsIgnoreCase(strTrim2.trim()) || "[Graphics]".equalsIgnoreCase(strTrim2.trim())) {
                        znaVar.j += "The section " + strTrim2.trim() + " is not supported for conversion, all information there will be lost.\n\n";
                        line = bufferedReader.readLine().trim();
                    } else {
                        znaVar.j += "Unrecognized section: " + strTrim2.trim() + " all information there is ignored.";
                        line = bufferedReader.readLine().trim();
                    }
                }
                znaVar.a();
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (NullPointerException unused) {
                znaVar.j += "unexpected end of file, maybe last caption is not complete.\n\n";
                if (inputStream != null) {
                }
            }
            znaVar.m = true;
            return znaVar;
        } catch (Throwable th) {
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    public final p1a c(String[] strArr, String[] strArr2, int i, boolean z, String str) {
        String str2;
        String[] strArr3 = strArr;
        String[] strArr4 = strArr2;
        p1a p1aVar = new p1a(p1a.a());
        if (strArr3.length == strArr4.length) {
            int i2 = 0;
            String str3 = str;
            while (i2 < strArr4.length) {
                if ("Name".equalsIgnoreCase(strArr4[i2].trim())) {
                    p1aVar.a = strArr3[i2].trim();
                } else if ("Fontname".equalsIgnoreCase(strArr4[i2].trim())) {
                    p1aVar.b = strArr3[i2].trim();
                } else if ("Fontsize".equalsIgnoreCase(strArr4[i2].trim())) {
                    p1aVar.c = strArr3[i2].trim();
                } else if ("PrimaryColour".equalsIgnoreCase(strArr4[i2].trim())) {
                    String strTrim = strArr3[i2].trim();
                    if (z) {
                        if (strTrim.startsWith("&H")) {
                            p1aVar.d = p1a.b("&HAABBGGRR", strTrim);
                        } else {
                            p1aVar.d = p1a.b("decimalCodedAABBGGRR", strTrim);
                        }
                    } else if (strTrim.startsWith("&H")) {
                        p1aVar.d = p1a.b("&HBBGGRR", strTrim);
                    } else {
                        p1aVar.d = p1a.b("decimalCodedBBGGRR", strTrim);
                    }
                } else if ("BackColour".equalsIgnoreCase(strArr4[i2].trim())) {
                    String strTrim2 = strArr3[i2].trim();
                    if (z) {
                        if (strTrim2.startsWith("&H")) {
                            p1aVar.e = p1a.b("&HAABBGGRR", strTrim2);
                        } else {
                            p1aVar.e = p1a.b("decimalCodedAABBGGRR", strTrim2);
                        }
                    } else if (strTrim2.startsWith("&H")) {
                        p1aVar.e = p1a.b("&HBBGGRR", strTrim2);
                    } else {
                        p1aVar.e = p1a.b("decimalCodedBBGGRR", strTrim2);
                    }
                } else if ("Bold".equalsIgnoreCase(strArr4[i2].trim())) {
                    p1aVar.h = Boolean.parseBoolean(strArr3[i2].trim());
                } else if ("Italic".equalsIgnoreCase(strArr4[i2].trim())) {
                    p1aVar.g = Boolean.parseBoolean(strArr3[i2].trim());
                } else if ("Underline".equalsIgnoreCase(strArr4[i2].trim())) {
                    p1aVar.i = Boolean.parseBoolean(strArr3[i2].trim());
                } else if ("Alignment".equalsIgnoreCase(strArr4[i2].trim())) {
                    int i3 = Integer.parseInt(strArr3[i2].trim());
                    if (z) {
                        switch (i3) {
                            case 1:
                                p1aVar.f = "bottom-left";
                                continue;
                            case 2:
                                p1aVar.f = "bottom-center";
                                continue;
                            case 3:
                                p1aVar.f = "bottom-right";
                                continue;
                            case 4:
                                p1aVar.f = "mid-left";
                                continue;
                            case 5:
                                p1aVar.f = "mid-center";
                                continue;
                            case 6:
                                p1aVar.f = "mid-right";
                                continue;
                            case 7:
                                p1aVar.f = "top-left";
                                continue;
                            case 8:
                                p1aVar.f = "top-center";
                                continue;
                            case 9:
                                p1aVar.f = "top-right";
                                continue;
                            default:
                                str2 = str3 + "undefined alignment for style at line " + i + "\n\n";
                                break;
                        }
                        str3 = str2;
                    } else {
                        switch (i3) {
                            case 1:
                                p1aVar.f = "mid-left";
                                continue;
                            case 2:
                                p1aVar.f = "mid-center";
                                continue;
                            case 3:
                                p1aVar.f = "mid-right";
                                continue;
                            case 4:
                            case 8:
                            default:
                                str2 = str3 + "undefined alignment for style at line " + i + "\n\n";
                                break;
                            case 5:
                                p1aVar.f = "top-left";
                                continue;
                            case 6:
                                p1aVar.f = "top-center";
                                continue;
                            case 7:
                                p1aVar.f = "top-right";
                                continue;
                            case 9:
                                p1aVar.f = "bottom-left";
                                continue;
                            case 10:
                                p1aVar.f = "bottom-center";
                                continue;
                            case 11:
                                p1aVar.f = "bottom-right";
                                continue;
                        }
                        str3 = str2;
                    }
                }
                i2++;
                strArr3 = strArr;
                strArr4 = strArr2;
            }
        }
        return p1aVar;
    }
}
