package ln;

import androidx.collection.s;
import androidx.compose.foundation.e;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final String f65956a;

    private final PlayMimeType f65957b;

    private long f65958c;

    private final int f65959d;

    private final int f65960e;

    private final String f65961f;

    private final String f65962g;

    private final String f65963h;

    private final String f65964i;

    private final List f65965j;

    private final String f65966k;

    private final String f65967l;

    private final String f65968m;

    private final int f65969n;

    private final Integer f65970o;

    private final boolean f65971p;

    private final String f65972q;

    private final String f65973r;

    private UGCVideo f65974s;

    private DownloadBean f65975t;

    private Subject f65976u;

    private final List f65977v;

    public a(String subjectId, PlayMimeType videoFormat, long j10, int i10, int i11, String subjectName, String str, String pageFrom, String pageName, List playSteams, String cover, String thumbnail, String averageHueLight, int i12, Integer num, boolean z10, String str2, String str3) {
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(videoFormat, "videoFormat");
        Intrinsics.h(subjectName, "subjectName");
        Intrinsics.h(pageFrom, "pageFrom");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(playSteams, "playSteams");
        Intrinsics.h(cover, "cover");
        Intrinsics.h(thumbnail, "thumbnail");
        Intrinsics.h(averageHueLight, "averageHueLight");
        this.f65956a = subjectId;
        this.f65957b = videoFormat;
        this.f65958c = j10;
        this.f65959d = i10;
        this.f65960e = i11;
        this.f65961f = subjectName;
        this.f65962g = str;
        this.f65963h = pageFrom;
        this.f65964i = pageName;
        this.f65965j = playSteams;
        this.f65966k = cover;
        this.f65967l = thumbnail;
        this.f65968m = averageHueLight;
        this.f65969n = i12;
        this.f65970o = num;
        this.f65971p = z10;
        this.f65972q = str2;
        this.f65973r = str3;
        this.f65977v = new ArrayList();
    }

    public final void A(UGCVideo uGCVideo) {
        this.f65974s = uGCVideo;
    }

    public final List a() {
        return this.f65977v;
    }

    public final String b() {
        return this.f65968m;
    }

    public final String c() {
        return this.f65966k;
    }

    public final DownloadBean d() {
        return this.f65975t;
    }

    public final int e() {
        return this.f65959d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f65956a, aVar.f65956a) && this.f65957b == aVar.f65957b && this.f65958c == aVar.f65958c && this.f65959d == aVar.f65959d && this.f65960e == aVar.f65960e && Intrinsics.c(this.f65961f, aVar.f65961f) && Intrinsics.c(this.f65962g, aVar.f65962g) && Intrinsics.c(this.f65963h, aVar.f65963h) && Intrinsics.c(this.f65964i, aVar.f65964i) && Intrinsics.c(this.f65965j, aVar.f65965j) && Intrinsics.c(this.f65966k, aVar.f65966k) && Intrinsics.c(this.f65967l, aVar.f65967l) && Intrinsics.c(this.f65968m, aVar.f65968m) && this.f65969n == aVar.f65969n && Intrinsics.c(this.f65970o, aVar.f65970o) && this.f65971p == aVar.f65971p && Intrinsics.c(this.f65972q, aVar.f65972q) && Intrinsics.c(this.f65973r, aVar.f65973r);
    }

    public final String f() {
        return this.f65962g;
    }

    public final boolean g() {
        return this.f65971p;
    }

    public final String h() {
        return this.f65963h;
    }

    public int hashCode() {
        int iHashCode = ((((((((((this.f65956a.hashCode() * 31) + this.f65957b.hashCode()) * 31) + s.a(this.f65958c)) * 31) + this.f65959d) * 31) + this.f65960e) * 31) + this.f65961f.hashCode()) * 31;
        String str = this.f65962g;
        int iHashCode2 = (((((((((((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.f65963h.hashCode()) * 31) + this.f65964i.hashCode()) * 31) + this.f65965j.hashCode()) * 31) + this.f65966k.hashCode()) * 31) + this.f65967l.hashCode()) * 31) + this.f65968m.hashCode()) * 31) + this.f65969n) * 31;
        Integer num = this.f65970o;
        int iHashCode3 = (((iHashCode2 + (num == null ? 0 : num.hashCode())) * 31) + e.a(this.f65971p)) * 31;
        String str2 = this.f65972q;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f65973r;
        return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String i() {
        return this.f65964i;
    }

    public final List j() {
        return this.f65965j;
    }

    public final long k() {
        return this.f65958c;
    }

    public final int l() {
        return this.f65960e;
    }

    public final Subject m() {
        return this.f65976u;
    }

    public final int n() {
        return this.f65969n;
    }

    public final String o() {
        return this.f65956a;
    }

    public final String p() {
        return this.f65961f;
    }

    public final String q() {
        return this.f65973r;
    }

    public final Integer r() {
        return this.f65970o;
    }

    public final String s() {
        return this.f65967l;
    }

    public final String t() {
        return this.f65972q;
    }

    public String toString() {
        return "LongVdPlayerBean(subjectId=" + this.f65956a + ", videoFormat=" + this.f65957b + ", progress=" + this.f65958c + ", ep=" + this.f65959d + ", se=" + this.f65960e + ", subjectName=" + this.f65961f + ", episodeTitle=" + this.f65962g + ", pageFrom=" + this.f65963h + ", pageName=" + this.f65964i + ", playSteams=" + this.f65965j + ", cover=" + this.f65966k + ", thumbnail=" + this.f65967l + ", averageHueLight=" + this.f65968m + ", subjectDurationSeconds=" + this.f65969n + ", subjectType=" + this.f65970o + ", hasDelete=" + this.f65971p + ", titleName=" + this.f65972q + ", subjectOps=" + this.f65973r + ")";
    }

    public final UGCVideo u() {
        return this.f65974s;
    }

    public final PlayMimeType v() {
        return this.f65957b;
    }

    public final boolean w() {
        PlayMimeType playMimeType = this.f65957b;
        if (playMimeType != PlayMimeType.DEFAULT) {
            return playMimeType == PlayMimeType.HLS && this.f65965j.size() > 1;
        }
        return true;
    }

    public final void x(DownloadBean downloadBean) {
        this.f65975t = downloadBean;
    }

    public final void y(long j10) {
        this.f65958c = j10;
    }

    public final void z(Subject subject) {
        this.f65976u = subject;
    }

    public a(String str, PlayMimeType playMimeType, long j10, int i10, int i11, String str2, String str3, String str4, String str5, List list, String str6, String str7, String str8, int i12, Integer num, boolean z10, String str9, String str10, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, playMimeType, (i13 & 4) != 0 ? 0L : j10, (i13 & 8) != 0 ? 0 : i10, (i13 & 16) != 0 ? 0 : i11, str2, (i13 & 64) != 0 ? null : str3, str4, str5, (i13 & 512) != 0 ? new ArrayList() : list, str6, str7, str8, i12, (i13 & 16384) != 0 ? 1 : num, (32768 & i13) != 0 ? false : z10, str9, (i13 & 131072) != 0 ? null : str10);
    }
}
