package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;

public class im7 extends OppO0O0 {
    public final vn7 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public im7(vn7 vn7Var, Context context, Class cls) {
        super(context, cls);
        this.k = vn7Var;
    }

    @Override
    public void b(int i, Object obj, String str) {
        if (this.k.a()) {
            xj.U(this.k.b()).e(1, "");
            this.k.b().A0();
            ((qo7) this.k.a).onSuccess();
        }
    }

    @Override
    public void d(BaseData baseData, String str) {
        super.d(baseData, str);
        xj.U(this.k.b()).e(0, String.valueOf(baseData.code));
    }

    @Override
    public void g() {
        if (this.k.a()) {
            this.k.c();
        }
    }
}
