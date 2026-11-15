package defpackage;

import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.dbdata.database.ConvertAudio;
import com.transsion.dbdata.database.ConvertingVideo;
import com.transsion.dbdata.database.MediaPlayCount;
import com.transsion.dbdata.database.PlayListFolderItem;
import com.transsion.dbdata.database.PlayListItem;
import com.transsion.dbdata.database.PlayListMediaItem;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class rl8 {

    public static final class a extends rl8 {
        public final int a;

        public a(int i) {
            super(null);
            this.a = i;
        }

        @Override
        public Class a() {
            return ConvertAudio.class;
        }

        public final int b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.a == ((a) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "AudioConvertedElement(limitCount=" + this.a + ")";
        }
    }

    public static final class b extends rl8 {
        public b() {
            super(null);
        }

        @Override
        public Class a() {
            return SubtitleHistory.class;
        }
    }

    public static final class c extends rl8 {
        public final boolean a;
        public final int b;

        public c(boolean z, int i) {
            super(null);
            this.a = z;
            this.b = i;
        }

        @Override
        public Class a() {
            return PlayListMediaItem.class;
        }

        public final boolean b() {
            return this.a;
        }

        public final int c() {
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
            return this.a == cVar.a && this.b == cVar.b;
        }

        public int hashCode() {
            return (Boolean.hashCode(this.a) * 31) + Integer.hashCode(this.b);
        }

        public String toString() {
            return "FavoritePlayListElements(fromVideo=" + this.a + ", limitCount=" + this.b + ")";
        }
    }

    public static final class d extends rl8 {
        public final boolean a;

        public d(boolean z) {
            super(null);
            this.a = z;
        }

        @Override
        public Class a() {
            return qe6.class;
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
            return "MediaDataMissingListSet(fromVideo=" + this.a + ")";
        }
    }

    public static final class e extends rl8 {
        public final boolean a;

        public e(boolean z) {
            super(null);
            this.a = z;
        }

        @Override
        public Class a() {
            return MediaPlayCount.class;
        }

        public final boolean b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof e) && this.a == ((e) obj).a;
        }

        public int hashCode() {
            return Boolean.hashCode(this.a);
        }

        public String toString() {
            return "PlayHistoryListSet(fromVideo=" + this.a + ")";
        }
    }

    public static final class f extends rl8 {
        public final boolean a;
        public final boolean b;
        public final int c;

        public f(boolean z, boolean z2, int i) {
            super(null);
            this.a = z;
            this.b = z2;
            this.c = i;
        }

        @Override
        public Class a() {
            return PlayListMediaItem.class;
        }

        public final boolean b() {
            return this.b;
        }

        public final boolean c() {
            return this.a;
        }

        public final int d() {
            return this.c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return this.a == fVar.a && this.b == fVar.b && this.c == fVar.c;
        }

        public int hashCode() {
            return (((Boolean.hashCode(this.a) * 31) + Boolean.hashCode(this.b)) * 31) + Integer.hashCode(this.c);
        }

        public String toString() {
            return "PlayListElements(fromVideo=" + this.a + ", excludeFavorites=" + this.b + ", limitCount=" + this.c + ")";
        }
    }

    public static final class g extends rl8 {
    }

    public static final class h extends rl8 {
    }

    public static final class i extends rl8 {
        public final int a;
        public final boolean b;
        public final boolean c;
        public final int d;

        public i(int i, boolean z, boolean z2, int i2) {
            super(null);
            this.a = i;
            this.b = z;
            this.c = z2;
            this.d = i2;
        }

        @Override
        public Class a() {
            return this.c ? PlayListFolderItem.class : PlayListItem.class;
        }

        public final boolean b() {
            return this.c;
        }

        public final int c() {
            return this.a;
        }

        public final boolean d() {
            return this.b;
        }

        public final int e() {
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
            return this.a == iVar.a && this.b == iVar.b && this.c == iVar.c && this.d == iVar.d;
        }

        public int hashCode() {
            return (((((Integer.hashCode(this.a) * 31) + Boolean.hashCode(this.b)) * 31) + Boolean.hashCode(this.c)) * 31) + Integer.hashCode(this.d);
        }

        public String toString() {
            return "PlayListFolders(createType=" + this.a + ", excludeFavorite=" + this.b + ", countChildElements=" + this.c + ", limitCount=" + this.d + ")";
        }
    }

    public static final class j extends rl8 {
        public final int a;

        public j(int i) {
            super(null);
            this.a = i;
        }

        @Override
        public Class a() {
            return ConvertingVideo.class;
        }

        public final int b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof j) && this.a == ((j) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "VideoConvertingElement(limitCount=" + this.a + ")";
        }
    }

    public rl8(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract Class a();

    public rl8() {
    }
}
