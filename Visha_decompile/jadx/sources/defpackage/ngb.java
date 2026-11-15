package defpackage;

import com.transsion.dbdata.beans.PlayerStates;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayVideoData;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class ngb {

    public static final class a extends ngb {
    }

    public static final class b extends ngb {
        public final AudioItem a;
        public final boolean b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(AudioItem audioItem, boolean z) {
            super(null);
            y45.j(audioItem, "item");
            this.a = audioItem;
            this.b = z;
        }

        public final AudioItem a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return y45.e(this.a, bVar.a) && this.b == bVar.b;
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + Boolean.hashCode(this.b);
        }

        public String toString() {
            return "MediaDataMissingItem(item=" + this.a + ", fromVideo=" + this.b + ")";
        }
    }

    public static final class c extends ngb {
    }

    public static final class d extends ngb {
        public final long a;
        public final String b;
        public final boolean c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(long j, String str, boolean z) {
            super(null);
            y45.j(str, "name");
            this.a = j;
            this.b = str;
            this.c = z;
        }

        public final boolean a() {
            return this.c;
        }

        public final long b() {
            return this.a;
        }

        public final String c() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.a == dVar.a && y45.e(this.b, dVar.b) && this.c == dVar.c;
        }

        public int hashCode() {
            return (((Long.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + Boolean.hashCode(this.c);
        }

        public String toString() {
            return "PlayList(id=" + this.a + ", name=" + this.b + ", fromVideo=" + this.c + ")";
        }
    }

    public static final class e extends ngb {
        public final MediaItem a;
        public final boolean b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(MediaItem mediaItem, boolean z) {
            super(null);
            y45.j(mediaItem, "mediaItem");
            this.a = mediaItem;
            this.b = z;
        }

        public final boolean a() {
            return this.b;
        }

        public final MediaItem b() {
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
            return "RenameMediaItem(mediaItem=" + this.a + ", fromVideo=" + this.b + ")";
        }
    }

    public static final class f extends ngb {
        public final int a;
        public final int b;

        public f(int i, int i2) {
            super(null);
            this.a = i;
            this.b = i2;
        }

        public final int a() {
            return this.a;
        }

        public final int b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return this.a == fVar.a && this.b == fVar.b;
        }

        public int hashCode() {
            return (Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b);
        }

        public String toString() {
            return "VideoConvertingElement(mediaId=" + this.a + ", status=" + this.b + ")";
        }
    }

    public static final class g extends ngb {
        public final MediaItem a;
        public final PlayVideoData b;
        public final PlayerStates c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(MediaItem mediaItem, PlayVideoData playVideoData, PlayerStates playerStates) {
            super(null);
            y45.j(mediaItem, "mediaItem");
            y45.j(playVideoData, "videoData");
            y45.j(playerStates, "playStates");
            this.a = mediaItem;
            this.b = playVideoData;
            this.c = playerStates;
        }

        public final MediaItem a() {
            return this.a;
        }

        public final PlayerStates b() {
            return this.c;
        }

        public final PlayVideoData c() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return y45.e(this.a, gVar.a) && y45.e(this.b, gVar.b) && y45.e(this.c, gVar.c);
        }

        public int hashCode() {
            return (((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
        }

        public String toString() {
            return "VideoPlayRecord(mediaItem=" + this.a + ", videoData=" + this.b + ", playStates=" + this.c + ")";
        }
    }

    public ngb(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public ngb() {
    }
}
