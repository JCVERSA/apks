package nr;

import com.transsion.player.ui.ORPlayerView;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class j {

    private final ORPlayerView f67343a;

    private final com.transsion.player.orplayer.f f67344b;

    private final String f67345c;

    private final int f67346d;

    private final int f67347e;

    private final String f67348f;

    private final String f67349g;

    private final String f67350h;

    private final List f67351i;

    public j(ORPlayerView playerView, com.transsion.player.orplayer.f orPlayer, String subjectId, int i10, int i11, String pageName, String str, String str2, List playList) {
        Intrinsics.h(playerView, "playerView");
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(playList, "playList");
        this.f67343a = playerView;
        this.f67344b = orPlayer;
        this.f67345c = subjectId;
        this.f67346d = i10;
        this.f67347e = i11;
        this.f67348f = pageName;
        this.f67349g = str;
        this.f67350h = str2;
        this.f67351i = playList;
    }

    public final int a() {
        return this.f67347e;
    }

    public final String b() {
        return this.f67349g;
    }

    public final com.transsion.player.orplayer.f c() {
        return this.f67344b;
    }

    public final String d() {
        return this.f67350h;
    }

    public final String e() {
        return this.f67348f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return Intrinsics.c(this.f67343a, jVar.f67343a) && Intrinsics.c(this.f67344b, jVar.f67344b) && Intrinsics.c(this.f67345c, jVar.f67345c) && this.f67346d == jVar.f67346d && this.f67347e == jVar.f67347e && Intrinsics.c(this.f67348f, jVar.f67348f) && Intrinsics.c(this.f67349g, jVar.f67349g) && Intrinsics.c(this.f67350h, jVar.f67350h) && Intrinsics.c(this.f67351i, jVar.f67351i);
    }

    public final List f() {
        return this.f67351i;
    }

    public final ORPlayerView g() {
        return this.f67343a;
    }

    public final int h() {
        return this.f67346d;
    }

    public int hashCode() {
        int iHashCode = ((((((((((this.f67343a.hashCode() * 31) + this.f67344b.hashCode()) * 31) + this.f67345c.hashCode()) * 31) + this.f67346d) * 31) + this.f67347e) * 31) + this.f67348f.hashCode()) * 31;
        String str = this.f67349g;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f67350h;
        return ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f67351i.hashCode();
    }

    public final String i() {
        return this.f67345c;
    }

    public String toString() {
        return "ShortTvFloatBean(playerView=" + this.f67343a + ", orPlayer=" + this.f67344b + ", subjectId=" + this.f67345c + ", se=" + this.f67346d + ", ep=" + this.f67347e + ", pageName=" + this.f67348f + ", ops=" + this.f67349g + ", pageFrom=" + this.f67350h + ", playList=" + this.f67351i + ")";
    }
}
