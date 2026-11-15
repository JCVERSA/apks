package defpackage;

import androidx.media3.common.C;
import com.google.android.gms.internal.ads.zzfww;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;

public abstract class ife {
    /* JADX WARN: Code duplicated, block: B:127:0x025c A[Catch: all -> 0x004c, TryCatch #0 {all -> 0x004c, blocks: (B:9:0x0035, B:11:0x0040, B:14:0x004f, B:17:0x005b, B:20:0x0068, B:23:0x0077, B:26:0x0084, B:29:0x0092, B:31:0x009c, B:39:0x00b7, B:40:0x00cd, B:41:0x00e0, B:44:0x00ec, B:47:0x00f9, B:50:0x0106, B:53:0x0113, B:56:0x0120, B:59:0x012d, B:62:0x013a, B:64:0x0144, B:66:0x014e, B:68:0x0158, B:72:0x0169, B:74:0x016f, B:76:0x0183, B:77:0x018a, B:79:0x0191, B:84:0x019c, B:89:0x01a8, B:127:0x025c, B:90:0x01bd, B:92:0x01c4, B:94:0x01ce, B:95:0x01e2, B:108:0x020e, B:111:0x021b, B:114:0x0227, B:117:0x0233, B:120:0x023f, B:123:0x024b, B:126:0x0255, B:128:0x0275, B:129:0x027c), top: B:134:0x0027 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:127:0x025c, please report this as an issue */
    public static iqe a(u4h u4hVar) {
        String str;
        int iW = u4hVar.w() + u4hVar.A();
        int iA = u4hVar.A();
        int i = (iA >> 24) & 255;
        iqe iqeVarE = null;
        try {
            if (i == 169 || i == 253) {
                int i2 = iA & 16777215;
                if (i2 == 6516084) {
                    int iA2 = u4hVar.A();
                    if (u4hVar.A() == 1684108385) {
                        u4hVar.m(8);
                        String strA = u4hVar.a(iA2 - 16);
                        iqeVarE = new xce(C.LANGUAGE_UNDETERMINED, strA, strA);
                    } else {
                        zrg.f("MetadataUtil", "Failed to parse comment attribute: ".concat(rlh.a(iA)));
                    }
                } else if (i2 == 7233901 || i2 == 7631467) {
                    iqeVarE = e(iA, "TIT2", u4hVar);
                } else if (i2 == 6516589 || i2 == 7828084) {
                    iqeVarE = e(iA, "TCOM", u4hVar);
                } else if (i2 == 6578553) {
                    iqeVarE = e(iA, ID3v24Frames.FRAME_ID_YEAR, u4hVar);
                } else if (i2 == 4280916) {
                    iqeVarE = e(iA, "TPE1", u4hVar);
                } else if (i2 == 7630703) {
                    iqeVarE = e(iA, "TSSE", u4hVar);
                } else if (i2 == 6384738) {
                    iqeVarE = e(iA, "TALB", u4hVar);
                } else if (i2 == 7108978) {
                    iqeVarE = e(iA, "USLT", u4hVar);
                } else if (i2 == 6776174) {
                    iqeVarE = e(iA, "TCON", u4hVar);
                } else if (i2 == 6779504) {
                    iqeVarE = e(iA, "TIT1", u4hVar);
                } else {
                    zrg.b("MetadataUtil", "Skipped unknown metadata entry: " + rlh.a(iA));
                }
            } else if (iA == 1735291493) {
                String strA2 = dde.a(b(u4hVar) - 1);
                if (strA2 != null) {
                    iqeVarE = new hde("TCON", null, zzfww.zzo(strA2));
                } else {
                    zrg.f("MetadataUtil", "Failed to parse standard genre code");
                }
            } else if (iA == 1684632427) {
                iqeVarE = d(1684632427, "TPOS", u4hVar);
            } else if (iA == 1953655662) {
                iqeVarE = d(1953655662, "TRCK", u4hVar);
            } else if (iA == 1953329263) {
                iqeVarE = c(1953329263, "TBPM", u4hVar, true, false);
            } else if (iA == 1668311404) {
                iqeVarE = c(1668311404, "TCMP", u4hVar, true, true);
            } else if (iA == 1668249202) {
                int iA3 = u4hVar.A();
                if (u4hVar.A() == 1684108385) {
                    int iA4 = u4hVar.A();
                    byte[] bArr = afe.a;
                    int i3 = iA4 & 16777215;
                    if (i3 == 13) {
                        str = "image/jpeg";
                    } else if (i3 == 14) {
                        str = "image/png";
                        i3 = 14;
                    } else {
                        str = null;
                    }
                    if (str == null) {
                        zrg.f("MetadataUtil", "Unrecognized cover art flags: " + i3);
                    } else {
                        u4hVar.m(4);
                        int i4 = iA3 - 16;
                        byte[] bArr2 = new byte[i4];
                        u4hVar.h(bArr2, 0, i4);
                        iqeVarE = new tce(str, null, 3, bArr2);
                    }
                } else {
                    zrg.f("MetadataUtil", "Failed to parse cover art attribute");
                }
            } else if (iA == 1631670868) {
                iqeVarE = e(1631670868, "TPE2", u4hVar);
            } else if (iA == 1936682605) {
                iqeVarE = e(1936682605, "TSOT", u4hVar);
            } else if (iA == 1936679276) {
                iqeVarE = e(1936679276, "TSOA", u4hVar);
            } else if (iA == 1936679282) {
                iqeVarE = e(1936679282, "TSOP", u4hVar);
            } else if (iA == 1936679265) {
                iqeVarE = e(1936679265, "TSO2", u4hVar);
            } else if (iA == 1936679791) {
                iqeVarE = e(1936679791, "TSOC", u4hVar);
            } else if (iA == 1920233063) {
                iqeVarE = c(1920233063, "ITUNESADVISORY", u4hVar, false, false);
            } else if (iA == 1885823344) {
                iqeVarE = c(1885823344, "ITUNESGAPLESS", u4hVar, false, true);
            } else if (iA == 1936683886) {
                iqeVarE = e(1936683886, "TVSHOWSORT", u4hVar);
            } else if (iA == 1953919848) {
                iqeVarE = e(1953919848, "TVSHOW", u4hVar);
            } else if (iA == 757935405) {
                int i5 = -1;
                int i6 = -1;
                String strA3 = null;
                String strA4 = null;
                while (u4hVar.w() < iW) {
                    int iW2 = u4hVar.w();
                    int iA5 = u4hVar.A();
                    int iA6 = u4hVar.A();
                    u4hVar.m(4);
                    if (iA6 == 1835360622) {
                        strA3 = u4hVar.a(iA5 - 12);
                    } else {
                        int i7 = iA5 - 12;
                        if (iA6 == 1851878757) {
                            strA4 = u4hVar.a(i7);
                        } else {
                            if (iA6 == 1684108385) {
                                i6 = iA5;
                            }
                            if (iA6 == 1684108385) {
                                i5 = iW2;
                            }
                            u4hVar.m(i7);
                        }
                    }
                }
                if (strA3 != null && strA4 != null && i5 != -1) {
                    u4hVar.l(i5);
                    u4hVar.m(16);
                    iqeVarE = new ede(strA3, strA4, u4hVar.a(i6 - 16));
                }
            } else {
                zrg.b("MetadataUtil", "Skipped unknown metadata entry: " + rlh.a(iA));
            }
            u4hVar.l(iW);
            return iqeVarE;
        } catch (Throwable th) {
            u4hVar.l(iW);
            throw th;
        }
    }

