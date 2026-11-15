package rs;

import com.transsion.player.orplayer.f;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.shorttv_pugc.ShorttvModel;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    private final ORPlayerView f71332a;

    private final f f71333b;

    private final String f71334c;

    private final int f71335d;

    private final String f71336e;

    private final String f71337f;

    private final String f71338g;

    private final List f71339h;

    private final ShorttvModel.UGCVideo f71340i;

    public d(ORPlayerView playerView, f orPlayer, String ugcVideoId, int i10, String pageName, String str, String str2, List playList, ShorttvModel.UGCVideo uGCVideo) {
        Intrinsics.h(playerView, "playerView");
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(playList, "playList");
        this.f71332a = playerView;
        this.f71333b = orPlayer;
        this.f71334c = ugcVideoId;
        this.f71335d = i10;
        this.f71336e = pageName;
        this.f71337f = str;
        this.f71338g = str2;
        this.f71339h = playList;
        this.f71340i = uGCVideo;
    }

    public final int a() {
        return this.f71335d;
    }

    public final String b() {
        return this.f71337f;
    }

    public final f c() {
        return this.f71333b;
    }

    public final String d() {
        return this.f71338g;
    }

    public final String e() {
        return this.f71336e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return Intrinsics.c(this.f71332a, dVar.f71332a) && Intrinsics.c(this.f71333b, dVar.f71333b) && Intrinsics.c(this.f71334c, dVar.f71334c) && this.f71335d == dVar.f71335d && Intrinsics.c(this.f71336e, dVar.f71336e) && Intrinsics.c(this.f71337f, dVar.f71337f) && Intrinsics.c(this.f71338g, dVar.f71338g) && Intrinsics.c(this.f71339h, dVar.f71339h) && Intrinsics.c(this.f71340i, dVar.f71340i);
    }

    public final List f() {
        return this.f71339h;
    }

    public final ORPlayerView g() {
        return this.f71332a;
    }

    public final ShorttvModel.UGCVideo h() {
        return this.f71340i;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.f71332a.hashCode() * 31) + this.f71333b.hashCode()) * 31) + this.f71334c.hashCode()) * 31) + this.f71335d) * 31) + this.f71336e.hashCode()) * 31;
        String str = this.f71337f;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f71338g;
        int iHashCode3 = (((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f71339h.hashCode()) * 31;
        ShorttvModel.UGCVideo uGCVideo = this.f71340i;
        return iHashCode3 + (uGCVideo != null ? uGCVideo.hashCode() : 0);
    }

    public String toString() {
        return "ShortTvFloatBean(playerView=" + this.f71332a + ", orPlayer=" + this.f71333b + ", ugcVideoId=" + this.f71334c + ", ep=" + this.f71335d + ", pageName=" + this.f71336e + ", ops=" + this.f71337f + ", pageFrom=" + this.f71338g + ", playList=" + this.f71339h + ", ugcVideo=" + this.f71340i + ")";
    }
}
