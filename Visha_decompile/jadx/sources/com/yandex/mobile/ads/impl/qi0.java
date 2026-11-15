package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.List;
import java.util.Map;

public final class qi0 implements k01.b {
    public static final Parcelable.Creator<qi0> CREATOR = new a();
    public final int b;

    @Nullable
    public final String c;

    @Nullable
    public final String d;

    @Nullable
    public final String e;
    public final boolean f;
    public final int g;

    public class a implements Parcelable.Creator<qi0> {
        @Override
        public final qi0 createFromParcel(Parcel parcel) {
            return new qi0(parcel);
        }

        @Override
        public final qi0[] newArray(int i) {
            return new qi0[i];
        }
    }

    public qi0(int i, @Nullable String str, @Nullable String str2, @Nullable String str3, boolean z, int i2) {
        hg.a(i2 == -1 || i2 > 0);
        this.b = i;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = z;
        this.g = i2;
    }

    @Nullable
    public static qi0 a(Map<String, List<String>> map) {
        boolean z;
        int i;
        String str;
        String str2;
        String str3;
        boolean zEquals;
        int i2;
        int i3;
        List<String> list = map.get("icy-br");
        boolean z2 = true;
        int i4 = -1;
        if (list != null) {
            String str4 = list.get(0);
            try {
                i3 = Integer.parseInt(str4) * 1000;
                if (i3 > 0) {
                    z = true;
                    i = i3;
                } else {
                    try {
                        et0.d("IcyHeaders", "Invalid bitrate: " + str4);
                        z = false;
                        i = -1;
                    } catch (NumberFormatException unused) {
                        rv0.a("Invalid bitrate header: ", str4, "IcyHeaders");
                        z = false;
                        i = i3;
                    }
                }
            } catch (NumberFormatException unused2) {
                i3 = -1;
            }
        } else {
            z = false;
            i = -1;
        }
        List<String> list2 = map.get("icy-genre");
        if (list2 != null) {
            str = list2.get(0);
            z = true;
        } else {
            str = null;
        }
        List<String> list3 = map.get("icy-name");
        if (list3 != null) {
            str2 = list3.get(0);
            z = true;
        } else {
            str2 = null;
        }
        List<String> list4 = map.get("icy-url");
        if (list4 != null) {
            str3 = list4.get(0);
            z = true;
        } else {
            str3 = null;
        }
        List<String> list5 = map.get("icy-pub");
        if (list5 != null) {
            zEquals = list5.get(0).equals("1");
            z = true;
        } else {
            zEquals = false;
        }
        List<String> list6 = map.get("icy-metaint");
        if (list6 != null) {
            String str5 = list6.get(0);
            try {
                int i5 = Integer.parseInt(str5);
                if (i5 > 0) {
                    i2 = i5;
                } else {
                    try {
                        et0.d("IcyHeaders", "Invalid metadata interval: " + str5);
                    } catch (NumberFormatException unused3) {
                        i4 = i5;
                        rv0.a("Invalid metadata interval: ", str5, "IcyHeaders");
                    }
                    z2 = z;
                    i2 = i4;
                }
            } catch (NumberFormatException unused4) {
            }
        } else {
            z2 = z;
            i2 = i4;
        }
        if (z2) {
            return new qi0(i, str, str2, str3, zEquals, i2);
        }
        return null;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || qi0.class != obj.getClass()) {
            return false;
        }
        qi0 qi0Var = (qi0) obj;
        return this.b == qi0Var.b && f92.a(this.c, qi0Var.c) && f92.a(this.d, qi0Var.d) && f92.a(this.e, qi0Var.e) && this.f == qi0Var.f && this.g == qi0Var.g;
    }

    public final int hashCode() {
        int i = (this.b + 527) * 31;
        String str = this.c;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.e;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.f ? 1 : 0)) * 31) + this.g;
    }

    public final String toString() {
        return "IcyHeaders: name=\"" + this.d + "\", genre=\"" + this.c + "\", bitrate=" + this.b + ", metadataInterval=" + this.g;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        boolean z = this.f;
        int i2 = f92.a;
        parcel.writeInt(z ? 1 : 0);
        parcel.writeInt(this.g);
    }

    public qi0(Parcel parcel) {
        this.b = parcel.readInt();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = f92.a(parcel);
        this.g = parcel.readInt();
    }

    @Override
    public final void a(mw0.a aVar) {
        String str = this.d;
        if (str != null) {
            aVar.h(str);
        }
        String str2 = this.c;
        if (str2 != null) {
            aVar.g(str2);
        }
    }
}