    public static int b(u4h u4hVar) {
        int iA = u4hVar.A();
        if (u4hVar.A() == 1684108385) {
            u4hVar.m(8);
            int i = iA - 16;
            if (i == 1) {
                return u4hVar.G();
            }
            if (i == 2) {
                return u4hVar.K();
            }
            if (i == 3) {
                return u4hVar.I();
            }
            if (i == 4 && (u4hVar.z() & 128) == 0) {
                return u4hVar.J();
            }
        }
        zrg.f("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    public static cde c(int i, String str, u4h u4hVar, boolean z, boolean z2) {
        int iB = b(u4hVar);
        if (z2) {
            iB = Math.min(1, iB);
        }
        if (iB >= 0) {
            return z ? new hde(str, null, zzfww.zzo(Integer.toString(iB))) : new xce(C.LANGUAGE_UNDETERMINED, str, Integer.toString(iB));
        }
        zrg.f("MetadataUtil", "Failed to parse uint8 attribute: ".concat(rlh.a(i)));
        return null;
    }

    public static hde d(int i, String str, u4h u4hVar) {
        int iA = u4hVar.A();
        if (u4hVar.A() == 1684108385 && iA >= 22) {
            u4hVar.m(10);
            int iK = u4hVar.K();
            if (iK > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(iK);
                String string = sb.toString();
                int iK2 = u4hVar.K();
                if (iK2 > 0) {
                    string = string + "/" + iK2;
                }
                return new hde(str, null, zzfww.zzo(string));
            }
        }
        zrg.f("MetadataUtil", "Failed to parse index/count attribute: ".concat(rlh.a(i)));
        return null;
    }

    public static hde e(int i, String str, u4h u4hVar) {
        int iA = u4hVar.A();
        if (u4hVar.A() == 1684108385) {
            u4hVar.m(8);
            return new hde(str, null, zzfww.zzo(u4hVar.a(iA - 16)));
        }
        zrg.f("MetadataUtil", "Failed to parse text attribute: ".concat(rlh.a(i)));
        return null;
    }
}
