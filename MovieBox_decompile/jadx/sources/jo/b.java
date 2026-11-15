package jo;

import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.publish.api.AudioEntity;
import com.transsion.publish.api.GroupBean;
import com.transsion.publish.api.LinkEntity;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.api.VsMediaInfo;
import com.transsion.room.api.bean.LocationPlace;
import java.util.List;
import sm.e;

public final class b {

    private Integer f63234a = 0;

    private Integer f63235b = 0;

    private List f63236c;

    private AudioEntity f63237d;

    private VsMediaInfo f63238e;

    private LinkEntity f63239f;

    private PhotoEntity f63240g;

    private Subject f63241h;

    private GroupBean f63242i;

    private LocationPlace f63243j;

    public final AudioEntity a() {
        return this.f63237d;
    }

    public final PhotoEntity b() {
        return this.f63240g;
    }

    public final GroupBean c() {
        return this.f63242i;
    }

    public final Integer d() {
        return this.f63235b;
    }

    public final Integer e() {
        return this.f63234a;
    }

    public final LinkEntity f() {
        return this.f63239f;
    }

    public final LocationPlace g() {
        return this.f63243j;
    }

    public final List h() {
        return this.f63236c;
    }

    public final Subject i() {
        return this.f63241h;
    }

    public final VsMediaInfo j() {
        return this.f63238e;
    }

    public final void k(AudioEntity audioEntity) {
        this.f63237d = audioEntity;
    }

    public final void l(PhotoEntity photoEntity) {
        this.f63240g = photoEntity;
    }

    public final void m(GroupBean groupBean) {
        this.f63242i = groupBean;
    }

    public final void n(Integer num) {
        this.f63235b = num;
    }

    public final void o(Integer num) {
        this.f63234a = num;
    }

    public final void p(LinkEntity linkEntity) {
        this.f63239f = linkEntity;
    }

    public final void q(LocationPlace locationPlace) {
        this.f63243j = locationPlace;
    }

    public final void r(List list) {
        this.f63236c = list;
    }

    public final void s(Subject subject) {
        this.f63241h = subject;
    }

    public final b t(String str, Integer num, String str2, String str3, String str4) {
        this.f63241h = new Subject(str, num, str2, null, new Cover(null, null, null, str3, null, str4, null, null, null, 471, null), null, null, null, null, e.f72346a.g(num), null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -536, 67108863, null);
        return this;
    }

    public final void u(VsMediaInfo vsMediaInfo) {
        this.f63238e = vsMediaInfo;
    }
}
