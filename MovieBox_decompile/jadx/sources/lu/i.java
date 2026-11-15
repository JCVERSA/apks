package lu;

import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import kotlin.jvm.internal.Intrinsics;

public final class i {

    private final a f66140a;

    public interface a {
        String d();

        String e();

        String f();
    }

    public i(a host) {
        Intrinsics.h(host, "host");
        this.f66140a = host;
    }

    public final void a(String moduleName, UGCVideo uGCVideo, Boolean bool, String str, Integer num) {
        Intrinsics.h(moduleName, "moduleName");
        if (uGCVideo == null) {
            return;
        }
        com.transsion.ugcvideodetail.hepler.h.f54294a.a("/ugc_video/immersive_detail", moduleName, uGCVideo, str, this.f66140a.d(), this.f66140a.f(), this.f66140a.e(), bool, num);
    }
}
