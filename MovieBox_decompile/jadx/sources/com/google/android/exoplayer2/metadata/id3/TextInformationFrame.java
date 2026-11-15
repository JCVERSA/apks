package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.util.p0;
import java.util.ArrayList;
import java.util.List;

public final class TextInformationFrame extends Id3Frame {
    public static final Parcelable.Creator<TextInformationFrame> CREATOR = new a();

    @Nullable
    public final String description;
    public final String value;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public TextInformationFrame createFromParcel(Parcel parcel) {
            return new TextInformationFrame(parcel);
        }

        @Override
        public TextInformationFrame[] newArray(int i10) {
            return new TextInformationFrame[i10];
        }
    }

    public TextInformationFrame(String str, @Nullable String str2, String str3) {
        super(str);
        this.description = str2;
        this.value = str3;
    }

    private static List<Integer> parseId3v2point4TimestampFrameForDate(String str) {
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

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TextInformationFrame.class != obj.getClass()) {
            return false;
        }
        TextInformationFrame textInformationFrame = (TextInformationFrame) obj;
        return p0.c(this.f24796id, textInformationFrame.f24796id) && p0.c(this.description, textInformationFrame.description) && p0.c(this.value, textInformationFrame.value);
    }

    public int hashCode() {
        int iHashCode = (527 + this.f24796id.hashCode()) * 31;
        String str = this.description;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.value;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    public void populateMediaMetadata(b2.b bVar) {
        String str = this.f24796id;
        str.hashCode();
        byte b10 = -1;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    b10 = 0;
                }
                break;
            case 82878:
                if (str.equals("TCM")) {
                    b10 = 1;
                }
                break;
            case 82897:
                if (str.equals("TDA")) {
                    b10 = 2;
                }
                break;
            case 83253:
                if (str.equals("TP1")) {
                    b10 = 3;
                }
                break;
            case 83254:
                if (str.equals("TP2")) {
                    b10 = 4;
                }
                break;
            case 83255:
                if (str.equals("TP3")) {
                    b10 = 5;
                }
                break;
            case 83341:
                if (str.equals("TRK")) {
                    b10 = 6;
                }
                break;
            case 83378:
                if (str.equals("TT2")) {
                    b10 = 7;
                }
                break;
            case 83536:
                if (str.equals("TXT")) {
                    b10 = 8;
                }
                break;
            case 83552:
                if (str.equals("TYE")) {
                    b10 = 9;
                }
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    b10 = 10;
                }
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    b10 = 11;
                }
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    b10 = 12;
                }
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    b10 = 13;
                }
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    b10 = 14;
                }
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    b10 = 15;
                }
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    b10 = 16;
                }
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    b10 = 17;
                }
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    b10 = 18;
                }
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    b10 = 19;
                }
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    b10 = 20;
                }
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    b10 = 21;
                }
                break;
        }
        try {
            switch (b10) {
                case 0:
                case 10:
                    bVar.L(this.value);
                    break;
                case 1:
                case 11:
                    bVar.Q(this.value);
                    break;
                case 2:
                case 12:
                    bVar.b0(Integer.valueOf(Integer.parseInt(this.value.substring(2, 4)))).a0(Integer.valueOf(Integer.parseInt(this.value.substring(0, 2))));
                    break;
                case 3:
                case 17:
                    bVar.M(this.value);
                    break;
                case 4:
                case 18:
                    bVar.K(this.value);
                    break;
                case 5:
                case 19:
                    bVar.R(this.value);
                    break;
                case 6:
                case 20:
                    String[] strArrS0 = p0.S0(this.value, "/");
                    bVar.l0(Integer.valueOf(Integer.parseInt(strArrS0[0]))).k0(strArrS0.length > 1 ? Integer.valueOf(Integer.parseInt(strArrS0[1])) : null);
                    break;
                case 7:
                case 16:
                    bVar.i0(this.value);
                    break;
                case 8:
                case 15:
                    bVar.n0(this.value);
                    break;
                case 9:
                case 21:
                    bVar.c0(Integer.valueOf(Integer.parseInt(this.value)));
                    break;
                case 13:
                    List<Integer> id3v2point4TimestampFrameForDate = parseId3v2point4TimestampFrameForDate(this.value);
                    int size = id3v2point4TimestampFrameForDate.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                bVar.a0(id3v2point4TimestampFrameForDate.get(2));
                            }
                        }
                        bVar.b0(id3v2point4TimestampFrameForDate.get(1));
                    }
                    bVar.c0(id3v2point4TimestampFrameForDate.get(0));
                    break;
                case 14:
                    List<Integer> id3v2point4TimestampFrameForDate2 = parseId3v2point4TimestampFrameForDate(this.value);
                    int size2 = id3v2point4TimestampFrameForDate2.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                bVar.d0(id3v2point4TimestampFrameForDate2.get(2));
                            }
                        }
                        bVar.e0(id3v2point4TimestampFrameForDate2.get(1));
                    }
                    bVar.f0(id3v2point4TimestampFrameForDate2.get(0));
                    break;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }

    @Override
    public String toString() {
        return this.f24796id + ": description=" + this.description + ": value=" + this.value;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f24796id);
        parcel.writeString(this.description);
        parcel.writeString(this.value);
    }

    TextInformationFrame(Parcel parcel) {
        super((String) p0.j(parcel.readString()));
        this.description = parcel.readString();
        this.value = (String) p0.j(parcel.readString());
    }
}
