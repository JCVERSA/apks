package dw;

import android.view.ViewGroup;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.player.orplayer.f;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.videofloat.bean.FloatPlayType;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final ORPlayerView f59142a;

    private final f f59143b;

    private final ViewGroup f59144c;

    private final FloatPlayType f59145d;

    private final String f59146e;

    private int f59147f;

    private int f59148g;

    private String f59149h;

    private String f59150i;

    private long f59151j;

    private String f59152k;

    private PlayMimeType f59153l;

    private UGCVideo f59154m;

    private DownloadBean f59155n;

    private String f59156o;

    private Integer f59157p;

    private String f59158q;

    private String f59159r;

    private String f59160s;

    private boolean f59161t;

    private String f59162u;

    private boolean f59163v;

    private final boolean f59164w;

    public a(ORPlayerView playerView, f orPlayer, ViewGroup viewGroup, FloatPlayType playType, String subjectId, int i10, int i11, String str, String pageName) {
        Intrinsics.h(playerView, "playerView");
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(playType, "playType");
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(pageName, "pageName");
        this.f59142a = playerView;
        this.f59143b = orPlayer;
        this.f59144c = viewGroup;
        this.f59145d = playType;
        this.f59146e = subjectId;
        this.f59147f = i10;
        this.f59148g = i11;
        this.f59149h = str;
        this.f59150i = pageName;
        this.f59164w = playType == FloatPlayType.LOCAL || playType == FloatPlayType.STREAM;
    }

    private final boolean d() {
        PlayMimeType playMimeType = this.f59153l;
        return playMimeType == PlayMimeType.DASH || playMimeType == PlayMimeType.HLS;
    }

    public final void A(String str) {
        this.f59158q = str;
    }

    public final void B(String str) {
        this.f59160s = str;
    }

    public final void C(String str) {
        this.f59162u = str;
    }

    public final void D(boolean z10) {
        this.f59163v = z10;
    }

    public final void E(String str) {
        this.f59159r = str;
    }

    public final void F(long j10) {
        this.f59151j = j10;
    }

    public final void G(String str) {
        this.f59152k = str;
    }

    public final void H(int i10) {
        this.f59147f = i10;
    }

    public final void I(PlayMimeType playMimeType) {
        this.f59153l = playMimeType;
    }

    public final void J(Integer num) {
        this.f59157p = num;
    }

    public final void K(String str) {
        this.f59156o = str;
    }

    public final void L(UGCVideo uGCVideo) {
        this.f59154m = uGCVideo;
    }

    public final boolean a() {
        return this.f59161t;
    }

    public final DownloadBean b() {
        return this.f59155n;
    }

    public final int c() {
        return this.f59148g;
    }

    public final String e() {
        return this.f59158q;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f59142a, aVar.f59142a) && Intrinsics.c(this.f59143b, aVar.f59143b) && Intrinsics.c(this.f59144c, aVar.f59144c) && this.f59145d == aVar.f59145d && Intrinsics.c(this.f59146e, aVar.f59146e) && this.f59147f == aVar.f59147f && this.f59148g == aVar.f59148g && Intrinsics.c(this.f59149h, aVar.f59149h) && Intrinsics.c(this.f59150i, aVar.f59150i);
    }

    public final f f() {
        return this.f59143b;
    }

    public final String g() {
        return this.f59160s;
    }

    public final String h() {
        return this.f59150i;
    }

    public int hashCode() {
        int iHashCode = ((this.f59142a.hashCode() * 31) + this.f59143b.hashCode()) * 31;
        ViewGroup viewGroup = this.f59144c;
        int iHashCode2 = (((((((((iHashCode + (viewGroup == null ? 0 : viewGroup.hashCode())) * 31) + this.f59145d.hashCode()) * 31) + this.f59146e.hashCode()) * 31) + this.f59147f) * 31) + this.f59148g) * 31;
        String str = this.f59149h;
        return ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31) + this.f59150i.hashCode();
    }

    public final FloatPlayType i() {
        return this.f59145d;
    }

    public final String j() {
        return this.f59162u;
    }

    public final String k() {
        if (this.f59154m != null) {
            String strName = this.f59145d.name();
            UGCVideo uGCVideo = this.f59154m;
            Intrinsics.e(uGCVideo);
            String ugcVideoId = uGCVideo.getUgcVideoId();
            if (ugcVideoId == null) {
                ugcVideoId = "ugcVideo";
            }
            return strName + ugcVideoId;
        }
        if (this.f59155n != null) {
            String strName2 = this.f59145d.name();
            DownloadBean downloadBean = this.f59155n;
            Intrinsics.e(downloadBean);
            String ugcVideoId2 = downloadBean.getUgcVideoId();
            if (ugcVideoId2 == null) {
                ugcVideoId2 = "ugcLocalVideo";
            }
            return strName2 + ugcVideoId2;
        }
        FloatPlayType floatPlayType = this.f59145d;
        if (floatPlayType == FloatPlayType.LOCAL) {
            return floatPlayType.name() + this.f59152k;
        }
        return floatPlayType.name() + this.f59146e;
    }

    public final ORPlayerView l() {
        return this.f59142a;
    }

    public final String m() {
        return this.f59159r;
    }

    public final long n() {
        return this.f59151j;
    }

    public final String o() {
        return this.f59149h;
    }

    public final String p() {
        return this.f59152k;
    }

    public final int q() {
        return this.f59147f;
    }

    public final String r() {
        return this.f59146e;
    }

    public final Integer s() {
        return this.f59157p;
    }

    public final String t() {
        UGCVideo uGCVideo = this.f59154m;
        if (uGCVideo != null) {
            Intrinsics.e(uGCVideo);
            return uGCVideo.getUgcVideoId() + "_" + this.f59156o;
        }
        DownloadBean downloadBean = this.f59155n;
        if (downloadBean != null) {
            Intrinsics.e(downloadBean);
            return downloadBean.getSubtitleResId();
        }
        return this.f59146e + "_" + this.f59147f + "_" + this.f59148g + "_en_" + (d() ? 2 : 1);
    }

    public String toString() {
        return "VideoFloatBean(playerView=" + this.f59142a + ", orPlayer=" + this.f59143b + ", subtitleViewGroup=" + this.f59144c + ", playType=" + this.f59145d + ", subjectId=" + this.f59146e + ", se=" + this.f59147f + ", ep=" + this.f59148g + ", resolution=" + this.f59149h + ", pageName=" + this.f59150i + ")";
    }

    public final ViewGroup u() {
        return this.f59144c;
    }

    public final UGCVideo v() {
        return this.f59154m;
    }

    public final boolean w() {
        return this.f59163v;
    }

    public final boolean x() {
        return this.f59164w;
    }

    public final void y(DownloadBean downloadBean) {
        this.f59155n = downloadBean;
    }

    public final void z(int i10) {
        this.f59148g = i10;
    }
}
