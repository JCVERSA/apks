package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import org.mozilla.classfile.ByteCode;

public final class t42 extends ti0 {
    public static final Parcelable.Creator<t42> CREATOR = new a();

    @Nullable
    public final String c;
    public final String d;

    public class a implements Parcelable.Creator<t42> {
        @Override
        public final t42 createFromParcel(Parcel parcel) {
            return new t42(parcel);
        }

        @Override
        public final t42[] newArray(int i) {
            return new t42[i];
        }
    }

    public t42(Parcel parcel) {
        super((String) f92.a(parcel.readString()));
        this.c = parcel.readString();
        this.d = (String) f92.a(parcel.readString());
    }

    private static ArrayList a(String str) {
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

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t42.class != obj.getClass()) {
            return false;
        }
        t42 t42Var = (t42) obj;
        return f92.a(this.b, t42Var.b) && f92.a(this.c, t42Var.c) && f92.a(this.d, t42Var.d);
    }

    public final int hashCode() {
        int iA = v3.a(this.b, 527, 31);
        String str = this.c;
        int iHashCode = (iA + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.d;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override
    public final String toString() {
        return this.b + ": description=" + this.c + ": value=" + this.d;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
    }

    public t42(String str, @Nullable String str2, String str3) {
        super(str);
        this.c = str2;
        this.d = str3;
    }

    @Override
    public final void a(mw0.a aVar) {
        byte b;
        String str = this.b;
        str.getClass();
        switch (str) {
            case "TAL":
                b = 0;
                break;
            case "TCM":
                b = 1;
                break;
            case "TDA":
                b = 2;
                break;
            case "TP1":
                b = 3;
                break;
            case "TP2":
                b = 4;
                break;
            case "TP3":
                b = 5;
                break;
            case "TRK":
                b = 6;
                break;
            case "TT2":
                b = 7;
                break;
            case "TXT":
                b = 8;
                break;
            case "TYE":
                b = 9;
                break;
            case "TALB":
                b = 10;
                break;
            case "TCOM":
                b = ByteCode.T_LONG;
                break;
            case "TDAT":
                b = 12;
                break;
            case "TDRC":
                b = 13;
                break;
            case "TDRL":
                b = 14;
                break;
            case "TEXT":
                b = 15;
                break;
            case "TIT2":
                b = 16;
                break;
            case "TPE1":
                b = 17;
                break;
            case "TPE2":
                b = 18;
                break;
            case "TPE3":
                b = 19;
                break;
            case "TRCK":
                b = 20;
                break;
            case "TYER":
                b = 21;
                break;
            default:
                b = -1;
                break;
        }
        try {
            switch (b) {
                case 0:
                case 10:
                    aVar.b(this.d);
                    break;
                case 1:
                case 11:
                    aVar.d(this.d);
                    break;
                case 2:
                case 12:
                    aVar.b(Integer.valueOf(Integer.parseInt(this.d.substring(2, 4)))).a(Integer.valueOf(Integer.parseInt(this.d.substring(0, 2))));
                    break;
                case 3:
                case 17:
                    aVar.c(this.d);
                    break;
                case 4:
                case 18:
                    aVar.a(this.d);
                    break;
                case 5:
                case 19:
                    aVar.e(this.d);
                    break;
                case 6:
                case 20:
                    String str2 = this.d;
                    int i = f92.a;
                    String[] strArrSplit = str2.split("/", -1);
                    aVar.h(Integer.valueOf(Integer.parseInt(strArrSplit[0]))).g(strArrSplit.length > 1 ? Integer.valueOf(Integer.parseInt(strArrSplit[1])) : null);
                    break;
                case 7:
                case 16:
                    aVar.i(this.d);
                    break;
                case 8:
                case 15:
                    aVar.j(this.d);
                    break;
                case 9:
                case 21:
                    aVar.c(Integer.valueOf(Integer.parseInt(this.d)));
                    break;
                case 13:
                    ArrayList arrayListA = a(this.d);
                    int size = arrayListA.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                aVar.a((Integer) arrayListA.get(2));
                            }
                        }
                        aVar.b((Integer) arrayListA.get(1));
                    }
                    aVar.c((Integer) arrayListA.get(0));
                    break;
                case 14:
                    ArrayList arrayListA2 = a(this.d);
                    int size2 = arrayListA2.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                aVar.d((Integer) arrayListA2.get(2));
                            }
                        }
                        aVar.e((Integer) arrayListA2.get(1));
                    }
                    aVar.f((Integer) arrayListA2.get(0));
                    break;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }
}
