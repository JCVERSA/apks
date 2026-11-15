package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.C;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTXXX;

final class q01 {

    @VisibleForTesting
    static final String[] a = {"Blues", "Classic Rock", FrameBodyTXXX.COUNTRY, "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    @Nullable
    private static tq a(int i, ag1 ag1Var) {
        int iH = ag1Var.h();
        if (ag1Var.h() == 1684108385) {
            ag1Var.f(8);
            String strB = ag1Var.b(iH - 16);
            return new tq(C.LANGUAGE_UNDETERMINED, strB, strB);
        }
        et0.d("MetadataUtil", "Failed to parse comment attribute: " + kh.a(i));
        return null;
    }

    @Nullable
    private static t42 b(int i, ag1 ag1Var, String str) {
        int iH = ag1Var.h();
        if (ag1Var.h() == 1684108385) {
            ag1Var.f(8);
            return new t42(str, null, ag1Var.b(iH - 16));
        }
        et0.d("MetadataUtil", "Failed to parse text attribute: " + kh.a(i));
        return null;
    }

    @Nullable
    private static he a(ag1 ag1Var) {
        String str;
        int iH = ag1Var.h();
        if (ag1Var.h() == 1684108385) {
            int iH2 = ag1Var.h() & 16777215;
            if (iH2 == 13) {
                str = "image/jpeg";
            } else {
                str = iH2 == 14 ? "image/png" : null;
            }
            if (str == null) {
                xr0.a("Unrecognized cover art flags: ", iH2, "MetadataUtil");
                return null;
            }
            ag1Var.f(4);
            int i = iH - 16;
            byte[] bArr = new byte[i];
            ag1Var.a(bArr, 0, i);
            return new he(str, null, 3, bArr);
        }
        et0.d("MetadataUtil", "Failed to parse cover art attribute");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0054  */
    @Nullable
    public static ti0 b(ag1 ag1Var) {
        String str;
        int iH = ag1Var.h() + ag1Var.d();
        int iH2 = ag1Var.h();
        int i = (iH2 >> 24) & 255;
        ti0 qp0Var = null;
        try {
            if (i == 169 || i == 253) {
                int i2 = 16777215 & iH2;
                if (i2 == 6516084) {
                    tq tqVarA = a(iH2, ag1Var);
                    ag1Var.e(iH);
                    return tqVarA;
                }
                if (i2 == 7233901 || i2 == 7631467) {
                    t42 t42VarB = b(iH2, ag1Var, "TIT2");
                    ag1Var.e(iH);
                    return t42VarB;
                }
                if (i2 == 6516589 || i2 == 7828084) {
                    t42 t42VarB2 = b(iH2, ag1Var, "TCOM");
                    ag1Var.e(iH);
                    return t42VarB2;
                }
                if (i2 == 6578553) {
                    t42 t42VarB3 = b(iH2, ag1Var, ID3v24Frames.FRAME_ID_YEAR);
                    ag1Var.e(iH);
                    return t42VarB3;
                }
                if (i2 == 4280916) {
                    t42 t42VarB4 = b(iH2, ag1Var, "TPE1");
                    ag1Var.e(iH);
                    return t42VarB4;
                }
                if (i2 == 7630703) {
                    t42 t42VarB5 = b(iH2, ag1Var, "TSSE");
                    ag1Var.e(iH);
                    return t42VarB5;
                }
                if (i2 == 6384738) {
                    t42 t42VarB6 = b(iH2, ag1Var, "TALB");
                    ag1Var.e(iH);
                    return t42VarB6;
                }
                if (i2 == 7108978) {
                    t42 t42VarB7 = b(iH2, ag1Var, "USLT");
                    ag1Var.e(iH);
                    return t42VarB7;
                }
                if (i2 == 6776174) {
                    t42 t42VarB8 = b(iH2, ag1Var, "TCON");
                    ag1Var.e(iH);
                    return t42VarB8;
                }
                if (i2 == 6779504) {
                    t42 t42VarB9 = b(iH2, ag1Var, "TIT1");
                    ag1Var.e(iH);
                    return t42VarB9;
                }
            } else {
                int iT = -1;
                if (iH2 == 1735291493) {
                    ag1Var.f(4);
                    if (ag1Var.h() == 1684108385) {
                        ag1Var.f(8);
                        iT = ag1Var.t();
                    } else {
                        et0.d("MetadataUtil", "Failed to parse uint8 attribute value");
                    }
                    if (iT > 0) {
                        String[] strArr = a;
                        if (iT <= 192) {
                            str = strArr[iT - 1];
                        } else {
                            str = null;
                        }
                    } else {
                        str = null;
                    }
                    if (str != null) {
                        qp0Var = new t42("TCON", null, str);
                    } else {
                        et0.d("MetadataUtil", "Failed to parse standard genre code");
                    }
                    ag1Var.e(iH);
                    return qp0Var;
                }
                if (iH2 == 1684632427) {
                    t42 t42VarA = a(iH2, ag1Var, "TPOS");
                    ag1Var.e(iH);
                    return t42VarA;
                }
                if (iH2 == 1953655662) {
                    t42 t42VarA2 = a(iH2, ag1Var, "TRCK");
                    ag1Var.e(iH);
                    return t42VarA2;
                }
                if (iH2 == 1953329263) {
                    ti0 ti0VarA = a(iH2, "TBPM", ag1Var, true, false);
                    ag1Var.e(iH);
                    return ti0VarA;
                }
                if (iH2 == 1668311404) {
                    ti0 ti0VarA2 = a(iH2, "TCMP", ag1Var, true, true);
                    ag1Var.e(iH);
                    return ti0VarA2;
                }
                if (iH2 == 1668249202) {
                    he heVarA = a(ag1Var);
                    ag1Var.e(iH);
                    return heVarA;
                }
                if (iH2 == 1631670868) {
                    t42 t42VarB10 = b(iH2, ag1Var, "TPE2");
                    ag1Var.e(iH);
                    return t42VarB10;
                }
                if (iH2 == 1936682605) {
                    t42 t42VarB11 = b(iH2, ag1Var, "TSOT");
                    ag1Var.e(iH);
                    return t42VarB11;
                }
                if (iH2 == 1936679276) {
                    t42 t42VarB12 = b(iH2, ag1Var, "TSO2");
                    ag1Var.e(iH);
                    return t42VarB12;
                }
                if (iH2 == 1936679282) {
                    t42 t42VarB13 = b(iH2, ag1Var, "TSOA");
                    ag1Var.e(iH);
                    return t42VarB13;
                }
                if (iH2 == 1936679265) {
                    t42 t42VarB14 = b(iH2, ag1Var, "TSOP");
                    ag1Var.e(iH);
                    return t42VarB14;
                }
                if (iH2 == 1936679791) {
                    t42 t42VarB15 = b(iH2, ag1Var, "TSOC");
                    ag1Var.e(iH);
                    return t42VarB15;
                }
                if (iH2 == 1920233063) {
                    ti0 ti0VarA3 = a(iH2, "ITUNESADVISORY", ag1Var, false, false);
                    ag1Var.e(iH);
                    return ti0VarA3;
                }
                if (iH2 == 1885823344) {
                    ti0 ti0VarA4 = a(iH2, "ITUNESGAPLESS", ag1Var, false, true);
                    ag1Var.e(iH);
                    return ti0VarA4;
                }
                if (iH2 == 1936683886) {
                    t42 t42VarB16 = b(iH2, ag1Var, "TVSHOWSORT");
                    ag1Var.e(iH);
                    return t42VarB16;
                }
                if (iH2 == 1953919848) {
                    t42 t42VarB17 = b(iH2, ag1Var, "TVSHOW");
                    ag1Var.e(iH);
                    return t42VarB17;
                }
                if (iH2 == 757935405) {
                    String strB = null;
                    String strB2 = null;
                    int i3 = -1;
                    int i4 = -1;
                    while (ag1Var.d() < iH) {
                        int iD = ag1Var.d();
                        int iH3 = ag1Var.h();
                        int iH4 = ag1Var.h();
                        ag1Var.f(4);
                        if (iH4 == 1835360622) {
                            strB = ag1Var.b(iH3 - 12);
                        } else if (iH4 == 1851878757) {
                            strB2 = ag1Var.b(iH3 - 12);
                        } else {
                            if (iH4 == 1684108385) {
                                i3 = iD;
                                i4 = iH3;
                            }
                            ag1Var.f(iH3 - 12);
                        }
                    }
                    if (strB != null && strB2 != null && i3 != -1) {
                        ag1Var.e(i3);
                        ag1Var.f(16);
                        qp0Var = new qp0(strB, strB2, ag1Var.b(i4 - 16));
                    }
                    ag1Var.e(iH);
                    return qp0Var;
                }
            }
            et0.a("MetadataUtil", "Skipped unknown metadata entry: " + kh.a(iH2));
            ag1Var.e(iH);
            return null;
        } catch (Throwable th) {
            ag1Var.e(iH);
            throw th;
        }
    }

    @Nullable
    private static t42 a(int i, ag1 ag1Var, String str) {
        int iH = ag1Var.h();
        if (ag1Var.h() == 1684108385 && iH >= 22) {
            ag1Var.f(10);
            int iZ = ag1Var.z();
            if (iZ > 0) {
                String strA = oe.a("", iZ);
                int iZ2 = ag1Var.z();
                if (iZ2 > 0) {
                    strA = strA + "/" + iZ2;
                }
                return new t42(str, null, strA);
            }
        }
        et0.d("MetadataUtil", "Failed to parse index/count attribute: " + kh.a(i));
        return null;
    }

    @Nullable
    private static ti0 a(int i, String str, ag1 ag1Var, boolean z, boolean z2) {
        int iMin;
        ag1Var.f(4);
        if (ag1Var.h() == 1684108385) {
            ag1Var.f(8);
            iMin = ag1Var.t();
        } else {
            et0.d("MetadataUtil", "Failed to parse uint8 attribute value");
            iMin = -1;
        }
        if (z2) {
            iMin = Math.min(1, iMin);
        }
        if (iMin >= 0) {
            if (z) {
                return new t42(str, null, Integer.toString(iMin));
            }
            return new tq(C.LANGUAGE_UNDETERMINED, str, Integer.toString(iMin));
        }
        et0.d("MetadataUtil", "Failed to parse uint8 attribute: " + kh.a(i));
        return null;
    }
}
