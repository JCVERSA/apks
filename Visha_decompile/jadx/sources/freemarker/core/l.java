package freemarker.core;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.k0d;
import defpackage.qu9;
import defpackage.zfa;

public abstract class l extends qu9 {
    public String k;

    @Override
    public zfa F(Environment environment) throws _MiscTemplateException {
        z0.a aVarN0 = z0.n0(environment, this.k);
        if (aVarN0 != null) {
            return i0(aVarN0, environment);
        }
        throw new _MiscTemplateException(this, environment, new Object[]{"There's no iteration in context that uses loop variable ", new k0d(this.k), Consts.DOT});
    }

    public void h0(String str) {
        this.k = str;
    }

    public abstract zfa i0(z0.a aVar, Environment environment);
}
