package j6;

import com.bykv.vk.openvk.Sj.Sj.sP.sP.uA;
import com.bytedance.sdk.component.sP.Sj.Zq;
import com.bytedance.sdk.component.sP.Sj.vS;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public class f extends c {

    private Zq f63056c;

    public f(Zq zq2, b bVar) {
        vS vSVarJcg;
        this.f63056c = zq2;
        this.f63053a = new ArrayList();
        if (zq2 != null && (vSVarJcg = zq2.Jcg()) != null) {
            for (int i10 = 0; i10 < vSVarJcg.Sj(); i10++) {
                this.f63053a.add(new uA.c(vSVarJcg.Sj(i10), vSVarJcg.sP(i10)));
            }
        }
        this.f63054b = bVar;
    }

    @Override
    public InputStream a() {
        return this.f63056c.vS().TKC();
    }

    @Override
    public String b() {
        Zq zq2 = this.f63056c;
        return (zq2 == null || zq2.Dq() == null) ? "http/1.1" : this.f63056c.Dq().toString();
    }

    @Override
    public int d() {
        return this.f63056c.TKC();
    }

    @Override
    public String g(String str, String str2) {
        return e(str) != null ? e(str).f19672b : str2;
    }

    @Override
    public List h() {
        return this.f63053a;
    }

    @Override
    public boolean i() {
        return this.f63056c.TKC() >= 200 && this.f63056c.TKC() < 300;
    }

    @Override
    public String j() {
        return f(this.f63056c.TKC());
    }
}
