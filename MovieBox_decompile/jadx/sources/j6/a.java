package j6;

import android.text.TextUtils;
import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.Ym;
import com.bytedance.sdk.component.sP.Sj.Zq;
import java.util.Map;

public class a implements e {

    private Ym f63047a;

    public a() {
        this.f63047a = null;
        this.f63047a = v5.b.a();
    }

    @Override
    public c a(b bVar) {
        Fmk.Sj sj2 = new Fmk.Sj();
        try {
            Map map = bVar.f63052e;
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (!TextUtils.isEmpty(str)) {
                        String str2 = (String) entry.getValue();
                        if (str2 == null) {
                            str2 = "";
                        }
                        sj2.sP(str, str2);
                    }
                }
            }
            Zq zqSP = this.f63047a.Sj(sj2.sP(bVar.f63049b).Sj().Sj("videoPreloadLowVersion").Sj(6).sP()).sP();
            zqSP.TKC();
            return new f(zqSP, bVar);
        } catch (Throwable unused) {
            return null;
        }
    }
}
