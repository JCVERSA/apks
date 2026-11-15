package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;
import com.transsion.audiotagger.tag.id3.framebody.FrameBodyTXXX;

public abstract class go6 {
    public static final String[] a = {"Blues", "Classic Rock", FrameBodyTXXX.COUNTRY, "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    public static CommentFrame a(int i, qw7 qw7Var) {
        int iN = qw7Var.n();
        if (qw7Var.n() == 1684108385) {
            qw7Var.P(8);
            String strX = qw7Var.x(iN - 16);
            return new CommentFrame(C.LANGUAGE_UNDETERMINED, strX, strX);
        }
        op5.i("MetadataUtil", "Failed to parse comment attribute: " + xk.a(i));
        return null;
    }

    public static ApicFrame b(qw7 qw7Var) {
        String str;
        int iN = qw7Var.n();
        if (qw7Var.n() != 1684108385) {
            op5.i("MetadataUtil", "Failed to parse cover art attribute");
            return null;
        }
        int iB = xk.b(qw7Var.n());
        if (iB == 13) {
            str = "image/jpeg";
        } else {
            str = iB == 14 ? "image/png" : null;
        }
        if (str == null) {
            op5.i("MetadataUtil", "Unrecognized cover art flags: " + iB);
            return null;
        }
        qw7Var.P(4);
        int i = iN - 16;
        byte[] bArr = new byte[i];
        qw7Var.j(bArr, 0, i);
        return new ApicFrame(str, null, 3, bArr);
    }

