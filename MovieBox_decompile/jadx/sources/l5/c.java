package l5;

import com.avery.subtitle.exception.FatalParsingException;
import java.io.InputStream;

public class c {
    private void a(m5.d dVar) {
        m5.a aVar = new m5.a("white");
        aVar.f66256d = m5.a.b("name", "white");
        dVar.f66273g.put(aVar.f66253a, aVar);
        m5.a aVar2 = new m5.a("whiteU", aVar);
        aVar2.f66261i = true;
        dVar.f66273g.put(aVar2.f66253a, aVar2);
        m5.a aVar3 = new m5.a("whiteUI", aVar2);
        aVar3.f66259g = true;
        dVar.f66273g.put(aVar3.f66253a, aVar3);
        m5.a aVar4 = new m5.a("whiteI", aVar3);
        aVar4.f66261i = false;
        dVar.f66273g.put(aVar4.f66253a, aVar4);
        m5.a aVar5 = new m5.a("green");
        aVar5.f66256d = m5.a.b("name", "green");
        dVar.f66273g.put(aVar5.f66253a, aVar5);
        m5.a aVar6 = new m5.a("greenU", aVar5);
        aVar6.f66261i = true;
        dVar.f66273g.put(aVar6.f66253a, aVar6);
        m5.a aVar7 = new m5.a("greenUI", aVar6);
        aVar7.f66259g = true;
        dVar.f66273g.put(aVar7.f66253a, aVar7);
        m5.a aVar8 = new m5.a("greenI", aVar7);
        aVar8.f66261i = false;
        dVar.f66273g.put(aVar8.f66253a, aVar8);
        m5.a aVar9 = new m5.a("blue");
        aVar9.f66256d = m5.a.b("name", "blue");
        dVar.f66273g.put(aVar9.f66253a, aVar9);
        m5.a aVar10 = new m5.a("blueU", aVar9);
        aVar10.f66261i = true;
        dVar.f66273g.put(aVar10.f66253a, aVar10);
        m5.a aVar11 = new m5.a("blueUI", aVar10);
        aVar11.f66259g = true;
        dVar.f66273g.put(aVar11.f66253a, aVar11);
        m5.a aVar12 = new m5.a("blueI", aVar11);
        aVar12.f66261i = false;
        dVar.f66273g.put(aVar12.f66253a, aVar12);
        m5.a aVar13 = new m5.a("cyan");
        aVar13.f66256d = m5.a.b("name", "cyan");
        dVar.f66273g.put(aVar13.f66253a, aVar13);
        m5.a aVar14 = new m5.a("cyanU", aVar13);
        aVar14.f66261i = true;
        dVar.f66273g.put(aVar14.f66253a, aVar14);
        m5.a aVar15 = new m5.a("cyanUI", aVar14);
        aVar15.f66259g = true;
        dVar.f66273g.put(aVar15.f66253a, aVar15);
        m5.a aVar16 = new m5.a("cyanI", aVar15);
        aVar16.f66261i = false;
        dVar.f66273g.put(aVar16.f66253a, aVar16);
        m5.a aVar17 = new m5.a("red");
        aVar17.f66256d = m5.a.b("name", "red");
        dVar.f66273g.put(aVar17.f66253a, aVar17);
        m5.a aVar18 = new m5.a("redU", aVar17);
        aVar18.f66261i = true;
        dVar.f66273g.put(aVar18.f66253a, aVar18);
        m5.a aVar19 = new m5.a("redUI", aVar18);
        aVar19.f66259g = true;
        dVar.f66273g.put(aVar19.f66253a, aVar19);
        m5.a aVar20 = new m5.a("redI", aVar19);
        aVar20.f66261i = false;
        dVar.f66273g.put(aVar20.f66253a, aVar20);
        m5.a aVar21 = new m5.a("yellow");
        aVar21.f66256d = m5.a.b("name", "yellow");
        dVar.f66273g.put(aVar21.f66253a, aVar21);
        m5.a aVar22 = new m5.a("yellowU", aVar21);
        aVar22.f66261i = true;
        dVar.f66273g.put(aVar22.f66253a, aVar22);
        m5.a aVar23 = new m5.a("yellowUI", aVar22);
        aVar23.f66259g = true;
        dVar.f66273g.put(aVar23.f66253a, aVar23);
        m5.a aVar24 = new m5.a("yellowI", aVar23);
        aVar24.f66261i = false;
        dVar.f66273g.put(aVar24.f66253a, aVar24);
        m5.a aVar25 = new m5.a("magenta");
        aVar25.f66256d = m5.a.b("name", "magenta");
        dVar.f66273g.put(aVar25.f66253a, aVar25);
        m5.a aVar26 = new m5.a("magentaU", aVar25);
        aVar26.f66261i = true;
        dVar.f66273g.put(aVar26.f66253a, aVar26);
        m5.a aVar27 = new m5.a("magentaUI", aVar26);
        aVar27.f66259g = true;
        dVar.f66273g.put(aVar27.f66253a, aVar27);
        m5.a aVar28 = new m5.a("magentaI", aVar27);
        aVar28.f66261i = false;
        dVar.f66273g.put(aVar28.f66253a, aVar28);
        m5.a aVar29 = new m5.a("black");
        aVar29.f66256d = m5.a.b("name", "black");
        dVar.f66273g.put(aVar29.f66253a, aVar29);
        m5.a aVar30 = new m5.a("blackU", aVar29);
        aVar30.f66261i = true;
        dVar.f66273g.put(aVar30.f66253a, aVar30);
        m5.a aVar31 = new m5.a("blackUI", aVar30);
        aVar31.f66259g = true;
        dVar.f66273g.put(aVar31.f66253a, aVar31);
        m5.a aVar32 = new m5.a("blackI", aVar31);
        aVar32.f66261i = false;
        dVar.f66273g.put(aVar32.f66253a, aVar32);
    }

