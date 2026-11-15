package androidx.media3.exoplayer.hls;

import android.text.TextUtils;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class s implements x.a {

    public final String f11676a;

    public final String f11677b;

    public final List f11678c;

    public static final class a {

        public final int f11679a;

        public final int f11680b;

        public final String f11681c;

        public final String f11682d;

        public final String f11683e;

        public final String f11684f;

        public a(int i10, int i11, String str, String str2, String str3, String str4) {
            this.f11679a = i10;
            this.f11680b = i11;
            this.f11681c = str;
            this.f11682d = str2;
            this.f11683e = str3;
            this.f11684f = str4;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f11679a == aVar.f11679a && this.f11680b == aVar.f11680b && TextUtils.equals(this.f11681c, aVar.f11681c) && TextUtils.equals(this.f11682d, aVar.f11682d) && TextUtils.equals(this.f11683e, aVar.f11683e) && TextUtils.equals(this.f11684f, aVar.f11684f);
        }

        public int hashCode() {
            int i10 = ((this.f11679a * 31) + this.f11680b) * 31;
            String str = this.f11681c;
            int iHashCode = (i10 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f11682d;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f11683e;
            int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.f11684f;
            return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
        }
    }

    public s(String str, String str2, List list) {
        this.f11676a = str;
        this.f11677b = str2;
        this.f11678c = Collections.unmodifiableList(new ArrayList(list));
    }

    @Override
    public void a(v.b bVar) {
        w.c(this, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || s.class != obj.getClass()) {
            return false;
        }
        s sVar = (s) obj;
        return TextUtils.equals(this.f11676a, sVar.f11676a) && TextUtils.equals(this.f11677b, sVar.f11677b) && this.f11678c.equals(sVar.f11678c);
    }

    @Override
    public byte[] getWrappedMetadataBytes() {
        return w.a(this);
    }

    @Override
    public androidx.media3.common.r getWrappedMetadataFormat() {
        return w.b(this);
    }

    public int hashCode() {
        String str = this.f11676a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f11677b;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f11678c.hashCode();
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("HlsTrackMetadataEntry");
        if (this.f11676a != null) {
            str = " [" + this.f11676a + ", " + this.f11677b + "]";
        } else {
            str = "";
        }
        sb2.append(str);
        return sb2.toString();
    }
}
