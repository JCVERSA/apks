package defpackage;

import com.transsion.dbdata.database.MediaDataMissingItem;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class qe6 {
    public static final a m = new a(null);
    public final String a;
    public final int b;
    public final int c;
    public final String d;
    public final long e;
    public final String f;
    public final String g;
    public final String h;
    public final int i;
    public final int j;
    public final int k;
    public final String l;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final qe6 a(MediaDataMissingItem mediaDataMissingItem) {
            y45.j(mediaDataMissingItem, "entity");
            String str = mediaDataMissingItem.get_data();
            int mediaId = mediaDataMissingItem.getMediaId();
            int mediaType = mediaDataMissingItem.getMediaType();
            String mediaAlias = mediaDataMissingItem.getMediaAlias();
            if (mediaAlias == null) {
                mediaAlias = "";
            }
            Long duration = mediaDataMissingItem.getDuration();
            long jLongValue = duration != null ? duration.longValue() : 0L;
            String artist = mediaDataMissingItem.getArtist();
            if (artist == null) {
                artist = "";
            }
            String album = mediaDataMissingItem.getAlbum();
            if (album == null) {
                album = "";
            }
            String albumYear = mediaDataMissingItem.getAlbumYear();
            if (albumYear == null) {
                albumYear = "";
            }
            Integer width = mediaDataMissingItem.getWidth();
            int iIntValue = width != null ? width.intValue() : 0;
            Integer height = mediaDataMissingItem.getHeight();
            int iIntValue2 = height != null ? height.intValue() : 0;
            Integer mediaSize = mediaDataMissingItem.getMediaSize();
            int iIntValue3 = mediaSize != null ? mediaSize.intValue() : 0;
            String customCoverPath = mediaDataMissingItem.getCustomCoverPath();
            return new qe6(str, mediaId, mediaType, mediaAlias, jLongValue, artist, album, albumYear, iIntValue, iIntValue2, iIntValue3, customCoverPath == null ? "" : customCoverPath);
        }

        public a() {
        }
    }

    public qe6(String str, int i, int i2, String str2, long j, String str3, String str4, String str5, int i3, int i4, int i5, String str6) {
        y45.j(str, "mediaPath");
        y45.j(str2, "displayName");
        y45.j(str3, "artist");
        y45.j(str4, "album");
        y45.j(str5, "albumYear");
        y45.j(str6, "customCoverPath");
        this.a = str;
        this.b = i;
        this.c = i2;
        this.d = str2;
        this.e = j;
        this.f = str3;
        this.g = str4;
        this.h = str5;
        this.i = i3;
        this.j = i4;
        this.k = i5;
        this.l = str6;
    }

    public final String a() {
        return this.g;
    }

    public final String b() {
        return this.h;
    }

    public final String c() {
        return this.f;
    }

    public final String d() {
        return this.l;
    }

    public final String e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qe6)) {
            return false;
        }
        qe6 qe6Var = (qe6) obj;
        return y45.e(this.a, qe6Var.a) && this.b == qe6Var.b && this.c == qe6Var.c && y45.e(this.d, qe6Var.d) && this.e == qe6Var.e && y45.e(this.f, qe6Var.f) && y45.e(this.g, qe6Var.g) && y45.e(this.h, qe6Var.h) && this.i == qe6Var.i && this.j == qe6Var.j && this.k == qe6Var.k && y45.e(this.l, qe6Var.l);
    }

    public final int f() {
        return this.b;
    }

    public final String g() {
        return this.a;
    }

    public final boolean h() {
        return this.l.length() > 0;
    }

    public int hashCode() {
        return (((((((((((((((((((((this.a.hashCode() * 31) + Integer.hashCode(this.b)) * 31) + Integer.hashCode(this.c)) * 31) + this.d.hashCode()) * 31) + Long.hashCode(this.e)) * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31) + this.h.hashCode()) * 31) + Integer.hashCode(this.i)) * 31) + Integer.hashCode(this.j)) * 31) + Integer.hashCode(this.k)) * 31) + this.l.hashCode();
    }

    public final boolean i() {
        return this.c == 1;
    }

    public String toString() {
        return "MediaDataMissingItemVo(mediaPath=" + this.a + ", mediaId=" + this.b + ", mediaType=" + this.c + ", displayName=" + this.d + ", duration=" + this.e + ", artist=" + this.f + ", album=" + this.g + ", albumYear=" + this.h + ", width=" + this.i + ", height=" + this.j + ", mediaSize=" + this.k + ", customCoverPath=" + this.l + ")";
    }
}
