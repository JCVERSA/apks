package l5;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class a {
    private m5.b a(String[] strArr, String[] strArr2, float f10, m5.d dVar) {
        m5.b bVar = new m5.b();
        bVar.f66265d = strArr[9].replaceAll("\\{.*?\\}", "").replace("\n", "<br />").replace("\\N", "<br />");
        for (int i10 = 0; i10 < strArr2.length; i10++) {
            if (strArr2[i10].trim().equalsIgnoreCase("Style")) {
                m5.a aVar = (m5.a) dVar.f66273g.get(strArr[i10].trim());
                if (aVar != null) {
                    bVar.f66262a = aVar;
                } else {
                    dVar.f66276j += "undefined style: " + strArr[i10].trim() + "\n\n";
                }
            } else if (strArr2[i10].trim().equalsIgnoreCase("Start")) {
                try {
                    bVar.f66263b = new m5.c("h:mm:ss.cs", strArr[i10].trim());
                } catch (Throwable unused) {
                    bVar.f66263b = new m5.c("", "");
                }
            } else if (strArr2[i10].trim().equalsIgnoreCase("End")) {
                try {
                    bVar.f66264c = new m5.c("h:mm:ss.cs", strArr[i10].trim());
                } catch (Throwable unused2) {
                    bVar.f66264c = new m5.c("", "");
                }
            }
        }
        if (f10 != 100.0f && f10 > 0.0f) {
            m5.c cVar = bVar.f66263b;
            float f11 = f10 / 100.0f;
            cVar.f66266a = (int) (cVar.f66266a / f11);
            m5.c cVar2 = bVar.f66264c;
            cVar2.f66266a = (int) (cVar2.f66266a / f11);
        }
        return bVar;
    }

    private m5.a c(String[] strArr, String[] strArr2, int i10, boolean z10, String str) {
        String str2;
        String[] strArr3 = strArr;
        String[] strArr4 = strArr2;
        m5.a aVar = new m5.a(m5.a.a());
        if (strArr3.length == strArr4.length) {
            int i11 = 0;
            String str3 = str;
            while (i11 < strArr4.length) {
                if (strArr4[i11].trim().equalsIgnoreCase("Name")) {
                    aVar.f66253a = strArr3[i11].trim();
                } else if (strArr4[i11].trim().equalsIgnoreCase("Fontname")) {
                    aVar.f66254b = strArr3[i11].trim();
                } else if (strArr4[i11].trim().equalsIgnoreCase("Fontsize")) {
                    aVar.f66255c = strArr3[i11].trim();
                } else if (strArr4[i11].trim().equalsIgnoreCase("PrimaryColour")) {
                    String strTrim = strArr3[i11].trim();
                    if (z10) {
                        if (strTrim.startsWith("&H")) {
                            aVar.f66256d = m5.a.b("&HAABBGGRR", strTrim);
                        } else {
                            aVar.f66256d = m5.a.b("decimalCodedAABBGGRR", strTrim);
                        }
                    } else if (strTrim.startsWith("&H")) {
                        aVar.f66256d = m5.a.b("&HBBGGRR", strTrim);
                    } else {
                        aVar.f66256d = m5.a.b("decimalCodedBBGGRR", strTrim);
                    }
                } else if (strArr4[i11].trim().equalsIgnoreCase("BackColour")) {
                    String strTrim2 = strArr3[i11].trim();
                    if (z10) {
                        if (strTrim2.startsWith("&H")) {
                            aVar.f66257e = m5.a.b("&HAABBGGRR", strTrim2);
                        } else {
                            aVar.f66257e = m5.a.b("decimalCodedAABBGGRR", strTrim2);
                        }
                    } else if (strTrim2.startsWith("&H")) {
                        aVar.f66257e = m5.a.b("&HBBGGRR", strTrim2);
                    } else {
                        aVar.f66257e = m5.a.b("decimalCodedBBGGRR", strTrim2);
                    }
                } else if (strArr4[i11].trim().equalsIgnoreCase("Bold")) {
                    aVar.f66260h = Boolean.parseBoolean(strArr3[i11].trim());
                } else if (strArr4[i11].trim().equalsIgnoreCase("Italic")) {
                    aVar.f66259g = Boolean.parseBoolean(strArr3[i11].trim());
                } else if (strArr4[i11].trim().equalsIgnoreCase("Underline")) {
                    aVar.f66261i = Boolean.parseBoolean(strArr3[i11].trim());
                } else if (strArr4[i11].trim().equalsIgnoreCase("Alignment")) {
                    int i12 = Integer.parseInt(strArr3[i11].trim());
                    if (z10) {
                        switch (i12) {
                            case 1:
                                aVar.f66258f = "bottom-left";
                                continue;
                            case 2:
                                aVar.f66258f = "bottom-center";
                                continue;
                            case 3:
                                aVar.f66258f = "bottom-right";
                                continue;
                            case 4:
                                aVar.f66258f = "mid-left";
                                continue;
                            case 5:
                                aVar.f66258f = "mid-center";
                                continue;
                            case 6:
                                aVar.f66258f = "mid-right";
                                continue;
                            case 7:
                                aVar.f66258f = "top-left";
                                continue;
                            case 8:
                                aVar.f66258f = "top-center";
                                continue;
                            case 9:
                                aVar.f66258f = "top-right";
                                continue;
                            default:
                                str2 = str3 + "undefined alignment for style at line " + i10 + "\n\n";
                                break;
                        }
                        str3 = str2;
                    } else {
                        switch (i12) {
                            case 1:
                                aVar.f66258f = "mid-left";
                                continue;
                            case 2:
                                aVar.f66258f = "mid-center";
                                continue;
                            case 3:
                                aVar.f66258f = "mid-right";
                                continue;
                            case 4:
                            case 8:
                            default:
                                str2 = str3 + "undefined alignment for style at line " + i10 + "\n\n";
                                break;
                            case 5:
                                aVar.f66258f = "top-left";
                                continue;
                            case 6:
                                aVar.f66258f = "top-center";
                                continue;
                            case 7:
                                aVar.f66258f = "top-right";
                                continue;
                            case 9:
                                aVar.f66258f = "bottom-left";
                                continue;
                            case 10:
                                aVar.f66258f = "bottom-center";
                                continue;
                            case 11:
                                aVar.f66258f = "bottom-right";
                                continue;
                        }
                        str3 = str2;
                    }
                }
                i11++;
                strArr3 = strArr;
                strArr4 = strArr2;
            }
        }
        return aVar;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0314  */
    public m5.d b(String str, String str2, InputStream inputStream) throws IOException {
        String strTrim;
        m5.d dVar = new m5.d();
        dVar.f66271e = str;
        new m5.b();
        BufferedReader bufferedReader = new BufferedReader(TextUtils.isEmpty(str2) ? new InputStreamReader(inputStream) : new InputStreamReader(inputStream, str2));
        try {
            String line = bufferedReader.readLine();
            float f10 = 100.0f;
            boolean z10 = false;
            int i10 = 1;
            while (line != null) {
                String strTrim2 = line.trim();
                if (!strTrim2.startsWith("[")) {
                    line = bufferedReader.readLine();
                    i10++;
                } else if (strTrim2.equalsIgnoreCase("[Script info]")) {
                    i10++;
                    line = bufferedReader.readLine().trim();
                    while (!line.startsWith("[")) {
                        if (line.startsWith("Title:")) {
                            dVar.f66267a = line.split(":")[1].trim();
                        } else if (line.startsWith("Original Script:")) {
                            dVar.f66270d = line.split(":")[1].trim();
                        } else if (line.startsWith("Script Type:")) {
                            if (line.split(":")[1].trim().equalsIgnoreCase("v4.00+")) {
                                z10 = true;
                            } else if (!line.split(":")[1].trim().equalsIgnoreCase("v4.00")) {
                                dVar.f66276j += "Script version is older than 4.00, it may produce parsing errors.";
                            }
                        } else if (line.startsWith("Timer:")) {
                            f10 = Float.parseFloat(line.split(":")[1].trim().replace(',', '.'));
                        }
                        i10++;
                        line = bufferedReader.readLine().trim();
                    }
                } else {
                    if (!strTrim2.equalsIgnoreCase("[v4 Styles]")) {
                        try {
                            if (!strTrim2.equalsIgnoreCase("[v4 Styles+]") && !strTrim2.equalsIgnoreCase("[v4+ Styles]")) {
                                if (strTrim2.trim().equalsIgnoreCase("[Events]")) {
                                    int i11 = i10 + 1;
                                    String strTrim3 = bufferedReader.readLine().trim();
                                    dVar.f66276j += "Only dialogue events are considered, all other events are ignored.\n\n";
                                    if (!strTrim3.startsWith("Format:")) {
                                        dVar.f66276j += "Format: (format definition) expected at line " + strTrim3 + " for the events section\n\n";
                                        while (!strTrim3.startsWith("Format:")) {
                                            i11++;
                                            strTrim3 = bufferedReader.readLine().trim();
                                        }
                                    }
                                    String[] strArrSplit = strTrim3.split(":")[1].trim().split(",");
                                    i10 = i11 + 1;
                                    strTrim = bufferedReader.readLine().trim();
                                    while (!strTrim.startsWith("[")) {
                                        if (strTrim.startsWith("Dialogue:")) {
                                            m5.b bVarA = a(strTrim.split(":", 2)[1].trim().split(",", 10), strArrSplit, f10, dVar);
                                            int i12 = bVarA.f66263b.f66266a;
                                            while (dVar.f66275i.containsKey(Integer.valueOf(i12))) {
                                                i12++;
                                            }
                                            dVar.f66275i.put(Integer.valueOf(i12), bVarA);
                                        }
                                        i10++;
                                        strTrim = bufferedReader.readLine().trim();
                                    }
                                    line = strTrim;
                                } else if (strTrim2.trim().equalsIgnoreCase("[Fonts]") || strTrim2.trim().equalsIgnoreCase("[Graphics]")) {
                                    dVar.f66276j += "The section " + strTrim2.trim() + " is not supported for conversion, all information there will be lost.\n\n";
                                    line = bufferedReader.readLine().trim();
                                } else {
                                    dVar.f66276j += "Unrecognized section: " + strTrim2.trim() + " all information there is ignored.";
                                    line = bufferedReader.readLine().trim();
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                dVar.f66276j += "unexpected end of file, maybe last caption is not complete.\n\n";
                                th.printStackTrace();
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                dVar.f66279m = true;
                                return dVar;
                            } catch (Throwable th3) {
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                throw th3;
                            }
                        }
                    }
                    if (strTrim2.contains("+") && !z10) {
                        dVar.f66276j += "ScriptType should be set to v4:00+ in the [Script Info] section.\n\n";
                        z10 = true;
                    }
                    int i13 = i10 + 1;
                    String strTrim4 = bufferedReader.readLine().trim();
                    if (!strTrim4.startsWith("Format:")) {
                        dVar.f66276j += "Format: (format definition) expected at line " + strTrim4 + " for the styles section\n\n";
                        while (!strTrim4.startsWith("Format:")) {
                            i13++;
                            strTrim4 = bufferedReader.readLine().trim();
                        }
                    }
                    String[] strArrSplit2 = strTrim4.split(":")[1].trim().split(",");
                    i10 = i13 + 1;
                    strTrim = bufferedReader.readLine().trim();
                    while (!strTrim.startsWith("[")) {
                        if (strTrim.startsWith("Style:")) {
                            m5.a aVarC = c(strTrim.split(":")[1].trim().split(","), strArrSplit2, i10, z10, dVar.f66276j);
                            dVar.f66273g.put(aVarC.f66253a, aVarC);
                        }
                        i10++;
                        strTrim = bufferedReader.readLine().trim();
                    }
                    line = strTrim;
                }
            }
            dVar.a();
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Throwable th4) {
            th = th4;
        }
        dVar.f66279m = true;
        return dVar;
    }
}
