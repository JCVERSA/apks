package defpackage;

import com.google.android.gms.internal.ads.s7;
import com.google.android.gms.internal.ads.zzfww;
import com.transsion.audiotagger.tag.id3.ID3v22Frames;
import com.transsion.audiotagger.tag.id3.ID3v23Frames;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.mozilla.classfile.ByteCode;

public final class hde extends cde {
    public final String b;
    public final zzfww c;

    public hde(String str, String str2, List list) {
        super(str);
        n7g.d(!list.isEmpty());
        this.b = str2;
        zzfww zzfwwVarZzl = zzfww.zzl(list);
        this.c = zzfwwVarZzl;
    }

    public static List b(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
            } else if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
            } else if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public final void a(une uneVar) {
        byte b;
        String str = this.a;
        switch (str.hashCode()) {
            case 82815:
                b = !str.equals(ID3v22Frames.FRAME_ID_V2_ALBUM) ? (byte) -1 : (byte) 6;
                break;
            case 82878:
                b = !str.equals(ID3v22Frames.FRAME_ID_V2_COMPOSER) ? (byte) -1 : (byte) 16;
                break;
            case 82897:
                b = !str.equals(ID3v22Frames.FRAME_ID_V2_TDAT) ? (byte) -1 : (byte) 12;
                break;
            case 83253:
                b = !str.equals(ID3v22Frames.FRAME_ID_V2_ARTIST) ? (byte) -1 : (byte) 2;
                break;
            case 83254:
                b = !str.equals(ID3v22Frames.FRAME_ID_V2_ACCOMPANIMENT) ? (byte) -1 : (byte) 4;
                break;
            case 83255:
                b = !str.equals("TP3") ? (byte) -1 : (byte) 18;
                break;
            case 83341:
                b = !str.equals(ID3v22Frames.FRAME_ID_V2_TRACK) ? (byte) -1 : (byte) 8;
                break;
            case 83378:
                b = !str.equals(ID3v22Frames.FRAME_ID_V2_TITLE) ? (byte) -1 : (byte) 0;
                break;
            case 83536:
                b = !str.equals(ID3v22Frames.FRAME_ID_V2_LYRICIST) ? (byte) -1 : (byte) 20;
                break;
            case 83552:
                b = !str.equals(ID3v22Frames.FRAME_ID_V2_TYER) ? (byte) -1 : (byte) 10;
                break;
            case 2567331:
                b = !str.equals("TALB") ? (byte) -1 : (byte) 7;
                break;
            case 2569357:
                b = !str.equals("TCOM") ? (byte) -1 : (byte) 17;
                break;
            case 2569358:
                b = !str.equals("TCON") ? (byte) -1 : (byte) 22;
                break;
            case 2569891:
                b = !str.equals(ID3v23Frames.FRAME_ID_V3_TDAT) ? (byte) -1 : (byte) 13;
                break;
            case 2570401:
                b = !str.equals(ID3v24Frames.FRAME_ID_YEAR) ? (byte) -1 : (byte) 14;
                break;
            case 2570410:
                b = !str.equals(ID3v24Frames.FRAME_ID_RELEASE_TIME) ? (byte) -1 : (byte) 15;
                break;
            case 2571565:
                b = !str.equals("TEXT") ? (byte) -1 : (byte) 21;
                break;
            case 2575251:
                b = !str.equals("TIT2") ? (byte) -1 : (byte) 1;
                break;
            case 2581512:
                b = !str.equals("TPE1") ? (byte) -1 : (byte) 3;
                break;
            case 2581513:
                b = !str.equals("TPE2") ? (byte) -1 : (byte) 5;
                break;
            case 2581514:
                b = !str.equals("TPE3") ? (byte) -1 : (byte) 19;
                break;
            case 2583398:
                b = !str.equals("TRCK") ? (byte) -1 : (byte) 9;
                break;
            case 2590194:
                b = !str.equals(ID3v23Frames.FRAME_ID_V3_TYER) ? (byte) -1 : ByteCode.T_LONG;
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
            case 1:
                uneVar.O((CharSequence) this.c.get(0));
                break;
            case 2:
            case 3:
                uneVar.B((CharSequence) this.c.get(0));
                break;
            case 4:
            case 5:
                uneVar.z((CharSequence) this.c.get(0));
                break;
            case 6:
            case 7:
                uneVar.A((CharSequence) this.c.get(0));
                break;
            case 8:
            case 9:
                String str2 = (String) this.c.get(0);
                int i = kfh.a;
                String[] strArrSplit = str2.split("/", -1);
                try {
                    int i2 = Integer.parseInt(strArrSplit[0]);
                    Integer numValueOf = strArrSplit.length > 1 ? Integer.valueOf(Integer.parseInt(strArrSplit[1])) : null;
                    uneVar.R(Integer.valueOf(i2));
                    uneVar.Q(numValueOf);
                } catch (NumberFormatException unused) {
                    return;
                }
                break;
            case 10:
            case 11:
                try {
                    uneVar.J(Integer.valueOf(Integer.parseInt((String) this.c.get(0))));
                } catch (NumberFormatException unused2) {
                    return;
                }
                break;
            case 12:
            case 13:
                try {
                    String str3 = (String) this.c.get(0);
                    int i3 = Integer.parseInt(str3.substring(2, 4));
                    int i4 = Integer.parseInt(str3.substring(0, 2));
                    uneVar.I(Integer.valueOf(i3));
                    uneVar.H(Integer.valueOf(i4));
                } catch (NumberFormatException | StringIndexOutOfBoundsException unused3) {
                    return;
                }
                break;
            case 14:
                List listB = b((String) this.c.get(0));
                int size = listB.size();
                if (size != 1) {
                    if (size != 2) {
                        if (size == 3) {
                            uneVar.H((Integer) listB.get(2));
                        }
                    }
                    uneVar.I((Integer) listB.get(1));
                }
                uneVar.J((Integer) listB.get(0));
                break;
            case 15:
                List listB2 = b((String) this.c.get(0));
                int size2 = listB2.size();
                if (size2 != 1) {
                    if (size2 != 2) {
                        if (size2 == 3) {
                            uneVar.K((Integer) listB2.get(2));
                        }
                    }
                    uneVar.L((Integer) listB2.get(1));
                }
                uneVar.M((Integer) listB2.get(0));
                break;
            case 16:
            case 17:
                uneVar.C((CharSequence) this.c.get(0));
                break;
            case 18:
            case 19:
                uneVar.D((CharSequence) this.c.get(0));
                break;
            case 20:
            case 21:
                uneVar.S((CharSequence) this.c.get(0));
                break;
            case 22:
                zzfww zzfwwVar = this.c;
                Integer numG = s7.g((String) zzfwwVar.get(0), 10);
                if (numG != null) {
                    String strA = dde.a(numG.intValue());
                    if (strA != null) {
                        uneVar.G(strA);
                    }
                } else {
                    uneVar.G((CharSequence) zzfwwVar.get(0));
                }
                break;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && hde.class == obj.getClass()) {
            hde hdeVar = (hde) obj;
            if (Objects.equals(this.a, hdeVar.a) && Objects.equals(this.b, hdeVar.b) && this.c.equals(hdeVar.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() + 527;
        String str = this.b;
        return (((iHashCode * 31) + (str != null ? str.hashCode() : 0)) * 31) + this.c.hashCode();
    }

    @Override
    public final String toString() {
        return this.a + ": description=" + this.b + ": values=" + String.valueOf(this.c);
    }
}