    public static Metadata.Entry c(qw7 qw7Var) {
        int iE = qw7Var.e() + qw7Var.n();
        int iN = qw7Var.n();
        int i = (iN >> 24) & 255;
        try {
            if (i == 169 || i == 253) {
                int i2 = 16777215 & iN;
                if (i2 == 6516084) {
                    CommentFrame commentFrameA = a(iN, qw7Var);
                    qw7Var.O(iE);
                    return commentFrameA;
                }
                if (i2 == 7233901 || i2 == 7631467) {
                    TextInformationFrame textInformationFrameH = h(iN, "TIT2", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH;
                }
                if (i2 == 6516589 || i2 == 7828084) {
                    TextInformationFrame textInformationFrameH2 = h(iN, "TCOM", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH2;
                }
                if (i2 == 6578553) {
                    TextInformationFrame textInformationFrameH3 = h(iN, ID3v24Frames.FRAME_ID_YEAR, qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH3;
                }
                if (i2 == 4280916) {
                    TextInformationFrame textInformationFrameH4 = h(iN, "TPE1", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH4;
                }
                if (i2 == 7630703) {
                    TextInformationFrame textInformationFrameH5 = h(iN, "TSSE", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH5;
                }
                if (i2 == 6384738) {
                    TextInformationFrame textInformationFrameH6 = h(iN, "TALB", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH6;
                }
                if (i2 == 7108978) {
                    TextInformationFrame textInformationFrameH7 = h(iN, "USLT", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH7;
                }
                if (i2 == 6776174) {
                    TextInformationFrame textInformationFrameH8 = h(iN, "TCON", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH8;
                }
                if (i2 == 6779504) {
                    TextInformationFrame textInformationFrameH9 = h(iN, "TIT1", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH9;
                }
            } else {
                if (iN == 1735291493) {
                    TextInformationFrame textInformationFrameG = g(qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameG;
                }
                if (iN == 1684632427) {
                    TextInformationFrame textInformationFrameD = d(iN, "TPOS", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameD;
                }
                if (iN == 1953655662) {
                    TextInformationFrame textInformationFrameD2 = d(iN, "TRCK", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameD2;
                }
                if (iN == 1953329263) {
                    Id3Frame id3FrameI = i(iN, "TBPM", qw7Var, true, false);
                    qw7Var.O(iE);
                    return id3FrameI;
                }
                if (iN == 1668311404) {
                    Id3Frame id3FrameI2 = i(iN, "TCMP", qw7Var, true, true);
                    qw7Var.O(iE);
                    return id3FrameI2;
                }
                if (iN == 1668249202) {
                    ApicFrame apicFrameB = b(qw7Var);
                    qw7Var.O(iE);
                    return apicFrameB;
                }
                if (iN == 1631670868) {
                    TextInformationFrame textInformationFrameH10 = h(iN, "TPE2", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH10;
                }
                if (iN == 1936682605) {
                    TextInformationFrame textInformationFrameH11 = h(iN, "TSOT", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH11;
                }
                if (iN == 1936679276) {
                    TextInformationFrame textInformationFrameH12 = h(iN, "TSO2", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH12;
                }
                if (iN == 1936679282) {
                    TextInformationFrame textInformationFrameH13 = h(iN, "TSOA", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH13;
                }
                if (iN == 1936679265) {
                    TextInformationFrame textInformationFrameH14 = h(iN, "TSOP", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH14;
                }
                if (iN == 1936679791) {
                    TextInformationFrame textInformationFrameH15 = h(iN, "TSOC", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH15;
                }
                if (iN == 1920233063) {
                    Id3Frame id3FrameI3 = i(iN, "ITUNESADVISORY", qw7Var, false, false);
                    qw7Var.O(iE);
                    return id3FrameI3;
                }
                if (iN == 1885823344) {
                    Id3Frame id3FrameI4 = i(iN, "ITUNESGAPLESS", qw7Var, false, true);
                    qw7Var.O(iE);
                    return id3FrameI4;
                }
                if (iN == 1936683886) {
                    TextInformationFrame textInformationFrameH16 = h(iN, "TVSHOWSORT", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH16;
                }
                if (iN == 1953919848) {
                    TextInformationFrame textInformationFrameH17 = h(iN, "TVSHOW", qw7Var);
                    qw7Var.O(iE);
                    return textInformationFrameH17;
                }
                if (iN == 757935405) {
                    Id3Frame id3FrameE = e(qw7Var, iE);
                    qw7Var.O(iE);
                    return id3FrameE;
                }
            }
            op5.b("MetadataUtil", "Skipped unknown metadata entry: " + xk.a(iN));
            qw7Var.O(iE);
            return null;
        } catch (Throwable th) {
            qw7Var.O(iE);
            throw th;
        }
    }

    public static TextInformationFrame d(int i, String str, qw7 qw7Var) {
        int iN = qw7Var.n();
        if (qw7Var.n() == 1684108385 && iN >= 22) {
            qw7Var.P(10);
            int I = qw7Var.I();
            if (I > 0) {
                String str2 = "" + I;
                int I2 = qw7Var.I();
                if (I2 > 0) {
                    str2 = str2 + "/" + I2;
                }
                return new TextInformationFrame(str, null, str2);
            }
        }
        op5.i("MetadataUtil", "Failed to parse index/count attribute: " + xk.a(i));
        return null;
    }

    public static Id3Frame e(qw7 qw7Var, int i) {
        String strX = null;
        String strX2 = null;
        int i2 = -1;
        int i3 = -1;
        while (qw7Var.e() < i) {
            int iE = qw7Var.e();
            int iN = qw7Var.n();
            int iN2 = qw7Var.n();
            qw7Var.P(4);
            if (iN2 == 1835360622) {
                strX = qw7Var.x(iN - 12);
            } else if (iN2 == 1851878757) {
                strX2 = qw7Var.x(iN - 12);
            } else {
                if (iN2 == 1684108385) {
                    i2 = iE;
                    i3 = iN;
                }
                qw7Var.P(iN - 12);
            }
        }
        if (strX == null || strX2 == null || i2 == -1) {
            return null;
        }
        qw7Var.O(i2);
        qw7Var.P(16);
        return new InternalFrame(strX, strX2, qw7Var.x(i3 - 16));
    }

    public static MdtaMetadataEntry f(qw7 qw7Var, int i, String str) {
        while (true) {
            int iE = qw7Var.e();
            if (iE >= i) {
                return null;
            }
            int iN = qw7Var.n();
            if (qw7Var.n() == 1684108385) {
                int iN2 = qw7Var.n();
                int iN3 = qw7Var.n();
                int i2 = iN - 16;
                byte[] bArr = new byte[i2];
                qw7Var.j(bArr, 0, i2);
                return new MdtaMetadataEntry(str, bArr, iN3, iN2);
            }
            qw7Var.O(iE + iN);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0011  */
    public static TextInformationFrame g(qw7 qw7Var) {
        String str;
        int iJ = j(qw7Var);
        if (iJ > 0) {
            String[] strArr = a;
            if (iJ <= strArr.length) {
                str = strArr[iJ - 1];
            } else {
                str = null;
            }
        } else {
            str = null;
        }
        if (str != null) {
            return new TextInformationFrame("TCON", null, str);
        }
        op5.i("MetadataUtil", "Failed to parse standard genre code");
        return null;
    }

    public static TextInformationFrame h(int i, String str, qw7 qw7Var) {
        int iN = qw7Var.n();
        if (qw7Var.n() == 1684108385) {
            qw7Var.P(8);
            return new TextInformationFrame(str, null, qw7Var.x(iN - 16));
        }
        op5.i("MetadataUtil", "Failed to parse text attribute: " + xk.a(i));
        return null;
    }

    public static Id3Frame i(int i, String str, qw7 qw7Var, boolean z, boolean z2) {
        int iJ = j(qw7Var);
        if (z2) {
            iJ = Math.min(1, iJ);
        }
        if (iJ >= 0) {
            return z ? new TextInformationFrame(str, null, Integer.toString(iJ)) : new CommentFrame(C.LANGUAGE_UNDETERMINED, str, Integer.toString(iJ));
        }
        op5.i("MetadataUtil", "Failed to parse uint8 attribute: " + xk.a(i));
        return null;
    }

    public static int j(qw7 qw7Var) {
        qw7Var.P(4);
        if (qw7Var.n() == 1684108385) {
            qw7Var.P(8);
            return qw7Var.C();
        }
        op5.i("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    public static void k(int i, ed4 ed4Var, k.b bVar) {
        if (i == 1 && ed4Var.a()) {
            bVar.N(ed4Var.a).O(ed4Var.b);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003b  */
    public static void l(int i, Metadata metadata, Metadata metadata2, k.b bVar, Metadata... metadataArr) {
        Metadata metadata3 = new Metadata(new Metadata.Entry[0]);
        if (i == 1) {
            if (metadata == null) {
                metadata = metadata3;
                break;
            }
        } else {
            if (i != 2 || metadata2 == null) {
                metadata = metadata3;
                break;
            }
            int i2 = 0;
            while (true) {
                if (i2 >= metadata2.length()) {
                    metadata = metadata3;
                    break;
                }
                Metadata.Entry entry = metadata2.get(i2);
                if (entry instanceof MdtaMetadataEntry) {
                    MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) entry;
                    if ("com.android.capture.fps".equals(mdtaMetadataEntry.key)) {
                        metadata = new Metadata(mdtaMetadataEntry);
                        break;
                    }
                }
                i2++;
            }
        }
        for (Metadata metadata4 : metadataArr) {
            metadata = metadata.copyWithAppendedEntriesFrom(metadata4);
        }
        if (metadata.length() > 0) {
            bVar.X(metadata);
        }
    }
}