    private void c(m5.b bVar, byte[] bArr, int i10, m5.d dVar) {
        String str;
        m5.a aVar;
        String str2 = "white";
        String str3 = "";
        int length = 0;
        boolean z10 = false;
        boolean z11 = false;
        while (length < bArr.length) {
            byte b10 = bArr[length];
            if (b10 >= 0) {
                if (b10 < 32) {
                    int i11 = length + 1;
                    if (i11 < bArr.length && b10 == bArr[i11]) {
                        length = i11;
                    }
                    switch (bArr[length]) {
                        case 0:
                            str2 = "black";
                            break;
                        case 1:
                            str2 = "red";
                            break;
                        case 2:
                            str2 = "green";
                            break;
                        case 3:
                            str2 = "yellow";
                            break;
                        case 4:
                            str2 = "blue";
                            break;
                        case 5:
                            str2 = "magenta";
                            break;
                        case 6:
                            str2 = "cyan";
                            break;
                        case 7:
                            str2 = "white";
                            break;
                    }
                } else {
                    str3 = str3 + new String(new byte[]{b10});
                }
                length++;
            } else if (b10 <= -113) {
                int i12 = length + 1;
                if (i12 < bArr.length && b10 == bArr[i12]) {
                    length = i12;
                }
                byte b11 = bArr[length];
                if (b11 == -118) {
                    bVar.f66265d += str3 + "<br />";
                } else if (b11 != -113) {
                    switch (b11) {
                        case -128:
                            z11 = true;
                            break;
                        case -127:
                            z11 = false;
                            break;
                        case -126:
                            z10 = true;
                            break;
                        case -125:
                            z10 = false;
                            break;
                    }
                } else {
                    bVar.f66265d += str3;
                    if (z10) {
                        str2 = str2 + "U";
                    }
                    if (z11) {
                        str2 = str2 + "I";
                    }
                    m5.a aVar2 = (m5.a) dVar.f66273g.get(str2);
                    if (i10 == 1) {
                        str = str2 + "L";
                        if (dVar.f66273g.get(str) == null) {
                            aVar = new m5.a(str, aVar2);
                            aVar.f66258f = "bottom-left";
                            dVar.f66273g.put(str, aVar);
                            str2 = str;
                            aVar2 = aVar;
                        } else {
                            aVar2 = (m5.a) dVar.f66273g.get(str);
                            str2 = str;
                        }
                    } else if (i10 == 3) {
                        str = str2 + "R";
                        if (dVar.f66273g.get(str) == null) {
                            aVar = new m5.a(str, aVar2);
                            aVar.f66258f = "bottom-rigth";
                            dVar.f66273g.put(str, aVar);
                            str2 = str;
                            aVar2 = aVar;
                        } else {
                            aVar2 = (m5.a) dVar.f66273g.get(str);
                            str2 = str;
                        }
                    }
                    bVar.f66262a = aVar2;
                    int i13 = bVar.f66263b.f66266a;
                    while (dVar.f66275i.containsKey(Integer.valueOf(i13))) {
                        i13++;
                    }
                    dVar.f66275i.put(Integer.valueOf(i13), bVar);
                    length = bArr.length;
                }
                str3 = "";
            }
            length++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0264 A[Catch: Exception -> 0x0114, TryCatch #0 {Exception -> 0x0114, blocks: (B:3:0x0020, B:5:0x0029, B:10:0x00fe, B:16:0x0132, B:18:0x013a, B:20:0x0163, B:21:0x0168, B:23:0x0173, B:24:0x0190, B:28:0x0199, B:30:0x0202, B:32:0x0212, B:38:0x0264, B:39:0x0265, B:34:0x021e, B:41:0x0279, B:42:0x029e, B:13:0x0117, B:45:0x02a8, B:46:0x02af), top: B:49:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0265 A[SYNTHETIC] */
    public m5.d b(String str, String str2, InputStream inputStream) throws FatalParsingException {
        int i10;
        String str3;
        int i11;
        String str4;
        String str5;
        InputStream inputStream2 = inputStream;
        String str6 = "";
        m5.d dVar = new m5.d();
        dVar.f66271e = str;
        byte[] bArr = new byte[1024];
        byte[] bArr2 = new byte[128];
        try {
            a(dVar);
            if (inputStream2.read(bArr) < 1024) {
                throw new FatalParsingException("The file must contain at least a GSI block");
            }
            int i12 = Integer.parseInt(new String(new byte[]{bArr[6], bArr[7]}));
            int i13 = Integer.parseInt(new String(new byte[]{bArr[12], bArr[13]}));
            byte[] bArr3 = new byte[32];
            System.arraycopy(bArr, 16, bArr3, 0, 32);
            String str7 = new String(bArr3);
            byte[] bArr4 = new byte[32];
            System.arraycopy(bArr, 48, bArr4, 0, 32);
            String str8 = new String(bArr4);
            String str9 = "h:m:s:f/fps";
            int i14 = Integer.parseInt(new String(new byte[]{bArr[238], bArr[239], bArr[240], bArr[241], bArr[242]}));
            String str10 = "/";
            int i15 = i12;
            int i16 = Integer.parseInt(new String(new byte[]{bArr[243], bArr[244], bArr[245], bArr[246], bArr[247]}));
            dVar.f66267a = (str7.trim() + " " + str8.trim()).trim();
            if (i13 > 4 || i13 < 0) {
                dVar.f66276j += "Invalid Character Code table number, corrupt data? will try to parse anyways assuming it is latin.\n\n";
            } else if (i13 != 0) {
                dVar.f66276j += "Only latin alphabet supported for import from STL, other languages may produce unexpected results.\n\n";
            }
            m5.b bVar = null;
            int i17 = 0;
            boolean z10 = false;
            int i18 = 0;
            while (i17 < i14) {
                if (inputStream2.read(bArr2) < 128) {
                    dVar.f66276j += "Unexpected end of file, " + i17 + " blocks read, expecting " + i14 + " blocks in total.\n\n";
                    break;
                }
                if (!z10) {
                    bVar = new m5.b();
                }
                if (bArr2[1] + (bArr2[2] * 256) != i18) {
                    dVar.f66276j += "Unexpected subtitle number at TTI block " + i17 + ". Parsing proceeds...\n\n";
                }
                boolean z11 = bArr2[3] != -1;
                String str11 = str6 + ((int) bArr2[5]) + ":" + ((int) bArr2[6]) + ":" + ((int) bArr2[7]) + ":" + ((int) bArr2[8]);
                String str12 = str6 + ((int) bArr2[9]) + ":" + ((int) bArr2[10]) + ":" + ((int) bArr2[11]) + ":" + ((int) bArr2[12]);
                byte b10 = bArr2[14];
                if (bArr2[15] == 0) {
                    byte[] bArr5 = new byte[112];
                    i10 = i14;
                    str3 = str6;
                    System.arraycopy(bArr2, 16, bArr5, 0, 112);
                    if (z11) {
                        c(bVar, bArr5, b10, dVar);
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(str11);
                        str4 = str10;
                        sb2.append(str4);
                        i11 = i15;
                        sb2.append(i11);
                        str5 = str9;
                        bVar.f66263b = new m5.c(str5, sb2.toString());
                        bVar.f66264c = new m5.c(str5, str12 + str4 + i11);
                        c(bVar, bArr5, b10, dVar);
                    }
                    if (!z11) {
                        i18++;
                    }
                    i17++;
                    inputStream2 = inputStream;
                    str9 = str5;
                    str10 = str4;
                    z10 = z11;
                    i14 = i10;
                    bArr2 = bArr2;
                    i15 = i11;
                    str6 = str3;
                } else {
                    i10 = i14;
                    str3 = str6;
                }
                i11 = i15;
                str4 = str10;
                str5 = str9;
                if (!z11) {
                    i18++;
                }
                i17++;
                inputStream2 = inputStream;
                str9 = str5;
                str10 = str4;
                z10 = z11;
                i14 = i10;
                bArr2 = bArr2;
                i15 = i11;
                str6 = str3;
            }
            if (i18 != i16) {
                dVar.f66276j += "Number of parsed subtitles (" + i18 + ") different from expected number of subtitles (" + i16 + ").\n\n";
            }
            inputStream.close();
            dVar.a();
            dVar.f66279m = true;
            return dVar;
        } catch (Exception e10) {
            e10.printStackTrace();
            throw new FatalParsingException("Format error in the file, migth be due to corrupt data.\n" + e10.getMessage());
        }
    }
}
