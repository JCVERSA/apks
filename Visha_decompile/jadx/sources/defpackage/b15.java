package defpackage;

import com.hunantv.imgo.net.entity.AuthInfo;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.dbdata.beans.SubtitleSettingData;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class b15 {

    public static final class a extends b15 {
        public final int a;
        public final String b;
        public final long c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i, String str, long j) {
            super(null);
            y45.j(str, "path");
            this.a = i;
            this.b = str;
            this.c = j;
        }

        public final long a() {
            return this.c;
        }

        public final int b() {
            return this.a;
        }

        public final String c() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && y45.e(this.b, aVar.b) && this.c == aVar.c;
        }

        public int hashCode() {
            return (((Integer.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + Long.hashCode(this.c);
        }

        public String toString() {
            return "AudioConvertedElement(mediaId=" + this.a + ", path=" + this.b + ", convertTime=" + this.c + ")";
        }
    }

    public static final class b extends b15 {
        public final int a;
        public final String b;
        public final int c;

        public b(int i, String str, int i2) {
            super(null);
            this.a = i;
            this.b = str;
            this.c = i2;
        }

        public final int a() {
            return this.a;
        }

        public final int b() {
            return this.c;
        }

        public final String c() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a == bVar.a && y45.e(this.b, bVar.b) && this.c == bVar.c;
        }

        public int hashCode() {
            int iHashCode = Integer.hashCode(this.a) * 31;
            String str = this.b;
            return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Integer.hashCode(this.c);
        }

        public String toString() {
            return "AudioLyricOffset(mediaId=" + this.a + ", path=" + this.b + ", offset=" + this.c + ")";
        }
    }

    public static final class c extends b15 {
        public final SubtitleHistory a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(SubtitleHistory subtitleHistory) {
            super(null);
            y45.j(subtitleHistory, "record");
            this.a = subtitleHistory;
        }

        public final SubtitleHistory a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && y45.e(this.a, ((c) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "DownloadSubtitleRecord(record=" + this.a + ")";
        }
    }

    public static final class d extends b15 {
        public final long a;
        public final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(long j, String str) {
            super(null);
            y45.j(str, Progress.FILE_PATH);
            this.a = j;
            this.b = str;
        }

        public final String a() {
            return this.b;
        }

        public final long b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.a == dVar.a && y45.e(this.b, dVar.b);
        }

        public int hashCode() {
            return (Long.hashCode(this.a) * 31) + this.b.hashCode();
        }

        public String toString() {
            return "PlayHistoryElement(mediaId=" + this.a + ", filePath=" + this.b + ")";
        }
    }

    public static final class e extends b15 {
        public final String a;
        public final boolean b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, boolean z) {
            super(null);
            y45.j(str, "name");
            this.a = str;
            this.b = z;
        }

        public final boolean a() {
            return this.b;
        }

        public final String b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return y45.e(this.a, eVar.a) && this.b == eVar.b;
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + Boolean.hashCode(this.b);
        }

        public String toString() {
            return "PlayList(name=" + this.a + ", fromVideo=" + this.b + ")";
        }
    }

    public static final class f extends b15 {
        public final long a;
        public final MediaItem b;
        public final boolean c;
        public final boolean d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(long j, MediaItem mediaItem, boolean z, boolean z2) {
            super(null);
            y45.j(mediaItem, "mediaItem");
            this.a = j;
            this.b = mediaItem;
            this.c = z;
            this.d = z2;
        }

        public final boolean a() {
            return this.c;
        }

        public final MediaItem b() {
            return this.b;
        }

        public final long c() {
            return this.a;
        }

        public final boolean d() {
            return this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return this.a == fVar.a && y45.e(this.b, fVar.b) && this.c == fVar.c && this.d == fVar.d;
        }

        public int hashCode() {
            return (((((Long.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + Boolean.hashCode(this.c)) * 31) + Boolean.hashCode(this.d);
        }

        public String toString() {
            return "PlayListElement(playListId=" + this.a + ", mediaItem=" + this.b + ", fromVideo=" + this.c + ", isFavorite=" + this.d + ")";
        }
    }

    public static final class g extends b15 {
        public final long a;
        public final List b;
        public final boolean c;
        public final boolean d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(long j, List list, boolean z, boolean z2) {
            super(null);
            y45.j(list, "mediaItems");
            this.a = j;
            this.b = list;
            this.c = z;
            this.d = z2;
        }

        public final boolean a() {
            return this.c;
        }

        public final List b() {
            return this.b;
        }

        public final long c() {
            return this.a;
        }

        public final boolean d() {
            return this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return this.a == gVar.a && y45.e(this.b, gVar.b) && this.c == gVar.c && this.d == gVar.d;
        }

        public int hashCode() {
            return (((((Long.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + Boolean.hashCode(this.c)) * 31) + Boolean.hashCode(this.d);
        }

        public String toString() {
            return "PlayListElements(playListId=" + this.a + ", mediaItems=" + this.b + ", fromVideo=" + this.c + ", isFavorite=" + this.d + ")";
        }
    }

    public static final class h extends b15 {
        public final SubtitleSettingData a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(SubtitleSettingData subtitleSettingData) {
            super(null);
            y45.j(subtitleSettingData, "subtitleSetting");
            this.a = subtitleSettingData;
        }

        public final SubtitleSettingData a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof h) && y45.e(this.a, ((h) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "SubtitleSetting(subtitleSetting=" + this.a + ")";
        }
    }

    public static final class i extends b15 {
        public final int a;
        public final SubtitleTrackInfo b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(int i, SubtitleTrackInfo subtitleTrackInfo) {
            super(null);
            y45.j(subtitleTrackInfo, AuthInfo.Component.CODE_SUBTITLE);
            this.a = i;
            this.b = subtitleTrackInfo;
        }

        public final int a() {
            return this.a;
        }

        public final SubtitleTrackInfo b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return this.a == iVar.a && y45.e(this.b, iVar.b);
        }

        public int hashCode() {
            return (Integer.hashCode(this.a) * 31) + this.b.hashCode();
        }

        public String toString() {
            return "SubtitleUsageRecord(mediaId=" + this.a + ", subtitle=" + this.b + ")";
        }
    }

    public static final class j extends b15 {
        public final MediaItem a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(MediaItem mediaItem) {
            super(null);
            y45.j(mediaItem, "mediaItem");
            this.a = mediaItem;
        }

        public final MediaItem a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof j) && y45.e(this.a, ((j) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "UserAudioMV(mediaItem=" + this.a + ")";
        }
    }

    public static final class k extends b15 {
        public final int a;
        public final int b;
        public final String c;

        public k(int i, int i2, String str) {
            super(null);
            this.a = i;
            this.b = i2;
            this.c = str;
        }

        public final int a() {
            return this.b;
        }

        public final int b() {
            return this.a;
        }

        public final String c() {
            return this.c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return this.a == kVar.a && this.b == kVar.b && y45.e(this.c, kVar.c);
        }

        public int hashCode() {
            int iHashCode = ((Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b)) * 31;
            String str = this.c;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "VideoAudioTrack(mediaId=" + this.a + ", audioId=" + this.b + ", name=" + this.c + ")";
        }
    }

    public static final class m extends b15 {
        public final List a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(List list) {
            super(null);
            y45.j(list, "mediaItems");
            this.a = list;
        }

        public final List a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof m) && y45.e(this.a, ((m) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "VideoConvertingElements(mediaItems=" + this.a + ")";
        }
    }

    public b15(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final class l extends b15 {
        public final int a;
        public final String b;
        public final long c;

        public l(int i, String str, long j, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, str, (i2 & 4) != 0 ? System.currentTimeMillis() : j);
        }

        public final long a() {
            return this.c;
        }

        public final int b() {
            return this.a;
        }

        public final String c() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return this.a == lVar.a && y45.e(this.b, lVar.b) && this.c == lVar.c;
        }

        public int hashCode() {
            return (((Integer.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + Long.hashCode(this.c);
        }

        public String toString() {
            return "VideoConvertingElement(mediaId=" + this.a + ", path=" + this.b + ", convertTime=" + this.c + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(int i, String str, long j) {
            super(null);
            y45.j(str, "path");
            this.a = i;
            this.b = str;
            this.c = j;
        }
    }

    public b15() {
    }
}
