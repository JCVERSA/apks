package defpackage;

import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.dbdata.beans.media.MediaItem;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class d82 {

    public static final class a extends d82 {
        public final int a;
        public final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i, String str) {
            super(null);
            y45.j(str, "path");
            this.a = i;
            this.b = str;
        }

        public final int a() {
            return this.a;
        }

        public final String b() {
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
            return this.a == aVar.a && y45.e(this.b, aVar.b);
        }

        public int hashCode() {
            return (Integer.hashCode(this.a) * 31) + this.b.hashCode();
        }

        public String toString() {
            return "AudioConvertedElement(mediaId=" + this.a + ", path=" + this.b + ")";
        }
    }

    public static final class b extends d82 {
        public final SubtitleHistory a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(SubtitleHistory subtitleHistory) {
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
            return (obj instanceof b) && y45.e(this.a, ((b) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "DownloadSubtitleRecord(record=" + this.a + ")";
        }
    }

    public static final class c extends d82 {
        public final long a;
        public final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(long j, String str) {
            super(null);
            y45.j(str, "path");
            this.a = j;
            this.b = str;
        }

        public final long a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.a == cVar.a && y45.e(this.b, cVar.b);
        }

        public int hashCode() {
            return (Long.hashCode(this.a) * 31) + this.b.hashCode();
        }

        public String toString() {
            return "PlayFrequentlyElement(mediaId=" + this.a + ", path=" + this.b + ")";
        }
    }

    public static final class d extends d82 {
        public final boolean a;

        public d(boolean z) {
            super(null);
            this.a = z;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d) && this.a == ((d) obj).a;
        }

        public int hashCode() {
            return Boolean.hashCode(this.a);
        }

        public String toString() {
            return "PlayHistoryAllElements(fromVideo=" + this.a + ")";
        }
    }

    public static final class e extends d82 {
        public final long a;
        public final String b;
        public final boolean c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(long j, String str, boolean z) {
            super(null);
            y45.j(str, "path");
            this.a = j;
            this.b = str;
            this.c = z;
        }

        public final long a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return this.a == eVar.a && y45.e(this.b, eVar.b) && this.c == eVar.c;
        }

        public int hashCode() {
            return (((Long.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + Boolean.hashCode(this.c);
        }

        public String toString() {
            return "PlayHistoryElement(mediaId=" + this.a + ", path=" + this.b + ", fromVideo=" + this.c + ")";
        }
    }

    public static final class f extends d82 {
        public final List a;
        public final boolean b;

        public f(List list, boolean z) {
            super(null);
            this.a = list;
            this.b = z;
        }

        public final List a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return y45.e(this.a, fVar.a) && this.b == fVar.b;
        }

        public int hashCode() {
            List list = this.a;
            return ((list == null ? 0 : list.hashCode()) * 31) + Boolean.hashCode(this.b);
        }

        public String toString() {
            return "PlayHistoryElements(mediaItems=" + this.a + ", fromVideo=" + this.b + ")";
        }
    }

    public static final class g extends d82 {
        public final long a;
        public final boolean b;

        public g(long j, boolean z) {
            super(null);
            this.a = j;
            this.b = z;
        }

        public final boolean a() {
            return this.b;
        }

        public final long b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return this.a == gVar.a && this.b == gVar.b;
        }

        public int hashCode() {
            return (Long.hashCode(this.a) * 31) + Boolean.hashCode(this.b);
        }

        public String toString() {
            return "PlayList(id=" + this.a + ", fromVideo=" + this.b + ")";
        }
    }

    public static final class h extends d82 {
        public final int a;
        public final int b;
        public final boolean c;
        public final boolean d;

        public h(int i, int i2, boolean z, boolean z2) {
            super(null);
            this.a = i;
            this.b = i2;
            this.c = z;
            this.d = z2;
        }

        public final boolean a() {
            return this.c;
        }

        public final int b() {
            return this.b;
        }

        public final int c() {
            return this.a;
        }

        public final boolean d() {
            return this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return this.a == hVar.a && this.b == hVar.b && this.c == hVar.c && this.d == hVar.d;
        }

        public int hashCode() {
            return (((((Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b)) * 31) + Boolean.hashCode(this.c)) * 31) + Boolean.hashCode(this.d);
        }

        public String toString() {
            return "PlayListElement(playListId=" + this.a + ", mediaId=" + this.b + ", fromVideo=" + this.c + ", isFavorite=" + this.d + ")";
        }
    }

    public static final class i extends d82 {
        public final int a;
        public final List b;
        public final boolean c;
        public final boolean d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(int i, List list, boolean z, boolean z2) {
            super(null);
            y45.j(list, "mediaIds");
            this.a = i;
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

        public final int c() {
            return this.a;
        }

        public final boolean d() {
            return this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return this.a == iVar.a && y45.e(this.b, iVar.b) && this.c == iVar.c && this.d == iVar.d;
        }

        public int hashCode() {
            return (((((Integer.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + Boolean.hashCode(this.c)) * 31) + Boolean.hashCode(this.d);
        }

        public String toString() {
            return "PlayListElements(playListId=" + this.a + ", mediaIds=" + this.b + ", fromVideo=" + this.c + ", isFavorite=" + this.d + ")";
        }
    }

    public static final class j extends d82 {
        public final String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(String str) {
            super(null);
            y45.j(str, "subtitlePath");
            this.a = str;
        }

        public final String a() {
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
            return "SubtitleUsageRecord(subtitlePath=" + this.a + ")";
        }
    }

    public static final class k extends d82 {
        public final MediaItem a;
        public final boolean b;
        public final e74 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(MediaItem mediaItem, boolean z, e74 e74Var) {
            super(null);
            y45.j(mediaItem, "item");
            y45.j(e74Var, "delete");
            this.a = mediaItem;
            this.b = z;
            this.c = e74Var;
        }

        public final e74 a() {
            return this.c;
        }

        public final boolean b() {
            return this.b;
        }

        public final MediaItem c() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return y45.e(this.a, kVar.a) && this.b == kVar.b && y45.e(this.c, kVar.c);
        }

        public int hashCode() {
            return (((this.a.hashCode() * 31) + Boolean.hashCode(this.b)) * 31) + this.c.hashCode();
        }

        public String toString() {
            return "SystemMediaElement(item=" + this.a + ", fromVideo=" + this.b + ", delete=" + this.c + ")";
        }
    }

    public static final class l extends d82 {
        public final List a;
        public final boolean b;
        public final e74 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(List list, boolean z, e74 e74Var) {
            super(null);
            y45.j(list, "items");
            y45.j(e74Var, "delete");
            this.a = list;
            this.b = z;
            this.c = e74Var;
        }

        public final e74 a() {
            return this.c;
        }

        public final boolean b() {
            return this.b;
        }

        public final List c() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return y45.e(this.a, lVar.a) && this.b == lVar.b && y45.e(this.c, lVar.c);
        }

        public int hashCode() {
            return (((this.a.hashCode() * 31) + Boolean.hashCode(this.b)) * 31) + this.c.hashCode();
        }

        public String toString() {
            return "SystemMediaElements(items=" + this.a + ", fromVideo=" + this.b + ", delete=" + this.c + ")";
        }
    }

    public static final class m extends d82 {
    }

    public static final class n extends d82 {
        public final int a;

        public n(int i) {
            super(null);
            this.a = i;
        }

        public final int a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof n) && this.a == ((n) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "VideoConvertingElement(mediaId=" + this.a + ")";
        }
    }

    public d82(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public d82() {
    }
}
