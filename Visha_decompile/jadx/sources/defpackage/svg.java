package defpackage;

import android.graphics.drawable.Drawable;
import org.apache.commons.text.StringSubstitutor;

public final class svg extends wvg {
    public final String a;
    public final String b;
    public final Drawable c;

    public svg(String str, String str2, Drawable drawable) {
        this.a = str;
        if (str2 == null) {
            throw new NullPointerException("Null imageUrl");
        }
        this.b = str2;
        this.c = drawable;
    }

    @Override
    public final Drawable a() {
        return this.c;
    }

    @Override
    public final String b() {
        return this.a;
    }

    @Override
    public final String c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        Drawable drawable;
        if (obj == this) {
            return true;
        }
        if (obj instanceof wvg) {
            wvg wvgVar = (wvg) obj;
            String str = this.a;
            if (str != null ? str.equals(wvgVar.b()) : wvgVar.b() == null) {
                if (this.b.equals(wvgVar.c()) && ((drawable = this.c) != null ? drawable.equals(wvgVar.a()) : wvgVar.a() == null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.b.hashCode();
        Drawable drawable = this.c;
        return (iHashCode * 1000003) ^ (drawable != null ? drawable.hashCode() : 0);
    }

    public final String toString() {
        return "OfflineAdAssets{advertiserName=" + this.a + ", imageUrl=" + this.b + ", icon=" + String.valueOf(this.c) + StringSubstitutor.DEFAULT_VAR_END;
    }
}
